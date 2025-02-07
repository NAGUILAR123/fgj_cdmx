package org.fgjcdmx.Entitys;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Unidad {
    private Long id;
    private Area fiscalia;
    private Agencia agencia;
    private Long cveUnidad;
    private String acronimo;
    private String descripcion;
    private Long idUn;
    private Integer status;
}
