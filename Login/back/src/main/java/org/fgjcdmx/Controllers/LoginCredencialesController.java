package org.fgjcdmx.Controllers;

import jakarta.validation.Valid;
import org.fgjcdmx.DTO.LoginCredenciales;
import org.fgjcdmx.Services.LoginCredencialesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("api/")
public class LoginCredencialesController {

    @Autowired
    private LoginCredencialesService credencialesService;

    Map<String, Object> usuario = new HashMap<>();

    /**
     * Primer incio de sesión
     * @param body
     * @param r
     * @return
     */
    @PostMapping("credenciales")
    public ResponseEntity<?> obtenerCredenciales(@Valid @RequestBody LoginCredenciales body, BindingResult r) {
        ResponseEntity<Map<String, Object>> validar = validar(body, r);
        if(validar != null) return validar;

        this.usuario = credencialesService.obtenerCredenciales(body);

        if((boolean) this.usuario.get("error")) return ResponseEntity.status(HttpStatus.FORBIDDEN).body(usuario.get("mensaje"));
        if(usuario.get("status").equals(0)) return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Usuario inactivo");

        return ResponseEntity.ok().body(usuario);
    }

    /**
     * Verificar que los datos esten en la variable (para pasar al segundo inicio de sesión)
     * @return
     */
    @GetMapping("credenciales/verificar")
    public ResponseEntity<?> verificarLogin1() {
        Long numEmpl = (Long) this.usuario.get("numEmpl");
        return ResponseEntity.ok().body(numEmpl);
    }

    // ----------------------------------------- VALIDACIONES ----------------------------------------- //
    // Validación gral
    private ResponseEntity<Map<String, Object>> validar(LoginCredenciales body, BindingResult r) {
        ResponseEntity<Map<String, Object>> validacion = this.validarBody(r);
        if(validacion != null) return validacion;

        if(body.getNumEmpl() == null || body.getPassword().isEmpty()) {
            return ResponseEntity.badRequest().body(Collections.singletonMap("error", "Los campos no pueden ir vacios"));
        }

        return null;
    }

    /**
     * Validar datos del front
     * @param r
     * @return
     */
    private ResponseEntity<Map<String, Object>> validarBody(BindingResult r) {
        Map<String, Object> respuesta = new HashMap<>();
        if(r.hasErrors()) {
            r.getFieldErrors().forEach(e -> respuesta.put("error", String.format("El campo %s %s", e.getField(), e.getDefaultMessage())));
            return ResponseEntity.badRequest().body(respuesta);
        }
        return null;
    }
}
