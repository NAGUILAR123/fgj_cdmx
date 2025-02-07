import { Area } from "./AreaType";

export interface Agencia {
    id: number;
    fiscalia: Area;
    agencia: number;
    acronimo: string;
    descripcion: string;
    direccion: string;
    instancia: string;
    direccionIP: string;
    turbo: number;
    rutaPericiales: string;
    idAge: number;
    codigoPostal: number;
    recibe: number;
    especial: number;
    status: number;
}