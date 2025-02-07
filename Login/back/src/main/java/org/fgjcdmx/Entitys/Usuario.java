package org.fgjcdmx.Entitys;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Usuario {
    private Long numEmpl;
    private String password;
    private String nombres;
    private String apellidoP;
    private String apellidoM;
    private Area area;
    private List<Perfil> perfil;
    private Puesto puesto;
    private Generico rol;
    private String urlImagen;
    private LocalDate ultimoCambio;
    private Integer status;
    private Unidad unidad;

    /**
     * Retornar la entidad en una cadena de texto
     * @return (String) Entidad Usuario
     */
    public String toString() {
        return "Usuario{\n" +
                "    numEmpl=" + numEmpl + ",\n" +
                "    password='" + password + "',\n" +
                "    nombres='" + nombres + "',\n" +
                "    apellidoP='" + apellidoP + "',\n" +
                "    apellidoM='" + apellidoM + "',\n" +
                "    area=" + area + ",\n" +
                "    puesto=" + puesto + ",\n" +
                "    urlImagen='" + urlImagen + "',\n" +
                "    ultimoCambio=" + ultimoCambio + ",\n" +
                "    status=" + status + "\n" +
                '}';
    }
}
