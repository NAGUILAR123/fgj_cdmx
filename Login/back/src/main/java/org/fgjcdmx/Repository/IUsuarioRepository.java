package org.fgjcdmx.Repository;

import org.fgjcdmx.DTO.UsuarioDto;
import org.fgjcdmx.Entitys.Usuario;

public interface IUsuarioRepository {

    /**
     * Datos básicos Grales para mostrar pantalla
     * @param numEmpl (Long) Numero de empleado
     * @return (Usuario) Empleado que incio sesión
     */
    Usuario consultarUsuarioSesion(Long numEmpl);

    /**
     * Implementacion que consulta empleado
     * @param numEmpl (Long) numero de empleado
     * @return (Usuario)
     */
    Usuario consultarUsuario(Long numEmpl);

    /**
     * Implementacion que actualiza la tabla de empelados
     * @param numEmpl (Long) numero de empleado
     * @param dto (usuarioDto) datos para actualizar
     * @return (Integer) Numero de filas afectadas
     */
    Integer actualizarEmpleado(Long numEmpl, UsuarioDto dto);

    /**
     * Implementacion que actualiza la contraseña del usuario
     * @param numEmpl (Long) Numero del empleado al que se actualizara
     * @param password (String) Contraseña a ingresar
     * @return (Integer) Numeporo de filas afectadas
     */
    Integer actualizarPassword(Long numEmpl, String password);

    /**
     * Actualizar la fotod de perfil
     * @param numEmpl (Long) Numero del empleado que actualiza su foto
     * @param urlFoto (String) Ruta de la foto de perfil
     * @return (Integer) Numero de filas afectadas
     */
    Integer actualizarFotoPerfil(Long numEmpl, String urlFoto);

    /**
     * Implementacion que registra los cambios realizados al usuario
     * @param numEmpl (Long) Numero de empleado al que se actualizo
     * @param emplUpdate (Long) Numero de empleaedo que hizo el cambio
     * @return (Integer) Numero de filas afectadas
     */
    Integer registrarCambiosUsuarios(Long numEmpl, Long emplUpdate);
}
