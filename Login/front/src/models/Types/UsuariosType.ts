import { Area } from "./AreaType";
import { Generico } from "./GenericoType";
import { Perfil } from "./PerfilType";
import { Puesto } from "./PuestoType";
import { Unidad } from "./UnidadType";

export interface Usuario {
    numEmpl: number;
    password: string;
    nombres: string;
    apellidoP: string;
    apellidoM: string;
    area: Area;
    perfil: Perfil[];
    puesto: Puesto;
    rol: Generico;
    urlImagen: string;
    ultimoCambio: Date;
    status: number;
    unidad: Unidad;
}