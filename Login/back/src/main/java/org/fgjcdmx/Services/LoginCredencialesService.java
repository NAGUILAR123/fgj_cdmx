package org.fgjcdmx.Services;

import org.fgjcdmx.Utils.Encriptar;
import org.fgjcdmx.Utils.Entorno;
import org.fgjcdmx.DTO.LoginCredenciales;
import org.fgjcdmx.Impl.LoginCredencialesImpl;
import org.fgjcdmx.Utils.Efirma.ObtFirma;
import org.fgjcdmx.Utils.Archivos;
import org.fgjcdmx.Utils.Mensaje;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Service
public class LoginCredencialesService {

    @Autowired
    private LoginCredencialesImpl credencialesImpl;

    /**
     * Obtener las credenciales para el primer paso del inicio de sesión
     * @param body
     * @return
     */
    public Map<String, Object> obtenerCredenciales(LoginCredenciales body) {
        Map<String, Object> usuario = new HashMap<>();

        Long numEmpl = body.getNumEmpl();
        String passwd = body.getPassword();

        LoginCredenciales credenciales = credencialesImpl.consultarCredenciales(numEmpl, 1L);
        if(!Encriptar.validarPassword(passwd, credenciales.getPassword())) return Mensaje.error("Credenciales erroneas");


        usuario = Mensaje.exito("Usuario encontrado");
        usuario.put("numEmpl", credenciales.getNumEmpl());
        usuario.put("status", credenciales.getStatus());

        return usuario;
    }
}
