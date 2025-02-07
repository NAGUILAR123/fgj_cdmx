package org.fgjcdmx.Entitys;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Area {
    private Long id;
    private Long fiscalia;
    private Long fiscCant;
    private String nombre;
    private String nombreCorto;
    private String acronimo;
    private String descripcion;
    private Character tipoArea;
    private Long idPJG;
    private Integer status;
}
