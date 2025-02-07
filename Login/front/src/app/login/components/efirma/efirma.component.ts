import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ReactiveFormsModule, FormControl } from '@angular/forms';
import { AppService } from '../../../app.service';
import { CopyrightComponent } from '../../../plantillas/copyright/copyright.component';
import { Router } from '@angular/router';
import { LoginService } from '../../services/login.service';
import { UsuarioEntity } from '../../../../models/Entitys/usuario.model';
import { LoginEntity } from '../../../../models/Entitys/login.model';
import { LSEntity } from '../../../../models/Entitys/localStorage.model';

@Component({
  selector: 'app-efirma',
  standalone: true,
  imports: [ReactiveFormsModule, CommonModule,
            CopyrightComponent
  ],
  templateUrl: './efirma.component.html',
  styleUrl: './efirma.component.scss'
})
export class EfirmaComponent implements OnInit{

  private numEmpl?: number;
  protected mensaje: string = "";
  protected archivoCer: {[key: string]: any} = {};
  protected archivoKey: {[key: string]: any} = {};
  protected credenciales!: FormGroup;
  protected validarFormulario: boolean = false;

  constructor(private appService: AppService,
              private loginService: LoginService,
              private loginEntity: LoginEntity,
              private usuarioEntity: UsuarioEntity,
              private fb: FormBuilder,
              private router: Router) {}

  ngOnInit(): void {
    // verificar primer inicio de sesion
    this.numEmpl = this.usuarioEntity.getNumEmpl();
    this.loginEntity.verificarLogin1().subscribe({
      next: next => {
        if((!this.numEmpl && next !== this.numEmpl)) {
          this.router.navigate(['/login/1']);
        }
      },
    });

    // asignar y limpiar formulario al cargar la pantalla
    this.credenciales = this.formGroup();
    this.credenciales.reset();

    // asignar mensaje
    this.appService.$mensaje.subscribe(msj => this.mensaje = msj);
  }

  /**
   * Agregar archivo Key
   * @param $event 
   */
  public agregarKey($event: any): void {
    const pesoLimite: number = 5120; //5KB
    const msj: string = "El archivo excede el peso limite establecido";
    this.archivoKey = this.appService.agregarArchivo($event, pesoLimite, msj);
  }

  /**
   * Agregar archivo Cer
   * @param $event 
   */
  public agregarCer($event: any): void {
    const pesoLimite: number = 5120; //5KB
    const msj: string = "El archivo excede el peso limite establecido";
    this.archivoCer = this.appService.agregarArchivo($event, pesoLimite, msj);
  }

  /**
   * Enviar al back (ligado al botón)
   */
  public onSubmit(): void {
    let archivos = new FormData();

    this.validarFormulario = Object.keys(this.archivoCer).length !== 0 && Object.keys(this.archivoKey).length !== 0;

    if(this.credenciales.valid && this.validarFormulario) {
      archivos = this.crearObjetoArchivos(archivos);
      this.loginEntity.loginEfirma(archivos).subscribe({
        next: next => {
          if(next.acceso) {
            this.router.navigate(['/bienvenida']);
            this.loginService.setSesion(true);
            LSEntity.almacenarLS('numEmpl', this.numEmpl);
          }
          else {
            AppService.setMensaje(next.mensaje);
          }
        }
      });

      AppService.resetMensaje();
      this.credenciales.reset();
    } else {
      AppService.setMensaje("Faltan campos por llenar");
    }
  }

  /**
   * crear objeto para enviar archivos al back
   * @param body 
   * @returns 
   */
  private crearObjetoArchivos(body: FormData): FormData {
    if(Object.keys(this.archivoKey).length !== 0) {
      body.append('key', this.archivoKey['archivo'], this.archivoKey['nombre']);
    }

    if(Object.keys(this.archivoCer).length !== 0) {
      body.append('cer', this.archivoCer['archivo'], this.archivoCer['nombre']);
    }

    body.append('passwordSat', this.PasswordSat.value);

    return body;
  }

  /**
   * Crear el form group (valores del formulario)
   * @returns 
   */
  private formGroup(): FormGroup {
    return this.fb.group({
      passwordSat: ['', Validators.required],
    });
  }


  // GETTERS
  get PasswordSat(): FormControl { return this.credenciales.get('passwordSat') as FormControl }
}
