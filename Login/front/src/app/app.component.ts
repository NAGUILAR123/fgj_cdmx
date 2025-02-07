import { Component, OnDestroy, OnInit } from '@angular/core';
import { Router, RouterOutlet } from '@angular/router';
import { NavegacionComponent } from './nav-left/components/navegacion/navegacion.component';
import { CommonModule } from '@angular/common';
import { LoginService } from './login/services/login.service';
import { NavegacionService } from './nav-left/services/navegacion.service';
import { environments } from '../environments/environment';
import { Usuario } from '../models/Types/UsuariosType';
import { UsuarioEntity } from '../models/Entitys/usuario.model';
import { Subscription } from 'rxjs';
import { FormularioComponent } from './formulario/formulario.component'; // Importa FormularioComponent

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, CommonModule, NavegacionComponent, FormularioComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements OnInit, OnDestroy {
  public title: string = environments.sistema;

  // Estado de la sesión
  protected sesion: boolean = false;

  // Datos básicos del emplado que inico sesión
  protected nombre: string = '';
  protected area: string = '';
  protected agencia: string = '';
  protected unidad: string = '';
  protected rol: string = '';
  
  // Estado de la barra de navegacion
  protected ocultarNav: boolean = false;

  // Subscripciones
  private subs: Subscription[] = [];

  constructor(private navService: NavegacionService,
              private loginService: LoginService,
              private usuarioEntity: UsuarioEntity,
              private router: Router
  ) {}
  
  ngOnInit(): void {
    // Comprobar si la sesion esta activa o no
    this.comprobarSesion();

    // funcion ocultar barra de navegacion+
    this.ocultarBarraNav();
  }

  ngOnDestroy(): void {
    this.subs.forEach(sub => sub.unsubscribe());
  }

  // ------------------------ ngOnInit ------------------------
  /**
   * Comprobar la sesion
   */
  private comprobarSesion(): void {
    const sesionLS = this.loginService.getSesion();
    const sub: Subscription = this.loginService.$sesion.subscribe(s => {
      this.sesion = sesionLS;
      if(s) this.sesion = s;
      if(!s && !sesionLS) {
        this.router.navigate(['/login/1']);
        this.sesion = false;
      } else {
        const numEmpl: number = this.usuarioEntity.getNumEmplSesion();
        this.obtenerUsuarioSesion(numEmpl);
      }
    });

    this.subs.push(sub);
  }

  /**
   * Funcion de ocultar la barra de navegacion
   */
  private ocultarBarraNav(): void {
    const sub: Subscription = this.navService.$ocultarNav.subscribe(o => this.ocultarNav = o);
    this.subs.push(sub);
  }

  /**
   * Obtener datos basicos del usuario que inicio sesion
   * @param numEmpl (number) Numero de empleado
   */
  private obtenerUsuarioSesion(numEmpl: number): void {
    const sub: Subscription = this.usuarioEntity.obtenerUsuarioSesion(numEmpl).subscribe({
      next: (usuario: Usuario) => {

        // formatear datos
        const nombres: string[] = usuario.nombres.split(' ');
        const nombre: string = this.capitalizar(nombres[0]);
        const apellido: string = this.capitalizar(usuario.apellidoP);
        const unidad: string = this.capitalizar(usuario.unidad.descripcion);
        const agencia: string = usuario.unidad.agencia.descripcion;
        const area: string = this.capitalizar(usuario.unidad.fiscalia.descripcion);
        const rol: string = this.capitalizar(usuario.rol.nombre);

        this.nombre = `${nombre} ${apellido}`;
        this.area = area;
        this.agencia = agencia;
        this.unidad = unidad;
        this.rol = rol;
      },
    });

    this.subs.push(sub);
  }

  /**
   * 
   * @param (string) Texto que se desea dar formato
   * @returns (string) texto ya formateado 
   */
  private capitalizar(texto: string): string {
    const mayus: string = texto.charAt(0).toUpperCase();
    const resto: string = texto.slice(1).toLowerCase();
    return `${mayus}${resto}`;
  }

  // --------------------------------- Enlazado al DOM ---------------------------------
}
