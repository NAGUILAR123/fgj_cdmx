package org.fgjcdmx.Services;

import com.google.gson.Gson;
import org.fgjcdmx.DTO.UsuarioDto;
import org.fgjcdmx.Entitys.Area;
import org.fgjcdmx.Entitys.Generico;
import org.fgjcdmx.Entitys.Puesto;
import org.fgjcdmx.Entitys.Usuario;
import org.fgjcdmx.Impl.CatalogosImpl;
import org.fgjcdmx.Impl.UsuarioImpl;
import org.fgjcdmx.Utils.Archivos;
import org.fgjcdmx.Utils.Encriptar;
import org.fgjcdmx.Utils.Entorno;
import org.fgjcdmx.Utils.Mensaje;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioImpl usuarioImpl;

    @Autowired
    private CatalogosImpl catImpl;

    /**
     * Consultar usuario que inicio sesión
     * @param numEmpl (Long) Numero de empleado
     * @return (Usuario) Usuario que inicio sesion
     */
    public Usuario consultarUsuarioSesion(Long numEmpl) {
        return usuarioImpl.consultarUsuarioSesion(numEmpl);
    }

    /**
     * Servicio4 que consulta el usuario
     * @param numEmpl (Long) Numero de empleado
     * @return Objeto usuario
     */
    public Usuario consultarUsuario(Long numEmpl) {
        return usuarioImpl.consultarUsuario(numEmpl);
    }



    /**
     * Servicio que consulta los puestos
     * @param status (Integer) status del puesto [1 = Activo, 0 = Inactivo]
     * @return (List<Puesto>) Lista de puestos
     */
    public List<Puesto> consultarPuestos(Integer status) {
        return catImpl.consultarPuestos(status);
    }

    /**
     * Servicio que consulta los roles
     * @param status (Integer) status del rol [1 = Activo, 0 = Inactivo]
     * @return (List<Puesto>) Lista de roles
     */
    public List<Generico> consultarRoles(Integer status) {
        return catImpl.consultarRoles(status);
    }

    /**
     * Servicio que consulta las areas
     * @param status (Integer) status del area [1 = Activo, 0 = Inactivo]
     * @return (List<Puesto>) Lista de areas
     */
    public List<Area> consultarAreas(Integer status) {
        return catImpl.consultarAreas(status);
    }


    /**
     * Actualizar el usuario
     * @param numEmplAdmin (Long) Numero de empleado que realizo los cambios
     * @param dto (String) JSON en cadena del objeto a manejar
     * @param img (MultipartFile) Imagen recibida desde el Front
     * @return (<String, Object>) mensaje<Object>, error<Boolean>
     * @throws IOException
     */
    public Map<String, Object> actualizarEmpleado(Long numEmplAdmin, String dto, MultipartFile img) throws IOException {
        Map<String, Object> respuesta = new HashMap<>();

        Gson gson = new Gson();
        UsuarioDto usuario = gson.fromJson(dto, UsuarioDto.class);
        long numEmpl = usuario.getNumEmpl();

        String rutaCarpeta = "";

        respuesta = actualizarEmpleado(numEmpl, usuario);
        if((boolean) respuesta.get("error")) return respuesta;

        if(usuario.getValidarPass() && !usuario.getPassword().isEmpty()) {
            String password = usuario.getPassword();
            String passwordEncrypted = Encriptar.encriptarPassword(password);
            respuesta = actualizarPassword(numEmpl, passwordEncrypted);
            if((boolean) respuesta.get("error")) return respuesta;
        }

        if(img != null) {
            System.out.println("guadrando imagen");
            String carpetaImagen = Entorno.getVariable("URL_CARPETA_PRINC") + "/perfil_img/" + numEmpl;
            String nombreOriginal = img.getOriginalFilename();
            String extension = nombreOriginal.substring(nombreOriginal.lastIndexOf(".") + 1);
            String nombreArchivo = numEmpl + "." + extension;

            if(!extension.equals("webp")) respuesta = actualizarFotoPerfil(numEmpl, img, carpetaImagen, nombreArchivo);
            if((boolean) respuesta.get("error")) return respuesta;
        }

        int generarRegistro = usuarioImpl.registrarCambiosUsuarios(numEmpl, numEmplAdmin);
        if(generarRegistro == 0) return Mensaje.error("Error al guardar el registro");

        respuesta = Mensaje.exito("Actualizacion exitosa");
        respuesta.put("urlImagen", rutaCarpeta);
        return respuesta;
    }

    /**
     * Servicio que almacena y actualiza registros para la foto de perfil
     * @param numEmpl (Long) Numero de empleado
     * @param img (MultipartFile) Datos de la imagen a guardar
     * @param carptaDondeAlmacenar (String) Carpeta donde se guardara la imagen
     * @param nombreArchivo (String) Nombre de la imagen para renombrar
     * @return (Map<String, Object>) mensaje<Object> y error<Boolean>
     * @throws IOException
     */
    public Map<String, Object> actualizarFotoPerfil(Long numEmpl, MultipartFile img, String carptaDondeAlmacenar, String nombreArchivo) throws IOException {
        int carpeta = Archivos.crearCarpeta(carptaDondeAlmacenar);
        if(carpeta == 0) return Mensaje.error("No se encuentra la ruta para almacenar la imagen");

//        MultipartFile imgWebP = Archivos.converitImagenAWebp(img, nombreArchivo);
        String rutaCarpeta = Archivos.almacenarArchivo(img, carptaDondeAlmacenar);

        int guardarFoto = usuarioImpl.actualizarFotoPerfil(numEmpl, rutaCarpeta);
        if(guardarFoto == 0) return Mensaje.error("No se pudo actualizar la foto de perfil");

        return Mensaje.exito(rutaCarpeta);
    }

    /**
     * Actualizar el empleado
     * @param numEmpl (Long) Numero de empleado
     * @param dto (UsuarioDto) datos que recibe desde el Front
     * @return (Map<String, Object>) mensaje<Object> y error<Boolean>
     */
    public Map<String, Object> actualizarEmpleado(Long numEmpl, UsuarioDto dto) {
        int actualizarUsuario = usuarioImpl.actualizarEmpleado(numEmpl, dto);
        if(actualizarUsuario == 0) return Mensaje.error("No hubo cambios");
        else return Mensaje.exito("Actualizacion de datos exitosa");
    }

    /**
     * Actualizr la contraseña del empleado
     * @param numEmpl (Long) Numero de empleado
     * @param password (String) Contraseña
     * @return (Map<String, Object>) mensaje<Object> y error<Boolean>
     */
    public Map<String, Object> actualizarPassword(Long numEmpl, String password) {
        int upPass = usuarioImpl.actualizarPassword(numEmpl, password);
        if(upPass == 0) return Mensaje.error("No hubo cambios");
        else return Mensaje.exito("Actualizacion de contraseña exitosa");
    }

}
