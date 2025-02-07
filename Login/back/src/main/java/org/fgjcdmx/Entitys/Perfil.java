package org.fgjcdmx.Entitys;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Perfil {
    private Long id;
    private Long numEmpl;
    private Generico acceso;
    private Integer visualizar;
    private Integer modificar;
    private Integer eliminar;
    private Integer status;
}
