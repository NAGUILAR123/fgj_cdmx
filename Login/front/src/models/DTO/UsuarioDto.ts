import { Area } from "../Types/AreaType";
import { Generico } from "../Types/GenericoType";
import { Puesto } from "../Types/PuestoType";

export interface UsuarioDTO {
    numEmpl: number;
    nombres: string;
    apellidoP: string;
    apellidoM: string;
    password: string;
    passwordRep: string;
    validarPass: boolean;
    area: Area;
    rol: Generico;
    puesto: Puesto;
    fecha: Date;
    status: number;
}