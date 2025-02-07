import { Injectable } from "@angular/core";
import { BehaviorSubject } from "rxjs";

@Injectable({
    providedIn: 'root'
})
export class LSEntity {

    // cambios en localStorage
    protected static cambiosLS = new BehaviorSubject<any | null>(null);
    public static $cambiosLS = LSEntity.cambiosLS.asObservable();

    /**
     * Hacer cambios en el localStorage
     * @param valor Valor del cambio
     */
    public static setCambiosLS(valor: any): void {
        this.cambiosLS.next(valor);
    }

    /**
     * Almacenar y registrar cambios en el localStorage
     * @param key 
     * @param value 
     */
    public static almacenarLS(key: string, value: any): void {
        localStorage.setItem(key, value);
    }

    /**
     * buscar en localStorage
     * @param key 
     * @returns 
     */
    public static buscarElementoLS(key: string): string | null {
        return localStorage.getItem(key);
    }

    /**
     * Eliminar y registrar cambios en el localStorage
     * @param key llave LS
     */
    public static eliminarElementoLS(key: string): void {
        localStorage.removeItem(key);
    }

    /**
     * Elimina todo el localStorage
     */
    public static eliminarLS(): void {
        localStorage.clear();
        localStorage.setItem('sesion', 'false');

    }

    /**
     * Busca el numero de elementos almacenados en el localStorage
     * @returns 
     */
    public static buscarLS(): number | null {
        return localStorage.length;
    }

}