import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { Usuario } from '../../../models/Types/UsuariosType';
import { UsuarioEntity } from '../../../models/Entitys/usuario.model';
import { LSEntity } from '../../../models/Entitys/localStorage.model';
import { AbstractControl, FormBuilder, FormGroup, ValidationErrors, ValidatorFn, Validators } from '@angular/forms';
import { Perfil } from '../../../models/Types/PerfilType';
import { NavigationEnd, Router } from '@angular/router';
import { LoginService } from '../../login/services/login.service';
import { AppService } from '../../app.service';

@Injectable({
  providedIn: 'root'
})

export class NavegacionService {

  // Ocultar barra de navegación
  private ocultarNav: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(this.verificarOcultarNav());
  public $ocultarNav: Observable<boolean> = this.ocultarNav.asObservable();
  
  // Estatus del check
  private statusCheck: BehaviorSubject<string> = new BehaviorSubject<string>("");
  public $statusCheck: Observable<string> = this.statusCheck.asObservable();


  constructor(private usuarioEntity: UsuarioEntity,
              private loginService: LoginService,
              private fb: FormBuilder,
              private router: Router
  ) { }

  // ---------------- OnInit ----------------
  /**
   * Ver los eventos en las url
   */
  public eventosRutas(): void {
    this.router.events.subscribe(e => {
      if (e instanceof NavigationEnd) {
        if (e.urlAfterRedirects === '/login/1' || e.urlAfterRedirects === '/login/2') {
          window.location.reload();
        }
      }
    })
  }

  /**
   * Verificar si la sesion esta activa
   */
  public isSesionActiva(): void {
    const sesionLS = this.loginService.getSesion();
    if (!sesionLS) {
      this.router.navigate(['/login/1']);
      window.location.reload();
    }
  }

  // ----------------- Ocultar la barra de navegación -----------------
  /**
   * Metodo para ocultar la barra de navegacion
   * @param ocultar true la oculta, false la muestra
   */
  public setOcultarNav(ocultar: boolean): void {
    this.ocultarNav.next(ocultar);
  }

  /**
   * Verificar en LS si se ha ocultado
   * @returns (boolean) true oculta, false normal
   */
  private verificarOcultarNav(): boolean {
    const navegacion: string | null = LSEntity.buscarElementoLS('navegacion');
    if(navegacion) return navegacion === 'true';
    return false;
  }

  // ----------------- Obtener datos del usuario -----------------
  /**
   * Servicio que obtiene usuario
   * @param numEmpl (number) Numero del empleado
   * @returns (Usuario) Usuario que inicio sesion
   */
  public obtenerDatos(numEmpl: number): Usuario {
    const numEmplLS: string | null = LSEntity.buscarElementoLS("numEmpl");
    let usuario!: Usuario;
    
    if(numEmplLS) {
      const numEmplLSInt: number = parseInt(numEmplLS);

      if(numEmplLSInt === numEmpl) {
        usuario = this.usuarioEntity.getEmpleado();
        this.usuarioEntity.setStatusEmpleado(usuario.status);
      }
    }

    return usuario;
  }

  /**
   * Servicio que obtiene el numero del empleado en el LS
   * @returns (number) numero del empleado almacenado en LS (0 en caso de no haber)
   */
  public obtenerNumEmplLS(): number {
    const numEmplLS: string | null = LSEntity.buscarElementoLS('numEmpl');
    if(numEmplLS) {
      return parseInt(numEmplLS); 
    } 
    return 0;
  }

  /**
   * Asignar un valor al check del estatus del empleado
   * @param status (string) estatus del empleado
   */
  public setStatusCheck(status: string): void {
    this.statusCheck.next(status);
  }

  // ----------------- formulario -----------------
  /**
   * Inicializar formulario para modificar el usuario
   * @returns (FormGroup)
   */
  public formInit(modificar: boolean): FormGroup {
    return this.fb.group({
      nombres: [{value: '', disabled: modificar}, Validators.required],
      apellidoP: [{value: '', disabled: modificar}, Validators.required],
      apellidoM: [{value: '', disabled: modificar}],
      numEmpl: [{value: '', disabled: modificar}, Validators.required],
      passwd: [{value: '', disabled: modificar}],
      passwdRep: [{value: '', disabled: modificar}],
      rol: [{value: '', disabled: modificar}, Validators.required],
      puesto: [{value: '', disabled: modificar}, Validators.required],
      area: [{value: '', disabled: modificar}, Validators.required],
    });
  }

  /**
   * 
   * @param usuario (Usuario) Usuario a mostrar valores
   * @param formulario (FromGroup) Formulario que mostrara los valores
   * @returns (FormGroup)
   */
  public modificarUsuario(usuario: Usuario, formulario: FormGroup): FormGroup {
    if(usuario) {
      formulario.patchValue({
        nombres: usuario.nombres,
        apellidoP: usuario.apellidoP,
        apellidoM: usuario.apellidoM,
        numEmpl: usuario.numEmpl,
        rol: usuario.rol.id,
        puesto: usuario.puesto.id,
        area: usuario.area.id
      });
    }
    return formulario
  }

  /**
   * Modificar campo dependiendo el perfil para modificar un campo o no
   * @param usuario (Usuario) usuario que quiere modificar campos
   * @param componenteId (number) id del componente
   * @returns (boolean) si podra modificar o no
   */
  public modificarCampo(usuario: Usuario, componenteId: number): boolean {
    if(usuario) {
      const perfiles: Perfil[] = usuario.perfil;
      return perfiles.some(p => p.acceso.id === componenteId);
    }
    return false;
  }

  // ----------------- Enviar al Backend -----------------
  /**
   * Validar las contraseñas
   * @param passwd (string) contraseña
   * @param passwdRep (string) validar cobtraseña
   * @returns (boolean) Si la validacion es correcta 
   */
  public validarContraseñas(passwd: string, passwdRep: string): boolean {

    if(!passwd || !passwdRep) {
      AppService.setMensaje("Las contraseñas son necesarias");
      return false;
    }

    if(passwd !== passwdRep) {
      AppService.setMensaje("las contraseñas no coinciden");
      return false;
    }

    return true;
  }
}
