package org.fgjcdmx.Repository;

import org.fgjcdmx.DTO.LoginCredenciales;
import org.springframework.dao.EmptyResultDataAccessException;

public interface ILoginCredenciales {

    /**
     * Consultar credenciales para el inicio de sesion
     * @param numEmpl
     * @return
     * @throws EmptyResultDataAccessException
     */
    LoginCredenciales consultarCredenciales(Long numEmpl, Long sistema) throws EmptyResultDataAccessException;

}
