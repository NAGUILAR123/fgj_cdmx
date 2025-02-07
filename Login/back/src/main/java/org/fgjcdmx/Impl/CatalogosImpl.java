package org.fgjcdmx.Impl;

import org.fgjcdmx.Entitys.*;
import org.fgjcdmx.Repository.ICatalogosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CatalogosImpl implements ICatalogosRepository {

    @Autowired
    private NamedParameterJdbcTemplate template;

    // Consultar todos los puestos
    @Override
    public List<Puesto> consultarPuestos(Integer status) {
        Map<String, Object> params = new HashMap<>();
        params.put("status", status);

        String query = "SELECT id_puesto, cod_puesto, desc_puesto, id_grupo_empl, status_puesto " +
                "FROM cat_puestos WHERE status_puesto = :status";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> new Puesto(
                rs.getLong("id_puesto"),
                rs.getString("cod_puesto"),
                rs.getString("desc_puesto"),
                rs.getInt("status_puesto")
            )
        );
    }

    // COnsultar todos los roles
    @Override
    public List<Generico> consultarRoles(Integer status) {
        Map<String, Object> params = new HashMap<>();
        params.put("status", status);

        String query = "SELECT id_rol, nombre_rol, status_rol FROM cat_roles WHERE status_rol = :status";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> new Generico(
                rs.getLong("id_rol"),
                rs.getString("nombre_rol"),
                null,
                rs.getInt("status_rol")
            )
        );
    }

    // Consultar todas las areas
    @Override
    public List<Area> consultarAreas(Integer status) {
        Map<String, Object> params = new HashMap<>();
        params.put("status", status);

        String query = "SELECT id_area, nomb_area, status_area " +
                "FROM cat_areas " +
                "WHERE status_area = :status";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> {
                Area a = new Area();
                a.setId(rs.getLong("id_area"));
                a.setNombre(rs.getString("nomb_area"));
                a.setStatus(rs.getInt("status_area"));

                return a;
            }
        );
    }

    // consultar area
    @Override
    public Area consultarArea(Long id) {
        Map<String, Object> params = new HashMap<>();
        params.put("id", id);

        String query = "SELECT * FROM cat_fiscalias WHERE id_area = :id";

        System.out.println(query);

        return template.queryForObject(
            query, params, (rs, rowNum) -> {
                Area area = new Area();

                area.setId(rs.getLong("id_area"));
                area.setFiscalia(rs.getLong("cvefiscalia"));
                area.setFiscCant(rs.getLong("fiscant"));
                area.setNombre(rs.getString("desc_fiscalia"));
                area.setNombreCorto(rs.getString("nom_corto_ant"));
                area.setAcronimo(rs.getString("acronimo_fisc"));
                area.setDescripcion(rs.getString("desc_formato"));
                area.setTipoArea(rs.getString("tipo_area").charAt(0));
                area.setIdPJG(rs.getLong("id_pgj"));
                area.setStatus(rs.getInt("status"));

                return area;
            }
        );
    }

    // consultar puesto
    @Override
    public Puesto consultarPuesto(Long id) {
        Map<String, Object> params = new HashMap<>();
        params.put("id", id);

        String query = "SELECT id_puesto, cod_puesto, desc_puesto, id_grupo_empl, status_puesto  FROM cat_puestos WHERE id_puesto = :id";

        System.out.println(query);

        return template.queryForObject(
            query, params, (rs, rowMap) -> new Puesto(
                rs.getLong("id_puesto"),
                rs.getString("cod_puesto"),
                rs.getString("desc_puesto"),
                rs.getInt("status_puesto")
            )
        );
    }

    // Consulta los perfiles que tiene el usuario
    @Override
    public List<Perfil> consultarPerfiles(Long numEmpl, Long sistema) {
        Map<String, Object> params = new HashMap<>();
        params.put("num_empl", numEmpl);
        params.put("sistema", sistema);

        String query = "SELECT * FROM cat_perfiles " +
                "WHERE num_empl = :num_empl AND sistema_perfil = :sistema";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> new Perfil(
                rs.getLong("id_perfil"),
                rs.getLong("num_empl"),
                consultarAcceso(rs.getLong("acceso_perfil")),
                rs.getInt("visualizar"),
                rs.getInt("modificar"),
                rs.getInt("eliminar"),
                rs.getInt("status_perfil")
            )
        );
    }

    // Consultar sistema
    @Override
    public Generico consultarSistema(Long id) {
        Map<String, Object> params = new HashMap<>();
        params.put("id", id);

        String query = "SELECT id_sistema, nomb_sist, desc_sist, status_sist FROM cat_sistemas WHERE id_sistema = :id";

        System.out.println(query);

        return template.queryForObject(
            query, params, (rs, rowMap) -> new Generico(
                rs.getLong("id_sistema"),
                rs.getString("nomb_sist"),
                rs.getString("desc_sist"),
                rs.getInt("status_sist")
            )
        );
    }

    // Consultar acceso
    @Override
    public Generico consultarAcceso(Long id) {
        Map<String, Object> params = new HashMap<>();
        params.put("id", id);

        String query = "SELECT id_acceso, nomb_acceso FROM cat_accesos WHERE id_acceso = :id";

        System.out.println(query);

        return template.queryForObject(
            query, params, (rs, rowMap) -> new Generico(
                rs.getLong("id_acceso"),
                rs.getString("nomb_acceso"),
                null,
                null
            )
        );
    }

    // Consultar rol
    @Override
    public Generico consultarRol(Long id) {
        Map<String, Object> params = new HashMap<>();
        params.put("id", id);

        String query = "SELECT id_rol, nombre_rol, status_rol FROM cat_roles WHERE id_rol = :id";

        System.out.println(query);

        return template.queryForObject(
            query, params, (rs, rowMap) -> new Generico(
                rs.getLong("id_rol"),
                rs.getString("nombre_rol"),
                null,
                rs.getInt("status_rol")
            )
        );
    }

    // Consultar sexos
    @Override
    public List<Generico> consultarSexos() {
        Map<String, Object> params = new HashMap<>();

        String query = "SELECT * FROM cat_sexos";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> {
               Generico sexo = new Generico();

               sexo.setId(rs.getLong("id_sexo"));
               sexo.setNombre(rs.getString("sexo"));
               sexo.setDescripcion(rs.getString("descorto"));
               sexo.setStatus(rs.getInt("status"));

               return sexo;
            }
        );
    }

    // Consultar generos
    @Override
    public List<Generico> consultarGeneros() {
        Map<String, Object> params = new HashMap<>();

        String query = "SELECT * FROM cat_generos";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> {
                Generico genero = new Generico();

                genero.setId(rs.getLong("id_genero"));
                genero.setNombre(rs.getString("genero"));
                genero.setStatus(rs.getInt("status"));

                return genero;
            }
        );
    }

    // Consultar ocupaciones
    @Override
    public List<Generico> consultarOcupaciones() {
        Map<String, Object> params = new HashMap<>();

        String query = "SELECT * FROM cat_ocupaciones";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> {
                Generico ocupacion = new Generico();

                ocupacion.setId(rs.getLong("idocup"));
                ocupacion.setNombre(rs.getString("ocupacion"));
                ocupacion.setDescripcion(rs.getString("acronimo"));
                ocupacion.setStatus(rs.getInt("status"));

                return ocupacion;
            }
        );
    }

    // Consultar estados civiles
    @Override
    public List<Generico> consultarEstadoCivil() {
        Map<String, Object> params = new HashMap<>();

        String query = "SELECT * FROM cat_edo_civil";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> {
                Generico estadoCivil = new Generico();

                estadoCivil.setId(rs.getLong("id_edocivil"));
                estadoCivil.setNombre(rs.getString("edocivil"));
                estadoCivil.setStatus(rs.getInt("status"));

                return estadoCivil;
            }
        );
    }

    // Consultar religiones
    @Override
    public List<Generico> consultarReligiones() {
        Map<String, Object> params = new HashMap<>();

        String query = "SELECT * FROM cat_religiones";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> {
                Generico religion = new Generico();

                religion.setId(rs.getLong("id_religion"));
                religion.setNombre(rs.getString("religion"));
                religion.setDescripcion(rs.getString("tipo_religion"));
                religion.setStatus(rs.getInt("status"));

                return religion;
            }
        );
    }

    // Consultar escolaridad
    public List<Generico> consultarEscolaridad() {
        Map<String, Object> params = new HashMap<>();

        String query = "SELECT * FROM cat_escolaridades";

        System.out.println(query);

        return template.query(
            query, params, (rs, rowMap) -> {
                Generico escolaridad = new Generico();

                escolaridad.setId(rs.getLong("id_escolaridad"));
                escolaridad.setNombre(rs.getString("escolaridad"));
                escolaridad.setDescripcion(rs.getString("nivel"));
                escolaridad.setStatus(rs.getInt("status"));

                return escolaridad;
            }
        );
    }
}
