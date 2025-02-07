package org.fgjcdmx.Services;

import org.fgjcdmx.Entitys.Generico;
import org.fgjcdmx.Impl.CatalogosImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CatalogosService {

    // Instancia de CatalogosImpl
    @Autowired
    private CatalogosImpl catalogosImpl;

    /**
     * Servicio que consulta los sexos
     * @return (List<Generico>) Listado de sexos
     */
    public List<Generico> consultarSexos() {
        return catalogosImpl.consultarSexos();
    }

    /**
     * Servicio que consulta los generos
     * @return (List<Generico>) Listado de generos
     */
    public List<Generico> consultarGeneros() {
        return catalogosImpl.consultarGeneros();
    }

    /**
     * Servicio que consulta las ocupaciones
     * @return (List<Generico>) Listado de ocupaciones
     */
    public List<Generico> consultarOcupaciones() {
        return catalogosImpl.consultarOcupaciones();
    }

    /**
     * Servicio que consulta los estados civiles
     * @return (List<Generico>) Listado de los estados civiles
     */
    public List<Generico> consultarEstadoCivil() {
        return catalogosImpl.consultarEstadoCivil();
    }

    /**
     * Servicio que consulta las religiones
     * @return (List<Generico>) Listado de religiones
     */
    public List<Generico> consultarReligiones() {
        return catalogosImpl.consultarReligiones();
    }

    /**
     * Servicio que consulta las escolaridades
     * @return (List<Generico>) Listado de escolaridades
     */
    public List<Generico> consultarEscolaridad() {
        return catalogosImpl.consultarEscolaridad();
    }
}
