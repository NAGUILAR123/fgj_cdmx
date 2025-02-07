import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Usuario } from "../Types/UsuariosType";
import { BehaviorSubject, Observable } from "rxjs";
import { AppService } from "../../app/app.service";
import { Injectable } from "@angular/core";
import { UsuarioDTO } from "../DTO/UsuarioDto";
import { PostMensaje } from "../Types/PostMensajeType";
import { LSEntity } from "./localStorage.model";


@Injectable({
    providedIn: 'root'
})
export class UsuarioEntity {

    // Atrubutos
    private numEmpl!: number;
    private usuario!: Usuario;

    // usuario de la sesion
    private usuarioSesion!: Usuario;

    // Ruta api backend
    private ulrUsuarioSesion: string = `${AppService.back}/usuario/sesion`;
    private ulrUsuario: string = `${AppService.back}/usuario`;

    // Estatus del usuario
    private statusUsuario: BehaviorSubject<number> = new BehaviorSubject<number>(0);
    public $statusUsuario: Observable<number> = this.statusUsuario.asObservable();

    constructor(private http: HttpClient) { }

    // ---------------------------- PETICIONES ----------------------------

    /**
     * Obtener inforacion basica del usuario que inicio sesión
     * @param numEmpl (number) Numero de empleado que incio sesion
     * @returns (Observable<Usuario>)
     */
    public obtenerUsuarioSesion(numEmpl: number): Observable<Usuario> {
        return this.http.get<Usuario>(`${this.ulrUsuarioSesion}/${numEmpl}`);
    }

    /**
     * Obtener el empleado
     * @param numEmpl (number) Numero de empleado
     * @returns (Observable<Usuario>) Usuario
     */
    public obtenerUsuario(numEmpl: number): Observable<Usuario> {
        return this.http.get<Usuario>(`${this.ulrUsuario}/${numEmpl}`);
    }

    /**
     * Actualizar la foto del usuario
     * @param body (FormData) Cuerpo de la petición
     * @returns (Observable<UsuarioDto) Respuesta de la petición
     */
    public actualizarFoto(body: FormData): Observable<UsuarioDTO> {
        return this.http.post<UsuarioDTO>(``, body);
    }

    /**
     * Actualizar usuario
     * @param body (UsuarioDto) Cuerpo de la petición
     * @returns (Observable<UsuarioDto) Respuesta de la petición
     */
    public actualizarUsuario(numEmpl: number, body: FormData): Observable<PostMensaje> {
        if(body.get('imagen') && body.get('datos')) {
            console.log('datos y foto');
            
            return this.http.post<PostMensaje>(`${this.ulrUsuario}/foto/${numEmpl}`, body);
        } else if(body.get('imagen')) {
            console.log('solo foto');
            
            return this.http.post<PostMensaje>(`${AppService.back}/foto/${numEmpl}`, body);
        } else {
            console.log('solo datos');
            
            return this.http.post<PostMensaje>(`${this.ulrUsuario}/${numEmpl}`, body);
        }
    }

    /**
     * Actualizar el usuario con su foto
     * @param body (FormData) Cuerpo de la petición
     * @returns (Observable<UsuarioDto) Respuesta de la petición
     */
    public actualizarUsuarioFoto(numEmpl: number, body: FormData): Observable<PostMensaje> {
        return this.http.post<PostMensaje>(`${this.ulrUsuario}/foto/${numEmpl}`, body);
    }

    // ---------------------- GETTERS Y SETTERS ----------------------
    /**
   * Almacenar el numero de empleado
   * @param num (number) numero de empleado
   */
    public setNumEmpl(num: number) {
        this.numEmpl = num;
    }

    /**
     * Obtener el numero de empleado
     * @returns (number) Numero de empleado
     */
    public getNumEmpl(): number {
        return this.numEmpl;
    }

    /**
     * Obtener el numero de empleado que inicio sesion
     * @returns (number) Numero de empleado que inicio sesion
     */
    public getNumEmplSesion(): number {
        const num: string | null = LSEntity.buscarElementoLS('numEmpl');
        const numEmplLS: number = num ? parseInt(num) : 0;
        return numEmplLS;
    }


    /**
     * Insertar usuario que incio sesion
     * @param usuario (Usuario) Usuario que incio sesion
     */
    public setUsuarioSesion(usuario: Usuario): void {
        this.usuarioSesion = usuario;
    }


    /**
     * Obtener usuario  que incio sesion
     * @returns (Usuario) Usuario que inicio sesion
     */
    public getUsuarioSesion(): Usuario {
        return this.usuarioSesion;
    }

    /**
     * Insertar un empleado
     * @param usuario (Usuario)
     */
    public setEmpleado(usuario: Usuario): void {
        this.usuario = usuario;
    }

    /**
     * Obtener el empledo
     * @returns (Usuario) empleado
     */
    public getEmpleado(): Usuario {
        return this.usuario;
    }

    /**
     * Actualizar el estatus del empleado
     * @param status (number) Estatus del usuario
     */
    public setStatusEmpleado(status: number): void {
        this.statusUsuario.next(status);
    }

    public getStatusEmpleado(status: number): string {
        return status === 1 ? 'ACTIVO' : 'INACTIVO';    
    }
}