import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { AppService } from "../../app/app.service";
import { Credenciales } from "../Types/CredencialesType";
import { Observable } from "rxjs";

@Injectable({
    providedIn: 'root'
})
export class LoginEntity {
    // Ruta api backend
    private credencialesUrl: string = `${AppService.back}/credenciales`;

    constructor(private http: HttpClient) {}

    /**
   * Peticion para el primer login
   * @param body Credenciales type
   * @returns 
   */
  public loginCredenciales(body: Credenciales): Observable<any> {
    return this.http.post(`${this.credencialesUrl}`, body);
  }

  /**
   * Peticion para verificar haber pasado por el primer login
   * @returns 
   */
  public verificarLogin1(): Observable<any> {
    return this.http.get(`${this.credencialesUrl}/verificar`)
  }

  /**
   * Peticion para el segundo login
   * @param body FormData type
   * @returns 
   */
  public loginEfirma(body: FormData): Observable<any> {
    return this.http.post(`${this.credencialesUrl}/efirma`, body);
  }
}