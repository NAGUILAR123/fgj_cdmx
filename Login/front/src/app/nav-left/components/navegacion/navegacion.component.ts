import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router, RouterModule } from '@angular/router';
import { LoginService } from '../../../login/services/login.service';
import { CommonModule } from '@angular/common';
import { NavegacionService } from '../../services/navegacion.service';
import { ModalAlertaComponent } from '../../../plantillas/modal-alerta/modal.component';
import { AppService } from '../../../app.service';
import { Generico } from '../../../../models/Types/GenericoType';
import { Area } from '../../../../models/Types/AreaType';
import { Puesto } from '../../../../models/Types/PuestoType';
import { UsuarioEntity } from '../../../../models/Entitys/usuario.model';
import { LSEntity } from '../../../../models/Entitys/localStorage.model';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-navegacion',
  standalone: true,
  imports: [CommonModule, RouterModule,
    ModalAlertaComponent],
  templateUrl: './navegacion.component.html',
  styleUrl: './navegacion.component.scss'
})
export class NavegacionComponent implements OnInit, OnDestroy {
  public nombreSistema: string = AppService.sistema;
  public iconoTamizaje: boolean = false; // false = normal, true = rotar/activo
  public iconoAdmin: boolean = false; // false = normal, true = rotar/activo
  public ocultarNav!: boolean; // false = normal, true = ocultar
  public numEmpl!: number;

  public roles: Generico[] = [];
  public areas: Area[] = [];
  public puestos: Puesto[] = [];

  // Subscripciones
  private subs: Subscription[] = [];

  constructor(private navService: NavegacionService,
    private loginService: LoginService,
    private router: Router
  ) { }

  ngOnInit(): void {
    // verificar si la sesion esta activa
    this.navService.isSesionActiva();

    // Ver los eventos en las rutas
    this.navService.eventosRutas();

    // ocultar la navegacion
    this.isOcultarBarraNav();
  }

  ngOnDestroy(): void {
    this.subs.forEach(sub => sub.unsubscribe());
  }
  // ---------------- OnInit ----------------

  /**
   * Obtener estado para ocultar la barra de navegacion
   */
  private isOcultarBarraNav(): void {
    const sub: Subscription = this.navService.$ocultarNav.subscribe(o => this.ocultarNav = o);
    this.subs.push(sub);
  }

  // ---------------- Interfaz Grafica ----------------
  /**
   * Ocultar la barra lateral
   */
  ocultar(): void {
    this.ocultarNav = !this.ocultarNav;
    LSEntity.almacenarLS('navegacion', this.ocultarNav);
    this.navService.setOcultarNav(this.ocultarNav);
  }

  /**
   * Salir de la sesión
   */
  logOut(): void {
    const sub: Subscription = ModalAlertaComponent.$accion.subscribe(accion => {
      if (accion) {
        this.loginService.setSesion(false);
        this.router.navigate(['/login/1']);
        // window.location.reload();
      }
    });

    this.subs.push(sub);
  }

  /**
   * Rotar un icono
   */
  rotarIconoTamizaje(): void {
    this.iconoTamizaje = !this.iconoTamizaje;
  }

  /**
   * Rotar un icono
   */
  rotarIconoAdmin(): void {
    this.iconoAdmin = !this.iconoAdmin;
  }
}