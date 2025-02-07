package org.fgjcdmx.Entitys;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Puesto {
    private Long id;
    private String codigo;
    private String nombre;
    private Integer status;
}
