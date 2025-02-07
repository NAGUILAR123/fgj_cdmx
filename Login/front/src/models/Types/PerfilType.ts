import { Generico } from "./GenericoType";

export interface Perfil {
    id: number;
    numEmpl: number;
    acceso: Generico;
    visualizar: number;
    modificar: number;
    eliminar: number;
    status: number;
}