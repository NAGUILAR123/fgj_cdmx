package org.fgjcdmx.Impl;

import org.fgjcdmx.DTO.UsuarioDto;
import org.fgjcdmx.Entitys.*;
import org.fgjcdmx.Repository.IUsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

@Repository
public class UsuarioImpl implements IUsuarioRepository {
    @Autowired
    private NamedParameterJdbcTemplate template;

    @Autowired
    private CatalogosImpl catImpl;

    // Datos generales basicos de quien inicio sesión
    @Override
    public Usuario consultarUsuarioSesion(Long numEmpl) {
        Map<String, Object> params = new HashMap<>();
        params.put("numEmpl", numEmpl);

        String query = "SELECT tb_empleados.num_empl, tb_empleados.nomb_empl, tb_empleados.ap_pat, tb_empleados.ap_mat, " +
                "cat_fiscalias.desc_fiscalia, cat_fiscalias.acronimo_fisc, " +
                "cat_roles.nombre_rol, cat_unidades.desc_unidad, cat_agencias.desc_agencia " +
                "FROM tb_empleados " +
                "INNER JOIN cat_roles " +
                "ON tb_empleados.rol_empl = cat_roles.id_rol " +
                "INNER JOIN cat_unidades " +
                "ON tb_empleados.unidad_empl = cat_unidades.id_unidad " +
                "INNER JOIN cat_fiscalias " +
                "ON cat_unidades.cvefiscalia = cat_fiscalias.cvefiscalia " +
                "AND tb_empleados.area_empl = cat_fiscalias.id_area " +
                "INNER JOIN cat_agencias " +
                "ON cat_unidades.cveagencia = cat_agencias.cveagencia " +
                "AND cat_fiscalias.cvefiscalia = cat_agencias.cvefiscalia;";
        
        return template.queryForObject(query, params, (rs, row) -> {
            Usuario u = new Usuario();
            Area a = new Area();
            Generico r = new Generico();
            Unidad un = new Unidad();
            Agencia ag = new Agencia();

            a.setDescripcion(rs.getString("desc_fiscalia"));
            a.setAcronimo(rs.getString("acronimo_fisc"));
            r.setNombre(rs.getString("nombre_rol"));
            un.setDescripcion(rs.getString("desc_unidad"));
            ag.setDescripcion(rs.getString("desc_agencia"));
            ag.setFiscalia(a);
            un.setAgencia(ag);
            un.setFiscalia(a);

            u.setNumEmpl(rs.getLong("num_empl"));
            u.setNombres(rs.getString("nomb_empl"));
            u.setApellidoP(rs.getString("ap_pat"));
            u.setApellidoM(rs.getString("ap_mat"));
            u.setArea(a);
            u.setRol(r);
            u.setUnidad(un);

            return u;
        });
    }

    // Consultar usuario
    @Override
    public Usuario consultarUsuario(Long numEmpl) {
        Map<String, Object> params = new HashMap<>();
        params.put("numEmpl", numEmpl);

        String query = "SELECT e.num_empl, c.passwd, e.nomb_empl, e.ap_pat, e.ap_mat, e.puesto_empl, e.area_empl, c.rol, e.status, e.f_act_user, c.url_foto_perfil " +
                        "FROM tb_empleados AS e " +
                        "INNER JOIN tb_contraseñas AS c ON e.num_empl = c.num_empl " +
                        "WHERE e.num_empl = :numEmpl " +
                        "LIMIT 1";

        System.out.println(query);

        // No cubre todos los campos o atributos de la entidad
        return template.queryForObject(
                query, params, (rs, rowNum) -> {
                    Usuario u = new Usuario();
                    LocalDate fecha = rs.getDate("f_act_user").toLocalDate();

                    u.setNumEmpl(rs.getLong("num_empl"));
                    u.setPassword(rs.getString("passwd"));
                    u.setNombres(rs.getString("nomb_empl"));
                    u.setApellidoP(rs.getString("ap_pat"));
                    u.setApellidoM(rs.getString("ap_mat"));
                    u.setArea(this.catImpl.consultarArea(rs.getLong("area_empl")));
                    u.setPuesto(this.catImpl.consultarPuesto(rs.getLong("puesto_empl")));
                    u.setRol(this.catImpl.consultarRol(rs.getLong("rol")));
                    u.setPerfil(this.catImpl.consultarPerfiles(rs.getLong("num_empl"), 1L));
                    u.setUltimoCambio(fecha);
                    u.setUrlImagen(rs.getString("url_foto_perfil"));
                    u.setStatus(rs.getInt("status"));

                    return u;
                }
        );
    }


    // Actualizar el empleado
    @Override
    public Integer actualizarEmpleado(Long numEmpl, UsuarioDto dto) {
        Map<String, Object> params = new HashMap<>();
        params.put("numEmpl", numEmpl);
        params.put("nombre", dto.getNombres());
        params.put("apellidoP", dto.getApellidoP());
        params.put("apellidoM", dto.getApellidoM());
        params.put("puesto", dto.getPuesto());
        params.put("area", dto.getArea());

        String query = "UPDATE tb_empleados " +
                        "SET nomb_empl = :nombre, ap_pat = :apellidoP, ap_mat = :apellidoM, puesto_empl = :puesto, area_empl = :area " +
                        "WHERE num_empl = :numEmpl";

        System.out.println(query);

         return template.update(query, params);
    }

    // Actualizar contraseña del empleado
    @Override
    public Integer actualizarPassword(Long numEmpl, String password) {
        Map<String, Object> params = new HashMap<>();
        params.put("numEmpl", numEmpl);
        params.put("password", password);

        System.out.println(password);

        String query = "UPDATE tb_contraseñas " +
                        "SET passwd = :password " +
                        "WHERE num_empl = :numEmpl";

        System.out.println(query);

        return template.update(query, params);
    }

    // Actualzar foto de perfil
    @Override
    public Integer actualizarFotoPerfil(Long numEmpl, String urlFoto) {
        Map<String, Object> params = new HashMap<>();
        params.put("numEmpl", numEmpl);
        params.put("foto", urlFoto);

        String query = "UPDATE tb_contraseñas " +
                        "SET url_foto_perfil = :foto " +
                        "WHERE num_empl = :numEmpl";

        System.out.println(query);

        return template.update(query, params);
    }

    // Registrar cambios realizados
    @Override
    public Integer registrarCambiosUsuarios(Long numEmpl, Long emplUpdate) {
        Map<String, Object> params = new HashMap<>();
        params.put("numEmpl", numEmpl);
        params.put("emplUp", emplUpdate);

        String query = "INSERT INTO tb_cambios_usuarios (num_empl, num_empl_actualizo, fecha_actualizacion) " +
                        "VALUES (:numEmpl, :emplUp, CURRENT_DATE)";

        System.out.println(query);

        return template.update(query, params);
    }
}
