package org.fgjcdmx.Entitys;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Agencia {
    private Long id;
    private Area fiscalia;
    private Long agencia;
    private String acronimo;
    private String descripcion;
    private String direccion;
    private String instancia;
    private String direccionIP;
    private Integer turbo;
    private String rutaPericiales;
    private Long idAge;
    private Integer codigoPostal;
    private Integer recibe;
    private Integer especial;
    private Integer status;
}
