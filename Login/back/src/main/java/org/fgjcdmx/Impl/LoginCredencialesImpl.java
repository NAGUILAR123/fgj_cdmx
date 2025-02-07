package org.fgjcdmx.Impl;

import org.fgjcdmx.DTO.LoginCredenciales;
import org.fgjcdmx.Repository.ILoginCredenciales;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class LoginCredencialesImpl implements ILoginCredenciales {

    @Autowired
    private NamedParameterJdbcTemplate template;

    @Override
    public LoginCredenciales consultarCredenciales(Long numEmpl, Long sistema) throws EmptyResultDataAccessException {
        Map<String, Object> params = new HashMap<>();
        params.put("numEmpl", numEmpl);
        params.put("sistema", sistema);

        String query = "SELECT e.num_empl, c.passwd, e.rfc, e.status "
                + "FROM tb_empleados AS e "
                + "INNER JOIN tb_contraseñas AS c ON e.num_empl = c.num_empl "
                + "WHERE e.num_empl = :numEmpl AND c.passwd_sist = :sistema;";

        return template.queryForObject(
            query, params, (rs, rowNum) -> new LoginCredenciales(
                    rs.getLong("num_empl"),
                    rs.getString("passwd"),
                    rs.getString("rfc"),
                    rs.getInt("status")
            )
        );
    }


}
