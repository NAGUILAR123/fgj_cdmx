package org.fgjcdmx.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class UsuarioDto {
    private Long numEmpl;
    private String password;
    private String passwordRepeat;
    private Boolean validarPass;
    private String nombres;
    private String apellidoP;
    private String apellidoM;
    private Integer area;
    private Integer puesto;
    private Integer rol;
    private Integer status;
    private Date fecha;
}
