package org.fgjcdmx.Utils;

import java.util.HashMap;
import java.util.Map;

public class Mensaje {

    /**
     * Generar un mensaje ordinario
     * @param msj (String) Mensaje
     * @return (Map<String, Object>) Mensaje
     */
    public static Map<String, Object> mensaje(String msj) {
        Map<String, Object> mensaje = new HashMap<>();
        mensaje.put("mensaje", msj);
        return mensaje;
    }

    /**
     * Generar un mensaje de exito
     * @param msj (String) Mensaje
     * @return (Map<String, Object>) Mensaje
     */
    public static Map<String, Object> exito(String msj) {
        Map<String, Object> mensaje = new HashMap<>();
        mensaje.put("error", false);
        mensaje.put("mensaje", msj);
        return mensaje;
    }

    /**
     * Generar un mensaje de error
     * @param msj (String) Mensaje de error
     * @return (Map<String, Object>) Mensaje
     */
    public static Map<String, Object> error(String msj) {
        Map<String, Object> mensaje = new HashMap<>();
        mensaje.put("error", true);
        mensaje.put("mensaje", msj);
        return mensaje;
    }
}
