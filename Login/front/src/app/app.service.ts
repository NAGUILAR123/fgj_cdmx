import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { environments } from '../environments/environment';
import { HttpHeaders } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class AppService {
  // CONEXIONES AL BACKEND
  private static mapping: string = "api";
  public static back: string = `${environments.url}:${environments.puerto}/${AppService.mapping}`;

  // Datos del sistema
  private sistemaId: number = environments.sistemaId;
  public static sistema: string = environments.sistema;
  public static ciudad: string = environments.ciudad;
  public static institucion: string = environments.institucion;
  public static fecha: Date = environments.fecha;

  // Mensajes
  private static mensaje = new BehaviorSubject<string>("");
  public $mensaje: Observable<string> = AppService.mensaje.asObservable();

  // Error
  private static error: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(true);
  public $error: Observable<boolean> = AppService.error.asObservable();

  // Ocultar barra superior
  private static ocultarBarra: BehaviorSubject<boolean> = new BehaviorSubject<boolean>(false);
  public $ocultarBarra: Observable<boolean> = AppService.ocultarBarra.asObservable();

  constructor() { }

  // ---------------- MENSAJES ----------------
  /**
   * Agregar mensaje
   * @param msj mensaje
   * @returns 
   */
  public static setMensaje = (msj: string) => AppService.mensaje.next(msj);

  /**
   * Resetear valor del Mensaje
   * @returns 
   */
  public static resetMensaje = () => AppService.mensaje.next("");

  /**
   * Agregar mensaje y definir si es un error
   * @param msj (string) Mensaje
   * @param error (boolean) es error?
   */
  public static setMensajeAndError(msj: string, error: boolean) {
    this.error.next(error);
    this.mensaje.next(msj);
  }

  // ---------------- ERROR ----------------
  /**
     * Actualizar el estatis de error
     * @param e (error) Estatus de error
     */
  public static setError(e: boolean): void {
    this.error.next(e);
  }

  // ---------------- ERROR ----------------
  /**
   * Ocultar o mostrar barra superior (barra gris)
   * @param ocultar (boolean) Ocultar barra
   */
  public static setOcultarBarra(ocultar: boolean): void {
    AppService.ocultarBarra.next(ocultar);
  }

  // ---------------- ARCHIVOS ----------------
  /**
   * Agregr archivos
   * @param $event ($event) DOM
   * @param limiteSizeByte (number) Peso limite para el archivo
   * @param msjError (String) Mensaje en caso de error
   * @returns (any) Archivo
   */
  public agregarArchivo($event: any, limiteSizeByte: number, msjError: string): any {
    let file: { [key: string]: any } = {};
    const [archivo] = $event.target.files;

    if (archivo.size > limiteSizeByte) {
      AppService.setMensaje(msjError);
    } else {
      file['archivo'] = archivo;
      file['nombre'] = archivo.name;
    }

    return file;
  }
}
