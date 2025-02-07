package org.fgjcdmx.Controllers;

import org.fgjcdmx.Services.UsuarioService;
import org.fgjcdmx.Utils.Mensaje;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("api/")
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;

    @GetMapping("usuario/sesion/{numEmpl}")
    public ResponseEntity<?> obtenerUsuarioSesion(@PathVariable("numEmpl") Long numEmpl) {
        return ResponseEntity.ok().body(usuarioService.consultarUsuarioSesion(numEmpl));
    }

    /**
     * Obtener el usuaro desde una peticion GET
     * @param numEmpl (Long) Numero de empleado
     * @return ResponseEntity<Usuario>
     */
    @GetMapping("usuario/{numEmpl}")
    public ResponseEntity<?> obtenerUsuario(@PathVariable("numEmpl") Long numEmpl) {
        return ResponseEntity.ok().body(usuarioService.consultarUsuario(numEmpl));
    }

    /**
     * Obtener el los puestos desdea peticion GET
     * @param status (Integer) Status de los puestos
     * @return ResponseEntity<List<Puesto>>
     */
    @GetMapping("puestos/{status}")
    public ResponseEntity<?> obtenerPuestos(@PathVariable("status") Integer status) {
        return ResponseEntity.ok().body(usuarioService.consultarPuestos(status));
    }

    /**
     * Obtener el los roles desdea peticion GET
     * @param status (Integer) Status de los roles
     * @return ResponseEntity<List<Generic>>
     */
    @GetMapping("roles/{status}")
    public ResponseEntity<?> obtenerRoles(@PathVariable("status") Integer status) {
        return ResponseEntity.ok().body(usuarioService.consultarRoles(status));
    }

    /**
     * Obtener el las areas desdea peticion GET
     * @param status (Integer) Status de las areas
     * @return ResponseEntity<List<Area>>
     */
    @GetMapping("areas/{status}")
    public ResponseEntity<?> obtenerAreas(@PathVariable("status") Integer status) {
        return ResponseEntity.ok().body(usuarioService.consultarAreas(status));
    }

    /**
     * Recibir los datos del usuario con foto desde una peticion POST
     * @param numEmpl (Long) Numero de empleado que hizo el cambio
     * @param img (MultipartFile) Imagen del usuario
     * @param dto (String) Datos del usuario en formato JSON
     */
    @PostMapping("usuario/foto/{numEmpl}")
    public ResponseEntity<?> recibirDatosUsuarioFoto(@PathVariable("numEmpl") Long numEmpl,
                                                     @RequestParam("imagen") MultipartFile img,
                                                     @RequestParam("datos") String dto) {
        Map<String, Object> respuesta = new HashMap<>();

        System.out.println("usuario-foto");

        try {
            respuesta = this.usuarioService.actualizarEmpleado(numEmpl, dto, img);
            if((boolean) respuesta.get("error")) return ResponseEntity.badRequest().body(respuesta);

            System.out.println(respuesta.get("mensaje"));

            respuesta = Mensaje.exito("Usuario actualizado con exito");
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            respuesta = Mensaje.error(e.getLocalizedMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(respuesta);
        }
    }

    /**
     * Recibir los datos del usuario sin foto desde una peticion POST
     * @param numEmpl (Long) Numero de empleado
     * @param dto (String) Datos del usuario en formato JSON
     */
    @PostMapping("usuario/{numEmpl}")
    public ResponseEntity<?> recibirDatosUsuario(@PathVariable("numEmpl") Long numEmpl,
                                                 @RequestParam("datos") String dto) {
        Map<String, Object> respuesta = new HashMap<>();

        System.out.println("usuario");

        try {
            respuesta = this.usuarioService.actualizarEmpleado(numEmpl, dto, null);
            if((boolean) respuesta.get("error")) return ResponseEntity.badRequest().body(respuesta);

            respuesta = Mensaje.exito("Usuario actualizado con exito");
            return ResponseEntity.ok().body(respuesta);
        } catch (Exception e) {
            respuesta.put("error", true);
            respuesta.put("mensaje", e.getLocalizedMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(respuesta);
        }
    }

    /**
     * Actualizar la foto de perfil del usuario
     * @param numEmpl (Long) Numero de empleado
     * @param img (MultipartFile) Imagen del usuario
     */
    @PostMapping("foto/{numEmpl}")
    public ResponseEntity<?> recibirDatosFoto(@PathVariable("numEmpl") Long numEmpl,
                                              @RequestParam("imagen") MultipartFile img) {
        Map<String, Object> respuesta = new HashMap<>();

        System.out.println("foto");

        try {
            respuesta = this.usuarioService.actualizarEmpleado(numEmpl, null, img);
            if((boolean) respuesta.get("error")) return ResponseEntity.badRequest().body(respuesta);

            respuesta = Mensaje.exito("Foto actualizada con exito");
            return ResponseEntity.ok().body(respuesta);
        } catch (Exception e) {
            respuesta.put("error", true);
            respuesta.put("mensaje", e.getLocalizedMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(respuesta);
        }
    }

}
