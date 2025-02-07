package org.fgjcdmx.Entitys;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


/**
 * Clase generica que contiene la misma estructura de varias tablas
 */
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Generico {
    private Long id;
    private String nombre;
    private String Descripcion;
    private Integer status;
}
