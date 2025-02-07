import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { AppService } from '../../../app.service';
import { Router } from '@angular/router';
import { CopyrightComponent } from '../../../plantillas/copyright/copyright.component';
import { LoginService } from '../../services/login.service';
import { Credenciales } from '../../../../models/Types/CredencialesType';
import { UsuarioEntity } from '../../../../models/Entitys/usuario.model';
import { LoginEntity } from '../../../../models/Entitys/login.model';
import { LSEntity } from '../../../../models/Entitys/localStorage.model';

@Component({
  selector: 'app-credenciales',
  standalone: true,
  imports: [ReactiveFormsModule, CommonModule,
            CopyrightComponent
  ],
  templateUrl: './credenciales.component.html',
  styleUrl: './credenciales.component.scss'
})
export class CredencialesComponent implements OnInit {
  credenciales!: FormGroup;
  mensaje!: string;

  constructor(private appService: AppService,
              private loginService: LoginService,
              private loginEntity: LoginEntity,
              private usuarioEntity: UsuarioEntity,
              private router: Router
            ) {}

  ngOnInit(): void {
    // inicializar formulario
    this.credenciales = this.loginService.formGroup();

    // cerrar la sesion
    this.loginService.setSesion(false);

    // eliminar localStorage
    LSEntity.eliminarLS();
    LSEntity.almacenarLS('sesion', false);

    // Mensaje
    this.appService.$mensaje.subscribe(msj => this.mensaje = msj);

    // reinicia el formulario
    this.credenciales.reset();
  }

  // ------------------- OnInit -------------------


  /**
   * Metodo enlazado al botón
   */
  onSubmit() {
    if(this.credenciales.valid) {
      const body: Credenciales = {
        numEmpl: this.Username.value,
        password: this.Password.value
      }

      this.enviarCredenciales(body);

    } else {
      AppService.setMensaje("Faltan campos por llenar");
    }
  }

  /**
   * envia las credenciales al backend
   * @param body informacion de las credenciales
   */
  enviarCredenciales(body: Credenciales) {
    this.loginEntity.loginCredenciales(body).subscribe({
      complete: () => {
        this.usuarioEntity.setNumEmpl(this.Username.value);
        this.router.navigate(['/login/2']);
        this.credenciales.reset();
        AppService.resetMensaje();
      },
      error: error => {
        if(error.status === 404) AppService.setMensaje("Numero de empleado incorrecto");
        if(error.status === 401) AppService.setMensaje("Usuario inactivo");
        if(error.status === 403) AppService.setMensaje("Contraseña incorrecta");
      }
    });
  }

  

  get Username(): FormControl { return this.credenciales.get('username') as FormControl }
  get Password(): FormControl { return this.credenciales.get('password') as FormControl }
}
