import { Agencia } from "./AgenciaType";
import { Area } from "./AreaType";

export interface Unidad {
    id: number;
    fiscalia: Area;
    agencia: Agencia;
    unidad: number;
    acronimo: string;
    descripcion: string;
    idUn: number;
    status: number;
}