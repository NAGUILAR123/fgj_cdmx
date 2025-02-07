package org.fgjcdmx.Repository;

import org.fgjcdmx.Entitys.*;

import java.util.List;

public interface ICatalogosRepository {

    /**
     * Implementacion que  obtiene todos los puestos
     * @param status (Integer) status del puesto [1 = Activo, 0 = Inactivo]
     * @return (List<Puesto>) Listado de puestos
     */
    List<Puesto> consultarPuestos(Integer status);

    /**
     * Implementacion que obtiene todos los roles
     * @param status (Integer) status del rol [1 = Activo, 0 = Inactivo]
     * @return (List<Generico>) Listado de roles
     */
    List<Generico> consultarRoles(Integer status);

    /**
     * Implementacion que obtiene todas las areas
     * @param status (Integer) status del area [1 = Activo, 0 = Inactivo]
     * @return (List<Area>) Listado de areas
     */
    List<Area> consultarAreas(Integer status);

    /**
     * Implementacion que consulta area
     * @param id (Long) id del area
     * @return (Area) Area consultada
     */
    Area consultarArea(Long id);

    /**
     * Implementacion que consulta puesto
     * @param id (Long) id del puesto
     * @return (Puesto) Puesto consultado
     */
    Puesto consultarPuesto(Long id);

    /**
     * Implementacion que obtiene todos los perfiles del usuario en ese sistema
     * @param numEmpl (Long) Numero de empleado
     * @param sistema (Long) Id del sistema
     * @return (List<Perfil>) Listado de perfiles
     */
    List<Perfil> consultarPerfiles(Long numEmpl, Long sistema);

    /**
     * Implementacion que consulta sistema
     * @param id (Long) id del sistema
     * @return (Generico) Listado de sistemas
     */
    Generico consultarSistema(Long id);

    /**
     * Implementacion que consulta los accesos
     * @param id (Long) id del acceso
     * @return (Generico) Acceso consultado
     */
    Generico consultarAcceso(Long id);

    /**
     * Implementacion que  consulta los roles
     * @param id (Long) id del Rol
     * @return (Generico) Rol consultado
     */
    Generico consultarRol(Long id);

    /**
     * Implementacion que consulta los sexos
     * @return (List<Generico>)  Listado de sexos
     */
    List<Generico> consultarSexos();

    /**
     * Implementacion que consulta los generos
     * @return (List<Generico>) Listado de generos
     */
    List<Generico> consultarGeneros();

    /**
     * Implementacion que consulta las ocupaciones
     * @return (List<Generico) Listado de ocupaciones
     */
    List<Generico> consultarOcupaciones();

    /**
     * Implementacion que consulta los estados civiles
     * @return (List<Generico) Listado de los estados civiles
     */
    List<Generico> consultarEstadoCivil();

    /**
     * Implementacion que consulta las religiones
     * @return (List<Generico>) Listado de religiones
     */
    List<Generico> consultarReligiones();
}
