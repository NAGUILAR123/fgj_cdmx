package org.fgjcdmx.DTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Map;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class TamizajeDto {
    private String nombre;
    private Map<String, Object> formulario;
}
