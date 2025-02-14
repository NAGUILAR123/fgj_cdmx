PGDMP                  	    |            tamizaje_independiente    16.4    16.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    tamizaje_independiente    DATABASE     �   CREATE DATABASE tamizaje_independiente WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
 &   DROP DATABASE tamizaje_independiente;
                postgres    false            �           0    0    DATABASE tamizaje_independiente    COMMENT     R   COMMENT ON DATABASE tamizaje_independiente IS 'Tamizaje independiente del fsiap';
                   postgres    false    5069            �            1259    16418    cat_accesos    TABLE     l   CREATE TABLE public.cat_accesos (
    id_acceso integer NOT NULL,
    nomb_acceso character varying(255)
);
    DROP TABLE public.cat_accesos;
       public         heap    postgres    false            �           0    0    COLUMN cat_accesos.id_acceso    COMMENT     H   COMMENT ON COLUMN public.cat_accesos.id_acceso IS 'Identificador (PK)';
          public          postgres    false    215            �           0    0    COLUMN cat_accesos.nomb_acceso    COMMENT     _   COMMENT ON COLUMN public.cat_accesos.nomb_acceso IS 'Nombre del acceso o funcion del sistema';
          public          postgres    false    215            �            1259    24764    cat_agencias    TABLE        CREATE TABLE public.cat_agencias (
    id_agencia integer NOT NULL,
    cvefiscalia integer,
    cveagencia integer,
    acronimo_agencia character varying(255),
    desc_agencia character varying(255),
    direccion character varying(255),
    instancia character varying(255),
    "direccion_|ip" character varying(255),
    turbo integer,
    ruta_periciales character varying(255),
    id_age integer,
    codigo_postal integer,
    recibe integer,
    especial character varying(255),
    status integer
);
     DROP TABLE public.cat_agencias;
       public         heap    postgres    false            �           0    0    COLUMN cat_agencias.id_agencia    COMMENT     E   COMMENT ON COLUMN public.cat_agencias.id_agencia IS 'Identificador';
          public          postgres    false    230            �            1259    24821    cat_cp_cdmx    TABLE     �  CREATE TABLE public.cat_cp_cdmx (
    idcp integer NOT NULL,
    cp integer NOT NULL,
    tipoasentamiento character varying(255) NOT NULL,
    municipio character varying(255) NOT NULL,
    estado character varying(255) NOT NULL,
    ciudad character varying(255) NOT NULL,
    status integer NOT NULL,
    fecharegistro timestamp without time zone NOT NULL,
    idasentamiento integer NOT NULL,
    asentamiento character varying(255) NOT NULL,
    idmunicipio integer NOT NULL
);
    DROP TABLE public.cat_cp_cdmx;
       public         heap    postgres    false            �            1259    24826    cat_cp_edomex    TABLE     �  CREATE TABLE public.cat_cp_edomex (
    idcp integer NOT NULL,
    cp integer NOT NULL,
    asentamiento character varying(255) NOT NULL,
    tipoasentamiento character varying(255) NOT NULL,
    municipio character varying(255) NOT NULL,
    estado character varying(255) NOT NULL,
    ciudad character varying(255) NOT NULL,
    status integer NOT NULL,
    fecharegistro timestamp without time zone NOT NULL
);
 !   DROP TABLE public.cat_cp_edomex;
       public         heap    postgres    false            �            1259    24831    cat_edo_civil    TABLE     �   CREATE TABLE public.cat_edo_civil (
    id_edocivil integer NOT NULL,
    edocivil character varying(255) NOT NULL,
    status integer NOT NULL
);
 !   DROP TABLE public.cat_edo_civil;
       public         heap    postgres    false            �            1259    24893    cat_escolaridades    TABLE     �   CREATE TABLE public.cat_escolaridades (
    id_escolaridad smallint NOT NULL,
    escolaridad character varying(50) NOT NULL,
    nivel character varying(50) NOT NULL,
    status smallint NOT NULL
);
 %   DROP TABLE public.cat_escolaridades;
       public         heap    postgres    false            �           0    0 '   COLUMN cat_escolaridades.id_escolaridad    COMMENT     N   COMMENT ON COLUMN public.cat_escolaridades.id_escolaridad IS 'Identificador';
          public          postgres    false    238            �           0    0 $   COLUMN cat_escolaridades.escolaridad    COMMENT     I   COMMENT ON COLUMN public.cat_escolaridades.escolaridad IS 'Escolaridad';
          public          postgres    false    238            �           0    0    COLUMN cat_escolaridades.nivel    COMMENT     O   COMMENT ON COLUMN public.cat_escolaridades.nivel IS 'Nivel de la escolaridad';
          public          postgres    false    238            �           0    0    COLUMN cat_escolaridades.status    COMMENT     @   COMMENT ON COLUMN public.cat_escolaridades.status IS 'Estatus';
          public          postgres    false    238            �            1259    24590    cat_estatus    TABLE     �   CREATE TABLE public.cat_estatus (
    id smallint NOT NULL,
    tipo_status character varying(50) NOT NULL,
    nombre character varying(50) NOT NULL,
    desc_status character varying(255)
);
    DROP TABLE public.cat_estatus;
       public         heap    postgres    false            �           0    0    COLUMN cat_estatus.id    COMMENT     <   COMMENT ON COLUMN public.cat_estatus.id IS 'Identificador';
          public          postgres    false    226            �           0    0    COLUMN cat_estatus.tipo_status    COMMENT     G   COMMENT ON COLUMN public.cat_estatus.tipo_status IS 'Tipo de estatus';
          public          postgres    false    226            �           0    0    COLUMN cat_estatus.nombre    COMMENT     D   COMMENT ON COLUMN public.cat_estatus.nombre IS 'Nombre del status';
          public          postgres    false    226            �           0    0    COLUMN cat_estatus.desc_status    COMMENT     X   COMMENT ON COLUMN public.cat_estatus.desc_status IS 'Descripcion o funcion del status';
          public          postgres    false    226            �            1259    24769    cat_fiscalias    TABLE     g  CREATE TABLE public.cat_fiscalias (
    id_area integer NOT NULL,
    cvefiscalia integer,
    fiscant integer,
    desc_fiscalia character varying(255),
    nom_corto_ant character varying(255),
    acronimo_fisc character varying(255),
    desc_formato character varying(255),
    tipo_area character varying(255),
    id_pgj integer,
    status integer
);
 !   DROP TABLE public.cat_fiscalias;
       public         heap    postgres    false            �            1259    24883    cat_generos    TABLE     �   CREATE TABLE public.cat_generos (
    id_genero smallint NOT NULL,
    genero character varying(50) NOT NULL,
    status integer NOT NULL
);
    DROP TABLE public.cat_generos;
       public         heap    postgres    false            �           0    0    COLUMN cat_generos.id_genero    COMMENT     C   COMMENT ON COLUMN public.cat_generos.id_genero IS 'Identificador';
          public          postgres    false    237            �           0    0    COLUMN cat_generos.genero    COMMENT     9   COMMENT ON COLUMN public.cat_generos.genero IS 'Nombre';
          public          postgres    false    237            �           0    0    COLUMN cat_generos.status    COMMENT     :   COMMENT ON COLUMN public.cat_generos.status IS 'Estatus';
          public          postgres    false    237            �            1259    16462 
   cat_grupos    TABLE     g   CREATE TABLE public.cat_grupos (
    id integer NOT NULL,
    grupo character varying(100) NOT NULL
);
    DROP TABLE public.cat_grupos;
       public         heap    postgres    false            �           0    0    COLUMN cat_grupos.id    COMMENT     @   COMMENT ON COLUMN public.cat_grupos.id IS 'Identificador (PK)';
          public          postgres    false    224            �           0    0    COLUMN cat_grupos.grupo    COMMENT     A   COMMENT ON COLUMN public.cat_grupos.grupo IS 'Nombre del grupo';
          public          postgres    false    224            �            1259    24834    cat_ocupaciones    TABLE     �   CREATE TABLE public.cat_ocupaciones (
    idocup integer NOT NULL,
    ocupacion character varying(255),
    acronimo character varying(255),
    status integer NOT NULL
);
 #   DROP TABLE public.cat_ocupaciones;
       public         heap    postgres    false            �            1259    16467    cat_opciones    TABLE     �   CREATE TABLE public.cat_opciones (
    id_opcion integer NOT NULL,
    id_reactivo integer NOT NULL,
    nombre character varying(255) NOT NULL,
    ayuda character varying(100),
    valor integer NOT NULL
);
     DROP TABLE public.cat_opciones;
       public         heap    postgres    false            �           0    0    COLUMN cat_opciones.id_opcion    COMMENT     I   COMMENT ON COLUMN public.cat_opciones.id_opcion IS 'Identificador (PK)';
          public          postgres    false    225            �           0    0    COLUMN cat_opciones.id_reactivo    COMMENT     R   COMMENT ON COLUMN public.cat_opciones.id_reactivo IS 'Reactivo al que pertenece';
          public          postgres    false    225            �           0    0    COLUMN cat_opciones.nombre    COMMENT     S   COMMENT ON COLUMN public.cat_opciones.nombre IS 'Opcion o respuesta del reactivo';
          public          postgres    false    225            �           0    0    COLUMN cat_opciones.ayuda    COMMENT     A   COMMENT ON COLUMN public.cat_opciones.ayuda IS 'Texto de ayuda';
          public          postgres    false    225            �           0    0    COLUMN cat_opciones.valor    COMMENT     Q   COMMENT ON COLUMN public.cat_opciones.valor IS 'Valor de la opcion o respuesta';
          public          postgres    false    225            �            1259    16426    cat_perfiles    TABLE     1  CREATE TABLE public.cat_perfiles (
    id_perfil integer NOT NULL,
    num_empl integer NOT NULL,
    acceso_perfil integer NOT NULL,
    sistema_perfil integer NOT NULL,
    visualizar integer NOT NULL,
    modificar integer NOT NULL,
    eliminar integer NOT NULL,
    status_perfil integer NOT NULL
);
     DROP TABLE public.cat_perfiles;
       public         heap    postgres    false            �           0    0    COLUMN cat_perfiles.id_perfil    COMMENT     D   COMMENT ON COLUMN public.cat_perfiles.id_perfil IS 'Identificador';
          public          postgres    false    216            �           0    0    COLUMN cat_perfiles.num_empl    COMMENT     I   COMMENT ON COLUMN public.cat_perfiles.num_empl IS 'Numero del empleado';
          public          postgres    false    216            �           0    0 !   COLUMN cat_perfiles.acceso_perfil    COMMENT     [   COMMENT ON COLUMN public.cat_perfiles.acceso_perfil IS 'Accesos permitidos en el sistema';
          public          postgres    false    216            �           0    0 "   COLUMN cat_perfiles.sistema_perfil    COMMENT     W   COMMENT ON COLUMN public.cat_perfiles.sistema_perfil IS 'Sistema al que tiene acceso';
          public          postgres    false    216            �           0    0    COLUMN cat_perfiles.visualizar    COMMENT     L   COMMENT ON COLUMN public.cat_perfiles.visualizar IS 'Visualizar el acceso';
          public          postgres    false    216            �           0    0    COLUMN cat_perfiles.modificar    COMMENT     J   COMMENT ON COLUMN public.cat_perfiles.modificar IS 'Modificar el acceso';
          public          postgres    false    216            �           0    0    COLUMN cat_perfiles.eliminar    COMMENT     H   COMMENT ON COLUMN public.cat_perfiles.eliminar IS 'Eliminar el acceso';
          public          postgres    false    216            �           0    0 !   COLUMN cat_perfiles.status_perfil    COMMENT     M   COMMENT ON COLUMN public.cat_perfiles.status_perfil IS 'Estatus del perfil';
          public          postgres    false    216            �            1259    16429    cat_puestos    TABLE     �   CREATE TABLE public.cat_puestos (
    id_puesto integer NOT NULL,
    cod_puesto character varying(255) NOT NULL,
    desc_puesto character varying(255) NOT NULL,
    id_grupo_empl character varying(255),
    status_puesto integer NOT NULL
);
    DROP TABLE public.cat_puestos;
       public         heap    postgres    false            �           0    0    COLUMN cat_puestos.id_puesto    COMMENT     C   COMMENT ON COLUMN public.cat_puestos.id_puesto IS 'Identificador';
          public          postgres    false    217            �           0    0    COLUMN cat_puestos.cod_puesto    COMMENT     H   COMMENT ON COLUMN public.cat_puestos.cod_puesto IS 'Codigo del puesto';
          public          postgres    false    217            �           0    0    COLUMN cat_puestos.desc_puesto    COMMENT     N   COMMENT ON COLUMN public.cat_puestos.desc_puesto IS 'Descripcion del puesto';
          public          postgres    false    217            �           0    0     COLUMN cat_puestos.id_grupo_empl    COMMENT     \   COMMENT ON COLUMN public.cat_puestos.id_grupo_empl IS 'Grupo al que pertenece el empleado';
          public          postgres    false    217            �           0    0     COLUMN cat_puestos.status_puesto    COMMENT     L   COMMENT ON COLUMN public.cat_puestos.status_puesto IS 'Estatus del puesto';
          public          postgres    false    217            �            1259    16455    cat_reactivos    TABLE     �   CREATE TABLE public.cat_reactivos (
    id integer NOT NULL,
    id_grupo integer NOT NULL,
    reactivo character varying(255) NOT NULL,
    ayuda character varying(255),
    obligatorio smallint NOT NULL
);
 !   DROP TABLE public.cat_reactivos;
       public         heap    postgres    false            �           0    0    COLUMN cat_reactivos.id    COMMENT     C   COMMENT ON COLUMN public.cat_reactivos.id IS 'Identificador (PK)';
          public          postgres    false    223            �           0    0    COLUMN cat_reactivos.id_grupo    COMMENT     W   COMMENT ON COLUMN public.cat_reactivos.id_grupo IS 'Grupo de preguntas perteneciente';
          public          postgres    false    223            �           0    0    COLUMN cat_reactivos.reactivo    COMMENT     ?   COMMENT ON COLUMN public.cat_reactivos.reactivo IS 'Pregunta';
          public          postgres    false    223            �           0    0    COLUMN cat_reactivos.ayuda    COMMENT     S   COMMENT ON COLUMN public.cat_reactivos.ayuda IS 'Texto de ayuda para la pregunta';
          public          postgres    false    223            �           0    0     COLUMN cat_reactivos.obligatorio    COMMENT     H   COMMENT ON COLUMN public.cat_reactivos.obligatorio IS '0 = No, 1 = Si';
          public          postgres    false    223            �            1259    24903    cat_religiones    TABLE     �   CREATE TABLE public.cat_religiones (
    id_religion smallint NOT NULL,
    religion character varying(50) NOT NULL,
    tipo_religion character varying(50) NOT NULL,
    status smallint NOT NULL
);
 "   DROP TABLE public.cat_religiones;
       public         heap    postgres    false            �           0    0 !   COLUMN cat_religiones.id_religion    COMMENT     H   COMMENT ON COLUMN public.cat_religiones.id_religion IS 'Identificador';
          public          postgres    false    239            �           0    0    COLUMN cat_religiones.religion    COMMENT     >   COMMENT ON COLUMN public.cat_religiones.religion IS 'Nombre';
          public          postgres    false    239            �           0    0 #   COLUMN cat_religiones.tipo_religion    COMMENT     M   COMMENT ON COLUMN public.cat_religiones.tipo_religion IS 'Tipo de religion';
          public          postgres    false    239            �           0    0    COLUMN cat_religiones.status    COMMENT     =   COMMENT ON COLUMN public.cat_religiones.status IS 'Estatus';
          public          postgres    false    239            �            1259    16434 	   cat_roles    TABLE     �   CREATE TABLE public.cat_roles (
    id_rol integer NOT NULL,
    nombre_rol character varying(255) NOT NULL,
    status_rol integer NOT NULL
);
    DROP TABLE public.cat_roles;
       public         heap    postgres    false            �           0    0    COLUMN cat_roles.id_rol    COMMENT     >   COMMENT ON COLUMN public.cat_roles.id_rol IS 'Identificador';
          public          postgres    false    218            �           0    0    COLUMN cat_roles.nombre_rol    COMMENT     C   COMMENT ON COLUMN public.cat_roles.nombre_rol IS 'Nombre del rol';
          public          postgres    false    218            �           0    0    COLUMN cat_roles.status_rol    COMMENT     D   COMMENT ON COLUMN public.cat_roles.status_rol IS 'Estatus del rol';
          public          postgres    false    218            �            1259    24839 	   cat_sexos    TABLE     �   CREATE TABLE public.cat_sexos (
    id_sexo integer NOT NULL,
    sexo character varying(255),
    descorto character varying(255),
    status integer NOT NULL
);
    DROP TABLE public.cat_sexos;
       public         heap    postgres    false            �            1259    16437    cat_sistemas    TABLE     �   CREATE TABLE public.cat_sistemas (
    id_sistema integer NOT NULL,
    nomb_sist character varying(255) NOT NULL,
    desc_sist character varying(255) NOT NULL,
    status_sist integer NOT NULL
);
     DROP TABLE public.cat_sistemas;
       public         heap    postgres    false            �           0    0    COLUMN cat_sistemas.id_sistema    COMMENT     E   COMMENT ON COLUMN public.cat_sistemas.id_sistema IS 'Identificador';
          public          postgres    false    219            �           0    0    COLUMN cat_sistemas.nomb_sist    COMMENT     I   COMMENT ON COLUMN public.cat_sistemas.nomb_sist IS 'Nombre del sistema';
          public          postgres    false    219            �           0    0    COLUMN cat_sistemas.desc_sist    COMMENT     N   COMMENT ON COLUMN public.cat_sistemas.desc_sist IS 'Descripcion del Sistema';
          public          postgres    false    219                        0    0    COLUMN cat_sistemas.status_sist    COMMENT     L   COMMENT ON COLUMN public.cat_sistemas.status_sist IS 'Estatus del sistema';
          public          postgres    false    219            �            1259    24759    cat_unidades    TABLE     M  CREATE TABLE public.cat_unidades (
    id_unidad integer NOT NULL,
    cvefiscalia integer NOT NULL,
    cveagencia integer NOT NULL,
    cveunidad integer NOT NULL,
    acronimo_unidad character varying(255) NOT NULL,
    desc_unidad character varying(255) NOT NULL,
    id_un character varying(255),
    status integer NOT NULL
);
     DROP TABLE public.cat_unidades;
       public         heap    postgres    false                       0    0    COLUMN cat_unidades.id_unidad    COMMENT     D   COMMENT ON COLUMN public.cat_unidades.id_unidad IS 'Identificador';
          public          postgres    false    229            �            1259    16442    tb_cambios_usuarios    TABLE     �   CREATE TABLE public.tb_cambios_usuarios (
    id_cambio integer,
    num_empl integer,
    num_empl_actualizo integer,
    fecha_actualizacion timestamp without time zone
);
 '   DROP TABLE public.tb_cambios_usuarios;
       public         heap    postgres    false            �            1259    16445    tb_contraseñas    TABLE     �   CREATE TABLE public."tb_contraseñas" (
    "id_contraseña" integer,
    num_empl integer,
    passwd character varying(255),
    passwd_sist integer,
    token character varying(255),
    rol integer,
    url_foto_perfil character varying(255)
);
 %   DROP TABLE public."tb_contraseñas";
       public         heap    postgres    false            �            1259    24929    tb_datos_victima    TABLE     <  CREATE TABLE public.tb_datos_victima (
    id_dom_vic integer NOT NULL,
    victima integer NOT NULL,
    nacionalidad character varying(50) NOT NULL,
    edo_civil smallint NOT NULL,
    escolaridad smallint NOT NULL,
    ocupacion smallint NOT NULL,
    religion smallint NOT NULL,
    genero smallint NOT NULL
);
 $   DROP TABLE public.tb_datos_victima;
       public         heap    postgres    false                       0    0 "   COLUMN tb_datos_victima.id_dom_vic    COMMENT     I   COMMENT ON COLUMN public.tb_datos_victima.id_dom_vic IS 'Identificador';
          public          postgres    false    240                       0    0    COLUMN tb_datos_victima.victima    COMMENT     J   COMMENT ON COLUMN public.tb_datos_victima.victima IS 'Id de la víctima';
          public          postgres    false    240                       0    0 $   COLUMN tb_datos_victima.nacionalidad    COMMENT     J   COMMENT ON COLUMN public.tb_datos_victima.nacionalidad IS 'Nacionalidad';
          public          postgres    false    240                       0    0 !   COLUMN tb_datos_victima.edo_civil    COMMENT     G   COMMENT ON COLUMN public.tb_datos_victima.edo_civil IS 'Estado civil';
          public          postgres    false    240                       0    0 #   COLUMN tb_datos_victima.escolaridad    COMMENT     P   COMMENT ON COLUMN public.tb_datos_victima.escolaridad IS 'Escolaridad máxima';
          public          postgres    false    240                       0    0 !   COLUMN tb_datos_victima.ocupacion    COMMENT     T   COMMENT ON COLUMN public.tb_datos_victima.ocupacion IS 'Ocupación de la víctima';
          public          postgres    false    240                       0    0     COLUMN tb_datos_victima.religion    COMMENT     V   COMMENT ON COLUMN public.tb_datos_victima.religion IS 'Religión a la que pertenece';
          public          postgres    false    240            	           0    0    COLUMN tb_datos_victima.genero    COMMENT     N   COMMENT ON COLUMN public.tb_datos_victima.genero IS 'Género de la víctima';
          public          postgres    false    240            �            1259    24964    tb_domicilios_victimas    TABLE     �  CREATE TABLE public.tb_domicilios_victimas (
    id_domicilio integer NOT NULL,
    calle character varying(255) NOT NULL,
    num_int character varying(10),
    num_ext character varying(10) NOT NULL,
    entre_calle character varying(255),
    y_calle character varying(255),
    entidad character varying(80) NOT NULL,
    municipio character varying(80) NOT NULL,
    colonia character varying(80) NOT NULL,
    cp_cdmx integer,
    victima integer NOT NULL,
    cp_edo_mx integer
);
 *   DROP TABLE public.tb_domicilios_victimas;
       public         heap    postgres    false            
           0    0 *   COLUMN tb_domicilios_victimas.id_domicilio    COMMENT     Q   COMMENT ON COLUMN public.tb_domicilios_victimas.id_domicilio IS 'Identificador';
          public          postgres    false    241                       0    0 #   COLUMN tb_domicilios_victimas.calle    COMMENT     ^   COMMENT ON COLUMN public.tb_domicilios_victimas.calle IS 'Calle donde se ubica el domicilio';
          public          postgres    false    241                       0    0 %   COLUMN tb_domicilios_victimas.num_int    COMMENT     N   COMMENT ON COLUMN public.tb_domicilios_victimas.num_int IS 'Numero interior';
          public          postgres    false    241                       0    0 %   COLUMN tb_domicilios_victimas.num_ext    COMMENT     N   COMMENT ON COLUMN public.tb_domicilios_victimas.num_ext IS 'Numero exterior';
          public          postgres    false    241                       0    0 )   COLUMN tb_domicilios_victimas.entre_calle    COMMENT     N   COMMENT ON COLUMN public.tb_domicilios_victimas.entre_calle IS 'Entre calle';
          public          postgres    false    241                       0    0 %   COLUMN tb_domicilios_victimas.y_calle    COMMENT     F   COMMENT ON COLUMN public.tb_domicilios_victimas.y_calle IS 'Y calle';
          public          postgres    false    241                       0    0 %   COLUMN tb_domicilios_victimas.entidad    COMMENT     Q   COMMENT ON COLUMN public.tb_domicilios_victimas.entidad IS 'Entidad federativa';
          public          postgres    false    241                       0    0 '   COLUMN tb_domicilios_victimas.municipio    COMMENT     U   COMMENT ON COLUMN public.tb_domicilios_victimas.municipio IS 'Alcalida o municipio';
          public          postgres    false    241                       0    0 %   COLUMN tb_domicilios_victimas.colonia    COMMENT     F   COMMENT ON COLUMN public.tb_domicilios_victimas.colonia IS 'Colonia';
          public          postgres    false    241                       0    0 %   COLUMN tb_domicilios_victimas.cp_cdmx    COMMENT     W   COMMENT ON COLUMN public.tb_domicilios_victimas.cp_cdmx IS 'Codigo postal de la cdmx';
          public          postgres    false    241                       0    0 %   COLUMN tb_domicilios_victimas.victima    COMMENT     O   COMMENT ON COLUMN public.tb_domicilios_victimas.victima IS 'Id de la victima';
          public          postgres    false    241                       0    0 '   COLUMN tb_domicilios_victimas.cp_edo_mx    COMMENT     Y   COMMENT ON COLUMN public.tb_domicilios_victimas.cp_edo_mx IS 'Codigo postal del estado';
          public          postgres    false    241            �            1259    16450    tb_empleados    TABLE     �  CREATE TABLE public.tb_empleados (
    id_empleado bigint NOT NULL,
    num_empl bigint NOT NULL,
    nomb_empl character varying(100) NOT NULL,
    ap_pat character varying(50) NOT NULL,
    ap_mat character varying(50) NOT NULL,
    rfc character varying(13) NOT NULL,
    puesto_empl integer NOT NULL,
    area_empl integer NOT NULL,
    status integer NOT NULL,
    f_creacion_user date NOT NULL,
    f_act_user date NOT NULL,
    rol_empl integer NOT NULL,
    unidad_empl integer NOT NULL
);
     DROP TABLE public.tb_empleados;
       public         heap    postgres    false                       0    0    COLUMN tb_empleados.id_empleado    COMMENT     F   COMMENT ON COLUMN public.tb_empleados.id_empleado IS 'Identificador';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.num_empl    COMMENT     I   COMMENT ON COLUMN public.tb_empleados.num_empl IS 'Numero del empleado';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.nomb_empl    COMMENT     =   COMMENT ON COLUMN public.tb_empleados.nomb_empl IS 'Nombre';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.ap_pat    COMMENT     D   COMMENT ON COLUMN public.tb_empleados.ap_pat IS 'Apellido Paterno';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.ap_mat    COMMENT     D   COMMENT ON COLUMN public.tb_empleados.ap_mat IS 'Apellido Materno';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.rfc    COMMENT     4   COMMENT ON COLUMN public.tb_empleados.rfc IS 'RFC';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.puesto_empl    COMMENT     N   COMMENT ON COLUMN public.tb_empleados.puesto_empl IS 'Puesto que desempeña';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.area_empl    COMMENT     J   COMMENT ON COLUMN public.tb_empleados.area_empl IS 'Area donde se ubica';
          public          postgres    false    222                       0    0    COLUMN tb_empleados.status    COMMENT     F   COMMENT ON COLUMN public.tb_empleados.status IS 'Estatus del perfil';
          public          postgres    false    222                       0    0 #   COLUMN tb_empleados.f_creacion_user    COMMENT     N   COMMENT ON COLUMN public.tb_empleados.f_creacion_user IS 'Fecha de creacion';
          public          postgres    false    222                        0    0    COLUMN tb_empleados.f_act_user    COMMENT     M   COMMENT ON COLUMN public.tb_empleados.f_act_user IS 'Fecha de modificacion';
          public          postgres    false    222            !           0    0    COLUMN tb_empleados.rol_empl    COMMENT     O   COMMENT ON COLUMN public.tb_empleados.rol_empl IS 'Rol que funge el empleado';
          public          postgres    false    222            "           0    0    COLUMN tb_empleados.unidad_empl    COMMENT     M   COMMENT ON COLUMN public.tb_empleados.unidad_empl IS 'Unidad perteneciente';
          public          postgres    false    222            �            1259    24641    tb_expedientes    TABLE     )  CREATE TABLE public.tb_expedientes (
    id_expediente bigint NOT NULL,
    expediente character varying(100) NOT NULL,
    status_exp smallint NOT NULL,
    victima_exp integer NOT NULL,
    usuario_alta_exp integer NOT NULL,
    fecha_alta_exp date NOT NULL,
    riesgo_exp smallint NOT NULL
);
 "   DROP TABLE public.tb_expedientes;
       public         heap    postgres    false            #           0    0 #   COLUMN tb_expedientes.id_expediente    COMMENT     J   COMMENT ON COLUMN public.tb_expedientes.id_expediente IS 'Identificador';
          public          postgres    false    228            $           0    0     COLUMN tb_expedientes.expediente    COMMENT     N   COMMENT ON COLUMN public.tb_expedientes.expediente IS 'Numero de expediente';
          public          postgres    false    228            %           0    0     COLUMN tb_expedientes.status_exp    COMMENT     P   COMMENT ON COLUMN public.tb_expedientes.status_exp IS 'Estatus del expediente';
          public          postgres    false    228            &           0    0 !   COLUMN tb_expedientes.victima_exp    COMMENT     B   COMMENT ON COLUMN public.tb_expedientes.victima_exp IS 'Victima';
          public          postgres    false    228            '           0    0 &   COLUMN tb_expedientes.usuario_alta_exp    COMMENT     W   COMMENT ON COLUMN public.tb_expedientes.usuario_alta_exp IS 'Usuario que dio de alta';
          public          postgres    false    228            (           0    0 $   COLUMN tb_expedientes.fecha_alta_exp    COMMENT     V   COMMENT ON COLUMN public.tb_expedientes.fecha_alta_exp IS 'Fecha que se dio de alta';
          public          postgres    false    228            )           0    0     COLUMN tb_expedientes.riesgo_exp    COMMENT     I   COMMENT ON COLUMN public.tb_expedientes.riesgo_exp IS 'Nivel de riesgo';
          public          postgres    false    228            �            1259    24595    tb_victimas    TABLE       CREATE TABLE public.tb_victimas (
    id integer NOT NULL,
    nombres_vic character varying(255) NOT NULL,
    apellido_p_vic character varying(255) NOT NULL,
    apellido_m_vic character varying(255),
    sexo_vic smallint NOT NULL,
    edad_vic smallint NOT NULL,
    status smallint NOT NULL,
    usuario_alta_vic integer NOT NULL,
    fecha_alta_vic date NOT NULL,
    fecha_mod_vic date,
    fecha_nacimiento_vic date NOT NULL,
    curp_vic character varying(18),
    rfc_vic character varying(13) NOT NULL
);
    DROP TABLE public.tb_victimas;
       public         heap    postgres    false            *           0    0    COLUMN tb_victimas.id    COMMENT     <   COMMENT ON COLUMN public.tb_victimas.id IS 'Identificador';
          public          postgres    false    227            +           0    0    COLUMN tb_victimas.nombres_vic    COMMENT     N   COMMENT ON COLUMN public.tb_victimas.nombres_vic IS 'Nombre/s de la victima';
          public          postgres    false    227            ,           0    0 !   COLUMN tb_victimas.apellido_p_vic    COMMENT     K   COMMENT ON COLUMN public.tb_victimas.apellido_p_vic IS 'Apellido Paterno';
          public          postgres    false    227            -           0    0 !   COLUMN tb_victimas.apellido_m_vic    COMMENT     K   COMMENT ON COLUMN public.tb_victimas.apellido_m_vic IS 'Apellido Materno';
          public          postgres    false    227            .           0    0    COLUMN tb_victimas.sexo_vic    COMMENT     B   COMMENT ON COLUMN public.tb_victimas.sexo_vic IS 'Sexo o genero';
          public          postgres    false    227            /           0    0    COLUMN tb_victimas.edad_vic    COMMENT     G   COMMENT ON COLUMN public.tb_victimas.edad_vic IS 'Edad de la victima';
          public          postgres    false    227            0           0    0    COLUMN tb_victimas.status    COMMENT     H   COMMENT ON COLUMN public.tb_victimas.status IS 'Estatus de la victima';
          public          postgres    false    227            1           0    0 #   COLUMN tb_victimas.usuario_alta_vic    COMMENT     _   COMMENT ON COLUMN public.tb_victimas.usuario_alta_vic IS 'Usuario o empleado que dio de alta';
          public          postgres    false    227            2           0    0 !   COLUMN tb_victimas.fecha_alta_vic    COMMENT     S   COMMENT ON COLUMN public.tb_victimas.fecha_alta_vic IS 'Fecha que se dio de alta';
          public          postgres    false    227            3           0    0     COLUMN tb_victimas.fecha_mod_vic    COMMENT     O   COMMENT ON COLUMN public.tb_victimas.fecha_mod_vic IS 'Fecha que se modifico';
          public          postgres    false    227            4           0    0 '   COLUMN tb_victimas.fecha_nacimiento_vic    COMMENT     T   COMMENT ON COLUMN public.tb_victimas.fecha_nacimiento_vic IS 'Fecha de nacimiento';
          public          postgres    false    227            5           0    0    COLUMN tb_victimas.curp_vic    COMMENT     9   COMMENT ON COLUMN public.tb_victimas.curp_vic IS 'CURP';
          public          postgres    false    227            6           0    0    COLUMN tb_victimas.rfc_vic    COMMENT     7   COMMENT ON COLUMN public.tb_victimas.rfc_vic IS 'RFC';
          public          postgres    false    227            �          0    16418    cat_accesos 
   TABLE DATA           =   COPY public.cat_accesos (id_acceso, nomb_acceso) FROM stdin;
    public          postgres    false    215   �      �          0    24764    cat_agencias 
   TABLE DATA           �   COPY public.cat_agencias (id_agencia, cvefiscalia, cveagencia, acronimo_agencia, desc_agencia, direccion, instancia, "direccion_|ip", turbo, ruta_periciales, id_age, codigo_postal, recibe, especial, status) FROM stdin;
    public          postgres    false    230   c      �          0    24821    cat_cp_cdmx 
   TABLE DATA           �   COPY public.cat_cp_cdmx (idcp, cp, tipoasentamiento, municipio, estado, ciudad, status, fecharegistro, idasentamiento, asentamiento, idmunicipio) FROM stdin;
    public          postgres    false    232   �!      �          0    24826    cat_cp_edomex 
   TABLE DATA           �   COPY public.cat_cp_edomex (idcp, cp, asentamiento, tipoasentamiento, municipio, estado, ciudad, status, fecharegistro) FROM stdin;
    public          postgres    false    233   u      �          0    24831    cat_edo_civil 
   TABLE DATA           F   COPY public.cat_edo_civil (id_edocivil, edocivil, status) FROM stdin;
    public          postgres    false    234   3      �          0    24893    cat_escolaridades 
   TABLE DATA           W   COPY public.cat_escolaridades (id_escolaridad, escolaridad, nivel, status) FROM stdin;
    public          postgres    false    238   �      �          0    24590    cat_estatus 
   TABLE DATA           K   COPY public.cat_estatus (id, tipo_status, nombre, desc_status) FROM stdin;
    public          postgres    false    226   #      �          0    24769    cat_fiscalias 
   TABLE DATA           �   COPY public.cat_fiscalias (id_area, cvefiscalia, fiscant, desc_fiscalia, nom_corto_ant, acronimo_fisc, desc_formato, tipo_area, id_pgj, status) FROM stdin;
    public          postgres    false    231   �      �          0    24883    cat_generos 
   TABLE DATA           @   COPY public.cat_generos (id_genero, genero, status) FROM stdin;
    public          postgres    false    237   n      �          0    16462 
   cat_grupos 
   TABLE DATA           /   COPY public.cat_grupos (id, grupo) FROM stdin;
    public          postgres    false    224   �      �          0    24834    cat_ocupaciones 
   TABLE DATA           N   COPY public.cat_ocupaciones (idocup, ocupacion, acronimo, status) FROM stdin;
    public          postgres    false    235   h      �          0    16467    cat_opciones 
   TABLE DATA           T   COPY public.cat_opciones (id_opcion, id_reactivo, nombre, ayuda, valor) FROM stdin;
    public          postgres    false    225   �      �          0    16426    cat_perfiles 
   TABLE DATA           �   COPY public.cat_perfiles (id_perfil, num_empl, acceso_perfil, sistema_perfil, visualizar, modificar, eliminar, status_perfil) FROM stdin;
    public          postgres    false    216   C      �          0    16429    cat_puestos 
   TABLE DATA           g   COPY public.cat_puestos (id_puesto, cod_puesto, desc_puesto, id_grupo_empl, status_puesto) FROM stdin;
    public          postgres    false    217   �      �          0    16455    cat_reactivos 
   TABLE DATA           S   COPY public.cat_reactivos (id, id_grupo, reactivo, ayuda, obligatorio) FROM stdin;
    public          postgres    false    223   �      �          0    24903    cat_religiones 
   TABLE DATA           V   COPY public.cat_religiones (id_religion, religion, tipo_religion, status) FROM stdin;
    public          postgres    false    239   �      �          0    16434 	   cat_roles 
   TABLE DATA           C   COPY public.cat_roles (id_rol, nombre_rol, status_rol) FROM stdin;
    public          postgres    false    218   I      �          0    24839 	   cat_sexos 
   TABLE DATA           D   COPY public.cat_sexos (id_sexo, sexo, descorto, status) FROM stdin;
    public          postgres    false    236   x      �          0    16437    cat_sistemas 
   TABLE DATA           U   COPY public.cat_sistemas (id_sistema, nomb_sist, desc_sist, status_sist) FROM stdin;
    public          postgres    false    219   �      �          0    24759    cat_unidades 
   TABLE DATA           �   COPY public.cat_unidades (id_unidad, cvefiscalia, cveagencia, cveunidad, acronimo_unidad, desc_unidad, id_un, status) FROM stdin;
    public          postgres    false    229         �          0    16442    tb_cambios_usuarios 
   TABLE DATA           k   COPY public.tb_cambios_usuarios (id_cambio, num_empl, num_empl_actualizo, fecha_actualizacion) FROM stdin;
    public          postgres    false    220   �      �          0    16445    tb_contraseñas 
   TABLE DATA           y   COPY public."tb_contraseñas" ("id_contraseña", num_empl, passwd, passwd_sist, token, rol, url_foto_perfil) FROM stdin;
    public          postgres    false    221         �          0    24929    tb_datos_victima 
   TABLE DATA           �   COPY public.tb_datos_victima (id_dom_vic, victima, nacionalidad, edo_civil, escolaridad, ocupacion, religion, genero) FROM stdin;
    public          postgres    false    240   �      �          0    24964    tb_domicilios_victimas 
   TABLE DATA           �   COPY public.tb_domicilios_victimas (id_domicilio, calle, num_int, num_ext, entre_calle, y_calle, entidad, municipio, colonia, cp_cdmx, victima, cp_edo_mx) FROM stdin;
    public          postgres    false    241   �      �          0    16450    tb_empleados 
   TABLE DATA           �   COPY public.tb_empleados (id_empleado, num_empl, nomb_empl, ap_pat, ap_mat, rfc, puesto_empl, area_empl, status, f_creacion_user, f_act_user, rol_empl, unidad_empl) FROM stdin;
    public          postgres    false    222   �!      �          0    24641    tb_expedientes 
   TABLE DATA           �   COPY public.tb_expedientes (id_expediente, expediente, status_exp, victima_exp, usuario_alta_exp, fecha_alta_exp, riesgo_exp) FROM stdin;
    public          postgres    false    228   �!      �          0    24595    tb_victimas 
   TABLE DATA           �   COPY public.tb_victimas (id, nombres_vic, apellido_p_vic, apellido_m_vic, sexo_vic, edad_vic, status, usuario_alta_vic, fecha_alta_vic, fecha_mod_vic, fecha_nacimiento_vic, curp_vic, rfc_vic) FROM stdin;
    public          postgres    false    227   <#      �           2606    16473    cat_accesos cat_accesos_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.cat_accesos
    ADD CONSTRAINT cat_accesos_pkey PRIMARY KEY (id_acceso);
 F   ALTER TABLE ONLY public.cat_accesos DROP CONSTRAINT cat_accesos_pkey;
       public            postgres    false    215            �           2606    24775    cat_agencias cat_agencias_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cat_agencias
    ADD CONSTRAINT cat_agencias_pkey PRIMARY KEY (id_agencia);
 H   ALTER TABLE ONLY public.cat_agencias DROP CONSTRAINT cat_agencias_pkey;
       public            postgres    false    230            �           2606    24877    cat_cp_cdmx cat_cp_cdmx_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cat_cp_cdmx
    ADD CONSTRAINT cat_cp_cdmx_pkey PRIMARY KEY (idcp);
 F   ALTER TABLE ONLY public.cat_cp_cdmx DROP CONSTRAINT cat_cp_cdmx_pkey;
       public            postgres    false    232            �           2606    24870     cat_cp_edomex cat_cp_edomex_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.cat_cp_edomex
    ADD CONSTRAINT cat_cp_edomex_pkey PRIMARY KEY (idcp);
 J   ALTER TABLE ONLY public.cat_cp_edomex DROP CONSTRAINT cat_cp_edomex_pkey;
       public            postgres    false    233            �           2606    24863     cat_edo_civil cat_edo_civil_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.cat_edo_civil
    ADD CONSTRAINT cat_edo_civil_pkey PRIMARY KEY (id_edocivil);
 J   ALTER TABLE ONLY public.cat_edo_civil DROP CONSTRAINT cat_edo_civil_pkey;
       public            postgres    false    234            �           2606    24897 &   cat_escolaridades cat_escolaridad_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cat_escolaridades
    ADD CONSTRAINT cat_escolaridad_pkey PRIMARY KEY (id_escolaridad);
 P   ALTER TABLE ONLY public.cat_escolaridades DROP CONSTRAINT cat_escolaridad_pkey;
       public            postgres    false    238            �           2606    24594    cat_estatus cat_estatus_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cat_estatus
    ADD CONSTRAINT cat_estatus_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.cat_estatus DROP CONSTRAINT cat_estatus_pkey;
       public            postgres    false    226            �           2606    24810     cat_fiscalias cat_fiscalias_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.cat_fiscalias
    ADD CONSTRAINT cat_fiscalias_pkey PRIMARY KEY (id_area);
 J   ALTER TABLE ONLY public.cat_fiscalias DROP CONSTRAINT cat_fiscalias_pkey;
       public            postgres    false    231            �           2606    24887    cat_generos cat_generos_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.cat_generos
    ADD CONSTRAINT cat_generos_pkey PRIMARY KEY (id_genero);
 F   ALTER TABLE ONLY public.cat_generos DROP CONSTRAINT cat_generos_pkey;
       public            postgres    false    237            �           2606    16466    cat_grupos cat_grupos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.cat_grupos
    ADD CONSTRAINT cat_grupos_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.cat_grupos DROP CONSTRAINT cat_grupos_pkey;
       public            postgres    false    224            �           2606    24856 "   cat_ocupaciones cat_ocupacion_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cat_ocupaciones
    ADD CONSTRAINT cat_ocupacion_pkey PRIMARY KEY (idocup);
 L   ALTER TABLE ONLY public.cat_ocupaciones DROP CONSTRAINT cat_ocupacion_pkey;
       public            postgres    false    235            �           2606    16471    cat_opciones cat_opciones_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.cat_opciones
    ADD CONSTRAINT cat_opciones_pkey PRIMARY KEY (id_opcion);
 H   ALTER TABLE ONLY public.cat_opciones DROP CONSTRAINT cat_opciones_pkey;
       public            postgres    false    225            �           2606    24686    cat_perfiles cat_perfiles_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT cat_perfiles_pkey PRIMARY KEY (id_perfil);
 H   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT cat_perfiles_pkey;
       public            postgres    false    216            �           2606    24610    cat_puestos cat_puestos_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.cat_puestos
    ADD CONSTRAINT cat_puestos_pkey PRIMARY KEY (id_puesto);
 F   ALTER TABLE ONLY public.cat_puestos DROP CONSTRAINT cat_puestos_pkey;
       public            postgres    false    217            �           2606    24907 "   cat_religiones cat_religiones_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cat_religiones
    ADD CONSTRAINT cat_religiones_pkey PRIMARY KEY (id_religion);
 L   ALTER TABLE ONLY public.cat_religiones DROP CONSTRAINT cat_religiones_pkey;
       public            postgres    false    239            �           2606    24667    cat_roles cat_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cat_roles
    ADD CONSTRAINT cat_roles_pkey PRIMARY KEY (id_rol);
 B   ALTER TABLE ONLY public.cat_roles DROP CONSTRAINT cat_roles_pkey;
       public            postgres    false    218            �           2606    24849    cat_sexos cat_sexo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cat_sexos
    ADD CONSTRAINT cat_sexo_pkey PRIMARY KEY (id_sexo);
 A   ALTER TABLE ONLY public.cat_sexos DROP CONSTRAINT cat_sexo_pkey;
       public            postgres    false    236            �           2606    24679    cat_sistemas cat_sistemas_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cat_sistemas
    ADD CONSTRAINT cat_sistemas_pkey PRIMARY KEY (id_sistema);
 H   ALTER TABLE ONLY public.cat_sistemas DROP CONSTRAINT cat_sistemas_pkey;
       public            postgres    false    219            �           2606    24777    cat_unidades cat_unidades_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.cat_unidades
    ADD CONSTRAINT cat_unidades_pkey PRIMARY KEY (id_unidad);
 H   ALTER TABLE ONLY public.cat_unidades DROP CONSTRAINT cat_unidades_pkey;
       public            postgres    false    229            �           2606    24788    cat_agencias cveagencia 
   CONSTRAINT     X   ALTER TABLE ONLY public.cat_agencias
    ADD CONSTRAINT cveagencia UNIQUE (cveagencia);
 A   ALTER TABLE ONLY public.cat_agencias DROP CONSTRAINT cveagencia;
       public            postgres    false    230            �           2606    24781    cat_fiscalias cvefiscalia 
   CONSTRAINT     [   ALTER TABLE ONLY public.cat_fiscalias
    ADD CONSTRAINT cvefiscalia UNIQUE (cvefiscalia);
 C   ALTER TABLE ONLY public.cat_fiscalias DROP CONSTRAINT cvefiscalia;
       public            postgres    false    231            �           2606    16461    cat_reactivos id 
   CONSTRAINT     N   ALTER TABLE ONLY public.cat_reactivos
    ADD CONSTRAINT id PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.cat_reactivos DROP CONSTRAINT id;
       public            postgres    false    223            7           0    0    CONSTRAINT id ON cat_reactivos    COMMENT     E   COMMENT ON CONSTRAINT id ON public.cat_reactivos IS 'Identificador';
          public          postgres    false    4808            �           2606    24725    tb_empleados pk_id 
   CONSTRAINT     T   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT pk_id UNIQUE (id_empleado);
 <   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT pk_id;
       public            postgres    false    222            �           2606    24727    tb_empleados pk_num_empl 
   CONSTRAINT     W   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT pk_num_empl UNIQUE (num_empl);
 B   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT pk_num_empl;
       public            postgres    false    222            �           2606    24933 &   tb_datos_victima tb_datos_victima_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tb_datos_victima
    ADD CONSTRAINT tb_datos_victima_pkey PRIMARY KEY (id_dom_vic);
 P   ALTER TABLE ONLY public.tb_datos_victima DROP CONSTRAINT tb_datos_victima_pkey;
       public            postgres    false    240            �           2606    24970 2   tb_domicilios_victimas tb_domicilios_victimas_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tb_domicilios_victimas
    ADD CONSTRAINT tb_domicilios_victimas_pkey PRIMARY KEY (id_domicilio);
 \   ALTER TABLE ONLY public.tb_domicilios_victimas DROP CONSTRAINT tb_domicilios_victimas_pkey;
       public            postgres    false    241            �           2606    24723    tb_empleados tb_empleados_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT tb_empleados_pkey PRIMARY KEY (id_empleado);
 H   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT tb_empleados_pkey;
       public            postgres    false    222            �           2606    24645 "   tb_expedientes tb_expedientes_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tb_expedientes
    ADD CONSTRAINT tb_expedientes_pkey PRIMARY KEY (id_expediente);
 L   ALTER TABLE ONLY public.tb_expedientes DROP CONSTRAINT tb_expedientes_pkey;
       public            postgres    false    228            �           2606    24601    tb_victimas tb_victimas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_victimas
    ADD CONSTRAINT tb_victimas_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tb_victimas DROP CONSTRAINT tb_victimas_pkey;
       public            postgres    false    227            �           2606    24692    cat_perfiles fk_acceso_perfil    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT fk_acceso_perfil FOREIGN KEY (acceso_perfil) REFERENCES public.cat_accesos(id_acceso) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT fk_acceso_perfil;
       public          postgres    false    216    4792    215                       2606    24996 3   tb_domicilios_victimas fk_cp_victima_cdmx_domicilio    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_domicilios_victimas
    ADD CONSTRAINT fk_cp_victima_cdmx_domicilio FOREIGN KEY (cp_cdmx) REFERENCES public.cat_cp_cdmx(idcp) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.tb_domicilios_victimas DROP CONSTRAINT fk_cp_victima_cdmx_domicilio;
       public          postgres    false    232    241    4830                       2606    25001 3   tb_domicilios_victimas fk_cp_victimas_edo_domicilio    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_domicilios_victimas
    ADD CONSTRAINT fk_cp_victimas_edo_domicilio FOREIGN KEY (cp_edo_mx) REFERENCES public.cat_cp_edomex(idcp) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.tb_domicilios_victimas DROP CONSTRAINT fk_cp_victimas_edo_domicilio;
       public          postgres    false    4832    233    241                       2606    24789 #   cat_unidades fk_cveagencia_unidades    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_unidades
    ADD CONSTRAINT fk_cveagencia_unidades FOREIGN KEY (cveagencia) REFERENCES public.cat_agencias(cveagencia) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.cat_unidades DROP CONSTRAINT fk_cveagencia_unidades;
       public          postgres    false    229    230    4824                       2606    24799 $   cat_agencias fk_cvefiscalia_agencias    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_agencias
    ADD CONSTRAINT fk_cvefiscalia_agencias FOREIGN KEY (cvefiscalia) REFERENCES public.cat_fiscalias(cvefiscalia) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.cat_agencias DROP CONSTRAINT fk_cvefiscalia_agencias;
       public          postgres    false    231    4828    230            	           2606    24782 $   cat_unidades fk_cvefiscalia_unidades    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_unidades
    ADD CONSTRAINT fk_cvefiscalia_unidades FOREIGN KEY (cvefiscalia) REFERENCES public.cat_fiscalias(cvefiscalia) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.cat_unidades DROP CONSTRAINT fk_cvefiscalia_unidades;
       public          postgres    false    4828    229    231                       2606    24934 !   tb_datos_victima fk_datos_victima    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_datos_victima
    ADD CONSTRAINT fk_datos_victima FOREIGN KEY (victima) REFERENCES public.tb_victimas(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.tb_datos_victima DROP CONSTRAINT fk_datos_victima;
       public          postgres    false    240    4816    227                       2606    24939 %   tb_datos_victima fk_edo_civil_victima    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_datos_victima
    ADD CONSTRAINT fk_edo_civil_victima FOREIGN KEY (edo_civil) REFERENCES public.cat_edo_civil(id_edocivil) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.tb_datos_victima DROP CONSTRAINT fk_edo_civil_victima;
       public          postgres    false    4834    234    240            �           2606    24712    cat_perfiles fk_eliminar    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT fk_eliminar FOREIGN KEY (eliminar) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT fk_eliminar;
       public          postgres    false    226    216    4814                       2606    24944 '   tb_datos_victima fk_escolaridad_victima    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_datos_victima
    ADD CONSTRAINT fk_escolaridad_victima FOREIGN KEY (escolaridad) REFERENCES public.cat_escolaridades(id_escolaridad) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.tb_datos_victima DROP CONSTRAINT fk_escolaridad_victima;
       public          postgres    false    4842    238    240            �           2606    24811    tb_empleados fk_fiscalia_empl    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT fk_fiscalia_empl FOREIGN KEY (area_empl) REFERENCES public.cat_fiscalias(id_area) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT fk_fiscalia_empl;
       public          postgres    false    222    231    4826                       2606    24959 "   tb_datos_victima fk_genero_victima    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_datos_victima
    ADD CONSTRAINT fk_genero_victima FOREIGN KEY (genero) REFERENCES public.cat_generos(id_genero) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.tb_datos_victima DROP CONSTRAINT fk_genero_victima;
       public          postgres    false    4840    237    240            �           2606    24707    cat_perfiles fk_modificar    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT fk_modificar FOREIGN KEY (modificar) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT fk_modificar;
       public          postgres    false    216    4814    226            �           2606    24738    cat_perfiles fk_num_empl_perf    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT fk_num_empl_perf FOREIGN KEY (num_empl) REFERENCES public.tb_empleados(num_empl) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT fk_num_empl_perf;
       public          postgres    false    216    4804    222                       2606    24949 %   tb_datos_victima fk_ocupacion_victima    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_datos_victima
    ADD CONSTRAINT fk_ocupacion_victima FOREIGN KEY (ocupacion) REFERENCES public.cat_ocupaciones(idocup) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.tb_datos_victima DROP CONSTRAINT fk_ocupacion_victima;
       public          postgres    false    240    235    4836                       2606    16493 $   cat_opciones fk_opciones_id_reactivo    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_opciones
    ADD CONSTRAINT fk_opciones_id_reactivo FOREIGN KEY (id_reactivo) REFERENCES public.cat_reactivos(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.cat_opciones DROP CONSTRAINT fk_opciones_id_reactivo;
       public          postgres    false    225    223    4808            �           2606    24611    tb_empleados fk_puesto_empl    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT fk_puesto_empl FOREIGN KEY (puesto_empl) REFERENCES public.cat_puestos(id_puesto) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT fk_puesto_empl;
       public          postgres    false    222    4796    217                        2606    16488 "   cat_reactivos fk_reactivo_id_grupo    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_reactivos
    ADD CONSTRAINT fk_reactivo_id_grupo FOREIGN KEY (id_grupo) REFERENCES public.cat_grupos(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.cat_reactivos DROP CONSTRAINT fk_reactivo_id_grupo;
       public          postgres    false    224    223    4810                       2606    24954 $   tb_datos_victima fk_religion_victima    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_datos_victima
    ADD CONSTRAINT fk_religion_victima FOREIGN KEY (religion) REFERENCES public.cat_religiones(id_religion) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.tb_datos_victima DROP CONSTRAINT fk_religion_victima;
       public          postgres    false    4844    239    240            �           2606    24754    tb_empleados fk_rol_empl    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT fk_rol_empl FOREIGN KEY (rol_empl) REFERENCES public.cat_roles(id_rol) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT fk_rol_empl;
       public          postgres    false    4798    222    218                       2606    24924    tb_victimas fk_sexo_vic    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_victimas
    ADD CONSTRAINT fk_sexo_vic FOREIGN KEY (sexo_vic) REFERENCES public.cat_sexos(id_sexo) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.tb_victimas DROP CONSTRAINT fk_sexo_vic;
       public          postgres    false    4838    236    227            �           2606    24697    cat_perfiles fk_sistema_perfil    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT fk_sistema_perfil FOREIGN KEY (sistema_perfil) REFERENCES public.cat_sistemas(id_sistema) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT fk_sistema_perfil;
       public          postgres    false    219    216    4800                       2606    24804    cat_agencias fk_status_agencias    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_agencias
    ADD CONSTRAINT fk_status_agencias FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cat_agencias DROP CONSTRAINT fk_status_agencias;
       public          postgres    false    230    226    4814                       2606    24878    cat_cp_cdmx fk_status_cp_cdmx    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_cp_cdmx
    ADD CONSTRAINT fk_status_cp_cdmx FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.cat_cp_cdmx DROP CONSTRAINT fk_status_cp_cdmx;
       public          postgres    false    226    4814    232                       2606    24871 !   cat_cp_edomex fk_status_cp_edomex    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_cp_edomex
    ADD CONSTRAINT fk_status_cp_edomex FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.cat_cp_edomex DROP CONSTRAINT fk_status_cp_edomex;
       public          postgres    false    4814    226    233                       2606    24864 !   cat_edo_civil fk_status_edo_civil    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_edo_civil
    ADD CONSTRAINT fk_status_edo_civil FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.cat_edo_civil DROP CONSTRAINT fk_status_edo_civil;
       public          postgres    false    234    4814    226            �           2606    24621    tb_empleados fk_status_empl    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT fk_status_empl FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT fk_status_empl;
       public          postgres    false    226    222    4814                       2606    24898 '   cat_escolaridades fk_status_escolaridad    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_escolaridades
    ADD CONSTRAINT fk_status_escolaridad FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.cat_escolaridades DROP CONSTRAINT fk_status_escolaridad;
       public          postgres    false    226    238    4814                       2606    24646    tb_expedientes fk_status_exp    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_expedientes
    ADD CONSTRAINT fk_status_exp FOREIGN KEY (status_exp) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.tb_expedientes DROP CONSTRAINT fk_status_exp;
       public          postgres    false    226    228    4814                       2606    24888    cat_generos fk_status_genero    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_generos
    ADD CONSTRAINT fk_status_genero FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.cat_generos DROP CONSTRAINT fk_status_genero;
       public          postgres    false    226    4814    237                       2606    24857 #   cat_ocupaciones fk_status_ocupacion    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_ocupaciones
    ADD CONSTRAINT fk_status_ocupacion FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.cat_ocupaciones DROP CONSTRAINT fk_status_ocupacion;
       public          postgres    false    226    235    4814            �           2606    24717    cat_perfiles fk_status_perfil    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT fk_status_perfil FOREIGN KEY (status_perfil) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT fk_status_perfil;
       public          postgres    false    226    4814    216            �           2606    24673    cat_puestos fk_status_puesto    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_puestos
    ADD CONSTRAINT fk_status_puesto FOREIGN KEY (status_puesto) REFERENCES public.cat_puestos(id_puesto) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.cat_puestos DROP CONSTRAINT fk_status_puesto;
       public          postgres    false    217    4796    217                       2606    24908 !   cat_religiones fk_status_religion    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_religiones
    ADD CONSTRAINT fk_status_religion FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.cat_religiones DROP CONSTRAINT fk_status_religion;
       public          postgres    false    226    4814    239            �           2606    24668    cat_roles fk_status_rol    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_roles
    ADD CONSTRAINT fk_status_rol FOREIGN KEY (status_rol) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.cat_roles DROP CONSTRAINT fk_status_rol;
       public          postgres    false    226    4814    218                       2606    24850    cat_sexos fk_status_sexo    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_sexos
    ADD CONSTRAINT fk_status_sexo FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.cat_sexos DROP CONSTRAINT fk_status_sexo;
       public          postgres    false    226    4814    236            �           2606    24680    cat_sistemas fk_status_sistema    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_sistemas
    ADD CONSTRAINT fk_status_sistema FOREIGN KEY (status_sist) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.cat_sistemas DROP CONSTRAINT fk_status_sistema;
       public          postgres    false    4814    219    226            
           2606    24794    cat_unidades fk_status_unidades    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_unidades
    ADD CONSTRAINT fk_status_unidades FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cat_unidades DROP CONSTRAINT fk_status_unidades;
       public          postgres    false    4814    229    226                       2606    24602    tb_victimas fk_status_vic    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_victimas
    ADD CONSTRAINT fk_status_vic FOREIGN KEY (status) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.tb_victimas DROP CONSTRAINT fk_status_vic;
       public          postgres    false    4814    227    226            �           2606    24816    tb_empleados fk_unidad_empl    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_empleados
    ADD CONSTRAINT fk_unidad_empl FOREIGN KEY (unidad_empl) REFERENCES public.cat_unidades(id_unidad) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.tb_empleados DROP CONSTRAINT fk_unidad_empl;
       public          postgres    false    4820    222    229                       2606    24733 "   tb_expedientes fk_usuario_alta_exp    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_expedientes
    ADD CONSTRAINT fk_usuario_alta_exp FOREIGN KEY (usuario_alta_exp) REFERENCES public.tb_empleados(num_empl) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.tb_expedientes DROP CONSTRAINT fk_usuario_alta_exp;
       public          postgres    false    222    4804    228                       2606    24728    tb_victimas fk_usuario_alta_vic    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_victimas
    ADD CONSTRAINT fk_usuario_alta_vic FOREIGN KEY (usuario_alta_vic) REFERENCES public.tb_empleados(num_empl) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.tb_victimas DROP CONSTRAINT fk_usuario_alta_vic;
       public          postgres    false    222    4804    227                       2606    24981 +   tb_domicilios_victimas fk_victima_domicilio    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_domicilios_victimas
    ADD CONSTRAINT fk_victima_domicilio FOREIGN KEY (victima) REFERENCES public.tb_victimas(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.tb_domicilios_victimas DROP CONSTRAINT fk_victima_domicilio;
       public          postgres    false    241    4816    227                       2606    24651    tb_expedientes fk_victima_exp    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_expedientes
    ADD CONSTRAINT fk_victima_exp FOREIGN KEY (victima_exp) REFERENCES public.tb_victimas(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.tb_expedientes DROP CONSTRAINT fk_victima_exp;
       public          postgres    false    228    4816    227            �           2606    24702    cat_perfiles fk_visualizar    FK CONSTRAINT     �   ALTER TABLE ONLY public.cat_perfiles
    ADD CONSTRAINT fk_visualizar FOREIGN KEY (visualizar) REFERENCES public.cat_estatus(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.cat_perfiles DROP CONSTRAINT fk_visualizar;
       public          postgres    false    4814    216    226            �   j   x�Mʻ
�@�z�W��{-lB����bn�w�̮��'���l��Q�h�ɥ�;9��7~��Г��ټG�Z�n���g���'lb�O��O�������Vxm ,	r$$      �     x���]��0�g�s��kɎ?Nd�hч���5}(��P�+� =�^�#���ni��l@h�̏�����zW���˃Gx�Πԭ�M���k����Az�A�e�րF�i5�q<e��3Y�A^�"���N������ۉ�Zd�VƋ��|��GǶu]�9g�<Y�_��l�����w���Ѻ�Ī������a�o(�2��e�/��6QW1Th_��U�V'��υ:�2���� Xܷh���ɛ���ʍC��<H�{t3�ES���YSG͖�{{���1�t�3�K�TK8��><�p0Q��=?�H�$�;fJ�����`��/�l#�I=wך�9� �Z�]��� D&�h��(��A��z�"�ݛ<+�Wݛ��toҀ�S�`�kM�-��.Gz7t��������/����A�}��
������२.$�Dgضq,-���x��������z 7Z՟�4�B�~Δf�U��b��t�-�U���x��`�c�岿�o�_��d���,�-��D��y�4�ջ��׾�l�Z���      �      x�ŽKo�Ȗ�;N
��[F2�>�T�%ò�em�n�NB�,�>LR�L
�f5�_��jX0p6j��Q�;�"�����.��}No9��?VD�G8��ϖm�6�����t����z�G3[V�Z��u���R��G�/�L�U��<�!̂��������^nw]Y�z>SD��HK��m��d�n��zS��-q#1�����b1R4���m���?y������:8��>����^��K�p��t���֕^U���Yh!61��e�ổM�󾼪��}_�a�
B%B(�����U['���h��u١��P�����-���n��g��Ƴ3�]뮢y��5���~�[W�����e�jk]�BF��בּ�V����k�D�)������yuI�������Ի���L7i(P�*:H[�ac��\״��>#%�w��i�y���V&S�;���u�\�R��eV�RbH5S�#!7��fqY~nW�ۻ��P�$λr�MJ�8��5~t�U��%�R1T�g� ��a�	VM��6w⥾�!��������B𱭫5�w�G��3Y*�`��n��,Y.�yA��##{�ݕn��GЕL���\��lD%�EwW��'Q,FQ<\�\ %b�h���ͪڮڀ�$p��7ַ�W�@Dr��E�wѮK�=�F.4�.J�j7������Vc��QH���ݵ�b��?������=Y�Ҝ��bh5�G��ٕ���B�emY��o�OԱ����9�q$�������i��1��>��:����J��l��	��)
���G���UW�،c��H�fr�;\.��p�;}�ӊ�)���<�ے/(kړyg�5�7����I��쀤�\C97z	ͰHʢr9J���༤SSpRӆ5J"1h4Bi��8���⑷�5H?j�%�	���C��k��جKHu"){����Zշ�$�M<Z�~��ǒ�U��Q.���l-��fՕ��%PB#�Zץ�J��m�zszBMIob�}��UU�o;��H��FN�F����pƇ�eWm���(��G"Km����L�41$ӭ�}���7Mִ��;%m��ۚ����Ǿ�"�󦽦�𕆍������H]r/�:m�m����)X��Lb���Љ��`D�������v��-��H]]�J�k��;6�3Ȉ�IO/z�2W�IIB�gc�I���-8�b���꺧5�Z����	��x������r(	J"���ݪ���V&����E�W�r1PĮ�rm'?iH"��L����ׯ|���-�U��۝^����ֺ����p�D�(\�����qX�y$4��ڻ�7�B#��w�=��H0�rHL$d�^���m��+��"啲X��p2�L��G�۲�;2ك6<?a���ϡ1bw0���<'�7���s�CR[�.-�bR�Z70��t�aW�PFk�ǲ>�!7Z� �&w޵׸��^@Kb����v����v���� fFʈ�5_�;�"�Lo�d*��fUCK>1�p��˻j�v�;�ܑ%_j����V�n��V^��(AA4���\!j�P�r�
���˯�+�%� 4R�7��'�5���&x��cS����`˟ �ɥv{��ͳp��:�!���0~�2��M�Y٭ʵ�H����R�#s��[�ۗ�ש���킷�鰴�;籮�$����R�݊Ptm4�] ,Āt�����:�f������;���UM�2N��<y"ty=���M�쌃D�\�C��&���Y����K튇�!P��T��E����r��`$iO.�ixhb�^/�p�-����֕9e��H��-��������۲���6m@g9��M�_͝�.�W����|��]Bk�/'?�Y�?	7�ވ���(��[@��@<������.kƄm�f&��>!��������	�D�"��6�l7��(�?�&�Z^g���,dN"�1�cy���j�[è��4h;����!���{k��sx;Ӱ��U��T�Y�fM�5M'���.W��Z�DofJ!�W�6�y;'+�62Y.;}�?�uہAL2�9zQ���;8
���V���2���K�}��JL�D"��4'Ȓ~��4�a�($�$�j�3����y��m�i�Tm��93��#�ؒٻv��?0$ �&�
�a�������+F�@��[��݁���	��mo�݋H���0��
��dh@��^iD�����J�H��9���iD���?�I^���J^L�$���7:�nt_W�f��I*�,�.���h�b	��%,�E��ِ���1��8(���oK� ���)C$1!N�uO�f�k���g��&�?���W%��햛�_EBrnG��t^��V!ZBJ�d�S�M��]�#�lDr����Ǩ�!�����C��eF�mO�qYW؍͔!��%&�yG����p6�t$��'w�S !M�%&�y�"��YU�'IQ�D�ָ,���vӲ�D�O�2����:�9�w��qg�Q�6mv�T�b�p�l��z����Y�/}��LL�h������W3bb(�4�EU^������~KZ⟦��+"���{�!/.h��eD���`��ͮ�,����9#��2xܴ�H�g���۴[~Y&-����k5m��>�}�u��O���!�%G���ɾ���-� 3FH�J���%5��.��#��p��6�q��^��C��C�m�z��g��y����!d(-�G��?"��
�ҿȻ8->k6#���E�1p�%��-�NYV�w���ko������r��H�"��ԲG�b�+_>���i�"s�T�wy7�fI��aX��O��'-�!x]�[�W����r��"a���Q�����n;џ͸�x��*�E�3��?H@G�*�\8>H����w����jd�pW�O�]���3��xǃ?8Ї\f����0�.V�25t��LP�@
�|j7U��F@���w�/���}�[�{F�.���ٗ�~e�C�A�{�k�͉�$�����^~���Gǒa:�D�_fGkiyy6������?R=�<=ef�=�d$IH�� �T1%�aC+'�����kqˉ��#�.�Nƌ Ӕ��<a +�d�8Y�!1����5q���?����&��V���Òa�X�d�a�PhM��zz(M�Bl�o�OAM����Yd���Ͳm�Ё;�8�#?�8�f�a��O��|�K_ݒE��~�������:��h��
��{��5�aG�	�t,�!IS��y�l��ڈⲯcg[E��z��S������fCI�R�׏������ʫ�m.��5�������i	P�}�l����������2.�%n��e�?W�S��m��n�߅>��=I�vW!
3!dA�\�hr1"�&�+1�d��8���P	�oMR�4E�H�v�<?+7�N�R�̅Ų�i��Nd��\���ىB�?�c:��O38#p*;�V��ʬҡHT��pY5��6ZP X����a��J&��pY���5 I�p;1l_(xG���#H��/2X��4������� iQ"ڹ˖�ʺ�cIj���;�s�8�h$A���/�ֈ����[��E$A�\x�6�Tu5��`y�L�
O]�>\��_�b,�Q&;��e�+Hj��Z&��3�q�L�$C��d�q�Gb��,^%t�50��Lv�B��a�Ip2Y[����\٬+�q<K�ө��������&��|����]����g)�b��,eX)��4+2��X�֥��+��a��D��[��J�Y	���SiVjX!�2iVfX�X�4+7��X�4�0,R�P@1�T��?ȪݴL!�%f;2�nyA%$��d�4	%�mæ )�мsR����PH���p����8$	�� 8J�#�Fjj�y)I���VƿO��d�UYW�hRV��H"�)��7�Z� 5�F�'���Y�Bj�d�[�����H����s��L��X�/�ZonM�H"b���D�B�H����ڑ���� �� �/8&6(�	��p�h(l&2�NJ��tQnI��Qc+fX!�$d{ �#�    [A�#�M����ѷ�1�T
�� �+~��+���g>i�'�e������9���>bM�ܮګ9, T"�E��o��������RL�0��!��HC��޷�v�Y}�U��"�CZmY��:��:���/k�d\�|�X�����s
]wժ�w}g�f'E(|6q�iV~,�ߕצn'8���+R�+�R��+K�"�e9}TC�!��j���)�mU5- �`j�k{�s���w2M�/��m#Vt,��/ʟێL�V���p���Vr,# �������ɠц�H1Q3aM��Io�R�Ȝ�M�{�XAdTɀ��끔K��_~ݺK��BE��HP�t.�9�Ÿ����,$2�	�g�II���EyK�Tݹ�=��z�CF�SԌ��@�RH�[���jȟxF ��I�9N�.�B�a3=,7HH"cV�v]u��x����^M8�Mۣ�S�̃G$��q�pB���	���\Cw�'T%�1�F�1���n�#&d&����1B��lF�$��@x���!l��Gn��'�Y1֜���	��"$#��KB�R��0�&+�c:���F`(���i�S���F4�F�n̞�B�bÊ\��� 4P�Q*�L����lp(:�> ]r���W�6�,I
"�������}�.�%~��;��P�SL�o/�x���F�K��3-�NS���X�_V����C<�+��{�ɗ_�C2��iO'9 |�Nʺ�d�r�5�6�-�NS�W5�C����,t/�}��V�u�N�(b��u5�aP��&h���+��lZ23#ȅ{�� ��3�u��K�cԃ��{��#�0>��0�S#���a�H|oQ����^�Y8�
��Ǔ>��Y@R�]z��+��e���;D�g�Ŭ��w[����,�j�Y�wz|�����Z�ؖ�}�,�!��ԕ ,�ލ�-��n��=
c,��uԩ�hq�z��U�Ew������"1�U�w�V�!��X�r��q������$s� 3+Nt���D��vV$�N��A����Mkj���v�]64����8��!�*���Q��V�~���=��u[k�s��g����>��l�qR���?l��aj���(/Ѭ�{#�I�4=����$��g �'����r3@_���mk¥s��]�/�;:�70Bf�]N���M�Ue�b�_��}���~W�e�j����)d"�}���=���F�Kŉ�/�ΣCeoR�t�N�l�Ğϔ�~sՍM۵\O��;��[�}�6�7m�XmO3�򶾢�$C�q� +g�������Q��u����ɴ��B�ݐ���G3>���́�i��\�d�ʯ^`f�m�\�U�	��1���b��ĠՌ|̈-��� ����ʎE�W۟�q⬭�5#�;\.���"r�6+����O|j�,ތ5#�ۮ���u�v�7��;O���ۍ|����ˍ�%����o������٤6���Wm�|΢��|�xa]o,!��X���[+ �Q"�����Rl8�*��埬�H��䪶0���Ma���[}����+cr¨��e��n�ԁ�LG����e3���۲�U<5hV�Tb�λ��*g
�U*P���`(���5�D���r�7:�|��T���X��ޠ\�A�F��R^���S�+f�D�UR��v�޶x�giC*����3���]�p�H"��PU@�}�ؐ<Ԧm�Y(C�<A�ɝ���N�P�:�=ƥ�IT=2�2����Q<W�#Q�m��]���A?�9�G&S��I�|Y�ʕ�Mg��dB5�*�</n���Y�H&�"N���QL�w	XszׯL��xN��eb����g��_{:�0�"�a5N���!��Nn���K�v�q�q�G�K�i;���'����q]2K����S����P��E�iW��]���F�W�5�j�;sHAr	���o��(��vb�|��A�]e�r�!	F.a�pYs]��zm8�L�Bb�/p_b�yqH�QHL�E�֍A�`[�kL�9\�B�<ĵ�k?8�w�H�ö�#���H,
	�Ui^aP$�L�`�Ƞ	ޚ�I I#
���nI(
��Ѽ�2"A�ٹ&;f�%x��$��>�����NH'F>���m'|y),�k�W%����4���g�ڏ�ni�|
��4E��	�<���>�T|	^^$�3���fQ(3nXT&��I�ŸH�&����h�Ϛ��x�����������Dĵ�؇��P��뛿[k�Zkd�[���o'�w{=�c��h��wg��K$�E�nf��Ľ=�2f<��YWk*���k�ri��1N �b��Գ����;���i�ٗ��#����x���k��v,��+����y�c�"�y�L�/�����i�u�7S��YFb^]���h�%�@R��\Ok����oݮ�4ch�:�����d������8&�P�~�%��<���D1�]@�r���n���]릺צ$�;Y��/9r\Ǉ]Cc�H��&�#�������Y�*�^]���!��YA�?�z�3�Cf��4M�������f�b'��s�~�(�E�b$~7���`=��ł���Flŗ��M�?��������D�8d4$��l�dd��8O9�ܟlN�	
��y6N���\�]9!A02��]�b���_ژ�A���
&��L���g��	4��� �6
�צ$bmx)��.���u��wf�٫K�>�v�Ug�3�ef�=�l��u���!�$f�,�Q�SF�[�_����ֳgl�jؚ�3���f�{�#0�u4��R��z�;촴^_����|0���S���g�\�?@�.$�
����t��9B"!zz(G���P����W�ŷ5�p%米%�HB�n�����F��� ��%{{w_YZ��8���A��f��=����7��;�Jxj
29�^�����������7��o144���U���m,"�f��͛ԉ;bC�T������=�[���� Ȑ�o�{g���y��k��9<�s���r\����79�g�G�X���X�|��E���%t���]�B�E2�C�]�E�X�b\1@�fQ$�s�4���0H1P"��:̾"!������k���R��<�q�/7�eg�`��Uf&⑜$��4R{�f.9����j�G,33���zӢ���2���Ҥd	F,39�˙�귆a��̜x�n˟�yjWqjf'��$%��Ly_����Ls>c�I"3;��]uW��ᐎ$2�I����R�Df�����jU��f�J�$���0�C��
��#�Hd�� 2�6����n�J� ܩ��t�bA�d��̔>�����v!�psQJ앣�F�f$��@ѩ����!�pMz��6���!���O$@�>�W(	I!R!_!2:�j�����WTHR��H�y�U�kQDB���i�.o���Y$��L �9cH$R�xW�:ڀ�K�h��TF&�[��pa�j�o�MIF&3�'ż޷M�>;`�nd2s�Kde09�͞�HD2!��vuS^�a�A$$��
8�}�$���/��r�ר��a�t$�.֦��w^5��V�)��|y�����m�HNr����dڛ@��ҝ�*�qp-��l���ǓN���\}Y�F��+ZY���K$))dV�Y٭��pQ�I!3U����5~l�6�]�#����,��>���~3���@)��C@���g�;�U$��d�Q�1�ЖfUޚp
`r�D�[��<2�@(fY��Wa�{2���`�|(��=���G�a��/beB,N?�)�M�Ռ�˅p��Z��e��B�u���9�x���#���1�R�s�`%�̽>��B�Sw`��P�y�bt�+K�3�C���Lω�u�r��/�L����R��z{�蜕�O��[��;����F��xj�!a��4P����#p�#��/�}Ȁ�V�bФ֏K;�J�
Y�����8�/Dz�Hю�=�I����L�G�P�Tj��H��&���F�K��I��NE_�a?P�������\�S.���-n���uW���B���NF'��-���(    ��U�Z߱�iwA���%��<�h<����H�k8i�6��g<0I�"%�� �ݐmҥf�*ӳ��Y�5g  �)��&����$�u[����뾙"I �HhWS�΄I���"���	R�!������	:4����~��*u�P�Tp
�KU��眾�B�R���]�S,�Il+_r�:dh0Q�;�42�6m��uR��\��qW`���I��b��!���{��᪋�Ը,;��}�6�����>�h7�쟇r�!Nչ��I�b��(j^�_[6q�H��lƨ��^����:��Ɖk��Y$6�؁�Fr���U�^��#���e/�&�<,��B�������s�R)��4xW^W�Zs�9x��j�dfݚ�ִ����N��Q�zs�]#�XpQ���㪮����m�8�Pf��k���Gl�m�C�0I���G�?c:8Kj�-hR�d��Z�_iw�N�Pq�o��m��z*%T(�BB�E}�l�Dʈ��H��|�4Lˉ6���
[|᜚��"�&S⒓<��W8������v�"� "�Ƒ�z�E�D�E/��p(j��S��ڛ?"��H�>bQ��%�b1�rV�����I͗�N���B�s���r��9�^s�BH�WQ�S��,'8(ɘ�կ@��Î��D7v�R05CaC�CygN��_����u�������.hBe�Ќ��7�Y�!iF(�a�����������q��X�J�>b�͌Z"Ɗ&�17��6�hmC�s�K!"�g(e�^J����PᎷ��D�7d����BHqb�ƶ�X�p�AD�R�~ə��SPÎ�#����Eb d��+�J�$�y�n��b,�E�Hm
Us��AT"!�&ܪݴ��p���Xh���Lb]����Pjf<���A�-R��������WFb(5�D)��e���ˇ|��	�0jv��po�J_��i��E335^?���P!��+� Q$&��0fAV���N��Mp�|�sg(�E���_���a����L�=� ,i����ݮ7a�Ȓc��E�2�4�M�/ud�U��	a�v5!��()��mL�(1N4[��	(�|�����$V,�Jf6��ͅ�W��AMĨ�짲�����42��n�/������׮����Ȏ=�3$#M�R5�����]t#s�Y�[���ӜfBA�p���-�AȶI�h'_��[d���$$H��ؒ�"�	�s�DC,j8�1'"N�s�{>��״;361���dW5�HQ �c�;J� ���"X��vW�-^ҁ#1(����֍-
`>��w,ϯ�����1˞!/m6s��h�6)=�"1!�p+�J��nq�@�r+�k+���&�N���~�s1�ۍ�hL@#���п����纙�p���9b����	p���z�8�R���H�hnsߗv�f`I��_vU���g�wGn)�m�bn�Lr,r 5{Q5��~	^�R$�?�ԥH�g<R����<;^뫮"I{CF?`k�H�S;�xt��'��������gϏtN�RH5 �xu��`$�	�6�1�<a�����rX�qgV��4r��FZ��N~�1�2�3mJ5�L��
�{1h�Pj�-u�E������ܶ8��ତ�ոW�q���ZW쐙6�7��r�M�b9�t��D�^a ��L�H��2KEƎ,��`�cx��z����3�C�b�����?+w�-#ڰ�6��M� �'�	����;u��U��.��l(fsc�8`��D%�����j��G��k������6�d�{��;xϊy�M./>8�1���'���/�?�ON�>9�����]$�ruc�"�C��N�>�
���i�睩6�J�԰lQΚE!�R�ܽ�ʺ�-Qu���{}śM��~N�g�.k{�����5b��R݉�/:��<vk6g����Uo�4���l�K�7)��yG`&�k!r�KԶ�Z���(|#N87��(�x$zi�I�3���E�'0)0�o�!M����?��E�+!Z$]����/n���� �kĸ &;R@����S���O�~�p~ �<��ًr���d�gw�m�}��� �2ȡ!�[Z/��M>V~-ib�8\�{�^���J;A��D��`O���1�ޗ�&?��a���C�A;/R ��⑗���FJ�fh�F�ژ�r,ni�I <h���{���}�� ���e� 鈼7�����Lr���o;�ȃ���o��	෕m�?r���-��*P"
����v.�X����y�����p��,��ٖ��n��t��ÍC��w��M[W�Is�׆��9��rpR���;��s��?u9�@*Hj��b��{nX�(�n�6k����}k{1"��=�x��C7R����2̀D��]�Yj�M�h1j�_��3��I(���rܬ� �a�/�3^柗�n2G��?.�]�f�
��*ƌ�����iw/r��ؐv��v��57*X���euKF�m��Dd-7ewg	�1n�J�
�z�i��0r �-d�UX���&��QY�e�hvAFPG�B�������x�Kvڬ{jj���C$��c�{��dk��>/�BM's'�|�?�`�G�#� �X�ǌH�YpҘX OٌI0	�[~.l��2�`���;�<p� S�#��Uv^��<�׽6{~���T&�E�l���h�[��ք�fIAP�p�é��Q5L��t��}ّl�����bX5{HSb���۞�[�E���}S")_@���&�}�6��uA6���L()�����R�����ys�HDT�TDY���"~~�A�5�\�O��cn!�Mf
a�C �8���Sl�}�1aY��2k��y������� �$2�#������:0�͍NpY����ɲH��fV-��>I���&�vqM�6�����D���9$���)��T���e�����ѓ����� ��	''��㴆_҆ӴO����W�O�s��L,͟�����VD���<Mmn�,�~����7�-%Q��Ӡ,Xm6�%n���㘈Q��p���L@t�C���O<�����6�gbx����7��y 2CFS$n� �ə���	B=�4%p1�)��8�e��PM�Qٹ\R"��koYKiI��$KȊXdR���qA�%b8$��:SF�	u@��L*�}��A�fߙ�fb0�������
1�J�c0�� �^�̆2�
A�����4��2fR�D�]��</G~ݬ��]不�ľ�ȉ`��6G��\��7��'��Q��Ŧ�ʾ�`�`f2�~���M�-��l�?�A$g��=n��?��z���I�rY�x��T��E���xt��\�MǞ�]iz��+J�m.M7�خn*Nz�#Oo.e�^���Nt��4��7��2(V�j(1p��|��#��S�f}(��
�S�&T�,��%l�=�ߖ�� $"Qp@,	��o�����"_�d�N�<L)�
�Ӄ�h)��b�λ�ΖtbXF0��;�?��2���bAD�Ы�r��|:[��`��,��qfqj��*$�ؚU�Y�:�d���=~T50W�<���tR� *��F�"J���ђyd`I�R��3ւ x]��t4�R��,�'���*[C��������g�qT�T��:p��w-�PU�T�#k?�eN���ebz�T�LJ���U&����]���1f&�#%�Dr�fWb��9Er�hz��V�{V����WP놗h{<�H�2�Jq�O�;�$Q��.�pT!�%biY0�GK�$V�����!Rb�㙾�m�lt`_^>�2U�p��2���F�9���q(G���= C��6���e�m�Q�8G\Grp5{���k�I�M{O
�L��X~�Ѳ8�d3�c�ٰv�����D�\̒q��"���.gp&��bĐ�����ug�Uq!�T�K�����;��d�����v]�����(�GB�C���G��_�/eK<�WG|��\̨p
��Fm�bH�M���*7Wk��Y.fĜ�ͺ�\q��<I�Pj�J��Cg`�!�,��X�MU�g�O�Vcy����H�9ɝ������
��    \����(�\�B�0�z|������h{R�Ֆ�/��{N�#s�7܈L�0���,�=����6e�{9�7��JE��\.�l���a�X1�#��B�Z$��0���?��H�|1�i?��<�������+��IDp�!>-���yV�,�Ћ?���tc$ 2��������E�|�푁� 0���=)+����{>dV_s�Oe�W&�M����}���"B��!lӕ,KT� ���O�V�Ԑ�M#� $���8E	�� ��:��h�@�����3����p.�%Cn��-*8��#|,�7a@-nӁ����W�ayM��'T���ʞ�@�H���Xw�ߡ����.���sώ�W���ӝf�+ &�3�<$Ϳ.kf�����a����� �G�=��&h|�ҹ���k[ ����$��|fxqNn�H�#Ԥ� �H��b�D!��*>�a�ԡ��xr���q[��m����#y(DrN�M�$�����4{ou����8-����@��B y\Y�H���8]f����1j�Ϗ��N	 �1oǤ�bV<[�б;Om�,�$QUcwb���%;�� ��C��
�)����8���f���
%m=�M� {�Ө�Ή[��r�4W7%3�[,�TO���D�V:d����y`r����fF����|b���lT����o�jeG8���QB�k����7� O �a���G߁��(;���[v�������^��S@B���o�(+���:�*JE�oz���P��K'��|���C���WJ�K:�����M�����2��6im.F���o����;�� A�鹆ǐ��)��:!�WI��DNo��N���c�
Kf��B)Xx�#¸H�oa<��4�/~O��o˲�9&N蝣�� @�!�����J���V�0�fN>��o�[8�1((�:�V�^!I��$�)�b\�}��m�	�HSm�����%fމ��0�rggz��}�l7}Sv�S�a���m?tff�y�(�J�{�c�bP�r�z^eH�O� ��Z���\�����X*�|8)&�%���&ґl�fm&Fyo��؃4щ�v�ǖ�~�ź����ǜg�u���N:�h�}��Z�+���b)��q�` #��7��`v��p�ds=�NWO��1��N���GG�d�?M���wz�4=��������@n����ޢ�c G�g����_�Cј#�)�8����1���=
=O��zމ�s��B��	Ucw�������ޒ��Y���ʭQF$?��ge4�&)�^W�:��S�sK,>#��aHxL0ϋ�帣��Y~-E'��ۉ�q+ϫ�Љe8hi2�0b`1{�K_�҉�D�sԏ՗�U�����]�x�Y��p��7�X�x����GO�H�+��vp<}0��w�zDq*�<G�}��δ��RVϧQ\L���F0SV�����l�5��!�0,'�g�B�H̃W��g�����7M����"�Lu�<6B��;3:f��Y�?H��F����CKM_���Y����2��4�:7�+��_�I{zS����*z��%�5鍾��g��19ɢGtߵ�g�P9KI�_�+j��}TX��}��|�[��a���Vp�S�pm��;�2 ���B]�	uޮ��( ��pxs����;�׻�+z31eb���.c\�}��S�єU��R�++Z:��߃��B߳d�S��y�3̝��G7.�ƞ[B*��A��/$��N�˗-�D$���~M{�0$����Y��!\k%��.@I(&��)Sf(\Z%�NPۜ���k?�;��ma5D��TBm��t(kq��ч�w:F�^��G���I|O��}�)�)�gJ���}1%�3��m81s
���D)��Ӝ���'޻�ڢvϗJ׻r�Ǚ�2����g:��A���}��`��{�`P� ��Ϛ�
�˖�RJ������P�۠B���!Ǣ��@(��>�d \Ҡ� jP�	��!^��:�s2��"��q",��X��d<���W�g��f��c�p�z��8�8�H����cgˁBd����$�vC��� b����.�)r���xd-�́�g�D�8>&���(��u�ǀ"	Фֽ�@ܤj���:S�����JڹXcn"�U�����~�V���R	�P�%�ZN&�����X^���AW����^���!d	)���L�X��:+��Թ�(!\����0,�H.bQ��8��5�%F��y�����(S��hfc&qX0����`��c>�<�n  p.Ms���sϷ��whD9�hp/Ms�����e���M��m�I!>�B:�.rojB�3o7\ׄs���T�J/�P;��fW�r���5-Ddd,V�Eа�}m�����;����N��K᢬�ϳE����a�},[��"����g�#G�ų؍��s}��0�ix�0.!\�7��3#%F����~�3�4531��<�2�P.��?��T�jm��Y�{�$��ǫ�q��(�ںg ܷLK�;X�]���[!�Ƚ��s-x���c�-�=`G���D��{���y�mWnK�}�����)�e���smj��I<ܜ<���[����������I|��G�#��33U��" ����V��s��1�`��<&>���2�6M�X�$�����F�=1XR�»���fQ�ώf�{�L&mU%���>E�2	3r��qf�"��.n����"�=�4�wK�����j�!a)��������C鷩�����SK�GffP�&�G����$���Γ!P�'nˁ���p �7�7zE�v��E3�G.l�<zX��d��Z���gE4|�����f�v����j�{=����;���Y`N�P�Sٰq��� ���{Ϝ ���4����zl5�P��L�:�5x�b�"�sy"�B>/,o�	�G�$��o�O\��M�mP���1�Eg�m�!pW�ёZ#SU��c�������G��B�����L��.]�B�x�:Z��c���{m�*'�R��{Z�s�D�����a���w�C%�R���7msm�UAҥDՙ,���{EG�#�r�Dx&���J��%�y&�@0��gl���Yl���}��ن��<?����O ��mG[:��j���:x�"EN���~�;�,fy1��<}����ŧ��`�=�a{͋p�d��aN^*f��P�[t���,Wm@�@����T���N3�a�����hV����ky�~Y ������A�����D�7$3R��غ���02��d4R#��HS��Ff�����Jw�A�����$�������ڐB"�σ��{N���m�m�ݮ�.���01���>��Ҿ
"4�ZlN!g^dpc�0(��L�/������CSH�R"@"*Q=�p��$h���˃=��������_�`I���.1�E�=e5��\��ef���_��IIr4�ă��Ū�J��u���`�3��a8��0[�d��*3R��ٚ���Md�c����
�VL$���!kw��Ɂָe,IG(Pң�T���6�����)i��?vv��V�䐳�v�T)�ޫ�,o���
<Vt"^��~Q6�-AE:��o�H�Z�)��HD��mڎ���$&�F&�-MK�CR�:R!V_�����_�IY��C�F� K��6��Йr��S�Ⱦ�������Q$��m�1o���WB��3��:x�?��h�p&�:�_Iϻ��+�������`�U�Q'�b )UN��d�B�g �ſ�e���cT�����.2���4CL�D���Y��Dx�5�bR���f7�Ν�b�H��W
�?n����̍��!Wscn��sp����MF�$&���.A�>�b��
�k�������F��\���m,�U����%J}_�q@�]bH2�+w����B�vu�~���8z/}~(��45���h�"Ҙ�����D��JQ���K�c��A�;B�O���O8��_     V0���y�S���!)}��2]��ՠ29�z��5'j$���f]�l�
���trI3KLR��>p�?̥�|�W1:���*���R�w�����w\�ɑYq�oW���ee�S!�r�W�*<�.��w�GA�Bc�F��n@�*�[jB����J���f�>���<�U���B-��s�<}�	���o�OG_P�}���p��5����[U�68��m[o"*dx�Q������fj��Σ~^�_�+V	.��ݒa]����O���[���,�O���O���U_��fe����=�䌏v�a'�����]?���R��^0�����T�l�?�x���n�m���l����Y~�2���O�^�+ħT%�C*��}��C���Z��.X$F�R��z�s#BBD�1R�G~d_>&��X�U�������$4��w�|��!"I9���~�;��*'�8�B�~�qֲ���M"���o��~�;&�H�ޛv���¼4��PI+Ai��H.��
��KӋd@������1��"��aH�F��;FA����1�&#H�D@��e"3H2��m�� H>�$4�5$���uY���9
iA�}����r�L��BҔ�ﱛ��!K}�Nߟ���j���!&ڜ���O�����L����8�H�y�/�
n[N��Vʃ�a=���T=��9�/��?��ȕڝ�� qZe�\��91`1T�ЭL�NƢP�k��[�q���y|e�Q35�Y����Č�t�oO仜��n:t9궧��f�f��L "��<���x�2@�jO�(pZ��(ʎ�cl�P;?��P�On�.$���ڦV-���R��q��A��H��)�D��*7����g���*4*�]��7d8$*�]����L�B�MN�DZ�y.��� i�繬L9)�KK�P�9��z�mV�M��\HU>^�`�����ٌ���$StĲ�}n9B�C��ԍB��P���ݵp��rU��x�'-jUHO�m�/;N��М����{�vk���/�a�V��3�Q=��;	�T������Hh,����4yo4�J}C�D'<�%��S_��"�OH���O�_K}A��T8��D�������R_�?��?!�'�"�`��^É�G��A㓒���J����PO~�� er�$%�ps¸P
���v�hB�֩qc��<7$I�w�{��p!pn�G�9��5Gs�����Zt�|������2L���Y�6�Y��p��TR�4d�_�����UW��r�X|
�������r)��j�/=��eT���8�_׽��	�&�ћQ��I
��e�/�+ݬ���UIQ�K}������HY_��]Un�t2�?���-6��;$V7$�N.�t/t���׺�h�\F�\ߩG�P�\F��g�?=*%��'�'?��7@�r��p�-�;�k��h)�)�Q�K���W;�)���Y�+褼�\���ТBf��4)Ǣ�B�
��zh�v�D�P!�j���<�"�d���~|��JP�'�.u�	 �������[F��x��d)� %q�1���?&�$���Ђ�Dd6s��c'鱝�)@3�3�s�\�[�-''w�h�9���+�#����Ŵ��ə�PP�|����T �1~�&�ĳ��\�ꕅ���T��e�����Ej���F��Vy�h�O;L�j�g�q��H ��5z��fN,��g���!X�*�����':�p~�M?�
K4�K@?�V޺�e�{W�r��ؿ�9�C� �Z�) ��ʘ��޻�Fכ���Dd8א��V�d$�!A�Nbgt��&"�@��ԩ�W��/�C�B7r�f"t9��
�)�O6�Q'%ת�a_,  ��0��Ȅk��@3�H�5�FK`l�z�@8�Dn�~l����?�KZ<Y��4�!�0!0���3-�c@
 �4C"@"��6n�����#�I�	�羢���t3H
H�}�9�N�ɼc�!nlhJF�)�kc
�5Q2@B^���w�}�y~���4gm��򊧍����X"�o���x�ӆ�t���i(��i��m�oK�����Ѳ�+m��c���z��jXAp�e�o1@ȈE@��{�M.P5=/�c5�_l�6x�]a4A�6������R��ٶ���j��(�R����i��{E�Cr�[ڄ:�����~^0C<�R_u#
�̐˾�P�[�����"rFxއ�/:}=4�`F�an����ޔx��4ba�}��!���$�m[ө䀄BD�w��%wx%`����))�N��F��M���bf�5R❔��0 hD�{��H��`I¡3��r�ލ�c`�@��T�r�ӎ��(J�+��fph��V�ofI��8l�pB�hl0P�x���f�9���seN�Q��P2�Z�ie��FFŌ�<�yoR�?����/lJ:O[��%u��ĥAD�ػR�@�89 �o�i�r}<�85��3-ؿ�W�hyn�;��a����h��#6���E�1�;�_j?�	dm!C�^<v��d�x��R�B��o5E�M]��,$�e᭮6%"Իr���rgi��z���4T�����ݐ)����Nj$20 �5H�$�x>0��!���R�}�1��
~�ˈ��w5�0-�OS63B� �H�
��,��"q�K|*�L!K��a�ߋ���8�_�O I27=�o�b���npQgj��B������M<�ρ����+�9F_K��*9��~ǙR �/dEr�K�g�+Q�`C����s����
�����499c���eS���h�1��߭]d�P,7��o�qFrCe�������Ŋu��`��H�T,�R��En���;��2*K��{�|���Ăҵ���H��ۭ�v��P�XP3����ӭ��I,�/��D�ئm�z��h�H�O��{k�3�j��C!K��z=kW��?�de��Dp��o��Ԕ5m�6C���kk��O�k�������$\�c���J��S�mqWiO�$�f��lt�p��{5I��!{���ܐ![HP�����lZ��m�����U���	�v(����3�c����ѫ��4hX*8��8��9�|�,��w����&��d�N{B�
�Q��уކ���[�b��?�G�"�
�Ѷ���	�6L2A	{U�"����u�Y��uգs:�/m�	�FL�~���Z d*������!W�ߴt��V.8��ꍮ�mG��$�Uge�*�d��W}�T�T.hoq$'��益�X�T.y>�vt:z����zx��Ч\��*��Kh��Mr�	�He�>!ǁ}�>��2hhS.������hVY&�]�t����8'��7�s��җ9*$����f�[����jg�3b�'��Ʈb��M��D�R!x9����ӝS��`I�R'�}7��4�í��C��0�`*�[���k���9� �d�q#�<��M�tQn�5_���Ş@�U\���H��I:I���-��Q�b	V��/�0����	����M�o�%�4�Q���&����>f,|7�5%�@֓�{��Ս1�F�s~�%�KP"����4� �9�휌B	l|�n�6��$�=�����YB�Db��6v���$32�@��Eլچ0��6��E$J��H=5�m�S��[<���X���k��v�����X_�\r��!σc4�Yhb;�q,bP. R�T�V�Ļ�M\c_<�4����J4*<���%��$�7�s�6�w��s�wt��	��}��
��<x�<贃Y�R��I��Y��]�rXw2��ब���'5�cL*����LvucT&�����Hb��d
���m�H� ɬ�eWmw�?�p=T2@�s΋����!	(�4����m�w�ʑG��h9��5����<��Jl)���K}U�4���V�4,�$c��0D��p��3y�u�1
�D�`3�K,Z����m��'ش�a+��a?����1��-x:�nRrO������зpnN#����+Z��7�*����Ze���pN#���2S!ؚ��qN#��*�l* S  ���ޜ�2ceo�]�i9�/!/��Xo/�@�� �5���А�ˢrFy?����V�o8��9s��H6��<����":*	K������҃3��Q��
gBz�Wv�	�_LRM�)���@����8�2$"H�M��(b��
�<,o����1�ߤ�y\Жy�Ҧih�@��1�V��eF,��V"�t�É!�$5�:�{81� ��ݢ�3�����cDG�;pq3�R
0���웟-��ܸ�j��~�D(E��p�/w-�2%��t� 
��jXSy" �8b���v�2�x��|�+�a@|���m�ݵC5k�@2U�wv�͡�w]������K��s\��B"a=�op�M������ �/�G��ӽ�O��x7.���;j�Q�y$���Ŋ׸eFb>ۤ���q�ܺ�ⴌ�#�q=ڕ|{�PғĿf��t�5��Cr����s���e`RG�F�Y�+��t��*�$���������
��k�E���*�]��IlR�ợ67]�5�+��Q`v����$�_�}�x��c@�J����'�����_R�TD��N�e���`ْ ge��T�ԟ�b�_`7�d�	|B��pWm�����_��(�[v}e~!�O��?f8������?�b�,���P��?�����|�����?���e��H�_����t���������0"z��xnJD�/���/��w��3_Bÿ�C��%�|���!��n�D�!!��_h��w�|ł��ޘ�zs[nw]X'>c铽ڠ�@�"š��]A���,��dp����E<���[�~��+i�������ٳg����_      �      x����rܸ��=�y
��k�(��3�d��%[��r��TEK�aլ���l?��=�=�qf�b?�dU����c�o� �@�����̟��X��謮�U)��몝������yͿ��wQ4���?
fA��Y�� �f������BE���h�+7b��׭X���w�`̸�5��wV/E%�	���Kq+�Y��1U�z��.���b}���yY�Ĳ,V����C{o�NC��'�K�^���>�?��wQ7�����{Qm�M��}�IxS]��Me�H��\Wb^ߋ�S�4�-LiܿV�CѬ˅X���uҼ�^Ur&<?��du[T�88}�R�ע�J�_���M�o��畔�����8.B~�O����q����4̴�{����?P����@��1�\����v�٘��A�:_���I��n/�ʻ�Ms�DT����*)��j3� (�{�������ND&�K�`�/���	F���\��j�݉�r#��ʲ��۹�omᕫ����ɋ����_e��Y��q[/�Oq�aR��Ӧ\���p����
֐���fɡjJ�?��r��Ԃ�L����5k�߰ȝƭϡ���,'3���j~Ww#���XA���.��pR.6����˲����Ʉ	SƆޙ�ߪv���y�EU,��ߏ��i��z�!Au�Kיh*)'o���z�������p��"������F8�6�����Ow�K�����5�-�އ�r}_��0Ҡ��m+�ٓ�r%���q�Ȏ��o�ƻ���J4���(�$�q$������l�(��+�������H.�p^0#Իѳ�_�u�8�9�@}�w��������3f�Zߗ|���>����}_7Ҳw¢~%�<�A�\�'v��;�6S�q�����OX�4��䏯��Z�Ǯ��@wf8m��x �u$'L~Ӗ�ǲr�.Ԯtv�v���⊶�f̼,6��-g^�R�`��F���T|����6^y����GiP>Nw<Hn�c�n����*�Fj��8�g��>&����~z�G����x<�����[���g ���"�u P�2��,�y���J,��xᤇI�dX/N�f�'J��(A=̥�ÿ��]�ys���vV�nm)�?����r�p�@��G�O_J��X�4�Wi�T�
k�ۉn�Ґ�R����]�Σ����)����4�%Ou������a�M}�j��ɞ�N5�.{�;�4c4[�o�.QɃ��\EUnjW�$͹����͔.�o��}����-�W)2�}��iB�����L��U#�bu��dJ���.���N;��^w#;��)-<����-����-&��N��7��d.��b��ey[�r/u���O�ə��	rT9�b�զ�k�����g��S�1db��	������f2����J<�5h`wq�M�����˹���V
ףX�vX<+�}ÒqCQ�2G�DtT@?��B�W�����ʔ���ǅޟ��{U,�mQ�CƢ��������⑖6W3���
8ƾ
�N�����n�}��r��ݻ�h�튍�]�{	�(\#�俇k�������O>������ ���e)Di8�o���؂Q��\�-K)"���?�q)-�r�,q��V�w����U$0�rv�<��w�6�������_�wm%�V��Z�@?R�7�/Eǫ����^�yt�Wr�俭�	7@N���
�w�Ta2'��?��'��2���IG�ډ��3��h������1R�'��\�o�zS�	�)�	�d ��q.G���^�=�t�i0�2Ƒ2�n��j��j����4�]���2Є<TނKԵ�q7eՃXԍ�Ivy~W<�N���c��?�5#�щDcb�{V/�5��2��v�B��b�D�K'rc�7-H��3~`SsCS]�a���F&k���ɚ	�jf�HX��9��d�DO52ـ�O�2Y3��f�j�>�(�\Zb�y[�OFϘ>�@~���ڲ�����7pŭ��p���7�c���Jk���W⦨Ąg0Ɓ�O�n�
�����貳B~�����9��f���i�L9�>~0?����'���t�t?������& ����xԧL��7��剑7@�\���d`,4�r"���18@|#bU����ŭ�hČ����(�p�m������opҖ�U)P��I���z� <.�t>F����/�|���i�*��]+��5��ǰ���z)���U�������X����r�?�߫��p��X8נ*�ovҝ5�z���F�v޴�\��V
O#�Ú���H���py흵ŷy��X"cFB�nS��:��$���3�7MY��8�J�u�̢����Ow�ᰜ�eL{/6������իyq��r���3<y�`�K2s��	��z�����S�ð@��s���+�.j2��J�T��Vv�HR�+����Bn�ɘ��/����M\�ES�(�1?�	���Q̥¹��k�0҇DC_�yV�MU=͘�o��m�/R�\�����?��������ۢ1�P	��ѫ|�����Z�0>�(��IsSW����̃7<�D;�;�ôp���9�b��F�!Ns�0�᡻�.����%���l��v1?�I:L˙ֽ��9Dkj�����Z�&&:WZ�O`rn��;3S;]����L�w<*u� �K���u�aV��H�S�񬻫KN���;Кg<?>�K�o��-�;1c"[�<ԝ`�I��.`��Hj��
(?c?�u�Y@�ah�З�zRW�
;;�@��=�Ͽa`�V���8��������������O�=LK����h� 7F��\���2�s�{] ��~`�Nky�T�t���3Rƒ��x�b�����=����k�kq0��0�g���I�~��� $M�G�ddc�~İ˒������}!���`�1C{�d��v��'8�~���̨<��Č�cw֥<��.`�tb]MS�Z��re�3�����V��v�e��~߽^ԭ�� vy����lJ8���鳣��k�O�V3��V�Y���D���L9`K����pY&����'3�&�{��^�����W:�J�����Y�<M�a,jJHV����B��UZ�����ø�q}`$����F ОG+�������wxP*τxIi�K5�)f&��o��0�� �`~w�d�9�G���������L��ڄd��bdo<F!}C��+�J�G|���A2��I���Y��`�>��$�.Xo�MK�G����4M��y�P["J�!�e�ַ��}��彽��Q��jĢ�1ߚ�������-��oVj��Y~��c���Xo�g�����<T���ll�o��   �	9)��q�H1 xZ{�����ܤ��3��c�@��k!k\���p���zQ��U��2א�j�;�n��d�#I��{h�`��+��,x��X�@`�ۡ%Q��?`�8��8�z�q~7�Q��C]�a�6^}ȏ/!���e���@{�JL����5�5������UQ�`�T�Z��f�������e����2#'m@.��b����V �>��OH�ï���K�hJ�;M���]~C�ɵ�W�:������˽WO3�]���1c�K)��?<F䌠ܕr����?^B�f����⫞�m�l���r�Kk�imCB�<�Y�aH�Pu��U �Rj��G$��rY�>���0"���z��m
�W��(�#2�����ՆSku$y��Ώŗ��Bl��}^RL�nw\"7x���Kx�������_��x<���0#b�۹�����`�}7g$̸(�H���|�!)C�D#����ƸL��a� /vL��+��@�u8��ˢ��3�!���M����0E	�uTcHn�8Qf��p��aF̌��VN�<�Z�xHNg�	,�b�[���1)en�O��=L�t����/9N��gfk|H�c��M;@�b	����o)�挀ϋ�?�	���P��p����v�5�|-E��<|:$G���ܗU�D��ÄDu�~���gG'���Z 2F�d��}��B��}+!��    �<yn���zӀ�iN�r��ÐÀ�W�7pě��; ��F���*��3�[%�On?O�{��!�=zO;9BQMfG'�bUX���NM `#�X '֨�Q��Q�SM���hO��7�bN�Z�G�ܧ��.�2�Lܷ��GƝ�6L/l߹x�SQ>���:x&$�)�+B���������S�#2Ft����_���L�r�J=�GC
yD��n�M�8�4�V+�=S\��?��76��\��uċm�sD��u(��aV�&�˥�3��\�	�g|�`��q�F�Ҧ�T#�M��<��2�;-D�]���tǇAy74֧�drg�č��|H��dU�����+`�`q{�������,%��n/$Ge�r�$�$T�m�n[�3�#����eHp&'	<s�ݍ܍�AsB��~kQ�/E�V@�n�#�b-5f*��.��ʟ��a�@S��0Q"�疺i��@wiz��MsD�MV��2�(	6/s�IB�|��I��Q�_0��hs!���������3���(9���aa&o�Dh�`�ݔ�?IU|2�у��w�	�
\���!9�R��B���0$�_6\z~��p�a���/��C%��Jܵ�+�Px�ۗ�[�~�!^���1����:���y��.�b];���":�s��ir�e��E#y�$�X�_-~�8�4|#$g_ƶ�h�M���D}�������'��Z�$��%fLH���+�����|ȳ��̥�I�P��BCr
J���� k�o#��$%��4y��3�].�2�'�K����<�?2�x�0���Yn�tq�C+��x��lL܉�z����Y�6����TK�mt�n���4 ����
���%��\,�%̒n#0D���90����d�8���Q�Vmq���MH��0퓥�G�+��Dd/y'��6���_(IZ��2[)"�Bf$|����E�6�g*½��rE?e�J�R�<!��Ogf�u�/p�e�c@>+�CR�+Y�Y���%�'�Ok�Z�|%���t�6ߡ��쮽�yU��F#?� ��C���~��9ٺ�'��A�L������74��\"r2摦��Z���p��R��H�f��ǽ�SN�5����>"dޥ���:�fyD^�<V��vXn�L|�������c��4�K[��W䴔0m$M�?P�x>�D�k�k��� ��k�X�<�@�R�S�=|T|��<��W9o=)���AD�K�=yPi%mǏ��u*�������6���.��s!��ϲF*�������PI���,����b��2�]�;ѐ'�{�j��;��'-��.�k+T��OlbO�H� Xj��d(dQ�	ٓ?#����3������;)G��uy�Ha�V	�*! �Kp2��~����x�������,~��<�O��r�-SeS) �m5;c�U��S���Tdծ��9�ã�բ�Z��ω��Q`^��[���*�֊ϭ�W��Uډ	�����������Ǝ����eQM�|�����i�׷ZL�6e�Gi�W�0E�9cr�:P�	�
�:���RBf��������U+�����K�IV t ���pS.�i�3_�So���eon��C���<,v�ݮ��Q/���ܨ'Zbљ��b���0fb�1�����2�{X��A�.b�D�{sl��;^p'n:S��AZ��0}fJ�}9}'�j�a��kX��x�h|�P�_a�a�ӆ�d*�KI��8qҀ��;�@��v^�i�4�f.!�F�g7u�k�dߑ��@���N��S�gT�hM��6�M�u�ȟ��I�}��Z��J�>]L����b�1��v5F�=Pu��ת�n@Bn@����I>u8�h���$m�Z],FN�B�-����1�0����f%=<b/�f���z���U&���EGw�(���]M�v��_䖄�Ӭ���%�>�+�i�4���
!�/���|h�D��4Ӂ�!&��m���2Ge��h<"���FE9�B�q �'����0�e����f���x����t��BJ��J	bQ�H�^�L>����iN21H �_�@�7����Ӵ�?��DM]kX<��TQ�-���1�;�k7�gD�ɿn��$*�b�jW��|��k:)hJӫ6O ��,�����$=Θ;p&OBF�fG;o����X�A`�m)ז��l51F~�k*Nv�]5pF���I� `����:���'�{��a
�n��c��td��j�1�V���ݍ�4�������Mh"��2���&���|��3A^�I�9C�@���M��3n������I�#�����f1��!:o�%��4�}��m�$Ԉ�����ԍ3�e�)��I����b�����YĂT5������	�q�Z���g�	w>����S���oZ��w��1\I��+(A�F�߿��c�<q=�7��1�����D1�Q��;�R_�k�Y�H���	���Ei&���8��Pr���ӝ��*�����l�szU2�%L�T� �Z@~�I���H�m�b:��p�0�#��jY,�	@������q-ܨ�M�Da��rV���L4�������d'���{E�ƣ�y�?�h�Bn_qܷ��R���g]�S�xq���H51�hE��	�a]�N5���Px�)���T�s���b����(�D8��ii�k�\^o��+�5a&.���bӀ}��F&i!���L:�����I����	�S�uRI�`ׂ���Qc�y��>s|�;���\Տ�Q ���ꘪG'+X*7�xy�*�PV�.�Vz��3��a���Œ���1<c��v���>4�W~~���K��)�IߵM97�
N�?~.�rEƔ�g��'��G%�7��#_{g�h6E5�g6r�[M�nF}7�ҝ�!'fε���3�i�P�J��M�9K2���m�8c(���8�ᙔ|����QR��G�s��jm�����F޴k�����-���PҊ��+�)�d<>zU��g�t�?-{tZ��ݕƄ�	}����}8O��0SxMJB��CYa]��!aN��{.�Bd����h�#��9�3m��I������\�#BF�,�|�k1]�")�yS�����ް/�/�1�8�����h�Lm�;�%�II�2,�c*RS4�4��|�5W�#Ж��9
�3��;LuzQ���I�֥���mS��M.F�o홸`ܹ�w�q9�s|&*�zFv۰k6_1�s�=︋���셩|P�G6�
�~��GG������?�2���Aܦ;$���Tf*@�n4�%L៭Eg
�P���o-܍����ӯg}���ïJ(�"K��ٔ%d�ҡ3PΥ������X�Z�v̤S8��#�z�i8�鞏:���L���[QP�s���ӿ4&8y%�s%��
���1^4�H�g���* Ɋ��NOY��ռ��s��4R�B��)��E�9��E;W5^��W�Ϧ�L�+���{�EZ�,���;�$6��7�3�)Ș{Ր#�Տ�<d�ŜQT�T���O?~V����9��b�ӟcEv�����&]�6��j^��<GxU���E�a�l�?~F#!7B�<99�zol�E���إ�]��菱���Y�+���0�mZȢh�I�|������܌�������ʜ)0���y�X��!���C!����y�L�e��Ţ��{�Ֆ�fm�&e�P����jg�D��՝Ѧ@S�sY|�&F��QI�;�50��
��Ib��/\9�֔�So���2�����+����+>:Y-에0g
�
M��3#E3&Q�eЍi�@)��b�����@�i����g=�#ͱņ]�~kKۏ���׉I����J�M�8��zyc/.�o��w¤
I7W��*�C����{x��}�@�ױ�zS	��������t�w�ha00ta��L��PE=���W��qY�����3a��vX��?L��x��/9N늲g�F{O$�5l2�I��b��\����]��!,�=��~~��*���g�:�L�$��.���pųl%�Y+�ʲ���SU69D    �����D%ўXFf59�a|���z�!��N
SPʠQ�M]m�m����\���s$�L��^#Z�z�!���5x�s�^�"�́�Y�=�"�m%]�:neK[X�0u�����7G��U�DnVZx�)2fd��=JafL�S��R���)��%>����$ِI��Iu�`8��O�u��IpP�C��][7�zE��ԫ 'EEO~4~����>҅��g}��<���7*���q�B/?@�p=D���ar	���=R��u&�7�XR��>>>U`Q-0�݁�1�|l�����(@ʔK�CU��ӵN>cV�N���bak�>��~s_Aʡ��7úON2����KA�X|/��#��aJ��b1吾�Z��~�@	bK^¼�>�+����aVRwO�;�1ύ�
CQ^(o�T1ѯ���n2����b<$����j�J�d��R���(SN!������L�R7'7�ҵE���榮��f$T�8:
��p�*曦�C|�n��n`_�3R�$��J�f�ʘ5,vcCʙDu,��'�����D3/����>S�J*�� �{�̂=�n,���?��=�/��^��A��Z��^����F�����<��o-�X)��e�M���eL~�����/��4R�����GE��u9���v_̘�疫��`:�O�h���n|����BVs�!ܸ�'>!�x�f��!s��񚖠�A'����$�jPQԌ���,�+U��r'R�lO��3�-b��JB!˧౯�<��Q�}���%	��9]�����������`�It���V.�o�%`�>dp�	8+;d��K�]j��~F@ԌD?�A9���rb�a�w�e��0�Ow�r�Ɉ��$G�/���Mc)yb�@��m�*1�QZ����D�H��65�5g��#E���,g�BR��ኚo��UZ��L��lIKd�+y��뙰�q���b^���}���(��{`�ak�������+(�pQ�+��5�E[ʵ�n,gu^���Z�az�遨F��a�*5��>�P6���d��S��N����Vg��jï��7��	����('�v�XV�ݤ�l�!�\�e���m(� �j�SLL���l
'Ȓ#6|n+0�QW�Sʸ�����\���2`(���R���LU$#q6Ń�'L<�'������2�sAu��^�(* Kw�qQ����-5z�k#���uC�	��4t�@�Ậ�g��" �>��o� f�-�
�꓃��ڰ.�s���z��e�-T�\����5p�C��XSL(	����q�l���Y.��'P��9.C\x��������<��G��ZKe�| z�p)�Q[ |D��[�nb�٠�bc�!"bʺ��C� pOѪ`31S�� �I	��������ݴ�M�����nN����>�a4-$�پ�׽�ǔp�g/�1�qs{�c9��I=�}_�h��֧�1�L���j�ِ��4��d�?��A�����^ԫ`�3�}0��Rn�����t`+�G� ,ź\�)���^e�C�����*��*G jI`��6ӄ�~�Wy�������D����v`^���>�����4���Rw�>0���*a��?�N�~��|~�sP�c�*u�L[��i;/-�'����9}�!�% O6���0�R�h���OO��.�|�Ha�=3>�l��f��Z���� q\����&���R_�{8U�y�DU�-�$.�����g�Є~��K�$�7�=n�G*m<�3�ꘫ����	)bQ�k�q*� �����b��ς����$T���7�}��q�P��Q��w�B�.�a1d�B	�>��F@`���+sf�ٿ��%������}���5D�a���s|��7�/n�/Ĉ $��.��%{���^ؑQ�y�՚��+�4_������$�u�\���-�v������`��)a8�re9�iן5d��X�F{�$�r�H_��Ί���K�q@�3��m|��|��#�́*zǜ��~�BՓy>;`��w�@�������!�����"V��l#�FT�MF9�Be�����ۯ�Eu0US�D����r.�W��G�p�Cu�.E��-:�R�i��巖�j�P��i�)nk<����/��{��Vw� &��ԫy+��Tv��vќh<�P�f�0& @d��Ƣ�1 ����[A��,��?��KL^�G�_�>��0M2��TV�:�?��/�5������a	8sZ�4��R�l�
�2̜��~Z�п���.�������_<����3�,�>��و�  �QT�� �_��$�٤I�>��i6+f�Q`�cF��BQۻ���e=7��0'>g@�H)����ϦdL9����{R���qwrP��r��I�o�
��c�k:��ą�m�5|6��3�n+\�+
zڙ7�PÎ��SB���ig"f�O��/��_���@���K��K>f�7xi�Sa_���s�1&e�n��g#H��H���>æ���k�ﳹ(���������].�'=�I@���6�k���gǓ�l�:W�Q˽ޠg�Q��Y����b"�E�4U�@�@���L�Lt�M=��K���ة>E\
�HG�(-����Xi�̧"c8f�.�\�V�3	ޥ��b�L���t��������B�9$2Sn����/�j�%(�P+Z���|`���"Ɲ,�ꋜ��_��#��Z^̰
lZ��g#�1�@z6 �Z�@�J�ӳ<������T0
�.�Tt�CҾ)��?0P}��%<	����_n���,Ƕ�;o0Ce�1��P��.���6��0��dpL5e�ȧ�,���~��)�4K����و�]x�i�6_���1�g�K�J�P�i�UѬ�v����6������n���Էr}F赆�H5��5�oW��Xq�U�V|n����6S ���L5����!ӻq�pԏ���)�U�'=�5̾��8@���o(�����������w���L�M���	��j�+5GGt��N>��3}f��\%���Ѐ�����6H|�+�;��t��]�<.}*��۟�ܙ13��4	��سf�w�������ӵ�s����W��������܇���O_׍��x}&��=���3nGe�S���3���;�����32d�qvfG�|�ó;�cx�V��P(?�ֺ`��L�T�M��u����lɹOz�\���YO�p�w��HTT~��?T�a�K�ο�y�?؆��ٰQG9F������N2G��n�Ͻ��],��Vn⅖�d��Bn�И��>,�Z�]��@S�zm�L���:��swk�N�mI?i�b�-�-:e��^����ز�~��=�p�y��{@zi���L����KSL���J������aO&��h��yGxدOWu�P�����"9�ΝU�y���޴E'O.����酹]��6��d�r�+��P�ﲭ�d�8#kG~4�6�z���^�m�����M�\Ղ������`E��~��RاǩS��+�Q��	��D������qJ�~�y��I_n�&%��L�(�|lw-����WN��h8P��l�?�A�v�*9Nw��>r j4��<��ᚠ^��)\d������.N�"	f5���VQ�w���8�v:�k��Ns��t�A�%I<�M ��\�	�����d����Zf^��p^|)BE�_m�i���*���كK7&��S�ń]�@�D�9p�e��}`Yu�
kto�\�L
��<<:��cfS�l-��~�mj#�
����<4)Ϥ��G��r�s�M����Sؼ(#�	���%��s	
��Pu0��3|��]��^��tÁ�K.�w����������+��ϊ���p�Ū��J����M�>�	�/��D�Œ�ez"��"f���T�"{dSl�W�9�\�~�;z�g�R�-��}��<Pt�dw���Td�p8D��T��d�%E�vFwr*����/�Uqے[�}^)^��-浤MsL��ÒYoБ2�$��0��;4�G�LSn(g���{E+{J    ?<���c;y�m�Ks*�gCa�G�
�>�Ż�*�[���Ź{�+���n�����Îw#VR��ʯ��j������GB��ʌ;!:���w�`��S��:.	�RO�R�ָ�M?Ҩ�)=a�VQ����(�)�ع��B9,Hr^�ۿ֥��"��Z���m}�_p�� ���:]�"TM��`���I�������S��
�6�~�UxҏH�� 	���3p�6bZ)��3�5�hr�;)q�ӡ��v;z�i�b����Z�hY����ӵ�[P]��^�܀���$N�����I�C�'7����u=_��C��@2�~9��d"B��뼵Jp���y7�IN6����=�>�)>"�6@C����p}�w">��|0FP�xR|�w?��E�=Z���1=l��f�{ɏ#�'�I����e�9�&x�SRIJx;:���ߐqc xY��sƟw�&�S�R�_jMo�Q0S
��w:��6s�)l(
k��ja�+���h�D5��MU��	�t�m|,�����n�/�:Q��r̴��0~Wp&��(�	䴋�;�4�ZQ��14l0V�P�������<�tJӡ��MAWsz����󔼋��)F���$�O
Za�7g	�(' ߕ�����Qh(�)ŷ�o��\NΝ�����O� ������Wz15�H��fG�%^��
�����e�/�\��"vw+�,V��f�P�A/_�j�?4�/]�%<���W
UJ)s.� Zn�j�)��%�7�M����X�я��|Nt�B�K��ř�J��(���Z���{]:?Бl��,<B�Q�� S�n;���d;�j�]݊����w�B�MY�=Rs{t(������J�cǖ%;�Ǧ�#�~����g��oq��ۃ�}�߫r)�s�1�Hu#9�on=���_���	!e�0B�R�D�X�3��%���3��RG�<���n��8OKe�o�<�%��h���>��m���˒���N�4����1s�Z�C�Y�����Px�w���3_��Ď�����������H�5�!�能��	�YO��ՉV%
��Cv�����kH�ι0�i��ʒ^I�l��-EVɖ��[�i�a�!]�?��<8/�R\ݵ�7�/q�"N�j��L��ɨ���z��e�m�<���|^!&�g�߶Nk���sy�@�7�< �u���2��k-O-�4���;^�9
d���yA��kif�X/�����@���	�3�V�b�r��I����ѫiZ��5䟗�(��8�=���c�E3��Q���v��x�A����	����'���@oڹ�p~%��&�f�l�i�(����#�f/���*n'�!�������G.�B��k��,8����Q�2�M��������{H�)3ʹ31���c�D��r_}
آ�PA<�|D���]�O���T��ֹ��]���j��6U<���y97u����O�\,������OQ]9� �����uQ!���P�c2�OS>�ç���yYo�[=C�3ff//�̄�����8��v&�)��k-���4f��H�5����n�ظ�qQ�a����;��ZI�\9xak=�1`�!�׽��[�4�B�$�:��*����q?<*�ѷ��NA\T����ç�.����^��-gj��y��g�|P�t�g�5{�����sFs�\���_è[KTУ6��^�����!�0=\sƐ1M���,}hɊk�A��0n`^��2��2N�A�.V���M�2�»�F�d�ɵ����%
�R_݇pg(1 %n���x�ԧ�r�e�RǱ��,T_��i�
Q�s�g"��˶�[
I�Du�D�]I#����\�
����$�p�ش��u�Ø1���?߈yY�K��j^ވ�RdP==��i�[[��C��@�a�K�ū�|��������m��̀���wIv��F�3�}��D�n+�~Č8��^X��i�e��k�bP�NU���~���Vb3�N��jc��9�.v�w���2�f�3d��R�#\�<	xi�x%!#���ٝ=1b��9�	�-g1�Eݡ#�!"a�u)E����Rm�^��t(���Yګb�o#!O�r�YV_��Ln_����ѐ�B.m���m[B�2�g'��D�8dG
��׹�#E�$G�x(-]�!
�<�b�@m>�U5�f�MX���a�(-��렝�d�u��b�i`����n���+��K%;�ϔw�!'`�n�2�, )��<�Cm{&�"�|*�|��5��L�U��A�gCN��C���!�ִ���Kj��ݹ�[��j��4
�.VVNbN/Xj�U9��28#�K!m,�<`��(�!&�1�j&wˎ1On?[ۭ'���{nB�fG��_�Q|��T��l�g�S*m�e��c`M���?֖М�W?�:����[+P��C�-�g��wǷ�b�g���h�1JJ�0!c.ŭ��)E�SRΌ�Z��y��C}�����v�R�[��^J��>�{�Ҫrl%�V�~�t~�˥#5$�Q���d[�\�nx �q��Ţ����yoDD�;�����F��鲮��P{�q݁����:�+=�w+0���C枵���l�X�s���p5��F����QM C�/�K�9a�ɦѬ��3L��riQ�H�b���3T��l��;<�2Nooau#��0��=�C�1�V�@�&el?���}h�.��f���S�罰ku��ߕ��$��;����{qk9	#U��+����L!����[\�X�c6�h�]6��������\�����0�䚦df�	�B��NI��tǉKR������|�$	�ലx�Z��|&��:f��a}��F��9?Y7nV"{\j�f3j�uv�uaE�4������ g6g�+���'�7�+�s/���������!O͋�W�[[����k�j����%`B�m���S��X��uDƌ����B��iL���"O6$�k�5ŪE�u�ץm�2F���x^l7���[abMXU�p��l��A�v걅�x�ߚ��>ǯ�cr���{�^�� ����Ыŗz���arl3�B9��ڻ��x�A�2�Oŷ.���<���~S.�������`G�4��d��\�%S�U�|�Y8�΀�����
�gjc�&R޵����y�Ig�J�No��g�9����|���݋uj����N�MM���3U�_�t�F���<�!�h��[������U��7Т�n����ԃ��?�9=����\Н������A������DJ�����{p0sZq{`x���(��U4�F�ǧ�bX�݌��+i'b�	-���0�{}����+�B��*���k�ތ���r�����7�%<�ֶ�vj�3|���ޭ�m��f#6U��7��\ڏv�?�q�kr��T|u �6b��;i�V�1':��*ru��њGԚEJ��#�����z��	�5���f)s�������?-q�a*&��Z��
"3�R�s�J�V��g}�Tė��cxA�Ҵ����2'Ȃ��"�ؔ������*曺��T+8�������7rW�G
ei`�X4�jphD��a�2{jD�pwJu"<Z�"3`�@p-����;�z�Ͽ��D#f�\�L
'��,��1�x��ڴ]��O�\�A#� V��Y3>7sUҡ����Z*���3R�dxj�1�BM��Y����7�X��!�& o�$��@��RU~�#Ռ�HFM(��@֣�r;��v���z���]#�t��F�S�)������$�2���=���M�%�A�YattR����b�p�����V܌DJw�K.�%35��J3ܽ/���Үw	���Y*J�k��r���_ˣVc��`XB�����׎�3-"����?���K:���5b���o��z3�ϐ�&���`\�����l��X[B!F%hS���E
���������ԍ(�_���;=;$i������f畹4c�K�e��|�[Q�����h����P	gL�%o��ZS}���fUs�͘�t��)O���
c-�f��_��:Jj���Tb^�A�0f��    �F�dԷ>*�z(SF��_�s@X�H���}wu��Z7EZ�vc1J�i�f�ii��~<#�IZ ϸ���ٯ����+�J���Yc��Y;z�O��ѕ�9�Gf�w(��Q�d��y-�i����vų��bY����~�B�T\	��9�_;�+�ǒ�a�Ѕ,a����>3�jt��P#�P˼f	�O-��0��|�0h��-s
z��C���X�� ��p�>���:XYte9����;�PZ�!����5��#\��8o�k�磓�?���s�jB���<������Ea�O�u�B4��oˠ����U��
��J"��N��3 ���]��_��"�$��Ң��I�I�\�Ҳ�'��H�R.=�}�7�nm���u����Z��Bx��JK}�4�*�����E;)f`6��w&��W�bm�OI����N�FYZ���ʜ��7'��9m�6/7��ؒ�e��$w)�N�|�Zȟ�jVy6�r��B�(j@*�ɢ�������{y�� ��"�a�߇�bYXl� a�%��Se Ԩ4�_���2�j�-����gYm�Z0!�H��Xr��p�P�+{[���r
�賵�A���3l�X�H�7�m��f L���ޑ��O=U;�=�� 2=�ו@��|�sF�i�j�Eq ��Y��V �J���T?(@���\�������O�O��ԁLKݧ%�ݭ�i �� RZ���g8�8�0���j(��;��?KWi*���td��oŃ����O^����y��( �qB)��}Rͅ��F�旬���6���͢��き�ɟ�y�F��]�?F��i#T_V�>�U9/��o3�5��j���LJ��k��5=��T!��p�·�<�T��������j�\5N�+����>�
x�	��"�\g���Bw��Ԩ�j)e�;�/ʣ��JH�����}w��@��,d9;-���ת\��w'nʍ����͐�<�e��
����|O^�ɚ��I�l��z�j��՗H����oő�0{'��d��b!�L�|LD`��t�ȾӤ����m0t^Lo�vM`� 4qv������43�x����l��z�n��G��_k(<W7�A�e+!�2H/�΋�V���L�-E���p�,`�S�1�Uܷ���
۶�Xk���ܐ��xu.O���-�)��R�ݳ��#��z�aPH���x0��r�(���_�5Ξ,巜f�B��J���?��s��D���}AgI�#�-���F��7���L@&eT~e��c�Nz�L������cH�8�#!,F��!/����>�7��1o�"O5��ɩ�N�{4�Zܳ�8�y�3�-3����|�Ԇ[C���4��b�:�"�%^86q�f(�[v���O][�����c�mo�I�R�oDU�kצՔr��sxͥ�zN�s+�/�W��,<���57p�����4�J�19�RuW��_��8_o�%$dQֺ�p���'�ᛦP���p\�0�#�w�Z6����{EGv��Îj�>&�}�*�|Vn���h�`�ȸ���46	F�@/���N� �� ��A�f�ü�^��$��M�͎m���J��ŐJdN�}�œJ;)���dg��t�5;mun"�qaG����\m���U{7�K��ْ�+��TBFM�$>	ǽ泡�h�r&���}[<H�J��/�M;/�?��$�v��X/�l��i͹Z�Mr3h--��]�M�N��������=�~�}���B�G�Ty�گi�q����z�mfS�B:�& @�{UC*��L֢�-��ѩ�2ܝ�!(1����r;�(�/�)x�|��j�������j�z��Tc���F����U�r��C^�c�W�8��r��A�PR*��E�*�9��'B���`�N�;F@_�é������>�����=yاP��u�@��ɡ�Hg����q"�^��X`�\��-�:&�*ŧ����T@�����)��'İ�����3�W���' ��c�Uas�J�?���Ȳ�����x$-��,�Sw����ѹ���3���a�Kj�T��l+0&�j� ��
�[u�t4�0l)ߩ�;�]�m�Ӓn�n��ณa��?�7���yW;��h�ia�	��4�G?c:_����Fn�d�x�N�5\�����v7F8�� ��y&'�z��O���#r2/c�ʣ~��-W-�1�	ا�ܿ(�co#&�.�2n�]�� ��j�I5�*djq���'M#�vH�;G�J@;����/�ʴ���S�x��wn�ϲ~(��Q�2Kd�g,ܱ>i`<�ҫ� �A����/�a���S@w�Kۧ�s�n��]�<���(��]Րb
� � )���z��-Q�%1黼/�x����}���N�ʘ�d�<0�(N�GJ�v����I��Q|���Ѣ�[J�����q����:&�}�Y�Ϋ��/�������b
��m�~��ߜ�:��5Ja�7R�Z���F̕��J~��=.���\T�$R��O�\�1���ż���,+��{Y6�?=�d�Rڷ�ve�n�~��s9T���-�Hѡn�j��'xʬ�������ղ8�WP�S�^|p^owA� 'z�
���{��om�h{KS�S���g��+7���>��1��[�l��$�M���gկo��^J������<o�M$��@*�;�*a�<�gkV���<X6T��z�I�uSO ��ǵ�r�{~s��d9��!�qc}ShR�\k��D
��Z�^��&Fc��rsl��Id���0�7�ɶ0
2���ұ�eC��'d�TT�t6P�� ��R�ל�#l�����d�L�Bi�
�B����J�AO�}2ͣ`�qK��������m�.�#��u�b��웟�ՀZ��LTG�Lƻ0sl��Ny��J4�̌�X�������9����.W�5��rRʅ��MA9����֞2��W�#���]P(N�٤ K��%e�S�L�������ߕ� sp��+��-�U�h$	E��T�w��e9��?��|�ϳ;�	[�d��P��Ѥ`I�īO�������7��I<��c9�����5����K�=-V�ޜ����k���>k`��s�1�'e�7J��\@�{��X��?*��=�0
.ɨP��ㄖE�d|W}_�F��H8�'l�`j)�$�ͯ)�n��dx�;�#��^(�C�z����{kh�PP0��p��X��=5�?��e��2��ß��f� ���{I�� gH��'�F*��'�������R\�OJ	���
�i୧+bd`�1��~������b~B{V��@4N��>(+���s$iu��q�r&�W���?����sK���5Z����C��+�qA�C�P`D��܇y��֒��!��ϜN�7.	EB䑚����1��3=����]�>j����d@�u�F:���L�C�1r�	~	���v�N��<�@�)�`��#�F��)�(��̣�5���(R��#�]l��4��MB�y����jS�ؘ�R��!5�r1�S�0�X_�l�栔A(�+ȉk\�������J)�P��ϰQ��nkE Hޙ����e��(�<����@��u)��c�$�ݳ{ZC�����r�9#oW��[̬6��J�Y��A���?�ء8��G��p��[[����3e��l_�5�κf�̘���8Z{��f��q���l6��X$�Կ���k�nB,���m���A�NĞ;43pЃ7��e�2Ȍ2��p��u���J~�?H���Z_�պvژ[�3+��k	3b�� �I��N�G1p�6Ѧ��2g�R%,9��������&���׵<»��3�0so16�̀�%���þ�����"�Q�<��.��Tr���=;��%���{��Ap�9i%%���o*�d��f�����O�|���}Ү�,��g� fxA�b^�����Q���nP:�6�h�\�D-��uC����p����R�Nk|K���	��f�r�9�P����'Q���X    �`z�۝853��p'�����=�6����-�-P4~ݮ��p���$��vy|r F
X�X��3n�_ʯuZ^��i��BRt�KRf�[�t��r}7vA��3��[?:��I��ܬ0��n������CS���t����]�Y+W;%�ɏ��b�A9���^�Ґ�pB7�,b�2���r��ƌ=W�^�XA��|�G�4a�����f�Tq��h���ڐ2P��'����ŉ��uZ��.C�~L~��rc��Ĥ�{�+'^���G��f�Z��y�nl ,�)��1u _�t�}�c�E�
������4�ka�B����L�8����|�b�
�^�r�CO�m�9����^���TE���>��qh���t_�ȕ��s�6�`��ॐ���O̣]���K{��y��WeU���*R��rҹM�}A�f��i��LS�<Kc���S2:�sZ��rup<~Mu���fP栅��?o&�͞n��,8��s+4��e�L ߃`�TU؋��uK���V*ƻ.��Ӯ*�m�E��C\��Lt���ۈ�6�-ٛR�ދ���1u4L4�u)��M=H�j�Ee�0��%���83�����F��?<�4����pS��k�q�g�$��Ϻ����ZSjhTM�����������&�h&��9�����Q|�j��@�[w!�*r~����k��O42���]׎PT�x���]��UI�l�#_�2�~����m�Qcud�w�x�p�x���pΖ�?�L�a>�.�h��bQ�����<���P�`�WN�ܚ���U��JZ ��Ř����1e+�
�po�mĽ�����9�����ٷ &L,���[�^�V�-����EVe�8@Q��]\.���F;g8i�BTnH��H���R�ő�!��nWҞdi��a�)$M��Ⲁ��e3v+��C�������Q;(�#�G��<ԶL��p����8B�Қ���y���ׂ�2�P@���ne��u�iQMݺ�ڔѱ򺨆7L�<
��r�M������:|
��2W�2���\ÍK�nD��x�����	,�e	G:�ISh�P���6���q���}}��>p1���[~��T�t1%%LR���
���t��4�eL�_|����,���^�6���L��1������~����h�US�6}.H�&�i@��SH���l��k1�~�~0%�LR���-~d�2#fRV�R��v/V(i�*W�B���D�A�7�PƋ�����F4�_�1m�~�BHE򮔘&��<��rP�������D{�o+ǽ��pQa���	X>���9G��	��}\�+�5�9��e���z�΢���:�E�����KBy��)�wP�o��o�z�j��]�
�F�_�}�q�ˌ�ǟ�/ ��Y!��G�����G)��b����9�Kۙҩ�*>ڊ��)-�>�w�������5��(h����ɬW�(�?~a���Ҥ��g��Hk~k���gFDM��i6O�ʦ�uJ��a4�]�dx7�>�o�A��&l��[����\�����Bjں�jo�D%�0��o����IZ���Uk�M �'P�~�7���Lsy�W�e����;eH
��W��O���m;�*�%|夊v=C�H"=F��� 3��������m�C��di\���_)����b2d���AI�>���*���A��9Gr� T���(�� ������a>ôށ0���O痿\:�B&u��Q����� ��X�ֲ�Jp H�El\:�����Y����3q?X�aJT^s����S*p� 'b!�@oCT6�u�����v�ş���~Қ�t���В�C�� f��_��w%'w-<�ԊN��IC0�DwfM���a�.o�&��n$z*������~�He�#L�OO��)c9o6E���F��Ss��"��@���q����^�|��t)�����+�7R@�FI��c�Rɟ=G�C�O�O���j)ҕ�3��H�FϾ�������L�����b�B�e��,cl�7���Ƣ������/���K��b}���4f�>�Y7��rq*VS|.��'x-n������ `B ��1���l��aAk�(�Osn[{*�R��O����j.�u�(Y�	$���c�A��ה��c�I=�\W In�CM�ʶ�O�$ֽCu	�.M�;Q.]�7S��Ł�Ԣ��Ә�F U�\9|%���t�)���ݜḫ��u-�M���c� �\Y_��xtܻ1>�yWu� C�0)�!�����a�?Ƀ=o%�|Xˎ�=�5=e:j��rN���Rz�6��{��GJ�X��Ʊ!ҧ����u�?`�@0��H0f�^��a���X�Ҿ���z�h����@U��q�}�K��Q|w0�1� Z��d
�J�_�����ߺM%�Q:����b���+sz��q��9*a�u	�~�4BՁU�qP'�L+u��������)���q#���� �N�&�QF�]a��V���(Z�ӥXa%�����Ў��$<��]�&8_�m@�j��T�$�Od���x�6Ԛ������5%���6�Iu��4�\YWŷ�aЄ�i�Oō\�K��,�a�zd�H���5�ZBr�߂�W[��W��ARr�H|��� �L����U��^��FnY�ϰ�v�Mh\�K:��=��	$�!���^�W+K��H� ��ޙ�&Z�R�4A����4����8�%u�C�9Z�`�.F���E3�HWs߭�u���6h�����q565�{z|���	7d.��N��bQm�B-�� *4d�Ɋw�6T�,=�R�kc��?������`QT�!˘տyķ���GY�`�wx��l�� �P���s(\}�����T�.�A�r�o���3�~O�o���ٳf�Ӛ2�TTE��0EZ��}�L47���d������7n&�f?�fd�z��^�/ԍ�	�_��U���H�uY���u]�I1g�ʵϓ?1Bְ|�w��h ^qm�S�"%dU�=XŘE�j+�������PR����1W�w/b�b���[���'���U%�UK��\�h��Ƭ�Y`�� xԘE��媗G��vTc^���n}af�C=�q��KB�~�n ��dr�(�JH/�P�����ᚪ�;|z�A���D��y}�1��|s끈��E�"QM|xD�������x3݋_-k(1o/C)3Ge��
�H�v��:�c�A��n~�����k��3��XSH�vd0�a�ADG���*�� �x�gi��qa���Wz�~&muy���r�Cf�o[K�o�t�׭���j��b��9�ʤ�������I��]V�+W��[%��Nanc *U4;�X����;GcZ�h��)����a��z X�����pP�? (�Ry�F����������Ƴ����F��Bm�Q4�1�+�4ǎ�&�&?�U�w,e�:�kړ�5�om9z8m��^�[v��3>�����Y�Sᬟ����x`l�>����D�p�2,��`�;ICm��q�0�!�Z�xI�#�����Xo���(�h�7����)�/ �$�g�t�n�P-��Pp���:����w����7���p�F�n\��ηN4����;�<U؊|0�⢱Z�گ��ƃ'd��-�/��?{U)��L��S#CN�0n�u��ו��%��@�ڶ��y����),�`�KV֏����h@ȏ����<�-K�0��U�]�9�6�r�G�]B1��z�����*��NF�W��M���[ׯ��ԙ2�c�f��Hy\PZ��6ߴ��R�N��v)���t�B�}��g]��+[���r3ܙ"��'���ޗ����q�}2d�_<@6��kI?��:�-p�&3��o�\���	W L�0؉M�~�kzk��.��y����^��2�s�զm엦$R�x๝)/���]��G�����jK�/�����J��/kZ�EWQ�_�/��8��;���Wi\�+u�n�3mn.�jx���P���.J}ږp�����J��PTO�w�:�5D��=M ��J�>|m1o�+/��s)��L55r1]Ӵ    _q���X���Wf}߰d�+Oi�� 5Gf���)�9��P1%�|�B��}��Ս�͔7�i�9J[�xS4�zm-=�cf�]���\��cJ���o˚�>8OD�з�RxWb�@9ȶXrrڏ��&DQ���u���dMʘt!��eilQ�.]��kș��"�҆*���)�!N)�q��3�X[�|����F��+z�p)n]�0��fi7 �bE��^���D�IE]����}'�x̭�WU뼹Q�D2zg��H2���Q��_R�lO�&��Vj+$"�D�������<����;3
���t;�|(FF%��l���B��Y-��oI�v�����!"��\%�!#��g����_7Vi3�+Q
f;�wtxOg�*�@��-��G�ʐ��$�tS�`FQ���cf�������Ǫ�p���?|3
��PU+�j9f/!9/)ZB�G�;����ȣ��b^�@�C|���XJy\Y�#�I����v�Fa�q]|�{f[LĘSy��]U[�qC��f�h�9$���%�B �%K���cY[�ȃ�=H�US�J��^B2�^N3�z��v%7PLF��˺Qolаya�@d���z���T6N[�H�,��A4���q/lǛ� ��NWi�Z�Py�Y�:��n�?c�n�MS�48qۂ����A��Ǽ�]�)�!U�1i�X�o�1��o�=���^!wo�����rnKv��Z�����@�h_�4W��`����@��K����!{.� ��B��'Zx�1�zN�c�o�p_O1�ƌ%/C�X�.9��k;g�D���O����U7sfjE�w��ـ1� �]��3xW���:����x`H���V�n�_	HO3��I���Fnd@ݙT{����'�'W�'p����r���߽P`̊3��⸐�.a��z4���m�c��O[�Ѹ%�'�+�{�Ϻ�Zm�r̬D�;��&��k������� FRF����\�����F�␙��9���[œ��4�2�˂2^Ղ��KK�R�מ,�4�\X
�R�����"�າC)��V�K�ȓ`;�Jk�$b��5(�F�w�I��(��I��Z�9{q߽V+1�*����A;�om)pwQ���_������d%Q:q(H���TU�S��T!������k�U��+X��
+^�<*����6���Q*@�R�C�����j�tu�my>�F.x���Q��z|�i��\��X��o ��wxc�a�7r%�u�j��5HLyQ�^05�:��ې-e�n������ <���p�i�����r�I1�Ám�\0�H�1ؗF,�yuL��Ҝ����g�<�F��A|}�V
�	�k5����n�T���A7�vm1E�]�稲�Z��w�ܵ���,Q}k�>�)+{�I��-���yv'vʅFa?!Y߈M=�N�Z#8�P2�p)�?����P�g�� �Id ���]Z>�wz;�Þ�%>"׮5��
<���("�vC1�ʞ��X*��f�����y_܎������=k|���&[�:����%��[�Aɺ���=�Hy?��bY|�BS�ٌ�� �0�*Vw�P��P#j9�i'П�״�MLWz�"PT�;�8*���l�ß�jb�M�i�e�qڨ�?��	�*^R��O���VЄ�tm �p�c|�K�v�G e0����8�h���E_S�
�3P�'l��g ����N�6���=�c�(�{�C�?�u�_�Xy:�.Oc C��!*�ɞ��DT� <:in������cx@�/
|+���6�k`�~R6&u�Ĝ����;�A�CU�.y�.��v�;�~i������b���Z�L0��Z*�Jn��fa}���H}��Pі3K����[�IOb퉦<yJ��n-�A��|Y>��JyFЌ�]�Tm<TIը���#gWX
+�K��c�+,�h�O�(��e��ހ(R�����zz(h PU���U�X��}sZ�����*���	m�J{�A��4қ��n�����2I�O%�m%���>��N����,
5(Ay�(uT1�.���b�(� �rc�;��hc�P�@ %�"��TP�@0:�� �/ �'s�l�w�BmF��4�[ �1zC�
��(�;��m�@@��VOq��(�`�	�K+��"�T�v��Rt�DM2�< �JHj��=���+����#��k0����3���Ty7�EL%3<��Zm-D�R��z%6�C�$R�l�m�3n�?��D
(T9��z�a/�=��=��e���Üw��B���,��_�b#���F�b$����Q�drMtJ�=��o�ǃ"�l�D����5:���~��2꡴�O��k+g�O�	�0��u+�C&;b��.���ϫ�QT?
Xcߴ�?�/��k��W�  �^�XCs���^�ۢ(|!�R�(�Ci"#]v���m#7�/\�@�BC%#���	3�-'C�X�>��m{юV�Vo�)�5�M{o/!IOz�.�u$�OAD�vM8u)`�CP�C�8W��p ��-��B
7*T��Q����dS��l��]�� i�p���O�FG`53�B]q�b4���J!!�'���lܣT����J1!G���?q��6�-j����;H�1���o��m���N�A�BI�	6H:,���԰5�YǙ���\�$�V��#:�$��V"�+o�Vy�����9~�1�ɕ!����e��m�q�QpU!G��B�NT%�W�2a~�;<��]A��k��rK;���jtN0R����E����S���[��������B�}���%bĴ�i�s3�t���jj�ڌ<
�HN�P����<ґd'�W����ֿ_K��ü-�s��@ze6������fk�)զ��H�۟^��+ ��p炑�bhhA)��ٗ���ϵ~�m*���	��~�<'r�6Z�j���p��. 	c͆�kuȳ�Ɓu�5���-(T����q �� L�C@�''�(����#|�x*���o!���!�*�ӎ���o%� ��k?xs�̝�V';��ݟz��")`Ivx�^�wR�C&~,�]�V��B��tQ�첩����.��)�ze�����*aTg-�R@}C�d��Ròmz�x�cӕsf|��*g�5*���FI�y+���L0�#�����aSK9'D�m�3E����w9�[��{+jA,-��]?]��q����B`���Jo���\礨�Q�@ʢq�/�b�O6���h���na�����Hr5�z��ӦX�y�XT��.�����������B7.�pW��=�DfrU��\P1���Tź4E�O�0�K���VR�%���Y����]��1���O���N��r�5�. Nw����s����- �b�h�~V�)7���Q��6߾��ѓ���ns����W� k鶌���u� G���( �!�!��W� "��DLJ��sZ�+y�{/�d������E�EBRn�.`k���w�pz���"^R���u��{v[�n��G
4�b�7�ķ��_ʛi��>��A#eF�̮���I�����H�6�߁f���]6/m��4`@�r2é�YyQ�ţ%gP� �}�#/a� i�"Q0r�)��
Z�_���JV���5����I����gvK̀?׋�uf��O���#�Ԟ- �*\'�(�z=��H�E�%�{1���i�,D�F#����2�R����k8���P��\2��&�W+
��l�|�Bb1;d6Z!���O����EJQ�A�{),�`p#]ʇ 왅���-�e�3w��r��{��̙i]v��b�ܗ2�C���"k�塚�koӈbfO)28�ܫm��4��2=�[oN�2���#VfR̤�U��m&-��#��f/�������2'my)'�8�(y¼�\T�m�R�2�������0{1�.��MV�K�\A6�]�� ��}����t��%�����Z��yܡ�Ԣ�J�4O:O�!�vڱ/�˹щ^^��!���/�d��,Fi��<�é�}f�S��O�ϨY!��p���Ͷ�RJ�	9���Rc��"N�    z\6ŢX�⫀���q�gݻ��&/!�ѵ�G}a\`���#��~�J�.!�c��q�� N��[�?��	�D�󫹐f��Í��\<=��	�ц��x��Q�Qp('�*�~g�k-r�.O�.�6D�33��/�)���P��J�]���� ��&�s����R�Aӎ���{�����tn$���~+*0�_Y�㌦�5%����u��fo*}ZG��&�\��7�F��,��2�}=�[F�L��8�#��C�y3�o�s�����j�5ꥬ�a������m�X�B��7(*od�szU�SaH�m�|�]y[��\�&���ԭ�o�1�y���&����F5�`���lZ��	Y���ב>Gj��֊�v!fL����g��T녶��RB����Pj:Zܤ��z�eN�BDA�Bl�a�w!��	Bi֬v	p�(ń��bCѓ�x�Lv�$8'�I;��%ݒu��-�kuM�t�cd�<&d������~�T���Ic3ֻ�g�Y���h�����.d�aW����g�3ZH�j?��ꦀ$���4H_6��5�'8���X��\��}�ֶd��ݧ�WHۖu(%�;9�������o�wl���|��õ�Óm;�9��-o�/�,�I����'���!R��O�I�T&�	�AXr6��, ."�j]B�2����%e���L)V���F:�� �E���:2�m���t}$�8�Z5����N���.��惽�?;��\�,�mј|����*s%�uɎ��]���=�f�|N(s8���eT�כRn�\��k�RM)U\2��\�$�w�:�g�k������I姰�m=�T�IÝ�{P�"4�y�N�6[�! fFls����=}̇
>��WbskHv�$��������<!Sڭ�Ƕ�C����),$�y�X-�@�h)��$��`
I	�ྠQk�s@HVsɭ�!�+,Pڞ��\@���8�"$�y�z��d=g�E}/j-�fC`i'd~D�X;ɪ��\�E���[!�9�X���*��k�OJ�>hr���lE��L�1� ۓ������i�:XO	�m������IQ2*�i1!s9���$��#2�C��l��`KJ�*��>fDs �+����"2�����*�M�Z��<asH�IPl�,OJ�@D&q�¾�k!)���d�|�-��
��|�
�v�Șd"O����*�ȯ㑿>�?c>� y5s1q93��l���%TAx�/u'��j�'߫����Y|:����u������,�6�D]Ӈ���)��D�Kq��, Kkoڔ�Q	����-��J�ңz�!G.3g�֍�o�=_3���`����ʙa%�O�s��0/�*�Õz@Y)��{O.d�gI��#��GV瘲��Ԙ���>My�_�"PG��жnt���t�AO�Z�e�)Wj������@�T\�ˡ�l���01����\�Y��|2Lߐ/	����`ƾ٪�Z�O�0`�\�,��]]u]��岢N�y�خ7�@�33��樑cI���x���Im>�k�O@��~���w�h?x*�K��i%%��u9#)�6F�	0�� ;�������3!3��\ilw@��F��T"_!44�3FT��!��ȰL��e���9���%�m'L�<z�H���j?����Ek�T��;��P2�X�&N����+==բ>̙n%6e���	8�2W�j�ֵ�23�3�����8`����W~Uk6�����~JX�IS�T�S�%����KQ�׬��bƀ٪��f�`��5d���R�oKB汍�a���Eà���\���b��o��Y�a��66�R}�0Y���bT�u!�!�k[��B/M�x���K¶��X�W�ȈA_��a1�����m#�H퍕e���R߃7�x�KR�_�/��"BA��m�H@�/`1���N�3�J����	��S�+���{)�*�im=��q��G���*)~�G]�Ԏ���k�Z��'kƺ�~�y��Å3�7�s�l��q��>�2�Kgj�WB *X�!����.��Q&{�c��i#���/k��29i�'"ꌩ&@2̳����kw2��H�^��]�`���<�,f�>j-�����d6��DXҩ1#��%�{��2ޕU���2��n�}8�����)�ON4�r��*"���@p>m:9�ݮ�d$|���t��os��#&��Pe%�X�a����DXKI���V�X#C�>r턭�H =Im	�!%&LoH�!�U�U��t��S��M2>�'��}�퉂�wX�,&�L>x3�tP<�2��o�K��1�>�8+w<���1����*bT{�!`��k��ٔ�{�xjt��&�d!k��yF)^��0�p�Z!�{�C)���x��!n6����dd����c=���r��%�=�c6?df~��[s�' <6X�V�=@��]bL��M��c�1��[�w�x�F��C��L����/�*�n�T%��ѫ���ozʔj�1�!���Z�>sA匢M�
Dc= s^�m���fL�f\�������^Đ�m��ey�V��g�r#]�� 2=�z�ON���p���"%H% ��2�t1Z�^^x�D;�=ҥML�ƙ
T?�Z�Zo��+��9r&Ya�rzX�	�oj���]8cZ�D)%�C��t%>Xb�}���0S���YZ2FA����&I	cM��l��&�����1�,W^�+g��Y�ô��rf�y�-�S�j��D�u�߹��1\M�7�6�L�x��p ��z�I`��{[.�����^�-�V�ޟD-����eO�*����	���=�^��j�
Ť,���~�\�_�������F<k�]��q��kϘ��s	.��S��m��5�R�TbN�r2���K�Δ����=)*�z\o�׻u�]P��*�,��Hxz��*��!����.�����m���ą�1�P�T�u�M��Y~^I�L�n����'<2�k���g. �Zugo ��iL��8�c��{3�*�}�"h���L�.�v��]h��Qp0z�HY�a�ƽրZ�ʘuY�+�'L0��O���3칔�3��V��?a����Bp�</���	at���,�e�ޔk�^ڗd�zC��2���p�m8XM�D��y8B~fx!�O��l�Z�U�/�T�b�b��JJI��CzV�5���2ӝ���]��s�<�u��(�mS1����fLjC��U��J߹�f ��d��r�T������$�P���X�UMH��JN ��]X�G<{�..��]�7a#��'e)'cN���vS>��4}�,)Kj�r�-2vǩuiY줸s�͘�/ ޕ�v@�jddSٍ�w��u?\�}�}&����IF-C��3�v�u��ܬo��n�CJ����SgN�{g)+cֹ�WtO#�������dȄl�q/,�Y�X����L�.�}ơ�l�����2��~�h�����Mc!%���9,�JE�L��F?�Η��\�	ٴ��JS��I�E���X/��
sw�	ٷ9	��Jm�ʕ�e[��l�j���_0�ɨ�$����������®���G��Y �3����م������U�dF6�5d���uC�?V��F����`�T
EʓS~�׍x�L�Н�j��Ꮻ�@RޒZ�>�)���!�曊�v	r�.$Kx��s� N�q�������i{��ȼ	���ŋ8��۴����K	~C��N	6�	Y���N�"�۴���i�3���׮��ۚzv�淪¸U���rƁ��R��r� ��,ښ�U!dur����B�K�K����@�S� O�ꐆ&�J|MȮM�ή-d�KoؤH	�S�υN�"�vΊ���O��u���d�N���e����⅀���W(|��g�J��F��K��	�t!L|$��2����`���;M~�邋�m�/B|�x���+oj�C��9���~��9d�N�V~�>�zG̷>�����i[|r�r!Θ�9���n6ҩ���)z*�Q�J����    G��ǖ`4��:ͺ�<��b��?���wә��ڶ�@B�K�w���)c��������ײ�@�jٯS<[�Vs��<���d������_՟�N�?H�2rS�2���8Lr�d=t�'kպ�#�}k�e�u�g_**���ٿ�u�$����Ėm���]����.�8�M٪"�C��s
�^�����5Y���%�d���b^Ϸ�&�ؿt��">*W��78L�k ����a���d�s�ř��Y��D���R�!�K
��N#��Zr�Dq�cff�G�6�PS���$+�Ɲ�R�A	8��p��!;9=6�Q�"/�x�N���N^�/���"�H����(	̒	Ƴ�ъ�.��Y�	VJ������B�;�^N��YJd���2f�qc��݅�3�\��~�g
Y�3����p��)�� d��2SXZ�	�/�ʉ椾	ټ3��iGc[�=|
��3���'BJC]Я��������^Qa�R&�\vZmėJd�γg�Xw$ϙ3��^��SR�tk
�9�WbK��M-�,�ۍ����W�)�5���5�W�˅C�>o��pq�<]��МBOᤱ.�.�����ȈQF��^(	!AB��M��H:bF'��a;�=�Ϛ� 'E9�3�ټ[υ�1	X�����F��9b�k�<)�|Y|������h7p��]<��H���H���tp+Ե�'� Μ�-Kk+�� �N����+P�����7��U02� ��&Χi�jMBM�����܈�,c�|�"���k�>����ET���ܑh�F�=^}-��08�g�5�;LQc�Xe��hJ!�'m�u�S�*a'�(H�A��E�}7��
��~�k0>_c�!��+aV/hB�I��Uˬsr)3$�Z�{ۛՅ�����-7Ŝ굻s�^�PuJ�1�l�6�e��������.esS,�5��IY�E�/x��y��E�+�M�
=�_��$D���@���q�C�	�,i����ת�RQ�
I�F�ؘ�S�!��
@����P �C񽷡w`��:	�Բ- �J��cNvAV��/�%�C��H�ˡ�X�2�k���{H�+|1c�:���ό�A:��M-,�%e�g''�>.�:H�T�y1�s���(RAK�)#vj���@j�F4���=�;շ���0���͡!��CN����+�h�\o�{���Gv��������Jvb��3���6��ڠ�rY,�s���,��]'��`T@��A%.m\(8�6��9Dl
�M������LHġ�������	Ѻ��B7��N�hJ��j�V1�[:ݠM�]jsA�p�cp7��υ訇�d��UѦXވ��v���r2�������%��8e����a[�����Ywۨ���^�EFr�zs��1��-�qqxlư��Ũ+-�Ƴ��a!�Nۄ�bjE��}��3kD�f�kx�z--n�������%��>���E�Ĕ�X3�^o�v��QU��d�I9�3�;�)�v�O{#��Ϧ�`��S�V��jNΰ�a�g��䅅��
N�
r*= ͎�k0f�)�A+����/�Ue�Y��v��ktb�*�y�H{���x)N�1����)��rFم(}ږOH�{�'�mɇ��n�� �B�I�	��pZ���'�
����{q@�3X�1~7 ���W����И��Y�)�/D#4���GQ8��Ku��+���:�oWRƤ�5_	�I9�>��������|�6CC4��Ԫ�ۥɑ���oϥ��4�ޭ��dӀi���=��M� ;|��-��t����O`F̼��@�(S�T��:xF�V �����[�\,��D�	ʈl��p}L���W����v����\ �i�c��z�o����@���^0�cHBˑ����}�+�!���p&�L_q�������2�\��޻�Q�F՜%�������&	/b����㕣%��;9-��F+^m�|��脥`9�ځ:#�Zo4��}eV��X��v�v��6; ���T���؞����k�+�U����c�d��x`	U��hl$��^P�t^�=�>��\�J�q�Z�j�`y���E�'lA�$�J�K%����أ[3�w���|��-y�M8��{������]��ے�t����U�|�HH������׍����h*l�j'>]�	�!T����I�RLy�s-��-���{�b��vg�l�}���, m�.�YۏM��B!��tE3&�*ON�&�>���a����W���fQ,}��{�P���i[�S��M�5,�#�I]R���:�1��4e�)%����}��Ǟ)ŝ�j|�1茐�sʇm�)eq?y[�3ލ����\�,7	uMO���u�k�Y�)���h��
 ��R��wr�H��]`U�-;�{�U�.��+,%9�yA��d��Fu��5U�C�i�';e6�sT�N�s	�Iw��zM���zh������g����[�����{�،a���gG���f������ٲ��p!�v�)�E̛Ŕ(��~������ɭ��G�yYC�jwp�=7�m�o�n��q�<jU�?sʬ��/ge�b���W������2r��W�wk;��3
�!���s5���*��w}�f,���O�����E���Y+ܡ�D�]|].��FL27(��W��׾�ʴЫQyȣ�[l�m���⨽��������`2yWd��u�K�7H���C"#���6�e��\Uџ"E�=��y�&�P����!$nX`����ړ���&��)�Ŀ{�`d��A�����x�^�$�Ƞ�ݤ���p��L?۪�����H���_D��3���E+�7ҽ8?:�U>;��H{=+��U�'?}��;�v��S�Уy����x��N�~/�,�����������^��bTܡ���lDЭH�W=�����4���|*Ap����_�k�R��{95)�9�Z�:�;+g�.yUd�(V\'���5����Ctǽ�n'�ΘuYPn��+`z�>�k'��;/d��	�1����Z�nۄ�o�w��@�&���f���KܑN��)��� )C`š��k*@Yֶ�!�ܜ��/�����<�n��}ݏ"p�3x��՛��H9Af�ڬ���Bw�==�����
t	�r�(QZ�~윭��8�g�'�NO��鄊�����Οŉ�0<K�M){w)C���W��r'�8���}KԦ����� L;��m���
h|��.a%ޏuvb��4ɐ]����+����Nؐ�X�SS��\���Pg��D)>��Si:XA�E�]�t��>J6@/�2\�d����L���1	��/�ռ�Y�(L  � ������;��h�Bw B�!�
N��9���\�������G~�)��^�����Zӿ����m�,vL�N����%�g߉�0����$����F��T$s�eL�p�1��A�>��wњ�s�������]�/�	��?����$��3�n���r'��.b��zsb�|)�������{�'���ڍx$E)��F��.�J�:�2�ar��CbVά�[�!)����R�ݼl��3�蹴��]�ġ!����.
;G�/dޙ���;�"&�ݪ���N��I��It��x��uբ�4���=��'�S�W��A?����1�l��M����
9;7lS��'';�u�3�X�����f��|*��>�ïwG�5�x�پ��IRN���,>��W���1՝�G�D���1�t986�D� N�F֦A$��F<}^7����Υ�\@�.��K뼩�(PU�ONނm��2���,�3���5~��A��8��Mg�=�	����i���bHS�R�73d&�zp��(Y92b�'�dg9fD$�vv�<A�2��Z�p(��¥נ0�����a�g,��I]���s�0pr`���ٔ�����}gj�A�ͬ.����^�E=�௣Y�B���QUS�/mo)��SU�M �o>�ށ��@��.��@
�>�o�    ��-	,禦�`.��q��cQ����~)o��9c.�+u�|�4}��_���M?ᾜ;c��S����i���i�Z��Yt �ٶ�FIfi*(X�ᘽR&���Λf�O��H���V�hIGc�]���R�_�3�Ao_?f��ٔ��Ԑ�؋�3�S񭮶t'*�S� �2�A/��x3�������_�]�,�F������-"�L[7h/iMj�����Ō{�����U�u�u��؇����$8a0~"a��g�ƧW�MD>Gh�̌A�bq���~��,>ϊ�`�|��n@�'8m���d����d ����Nt: ,.�k���$FL�SU�_Eؘ��D󓗥W��[�HPbu��_����Qi�P�U%�~�W9c�u^٩0!��]��D%$!�* H��t�����g?3Fc�@�	�51��? �Y`� �*Ͼ��y^Z`�ތ~Q7P�BQ���U�~V۞��2̺h�n �R`�.�jb�8� ��+>�D �XsF(\��;�A��O!�!x����^�� ���_(�1�.��1P~��� ����EĘ���������Л����07T?�ExԪ����֊o�P�4�X�R��Q��������Z�n���`>�*�Ջ#���&�m��&��+(�l'�u ��p������VĊ�q���3޸}��a��a҅�*C��u��@o^ɰ@ w��z���pa����t�R|{�+$�ӎt��"T�SL>�3�o����V�x.m+�B����+;*�iO���^�.V�,+�J�B�@S�^�LW]�4!	�~��~���p৔0�d^���B(��2f?�����4i`��PRt��R܈[��=��_��UTL� 
;��IA���Y�����jN�BNbq�����"S�f8�Xfw}��+)gLZT�f}�v���9��(��Ni
<s��x��������^,�#�4!n�**���usDF���l�S7�Gza�4�I����\�I�mBZj5�oO���R>�LJҳ���n�YWjnQ����ܐ��d֨/�����$�횸�_���r�
彣���z�GV0�V"Gh��)1w|�\Yq���S�l�]�#i��A���œ�F�OkS�v	�f��n~>Wp���v�W�w�݅vr҉x�!m�]�Q��O~h�+2,�y/$�.���®��a]~)!_y���%Y�}�
��,�^7���(���!�\�p7⟟�K�gU<�w�'8�w?�dj�����Sw�w�Č���ĉ�F�l�.R�C��w�~�`�OO��O���30�#����뺙��\�/���K���n�VVAx3x����: d -�7�� 1拪��{ͦ�y�^�:����֓YFsN�M��Cu�7�Oh�����z� ߅%T1_)ɋ4�1��0�=�^&�V1o�������ff�SM��Eq��3'��lB�f�c���[�,�IU�sh���OU���74=��0�U�Wz϶�!�L��a�%����<����zU�-���3ވ�����TH0eH�r8t��O���7�zk��N7OF�8��W�F��կx��}�)A��%�f� b^W���e��h�ŵ����Gɫ5LҢ׉A.W�lv�g=��2�;S4���l>�1���I�䧫��ۍ>W�Tc������H΀pj=&��8#p��߯�+=@��L�r<Q�����h�$������K�W�Έ�ay�l�9w���;�9��Y	�N�_aۊ�r��^�SC�Q��'�p�G����_V�0g�}cf�ǎ���������y(���u�e��LQ� ���	r���(Qs�Έ~й��d���M���\��Ⱦ*;�@U�~��'��g�7�!fL�X��B��r׍��5�<|���rկ�u[�TT<e�gU�����ߟ���R�L@���+��tbOhg���.M�4nO���N����W��̀r��8b������L��~Y�'#cF�m�[���ު��w�n��}=�,n�Q�tS�G�/!��t6��ܗ�8c*��]��K�~C%=�3���;� �!�L����/�l��Vm�TOfΘy^l�����Z��3螽5��t�+2���G�+1������Ž�kG{2&a�]l!#�_��=������	󠷶$F[�/�w����9���e��8yY|/}i�5Q�^��r�!#��	�͊�!����3�Jc�Q�ɜ�9�=���i��pQ�k�ϳjJ��sf���R�4g�]�w?��jw;��i��[��[�\�u@��3r�"9��gQ+����z�:w�wbfP�g�BC���x��������LН@�B��Z�\�;�Pq�nh<y1)c����_5�w�uDf�l�T���{���������Q%ҝ}�/��3�v�v��Cm GI�x}Pۦ���י�-j��0�>���\���I4�z���S;�[�I,_��Iޞ��)�U��	ۖ����H�8����2)�d$�J&|x�h�'ݍɥ>[@�M;�#3`&8�c���m!sΊj]�fL4B��<�iV�x��T�1 q��(W%���S@V�4���K;�2xZ�z�W�T�PԆ��9��1�/�v��	��t�j��F�DW,��"��}��i-���>��ʺsD�|���US��U��wK9�QQ􆉺�M�'{��a���y}_�=�5;2�i]���R�D]�"�D�A�ƽeȑ�v�O�NڍYG�Ч�V�19c��M�kd_�{חE��-�#kֱvW3GR�#�Q�B�����1�1��Ƅ�a��o��!����E�N/c�Bd��t?�	��֊?��C	i%�,ImJȯz49R��ڻ�p����[����԰�e#���� D�~'
��M��O&ݟ���;Y����?>�{��^�7TM���U R�(#����-��Yׇ���RD�"�#���m�����e�r�eLü�
��� Ը<޵x\v㒡<Oڲ�摡�0z��펨�C���r9�^�n�'֒��_�y�;"Amf�i�f�w��w�޲���EEϢ�u�G�s�KX���ru)���^�
f=�Xϕ��wz���!0g��;%|��˛b�GD� ���Q���"f,��������c=@��ϩJխcwȧBUc?a�B/�{�+Ɛa&�3�`�b��?]����i��o��Tt������3��,�}� �[�~��?<�Zp�: ~�ỹs8|`�1��ph������D팅���Q�	a̹+1*�M4�V�	)��ݹʦՐ�yi�� �k�Y�!�7�C��w����t�28<@�1�NmӀX�;��C޻��u�XX��B))~�C� bH߭��{*e6:�m�j��*͘�M���^Eβ~��L����O��G#HA��(�G\-��i]V ܊=��X��Ѵ��Q-V�zӴ��^ǘύ ���b"�!)^Dqs�����l �cS����/gdr�S(�����;e�+�g��h//b�Ķ�,g��Z����W2:� �ꆌ��ԙE�������K��:��'�!��.����X�Pf?�sQ��3ZԥG{c^�)7zdۢ���4^�g��C\���O[k������U�L�mR�d�
����\ጚ�P�^+{�a85z�;��E}�D�-u�T_�3�|������慌,��U��}�Fw^�W4�fKӛ��[�Ӧ	����PR^�kHYy��/��l����<�u��W�p6�;Gu�,�L�ebU^O��� F��7�t���t9���}3�r��"��-xM�J+��M�a/*�ż���2��{�����1۞J^C��f��Ejw����v)��t���Y���8R*���I��Q�s�r�Ze=3U�=�۩A���%����ß1�ہ��A̸n�~x�����o�5'��� 1m��W
�AM.V�\�&E��G�6;��?2�B�j�U�.��9CM}��(O^-u��c��U�UJ85M���ؿ�pF�Z�n�~c�k��A۹��o�3�pC�Z3:�\��Ff    �u�{jq�d�I�G�Og~b�)�����]h�jt��@�&�Ay��B�q�����!���`�#B4���3��@g}�KH����Q`+��Y�X�ͧ��g1�M��2��*9���#�U-�i z�t�o��>aR��)g��U���.c�9^��һ�r����݂�}ǣ��7�a��h����`r�����:�����������4�����[��.�Y�i@� �q���QPŻ��Z�wI�z��hN��ۇF�e'j���������%�vx��\Qb8R���f�u����~�z3�w~�&���w}v[�<�2�,>��I�v�@Y��s{@�!T���z�_z��/�-|�	��>��*�T��)�N���ɑ���m���N5�cd�������%#Nqd�ZL�1��_7�z�7��B�.*���Q�o��s�y����o�A�����P���齮��{s�&�2��k�V��;��z��4wH2�/!c	�*���Ɵ�3q�WF��`���D2�J�'r�Hh��հPΣ�z��4���C�P�B���\����2`��;�N��EyD���v+�N��� D�W��Yj�"y_77��&�cS�r�`�(Ș�z�s�O�I�s)�Ն�9�"��|�on����;c��MS� ��j�0(����C�O��D�+�a5�������l��C�}��t���a��o�0!�C����-�x��ȅp�R�wk(�>>5���5��/}v����^�!6y�c��E����/�0Ȱ���X?�{�u3$Z�T=����������Z�C��Ј�2(Q�L�$����#I�;�7MqS���E䏡���e9/W�:"_�����U#7CE����Xi��H45ʅ�G^�R�]�z4�VWz��`r:�V�I_�v��Y$"�ͽ /~�mΊ���z*"�����u��Ae��`��b�у��W��9.
�g�Ū�N��7�P�{�1����kD.�����Fo�$_���8�oe�s����>?>ʼ��Я7����6��GB�������%"�ͻ����\�ވ�=����^�w7���{	����!ѐ?��
�b_z�dΰ�u�׃*"����_^�9w����)��/��3�xPF=��z56�im#}��!"���Cjo��4"�t�s33L�f'����O�ź���Y{�CD?$�U��t��V�gk������\F)ǋ:c�+��^���6X��s��}��
෤�[G�.����ʯ#"��(�N�D��q1��]������8Z+=�^7^���nh"X%�_�z̧�n��Ɉ|9`�R��*+��P������y�z��C�f�j<+=���>2�gqk��<���vFQx�7��a�T�K�`��Z���<2�w�糍Z�M�Qr��с�n]�^{��h��J-{�Q�M��0���G�銺8R�0Z����W�?�� ��|���N�xM���
��zQ�v6j�;�Bk����b�cj]����h����.�b�g���ɓnS�[\0���2�/?]��wKۅ�����\����L2�K���T��J��?1��y�5e ��-�>�M�M�q���\?�}m�Sz0��O�P'��>:SU�������'	~4!��c���a_D/b·���x�Ke����,�x�˽}���vj��b��^��#w�@�`Fkߨ�ᷕ�����/~���Q:�f�k�?D�A���k���o0�l�WE��&*Rʻ�/�||�qo��s��44�u���d���Y�.>={.�6if)�[����&@��`ٴۧ�A��߀�f���\{�\�t/�љ�r]�e�.�Z�e�&��͵߬��9�6��x��hM�)�5���7��'�k��!�7Ic������Ȼ��n|ĜҾK~%)�8_��d�O���^'ʱ�C�3���=!��潻�ö�."1�_�ɑ�1� ����?�ş���? >�޻{b�'I��U�� &�r��R�����Y'��Oٻ����5��&oˀN~��9D:t�ǉ�w��:/Cnr�c�J��aL�'���u��q��������B���o/L}�撣�0�j�QG#�#��޾@����;�gŤ��lE^H�v�E�y�����N1y��Ɏ�a��&L���)�$1y��Y���Z>��7f������jb�#!�����'I�� ��;���.몪�V�n���G��{�nr�ُ�A�?����H�,��m!�><T�ljW�B���~��#�^L[�Ϸ�1y�p�1�c^�#*e�e1���c��(T}�>��U��G�1-g:GA�*��r���$���g��0��!����ս��n}��?2;���������������ʡσ��ր�>. B���B���8��[@;c�#�yV��#Fǎ�-�BDm�r�HHЕu����_ݻ��3@ ��$�ʌ)mBW�|Q&�l�B�)PB�·LĘ�$�.���vg�����;IKp ���/�Q7���߻��<�+@�HP��eq�����+����4I��JK.��؄5��O��� �Έ�����Y8"�)�(G�f�1�.<�AhEY���Y֖G�g� �-�uV�M�RT4�p��z�%`ŧ���I�6eh�3�ϻ;g(�ުu[���=5�E���K�����5��\�0���tL )���+�v^������ �%��s�׎ɉ9�רt��н$�`t,�:���&��it�H+�)�zA#�ZI��W��F]�}��G���0 �]��} ��`�mjL*��Ĕ�;�|�� s���a?�4�K��>@�� ^��R�/@w(4��ym<N1-�{�Ѕ �Jb� H���畞dꃮ@��w��Ƅ�i�R����:s�pPI S����t���H1��mP�"7�B>�ǐ
a)�^U{�/n���,���t�ő���r@a��I[��"=6�ζ�s@u$�.�|P�>i���ﴂ��7�ZHow0-@�`�$[��@���)�a����q� d�z�R��@�M~��KH�-2g)��P_�0)!;a�]�̮�"@��e��=�e/�C� �"P#����=2�T�G���&��Ƣ�+��ݛ�Ҕ�@�)O��c5{}��Z.����"V�����/쳅1�e��=h1�(4a�ny�@SZ+��0���ԕ����2���mn=�/�zC�70.gE�6彪<x�tj=p=�X>��zrS�o�yf�$�8�q�h��`"`��su�5�h�E`�=ƅ��@��A�Q������XJ�F���\Ҫx��z�g&%������p�zF
���3p�`$�ͦ�����4W�6Gq�=�h(��~��r]O^����<�J��L^�����{cv)�=`	à�z�ޔ�|[�2к���e��ҝ�0c'7�.g��S�]s�,�x��i�4�ݸ�ڮ%A���z�)���"&j�l��|֜M�3��>����Hm�$;Ӎ+;f�+1U��oE`Ԫ޼�zT�6��H�Ż��޽�� *[�k*��Y����_H�B0K4�-�۝S���r�s���®�"o^�K;����
�g�7.�{�|����6�0ع~'����� `+���q�l�}ێ
�^���ޥ�3v�e�c^F���fd�ညǗ��d�*��߷s�� ����=?*Z���yu �@�n��~����p��$)|q�\��zt��T^��.	!]^_�ͷbY6>�}B.���`Lp���8d��c��s�Q�2c��%���P�7�T��� 1���.$t��j�u��z�-��=���W�V��S=�6Pxm�5�Л�_���͵���@<�+�6�y~t� �0�h��@�(�=��&����Zz�пJ|t�ߥ^T��~Q��0X�ҝ@G�r59����~�N��G�/���<�k�$�3����\S�qVy^Bz��E�{ g�d�&�i�'��0��^zJ���V�C���1}�&*�&������$�`�i��y�<Z��ۢ�N�O��CU��X������P_�C��Og��x����!C�y=y��{S[�eO�:    �x2���X�)y� 3�0P�@��QJ;�V����I4��^8��I�>�3���O̘��֧3��)�K��h���^}��]��-��N���NM�����}��m��D�	z* ���t'�$ G_��j�{��jƨˢ��*`���f���km=.���M�Rt�|K%�2�)�<�6DK]�x8�M�*4�9zމZ�#?����)��{�P)�����R�8į'���eV��Z����b������Ww}6�1Q=�i��'7n�ī�K�6����E�Е 2�y�F�7uUAM�CO��Ι�)��3�)d�~�f�,$EH�k�m�*�l_O���-邴�	�Dl!�-��Eˍ��M��r.��ۓA�^�m���&o1�]P)���	m���ƥh��c�	O:���d9a�qB�\�p�g6B"Td��abƜ�'����d�Ձ��bQ\�b*����K��_Y�����a�.���;^��}
�����2	�1]�,V�P'�lڑ NE�Ê�4cR�N���L~�w4#�Hl[;����f�^
�,dhw���d��aZ�L�v� ��3�yM��E�Ā 9�z���ԓ ����m�G���˚�1ʺgݩ���˙�'r=����]���OI{�o8�-lO��Y�iTs/%�X�2����*ᲀ�v�㚄�_���N�O���Oc���B?�F��hT�r�QD��녒� ��t�K>��`�iwC�M��^D>NhYa�^6���»�+}�� �{|zGP��޹��E%|X���ʹ�m�v- OFF��Z����ɉ�I�d�����7�%��F��]#�>�����OS�^�u��ŕ����(��I�XB[����'Q�B˯h��t���k�Fњ�&'ݏ�uQ�Y@8��{*%"L���n�{œIaG*��'�D���m�?�J��=D�m
&a��-a��6EԔ�`�Q7�%��H�^}}����X�.u��
�+��[/X���]�xaI) �xo��ݓaàh���M#>q�pHnJ�͓�"*��F��&��P}�F�U�����?��Q#�H�*f����V4<��sٜġQ�Q�[�咝��Ig��-�ك�4W$#���=/�	��f��t23lN�!j *H4��H{p������'`B��I`��A���"���zǉ[ܩ�(IG��%��AݗL�/JƔ����M�^׉�[]�E�9є��VWA�����О��ۮ�;�q�b~}�nJC�Y��+�ޔpܓ�h��]��qZmDC��P�w�J�H���z���=��=�`����[{W���Z�~��`�"'^�<tkZ՛B��hi��"��np�=#��t�D �>��k�~�%�rI[0�Ji����.�;���I����A�������$sCA�!Ṩq1COa�8�ʑ�}Ȟ3aԇ6��d.�R��/�C<���t�~#MH8���@�3�T��T\��k�%��^����S�Z�"M 1'���q��k
���o�w�6�������嶚�՟l�z�����ajjs��~,Gp��6b=?���9_�E݋Z����%TÅ��pl;i?�79a	0�T���T���)s��a�a(�!mj�^��o����5���vZ]��hn���o�!��N�N�C��rf�4yѨo��/#�3�?����?d=���g���<Ԉl������Os��PO�b��(��������BݴӘ-aZOmO.+5�n��K�vX�{j�R�>T��|��ÿ��gHΐ��է#�؜����v������s��c_��S�����Rs��e��M�$wx؃�s�;'�z�B ���vV(�υ��l�Z§�W(p��F+-h�4�έ��{QV���2�t�N:�	~"mb��˪�/�k!���sJ���'mj6�"��ޜ���&�덞�'/T��9�fL;�p�-�}�z�\�ݱ�A�&���J�L+d�Ω"��ހ�{3T�������y���TG�<���~�p}+�d��;�Sp��t'5��p�H&h)c�_I,g�^�6�B�!��_�Ů�e|s�7%P"2`��iXذ�9�疐2����eyU����If��6�>0	A4Эp�Ӿ���t(�a�sh�;&�a85�;&cL[�����R'|d�Uy��|���|�"(����<q���N�d��)�d<ܹIv �b�}ۖ2�򅖁@��ׇ�
�s����tSޫL�O��L�6���y:�Sy�Z�"'�����2J���Ԡ��|�"T�(�`�T�vln%�s!�}J��U�]��"�����@�1��C��J֊x�(ֱc(�����n�k�:�W7���{�Ge���d�=�{�QK�i����}ד�ҧ��p�t�rl@k�tb��4��z:V�����3id

z�@m�aJ��K�Zn�%e-:����$�)$t��nk��x����k�+w�\.�x0s�34`(��,�t�����-��g�C�xV��b} ��31�^�^Y�rD;�b�Sxe�oe��j����-�,�ux�x+Bz�^o��� jU���^���C0e!�2`��j�+,CX���G
�)*e`B`�y��t�t�?���HZG ��+�G4�'3����Ћ��|.�T�o�Z���h�c��wb8jE״��e�N�+����B+�{QrjbQ�#�$L�����oN>C�!/E@�;$���1!n/}�+5g��E�,4�C�!ܭ~՛��Qޙ����ޞ��+5J���j��z��3f')�(�}^6j]Wbjec��=�K+���
0r%�L��I��3G93f��骬zE��a�.	'�7�S���kn��7���*��p�%4�Q;I�\�93��;�h`"E+��X��Q?!���N@��Є�]Z�oj	�C��,ąw_n�����.x�LC��&���OM}���l�Ὲ7Qh�O�G|�]a	��@	5���^�2�@�kWT�(�W��܃��,����1}�өi�V>���n*�ȧ�	�~��ڑޮ��Q��x�h��:+��H1�g���ӈA��CJ����jQځ� �z�w�Y��&u<��2�W̃�;�@��A��-N�!!�iސ�*�N�C`�/=MK08������;�BF���7��%b
�b�.���oWPLJ�*�zKfR"��,a���(4����u�5�u���7pS����b�]8�r����wa��)3�6��^p�иά�u0#���h"	�n��jnd�G�;vQo +��1��z����	���7�<���|ڳ6Iڊc^o�ޫ
FB݀��Q)�0 ��c���C?���������	8���U?w�(����w�<*$g!�(|���^�}��mFS{:��K�VX���T6t��,Z{���J�ZlەIB�F�]zIq�8�i�>ځ�E�p��w���i���Υ���i:����PH@��J�kAS��rH:5��>�Ѹ͙��Tlp���|:	��)���멶J��~�ֻ��^�ThF��mq�����p���b��I�d���lY%�3k81q�a�A⬆ZsY+&~�I����Av8QC.���x�����кO�fL=I(��߭���ԐOiY��1�bͫ��"*���V=m=Y��p�z����[G�;��ܨmd�9b2_��.e�~���3f&�ႉt����J����ok�̭e�J��S�)�'��Wz�x�eJ��1����ܚ7c
�x�����-�^��?U���}��<�N��f{�S��If��ɋB�q�U�	t����_��Jڦ�B�ͦ����bZ��0�eK�l��J��������K����ԑ���^��,)s�;d�=��6�ʟ�%fs�����rQC��{�v�	�3�8F�'�oEe�:ua�9�VzZ��!<�"����@2�j򹬠�T=�_��7xp��[,u'�,�2��XI���g�mz�=/ץ�z���4�#+.!󐃿6�}r1��(~��X���k-H3����ڝ�̡�NwVy'L6e���E��b�������I�̊���OL<�`f�/�(dm�$xN��y�i's�.��	�l��    �]���uEsb'?fK^Nj!M�o]m+%�eLk+��輪��vrYA�@J�(O{�x�-��e�V�·������Q)h�)�~u��n(�3l��)b(	�%a'��P"B[DQ�o�fh�%��9���o��`������;�%!��S�)�Qt5_o���kЇ���ٽ�t(y9˳��*,Q-��i��t:m|��	_�GzJ-�&���(�5
�|;�hA������`(	4-�}��W���ד���5����3K�֪J���ɝ�&}��b�6��Y����O�2֨�	��ȴ~-GXf���C���T�>�f�1���������Uw �)��0���i[�m�v�Pb�Ŭ+�4�����w�앝Qe(	4X����n���v(A4�vڌ�|bI)���g)�����c�=�@F��.jZ����U��)v9� �Y�/�Kgc��$�G `�1�f'|�A'����6�s|�,�Ւ<t�rχ���躗�C��m�C	�X���^����v��%ĝ����Xҽ1.{3�ڢ$���W��e�	�S�e���!7-���(�6��0��7�f{G>��3p�Z܌�q<��d/�}(I4?$V�B�5ZNh�	E�.�t?}�����$����᷍��9������V�a%$,�B5�ԧ�C��C	�� �|���/y���X��bU�|�8�4��.b�o�ܮ�i�b9y[oף��ɿHˆ�=Vj�r'��rAҒ.�f;?`>9�պ'}쮶W�uNٔ������|�����$d��R�mT�i�;=�{7ڣ�Ok��b����o��_ȭRxӯ���������;?�\��8O������x���y{�@�h�g?<�\���~xo@�:�O�� M=$p�'�X�U�g�⯇RD%/fy�u�!��,a��ˇ�нs,q)���e='��X�2�E>'�84�����r��R�*:���l��G�N���j�����e����j�ǊڷV��U��^��kp�³���|�ϗe�ۀ��'�uC���E%,��ӎ������Z~m�!WA-�)��ή=��%�f���lK�+�r��Ir��!��|'�v��h<���r%.`q\R�c!��܎��PB�Vc�T�o1�.�kNN`S����,�K�l���:�V��^V���LX&�+;��/rJ}�ǿn��3����t��f��gr��Լo�b��r�$o�z[�&'���u�����.���8���l�χ���f�7�X%|X�fr�ٳ�\o��R��#|���!��V��P���K#f}<ʛ�I#{N�m�[�Xa�����Z�c�~��Bs�_�'�JN֓C��#��Y8L�mS��A.�Z�dS	&�>d�a�!I��9\�B�aSjA0��sօ�����|x�sU�SF��DѦ�����
��Q�0�@�cˍX���F5t ��n"G��|�#_<��M��s�OX0&>��R�q�9eq��O,�N��|���~0�&�=�ݘ=�s+�
~�.���+	o��6��10{�;�%��1��)IF�8�L0��h�"�ֻ�j/NF�X}n�)�Ẃ,���KX^���{D�)K䤶����8M�&�]��Ԁ,)a�n`�%Z*�Qm申���;��"o�e���G�?��ZӃ��z̑2��r�t	5��f,R�>�{	A����|L�4�e������,�<Z``x���W��c��Y��lO72��JXZof�;�Ŧ,�������wu�e�?��G�	97�g}��b��/��Q��讕�8�:���):<�xh��m+��5Wը}��OŷZ�G�A����,���O��z	��y�i��ڴ��Њd���쫾����RB��ߣ�(/cy�vk�(+gY=����3t��c*�3���	#��YbM��Eu�G}Z��$
NE��U2t��A��1�ct�>,uԝzRC�ОO/EGؽ��5����p��k�ݘ���sH۔�)�W@bD��Aݾ�1E�l���ƓMY�ui��z~�W��͘ND�TFWL�Ls��(`��ԩ���f3��?�y;��B튾,V����F����=�mG�.���)��r����b�.0A8�����A��C_�El�W�����(7D-��A~v�+�5��x��8?��86S��:?����6���4��;iI&�c��q�R�PVv�	>ޖ(��}��$��.ǜ[�����h!�wy]H�1BRn�m';�E����@�M4�>?F�2�3j����N�bs{��i}�[u�W��� ���_���E�id�K�L�>�_=;j�'�I��z����*o9Eˏ����Y�X�Mq���S�>	�T���Z����
{�?��$܌��4�e�X�i�����1�g,�5�{Z�ŏ��$9�e�kkM������p����r�+tbϱ���M���Ah`�Z��m� ?d�M��_mwַ�qu|����di�^����O^BH d���֣n��3j?t�uc-`�"�ؽ��|3t�G�����䴹����@(��ȹ_�榠N8��l��a��}�72�9k����l�XiCk�[{�4��|B�P��/�ctrh��iÎ 2:���}l��2}�Vŷ���Y�pv�j�)���+�&b�����1�#Ϻ��׬ۭ�3�<��r����Ǵ��S�gy��)nf�%������3���){�1���C([��mFu�!��ؔ�C1�ʋ[y�r���2�I�I��h�e?��-H؂Q�eɣ?N�����Q�7��%��/us]ca$���V���)o 9�FB@����x4�{�̸x����x�[�Ϗ�����5��n�r�O��9�* W*W6P�O�]�����?�  W-0H�J��:�o�8�%�4)G��䦟@z�U݌��9K�,���D�>�dr�g������L��I�+j�术&v��ݒ'#�(��(����cWIϏѮ�v��ޜp����N;��c�����9~���,�?Q-�V��Q���Hc*7��ՔAZ��znK����r����ǹ��?�{S�B�G�z�wM ib����YC���?M��"`�,�G�ZP@�v#��K��~(!���,�y��Rn �os���2�Qx@�?;���im��� }��o�
J�W��Rl �$6� ��BR�@F��둣�
�z�� ~1r�X@�	>��A��/�E��C/n����lR����z�Č/�ꭾB��1����{%�G�QfAh�r�)5g�K?�(��vw;g�
�X�dPH@��U��k��ݸ�B���
����L8��@������a�p�#v@�R�ZNGx��H5�u\�A�Ō��	��n�� #JNY��캈�G����7��N>�;��+�y
��c:��[��.�_��P@���/'�|��q�浺�7 g����d�c>[t@ޑ62���>����k�7,�{�a�3䯴�5�mNYy�-������y�k��sԤ�Gx���w9�'G�ȧ�j�Ƚł�G?3���{/��p�&�G�Qd�,���ϯ�>?�=y��z���Pwc�9��f��o};�8�ʲg���"��D�#�N�D�������<P�{��g�y�یz[O��9$]Z���9��\�C�4g%M�t	�N��=�~n�*?L�v���6a�M`��=7() I�i�>���c@�!�������X@��(�Ĉ]����T:�#� 0�ڹ�F������*�g۔V��� '��|��'�p��-~|�Pfnd¶�l���rU�(��CHdh%���õ��_��Ž+������,���F-� ؘN�!��Rά'���)7B�X������ր�b����j{�*H�2����Y�)Z��(4E���`����=��T�R4�z�5S�GD(;?$��]���cӇkG�S��v��a��g,����c���BϺ��<x��� k��W��>n@)8%�Y����GRytHvt�8KI_vl��<�`yu�:��CMI��)ˆC+̟OԥG3<9�    Q�Yk��T��	��FN���*qf$ZN[�)S,M@Yw�g�O�?�<NC�S(��I�P��:�jNc|YTů�?�p9�Nq���ܝ��R�(g���-����ɫ�{�>c���M�p�19gipm�.�ɚMY����rg,�PG��NOq�z:W�
���>��3���_Yf8'�Ӷp��ݘq2J�h���8|�3�g$���BO~cJ�Y(��{�w_����˻ˑg_�1!p������|��H���������!�+��5�pY|��9��5Ɯ�X ��E��Qz|ȍX�SK�V�ڵ!����\> �RV���E(��h阜\_�y�)Fy�1��*&,g\��vǠ�&�B����IW�rW�G���<c ��Q8�@M�,�:���^����

&>����gթ�$HӋJPf`�d�Q.��04���fPb������ƻ����\���
gηUb�A��X���ƨI�;�su��s�2��e�Fa���&�ݣa�8�0g�����(=��h�B�����X,U�}��gg,:ʃ�lF)��f��6�X C?��1�Ǣ��h���գ�dwЎ�'������B����Oؾ7̫R-�嘳h��z��X�1��\Vqo�9�|Q�s�B�OYe�Z�p�<��mU��8x~ -`i�5P5��+:�Aano��D�"�2U��GH}����$�c���+=�
< �5 j�Aw�-�qҵ����N�^�UWjn��7�����M��L��a�����溾�I�;�x���v�Q����'�<���_���$�y�9�FF��n˃y��h�%x�x���5y��uƓhԈ����4*�.)�ֆ&��bo�C�U*q��|�Wj���ۦ�#�F�ܱ�t�|�[��@c�$�QK����e�]|l�Wz	�u�:��g���S�&:�T��"��'-i��cl���,?:�����E��ۇ��^L�J���|.������=I��:�&-lK.�M]m�U1��"��{�u2E�V��6�S?�s9�T�\�^���z�)1�Ч�]ͼh&���(&�bs��є�h��Ӊ��]ԫ����Qc���U_��v;��~�ު��BU����-:���/pe�zA�R��yU�MS�ɻiĖ���'{-y���?O�ߗ������lC�m�;|�L8l�Sj�ȓ���$��8W�i�}�$:���W��B����/tp7W�*�m� �����N��p��+BW�i��E�w���9�п��{��3B/Xp�yY�xi{�X�� x�ߊ�x#&(p"8+�o�$C��j�"BWW�i�I�\A���G�)���Л��Zð�=���{+XQ;�3�뭢�k�)�h������e�#�z3��B���`��������x@�8-�)_a�n���h�>�p7h=�i5/�嘏���[c
ÉG�O���Td��mJ����}]��y����F�8�T�}���O4%�l��\ѡf���d#rr���E�F	Y�н�_(}z��Ƥ��;�=ZA�ߖ���j[��`"td�8��x'�ɬ��3B��(@�]��z��VclqЕ�Mʐ]�#F5B�U�;�7^��˛��"#tcy�)��'���z���MTƢ�����L?���N�'�g��^ �����-du��vv4�g{ߍ!&��Ȝ�>c�C�#wpd:X�me��alF($n���h�I�S��>C\z@���%; 2WdnDnK=Lޭ�ԸW�e._.~_����)>�{rҾ�1��Դ���|E3�7��|Y��و���Bi�%v���Og�
�b��^�"����5�e	%.�U�]<�h����GN��8}���O��
��`�f���OA>��޲M>���������m������F� ��Ro�F	w�����|�rˇ�2Xb�H���m��,��Fq���XO�SMW�oLAGو"���v!��N.�] �mdGYC������m��F�vѵ��]ɋq����e[>���4�}f���P��BҮ�wq�����D�&Ύ�V~P��,���8�u3��BeVV֓����P�?	�	�{$й"&f{��P!%7HW���7
ɬ�m0e@
���]���L
�!��fwYL3�Gf3h�M�D�/aC�<�A.p8�z�ГS�g��q��S�缒�4!�!�+���EYV{^d"�nډ5����
�ʡ���kY܋DҐ� @S'{��%��b��,�e�)8�h=�C�ʖ�^�xCNtح�c ʙdG0�R��"�C�?���s��<�����Eq'034La7r�x6ϯ3��i�!Q85�����F�L�� �0���!��6W���%�D5��dB�i1/�1���hf�ۨn�#0�D�4QQ������+���j�?*!S���j�eD���l�
o�"�9L�����'��|�X�%�I��&�Ɵ"��7J�P1`�f������"f�xA��IdR�P����7���B:s�&��U.o$Td2�2���1nzN��e6��j}s�3�v}˾g��k&���``���nk)��2/X��y�?�o�L�R�le�@ݼx-EB2 �U?����	�0����Q@|���"=� ��c(8���b�Zj��%�+��UЋ�}���u�O�+��"�?̙����٣������j
��h��$vzw����,�7���$3(v9��L�ac)����~_O^���N�8�Y!ĭyBn#�:h%~��}脃��hg�l����Պ)��n����^!L���#8�o$C�o&VR @���m!2��=�n�����J���q���쟤cڛ�&�@Zy�U�l,�n����l:pyB�m� Ꮔ�ך��L�ouM�ZxAc��[����p�l4��֋��|G�5�҇�,\��{�z1c�qS�H2R������4ß�#v��2�ψLY�yVg?r,x�${��Rc�s��"��-����(�h;��C�q(&������}վ���	]7j>Gy]CS����i�C�f��>,�]�=#<b�f�@9.��)�3�cLE.��o��h��b��9��1U睩�yH2����ő�g�Rcu>W��P@(�(���s}��>.��x2ۻ^T�z�`��%��޷�Y��(���ɚ���O�쿈h2T6[,X"�/��s/��B9FjC�!�i��ƎD��a�"���d;��;D��'�ILY����E��a���ҦIħ�n����&��0�x��g~TMg�b��Vh���Ⱥ��lp	<4��F�z�E�l:���+	�h;���S��ƌ�C�h���sE��2�y��1�� pS����GI�QB�'�e9�?����LҦ>��˃dG���*: s���3�u�G�9������e1�+��%�Ɖ��@"#`���(ۈ~%�2�ɀ��8�V!��E�=67�2 ���[��܆G��rA��H�F��(���2,�i� �@�@��F8!@��ei~��%62�4n?�na���|���>�%8�q� �ɾ[�B�"d�պ��� $S��[g�g��I+�*EvK�e�9�u�&2���҆�Ϋ���$��5Dbd<�z�su�������%��2��M��F���wDRd<H:!�N)dG�%eO>:��5dR�%���P��3���I���\#�:�Qy����C�!V@���6���"/2v#�q����^β�ʹZ�Y�
@&	g�b*Q1$DJdL�
��	� rFm��4_���~���"72v�Ɵ��n��x+H���{M�W���83��9��e�%ْ1�2��9�����hI��������\��hٕ��q<��5��I��S���8�J�?�y��_�-��t�:��`�b��jw:{�">Z"-9�Uy/`�#�k�P�:�ܷ��@B�&T�	�lyH�Bi�@�<*��Dm�k��$P"FiO؍rO�>�A��ֵ�f�j#��&�i�P��T9��    c��8B�h��b��*Bi��fG�]iZ�Yv#b�#��&>��N���K y����"g�B�R�G���x�S�<B�i���i�;凖���I��w���_�?q�t���SVN7�|����9Qs��7H7M�_��ͥ~t��ŵ$�T}a43�3����2�CDj���|��
�I`0idd�V#(*pةDB=/��^M�N�Yg�֭;�Y�D�ʬ���WP�9Rk:�PI}��p���V��� ��`w���i+D�����Ê �E+?|��F�Ekq�N��b�Ȳ��0lA�O��Q���z�죥�F�f��zR��5��d�s|����or�h� ����_m��
����5l�Ã��>��Wʊ�u���%N�iaqQ}�4��j�kXh@��ON072��K,�!��hN��O�ӜO�?�*�i�xG�dA�z��3بbځ&�[��:����!޾��*	#��f.7������\=	V�5�����C��]�(��lSk�.#���}QL��E6����_����cL�� 7C��Z#洓]��يڀ X[bFe��P����Zļ��U����c��Ӣ��a��xߪ�2p����`���^ ^g����C���}#4@��\/`-�`��C�3���3�O��Jh44�rr#�q�k|�3�!Y�����3�����]��Sp�s�u�1BNM��
A�c
���*�X����˟�F�����xBj��nC]Rkk3�'��ߐ2f*i����H~�]J��0e@؃_ԯբ˹���@���X'g�M.�)D�~�g����_V���lU+Yd��WK�B��:Z2u4z[�휐�NWU���G�GmDi��u���͢�!뒴M���A��	V�,7�t;]֬��h㹈�00��P֏�]�ܰ��/	��P�ێ��p^L���An����U^�6�'Ϧ���h{�ᯕ��i[@�u��R7��YJ-2Z��S�O��?)^	���o��<�~�9D>@���G����Q����a�#�ު����d���3u�)��$�֫�.���p�e���be�MV��[��,�)f��`�.�]^nhk8l��$_�ۢ]S�^��ԧ�/�,�.ʡƌ��^4a�o����J�.�j�Qg�&+�Κh�/��ﯱ�)Y���� �L�ʪ��ݭ�{N�pN�:ŭ��:V1%+���i�:���U� ���g1��A��g}��,[9��I��"�����+�&tÇ%�;�6g˿�X��՘p���!�ZC�6 �^Lみ���m��WQlAg�:?������|��D�%�a��X_< c��>�˰� ��R���l��B�u^fO�o��ʳ����L���?D�$��2��Њ�U�!Ժ��Ǯ�Ч�f^��Gt}F��KX9�˿���<�����֐F�+~�I�r��~4���T4/1=�~���G�OP�e�S�L���a��j�_�/�F&�����.h������$�����w��2&�++� a�(�<Ơ��#�r2���i�M���예��>H_�gڥ|���Ĝ��[���֯_1�WZ	u!�f73Ԯ��/b�	c�V��G`�ُ�DmNL�ڌn�3#�%il�A;��)w^	�c_ۚnh�s�Vv���|����v����J4 _7%�X�C��R3M���©�>�s������.j���e� >U7�������ĆN���h��{��N�KZH5����֯�dZ�`�ͱln����*�!2:�$#�1����.r�}�<S��� ��:��;��*y𼕹6rA�^��#���a���N��~/��nǖ>S��sزk��a�b{���RW��7N�#�)�=��`˙#6�Uv��)9�;kՊ�4#�5��	3���W��,M���vd9�7��PWiٍNLjc G�#�奼9�S�����p�E�I�+0a�2�ʈ=̋Rvd#��9��eiݵ�	7w@������{��%;�g?��i"���5��5C��J�?j|�]�ѱ��E�8�S�b�YF�Mw�$�L�� ��u�BvF��Cz5���ײPzxbjc`���zݩ�i�g�N�x�0è̀� B��ES�� N�8�}��%�Q݉�K02��O?�bZ��;�|h@�d�J�
#��u���=�֧�h;qTUwʾ΋��g�Y�#���o�a�g]�8d#R����P���5�[�gvT/�ľg�o̻�\09̮7X���w�J�w#i��*P������U&��C"�;v�M��x�m��Dd�@�|g3 � vסN����!�xeդ��]*Tr�-��$�����.[�����I5��xd&����\��o$� "�I#ÊxrɵqJ&!>XIv5��uH2I�������e�����M����#����O�#�؇trs�Qk0�&��1AJ1Br�-i�t�b@�#r���&/�[��' U,�r����V���2� ����Eo5�e�6�9�Q��i�=�$"`K.�0�{�sR���&	R���,ۃS�Z%m���Z�Ӆ��L�V����'_>|�2�:���K&,ؐ�)��]2k�uE�Õ|���KV-ZG]b�l}J9���x�e���ڰb�/Z�ll�d�R�E*AF3 ��>��l� g���?L������e7��%>��y�O$+�\*�{���Y�,w��T��z��	� ����Qc����\��q���h�`:X�����5%�Ȳx�' ���L�U�xdW|^ 0�-�I�%�\1%�G��T-F����G%n����õ����JV%=����R߃y�O�L��솃��h���yE�]��I���X��\�?�@X��dĨ�4J�Ʉ��W�t@Vߐn���A����\�:�)�0q#A�1~83��u����Sw�Y1��a�g���y5�k����'H3v1��O���D���E����y��b�K�$��ŀE�-�9�ᅌw�����ۋ�C�d�)ň�]��Y�8fW9��@����].�`��tECY���v#v�T�J6++	ɂ(g���"�d=��E4��B�����R̐4"5�j�T$i�8�C<�~��zH&�|:˜/z�X_ڈ���Z��{���I`�f����u,41��3fe��1V�;�z�؇�h�=�i�J�"��MV*N���.2zc���H��6wI�3�V�f٠#S���z�s�W�����u�ظILm��5#J�B:VWI%;w��r�g�?Èq�J�����d�D�M҃��ϧ�VVn��V3�f+ɋ��l��n�EgL|�T)��(�#���JI�k�J��o���1(xu��4 �+7�FH���ǜ�B�Ǟu<����Ŭ���e�/��X�V��&w>��S(�$,�k2d�S���H<�8���T��"�/��<�וDۅ�x���ý���\@>�u<�.)t��j)�����_L�4:x��c���%�b+�!�D:'�`����i|ж
�t����õ�x��.-t�WZ���A�C��K-"?]�o�/OJ�����o����\_o�w���k�(*FQ���٤�+��3ﴭ�:eO�����Wӛ�猑����E9�W�ݴ�$d䂤oʷ�9�؂�S���v�S:����v�{���c�����q�<�>���`��LG�!,
%@	G��i��Yfk��	s��~�_j�*UM}q�%Q'
U��ی��5�s�̴9�G�,�!@6{�"����Ǫ�l:pYR[V��Z�H#�|;b$�+�������������}9�4��qV��cF-���Ö������<�P7^��C"��!�k�����	�x�ƨ��	}�������,��x��ú5�٬�'��Z�L��j���^x��{+D�"/���"�'�� �~�����9���^f�ʷ��I�7��7�����X8��r��M�P/����*�>ŗ�YU��C�n��|���������c�~?���s<U_�Oz�;p�S�.zA����N�bՄ�    `��|�h'���|�9$*��ӝ��,�}��� ����EA��x�����R��W�@mH�"��nj�={�c���Q6- y�� Eл�G�=�c^��q�]��<-ކ��n�Jd����.s�oz;b<hŷ(f�iϟE���k48ٲ-��O�/:�q[�C
���Q�{���XH3���=��z\���wbK���6	?��}d��t�����b�o���m1Y��#{�%%d)Р~QgOS�jF�d�KU��"�[���,K/����Ғv�4���v'Y���ᩯ~۞҃A;Rp����(҅��í:��|��c!p���>�|J�	�A��T���`��6�$�^���v]�[1�Ϡ;DM��.��,z�A�b(;ס�߬�,�	y��A��� �C}�]�X�����~P��j�}�>�@L3�^Rp/F���g�~	Xd�Ro��;)6 �2_�)crx^�ch��%��a��ʍX�i	d����9A�
��y�����EF�a$�"+�ʃ�u"�ŋBCD���nQk
�Z=o��k
����N�"�Y �go�����M{%�ǒ�a����t\)�M�Տ�fI��+},Nҫb��-;���n�_ݰ]ݳ�Ǣ�����[���a�Kx�-���0�2�$86SB��U�Wu��R!��^�J�.�m�����~[ɠ�p��BL��K�jж`�K��2���\���W���9O�PxH��C������]U��@n������H��{r3��n��*90���Ȅ�JCwk_���@�]��@z�v`^d7ʝ~������1�:�@b�:���v~?�#N���u��a��^��I�"V���,�;��cL���@��G�r��v�.`�!�,-�©��K亭�+x��$�!�c�H@��"���Y4�Y��ϖ��q�=+ t��;���&�K�<+���d��#<j��P}�ʂ�0��HH��7e�r��m�8	4Σ[�Ԡ��� ��	uG�rD�o㣥��Z,���P�~���T�l 0��1���EU���x�F<%�k�����1���m	gD���l��<>S c8�2�И�#l�,�ji����sS=)wB�7+�3�2��2��}�5]��Q�}A���gVf����ju�a�}}�.��2��9�ߜ�k������S�s�y��n
u_�0c�l�EO��dA:j7Q��gʛ,l�m��ܭ,�����Go��@*h��6�,*�d��l����}���E�T��+.�#.fq� ������U�@��+�v�^�0�6�թS��%9e��Q6���>+�l
�L]:'�ؽ��y����H��K����T�f�����`��
|T��&�o-2s��h�N�}ą,�\\��M�(Ϩ�5�؊�� E�*��r�/����Y��(d�A��b�g�)��u��U�:�	{HG�vX�С����υ�������qZ<���^b=-�V�F�֤7��X��a��}�,R2X"�ܨ� j`O��δQ���R�����E6r/!␷\/�1�����n_�zIK�4e���D��$�,��G��6�}��{����>��f���p}��i��iV�T��jY���h>�X�}{u#�ԩ��g����2u�Z��j��$,q��6,29|�-�uT��3\�� i�`��m�'�9|�h���wB-�����5�����9G��PV�������f�@��:��PwE�e]����2H� �3�3���q9��Tk��7�8��$T@��Mt�%��3�*��?���6u�m��Ad�V:_L��nbA���??�j�|�����A�P�E��"�s}/��҅�9�L��/�6���}��a	������)��|���a/�=�h$$����%��c�̞����00f��3�������D�R
���~Wd��{F��*��#0a�[�����vڊ\�q�(��'�r�)���}��(<�U')%1��u��/��j�ܔ[r��ߜ)��追iD;��Y�;�S��^&Ž��ʝ�,I�G}~�,�E���{#��>byo11�Q�q�����lrV�T��M�Y��D�N��cg��!�}�SI,}�{9�����.���=d�,�3�k���Uߕ�I]�,��1yo1>�Q�w���RH����{�[i@�=���q��u��;KBm���9Z�>��ة�]*���p�ǔ�����\f���E�B���R���E_�Aƈ7\��Z���2� iT�4C�s_����꽿����K���,���MB�Mjq���}�1�����EuH��El�JBmH��n����V\��Yud]�j���+|~���G�:��;�D]H����r���v�Y�oH��]�E�aogY�j����D�>6�4}%E,i�W���!�!(g2�۷~_v\�������ͺk�^���&�3l�QP�l���Ip *��HmK|��ÕyZ���d�`wJ}��C6[�ڂs�T�q�YG�VѼL��+	�|�-����=v�0���/9x�`�-��ҕ�q�_/��IB��!�Q�^��T�P�U]��r���>�H�A�n���z���% do��~7���������@�8+wD
;)���j:���1�>���	q3��6D�:��#SdRR��0��Ks�BDˡp!iQ��Y����SL���Q;(SBY�R`�)�a)�Z]�ONN�f�4�br��˄-�$��~�(Y�m�n{=�������o�6z�������eS�5�T��^�x�|C��/0S?��`Њ���tM�%j-�\�U�X@N�E��Be)9�oV�/͗F� �����E
�㝺�
:bu��J�}\�q�[��Nݖ|��+]P�q���|���gl��me@خn"'(��0xH�[��� �-(�6j��
5��,2�@�N?9���y'��R�H�kb��<��3�?�j��?.{k60,T����(�2�������Zs[0�\��0���3�[[�3����Ky
u�V;c�]�+��mᄌ��y���v2���8¬��@h_t�y]���z�mP�I��al��|q�#�x���o���&���4�����Hs[iǳQ���Z�������{�O�Q-�Ѳɬ+���y���*�c��ku�!!JC��n[m!�sІ�����i��do,��RP����(VeK~���������J�浚k{jH�
�Y��:�� �~�ط?��>�
P�,�Ҹ��w�g�=��A����r�\`�B�X�Z؆�4��U^.���'2� ��R�2�Ii)a��үQ�6X�`Wt�4�BV�fA�5?6�����j4�r�縃� �!��cH��dSXJ�'QL�a����E���)�,Y��QBv�ȺшCF:�fySg�(�K�'�82f'3T��J֠�R���hڵ����%�d��\����T��,���2i
B�1ذUE]�m��g��Fz�2	���I�pC7��qC���'�T�6 �y�फ�*��<���ؾ���Z����-Q�l�Lf���f(S7�ka�r&�ݢ��:'�	^��T	��g*�V��@���6�Ⱥ鱗k�3�Q��)mZ��	h�Z��뱘��|O�2�����$���\궜�j[�Fh+�`���N!�5SX��r.��_�#��i��v��_T�\�r<7<�<��*4#8Y�{���<F��*����3ȷb�)�|������="�*4�[J�E�N�-&Ȉ�Gdэ��ǑG�э��$,ZuŸ,���z�~Ȯ��w��� �C[�͈wD�O�PY��൷$T~偃��*O������m�VoI���S.��Cjf:0gG;KB�K�n�$3�7�ٛ��Q�R*C�Y��ރDE�n�Tv��i�}�i��~ڲ{?�yHj�M�xv���.�:�;5��
`�Z��X�e��J���J�s[a��m���D�#���<e�2�'�׫7+]5�޻I	)3��d�,㬚�鰻��X�-�g󞳉Q�k    /��]�m��*�Wc�e=��,����Sm�[5.(S�W�O;��)gf�ݫ�h��!�K���d�N����<��ߔ�n��.�;%�����q�d�%��67�h���t����.�Cj�R=�<��̈eB���⦨,�Y�e�Cf�2�0yh{HM��7ooƖ�/�e� �VЮe�@.Y4�mu/�x,�-����aP��a��*+h�eE�G�j�L����j���L�0�D�m�������j{`��ſ����0����@}���[]df�)�ǘϻjjG���5�dX֭��+��%��Q��76 ]�¤u�X銉{���� Crjj+kCښ�=a�G�M6<U�!>`���
��������%{��.���Ѣ��z��u�^�y����0��AY���f&��d�V A �峼�Ϝc�y�}�,�r���R��ŝ�UC�v�[�7�z쏀���� ���m��� C��l�ؽ��F��>��iG��b��t~�������d�`7:��X�j���!#@M�!U����.DO����?�1��������. �HK�C.*��Vफ़����zI]੽��JA��/iY و�i^�e!��;#QkD�==x��/p\!�
 ��E�K����v�s�Eq��}���2��t��!c�1����_[7ô 5^�CD&,�y<,�4U��5�R��i��������Zb設�E��,s�s�|�U��ʬZ�4�9}�j.X�!%��{�8����g,lo�%Q3��s��nPa��q`'���2z{NX�����M�����$m�{�.�� B��Y�x����Qs�W���(��ѭ�
iidƺ�ȶpN���	��<G��AZ��aw��5�u��:um���i���EP�
��4��%�v��r�?���'*fQ�Ѓ�#!a	GY9ϧm�m'!)1]㦶����~�d9-0�խ���G�#Sd�<̕�QV������9���m/I�����c<K9�U�q���������I;	�X��ji����nN�+������mJ��IPʂ��R=� �"R~اE���y5j�t���@n����3�y� 8�*�7�a��0�4����$q�H�M4�s�pucr�F���Y=.��Z3$�7Έ�ˑ�eO0�ER��B�p��Sl�b/���S#�^�������Nr��9�f*���zݪz������݄z,T�ˬ�!�g���p�g���Sv��?fe�Pd�MZ�ض��
���yY�?Ρ��2�&�j�{7܈q7�9�MR̒`ߪ�Z����>NX�q��)�{V`Y�����P�R�/ٷ����v�v����(�ͻ_I�Z�6\�M�˂���݉х�^��^� ɮ.�1?�^A����5QIR�z~���l[t|7������@��w��By_SK��je�E��Wp\XSx��(�G'��o�=����7�>zG<%�sUW�m�b7!)���J��:��1TB��Um��*�����AS�OO��k���
�a?Q�E��oa��৫'u;)�O9�R�i�0���l�6����>C����j��m|?��S�]ݖ���Bƀ��e1��5�A"���+Ui�aČ�rB6�������F:�1[�ڄ>A)���%($�h��84�V���o$�0`� �,����,1GOot}k���7�kh��Wn�4�#�B;ǵ��
õY�=�Z���L�����7��3RK�����%�>�;��m}	��`$X� 3C��iU�ӧ
��(Gbu��0p+�j�m���m�a���u!�zDdN��tQ�����K�a岽f!����o��m��Gx0W���9]�}�?�N���(f�n&js�v��"�7kcHxx�\�jʨf�ը�'�����˸G�wu��3����5��q���Z���kL3x^�|C�$5:���
G>��7����д�j[b?��M��NYn���O�nE��.�gQ�ilRsN\�\?���%u"'#oq@�5��j��L��2ZI����X�1�p�t��#LK��=&ca��@a��e���3����T��{���/�~^�\:_�z����5ДA�a���%[���D�晇��b�l�ep`,Я���D@]�9_��Η�G��Ϗ̰�����Vh����Սq��2�	!�0��E����#
k8C�ָ���l$g�Rm�����_�NXۡ���� Z0�6�����JX6��lu��b��53�Pkf=�|��e��6�5+� `��-�w���t�	Eǲ|��M��ږ�bd;6 �0�.ST����ICgs�F (@�"�U��2�a��o5]� ��aۂO�+���9���w�����H�D���X� ��6����V�SJ7��F;(�QT���1��,�b:����?2�A%��*����4O@�O��u!��H��&1�Ԏ�Z���<�5
X�����|��ו�VAZi�F9t�[s�?f#9P�A���ك�� �.eq�RtׄzMd��WOʨ=ɢF���\I<b^�@H�"���4�F��.����{�۟l�����	�����&�.�"f�(����.C�q.U&�}o���(pcp�]�ʂ��	`�왺��CF�R�e�~Tt��}����\L�N�'�w,�k_/b�#O��O���!�w����F6%�"�B���h��R�la���%vf�ta�W８�g3Dt�x6[��)/��ÁQ�eX^�y|D;ҐCb�v5�*P�'1��@I>r��Y1��j���R[D�Z��C̠y�
�c�w|�^#::�J�߹g�D�"�# ֲ\�_a[iY�����\V�X	�xt���5W���Z���-��a[WUxYɰ��<ZASL��j�UkX1c���=��>^PgB�m �����y�G�1�#�I:x��Y^�n���:������"=Gm������#�D�����|VfASp!�R2�Ml�ȼ�����/�.�O�?�*����� �4�Ô�n�PF-o�������]��
���h��=T�|�A1_1�R@�hl�������Q�&��̰ Ln�(bʈF��M�������LB| u�eU����f��{�'(S%�o�ɯ���r*C9�v�A����	�Dk��n���%Om�*���\��dB��֑bF�-2�g�X	cA�����V��@�%�8ҢqD�)c^�S��K�T}��-L�.�Q1�dF��D}=muM��0���o'20�S�gx?e9Jۆ�TC��\��1C��~�
�$�1+Dz�R7��Zp�������y^S��:f��fC��R��1~
1�c��7/��}�����G��WVb.����nR���
9���p�"9dɼ��ɍXn˨�3���3ov�
�l�p���$	�X-﷛����zwG��l�GdH�]�Mj�?g�$�,	�y��/��v�wP����ݴr���>�0$�m�rإ��������/f{.���ʼ��BH�͕�w��Vj��"%a)���q�>!�Oq47P,���^iyD'MB��x��&�hB�_��~c�]z,p5ݚ^�������CΠ������$҅N���e��-q2��PM�G	h=G��wK��&$n�e�C�%+aY�Q�W�	2��iDrL"]`���{Q	Y���&�z�Rl����69T�e�,�R忼�J�n@5�N�Hk0!�|�&[^v�����6Ҙ%�r��ʮk������}>M~7��l�����C[@�� ��-��2
�F���ش&�T6P�e��qw0�*|_�����k�lDh7ᤡ�H��{oG?d�]�Q6���r'�-x�Pm�ȦA�������z����iv��iPd6E�;��-,�Uv�����MGi�[v������E=���]Nm�QF[h�ip7�^G~S@k���Y�Z{�Z쫜ȈK|���f�7 ��ث|����ON$��@,2���~��l��2k.+�"�,2��`�¢m���X6d�e�$��kZ�ŤG����r��ȀE�W��g��Y�Zkopo��10��    }�?�����HoÕ}ay�݀�v�fj��W��H�
��!�,_כ�8��P������+����󺀧{�)>��[V΋��9�L�卍��<	�{�����kP��2���]�enq� %0��:��s��ip�t�z��4{�I7�2=��S�l�nbQg�1h�d�*��`�̚��t698ʯ������I��:GOY��쥲R�Ey�����4��h��ߚ-���2�k7 �N�?���s�ȱ�Í���D,c����]��ҕmQxdg*?�]����q+W���4���]��rW���z�,��ָ�� ����o������R�쁸rTC�y��=l�:{�y>77�>���9<r�5Q��y���@�l��-�456-����������U[���& u2�^��;Q�k����=v���2ղ����-4e��j���+�$1h��'`�&�e�ؘ�9��e��X�`��Mh��=W&�Y<�.>g��)��v��^�Ӧ�^T������b35�q#ؒ#���(�[�}��Sl�b����ў 	�)vF��u�/�#$p��߲QuWL�^N{
vY���$�1�ֲ���^Ԇ��DA��v���(�ި���z	l(�Sk�����{��]CABz5���_P=Ӂ��#��޹R�F0��X��b�G8�?���fЭ��w�vaH�X���5�.5&�����\�,�]��@��V�n�I�����]����&p{�X��!��n^����Cb���g's|wakX���dd`���жia����ԟ(�'L:�>]�?'=dQ��
�(Sm�i���Qu����  UJ�w����\�Q��E�1�d��7�}�16q��J�Yj"l!��0(Q"Fy������<���s�՞W�bjw�`Ru"�Y����ZM���<H9X�4�F���O�$��%2���J��ȍј�Zj� _&�>q����f'hq��D�l���=����2���-bP4,�^3�g��WG�ڨr���F9dG_���$�4a���쮦s���Zd�FhqS�����2�եz�sQf��=�`��l�t�Gdv��`F���x��}:�y��:an�Z��׬A�Wf�A�s��x[νEX2A�^��2at}F����
N���˧�R"�1���뼄��Д��SZM���2���^�p� p�Wΰ�o�+����P��wn�,K����Gŧ��V�7+K�%�T�\]�� ���0�
o�⇌I��Q}�Rb��Ш{���&�JLG���1Db��i� �A�^��Y@�h�c�7�,⦌{�ඳ�z�V��	C�|��r����z��i�M��gy�X.c����J�\AF�(�?�,��e�|����A�^淋l�uw��#/<��q�J~��Q����)�n)�c3b�sx]�9���Pʘ���A�PZ��������Kʘʤ�y�C��x�̲���E�]�I�.C2ѷΑ��1ٛ��r�7�pE7P�3�Z�����-+s��d3x뎂C��pO�P/6@�sؤH������U��D���������
�:)o�"Z�hF ƕōz�22�x*�)�(��atqe��޶�����-}��G��s���n���hQVB9���^Њw.�%>cmw�$�6�S�T{�ي �|��}�$hĠ�\��x[ď�/
�0<$ᷖ�!���s��c� (�<��x��H�L}��M/.2�Z"��Ⱦ|��<!}Y�jj5N���!_���\^��Fj�8���q$���N6U�x�PS��F���X]���6K�uq~M��sp�L�ݔ��y#���=�̄�����*Fcdh��d�<u���*唼M����pч��Sb��J�wrvv��h�1Y��fx��R�
W�ٖ�l�#FԶ�9\����2�+Č�e�Hj]����D���i|rr���[�6�����j"���u�P��C������O��9*r�}�tT=�����OBp!��{�+\�b7bP��#lܘ1�	�F�[��j)��������j�
���'Pp�x�X��l� �)@-�9���wy1��-���n#4Q20����-��ZЀq>.f��r�eB��X�
�_���$�5���Q�._ΰ�.ƈ��L��+\ �ì�	SI*D�kxI|�5+�6�/
�2�������Odf��\8]r�>�w����Č��pH%EL�cu�
��Dwn =���B9�y=�����i���N�B��זI�txXdG�$��~c��\�8EXt	^J]>�uE��ʹ�/�(T>jQ��m�Cb~�P}6���Qj��F�gP�}�י �1�I�4�$p���%�A���k#��7H��D�g�"����^�-��i�lF2SI�x��)A ?f|T�H_Gsh8��$���Z1�!����YG����O𣺚J��b�X���2�3`��Ra�KL���C+����-��RqG�\�lG�&ˠ���󎜛����;�BdR�a�3�N�j�%���`��E�O��
�{!�d��9�r��syG'�X�0m\,H �=$L��شR���Cg�.8B8���K�r��Pj�~��]	�]K*va��(Z������
^�M�i	LmX�jX�ىx�G�����6,G��$��{^��+�Ǧuُ���,DgMsΛ���A|9��]��5�Ē�b"?�������g��[��2�.����X&b���v:S�VC�8���i{"���Eݹ���N�����Y�}��7���"�^��.��Wp_�;�9V;��%Ԫ��㋉׬��-�sCX���f\�%���|��h ��r7w�����B'Q�N�8��5�t�Xʁny��"+�lۊ�"�i�?V�w��+�\�NI[F�]ݘB;3�ր���� �+���!�.i�RmQ�pʿj`�9�����}��ڪ`�~�Uz��%�6$�W(�X�R��1Fu$�f$D0VHT��,��vf�8��xs�v�]0-Q�b��8�>�u]����%κ���
i�XdWbV4Vp.�,�Yȸ$P2����I��m:k*f��?�f���u�9!r1��/n��!0ŔA��M�UG�>'D,^��/<E���vSz@�֤twV���A�aBTb����j8|I1$>e��ݮ�r�A�b�4���55ӌ�ݖ�
�X��|�-FB/`	��!�EV��<��|�΄�A����9k���	щ�`� ��f&;��hB�⭈�6������.b�1���U��"+��+�`Ā��-�����	�.���.wd9L�ƶj� j���{ yC����8LV����(�8Q|8.�!B�㍋*I�N�p�W6`�'g�C�1�-�+Pw1!r��Me?$����x�[�}�?a�ll�%wg&����닄��Ȃ�%��j��o�/��r���@�XPh��V�)����j����G�-��)-8yP��]d#KS �o��g��r�pDކ>H{
�Y�e�M�2�'8`�-���,��Y>�.���,������熘��i�����ڻ$!�-�9��R�Gy��Eei�$�0�Pq53�|퉑2]�����'��֊=V�W�/n��
Q_#J�\�g��~��{,�K5~no�&�4R���̠���ڥZ���^%�L-�B���DS��$4��Fr�����jdK(�h��ڒ؄Ů�Z�Cn�x���2
�˨�bnk��.J�ϋNr�~r]�������ڂTI�_}��>K>^mT��ܠ]�Ֆ[{JY��U���%��蠹zCs��"gojԸ��%����S.�c����s��c�_<�/c*E��.f+yA{Hv�䦧���% �����dbX��#�q��+k��#�`���Սu����zc,jg����Cl�b���M����S��9��⠞�O1���jN�rS�{
'�.xiG6Qc0����%��m�q�RT��t�S�X��l�5�ǎ�ܷMa�=Pan���D?L�v~p'|�+��zwO����O��v{O���Z�P    S��ʇFN�����u½M&���B��,�:'̖��X�3X���f� ��x��Nb�e>�&w���|O�e,���.{`���C%��5��  ��2����˷go�t�F����*D��	v��Ŵ���DT�ژ���?���1R���͌v@)�a�m�`�����S�_C��n�x����7W]�x���8h�Jp͏h���2�)4����>G�!z��tJ[�����!���k����ˁ
�ZA�	��u�$O��w�`�'�Y���,� �3jPw�y��Y�b֠�2�`�ۀ�q���2�L�
��!�W	� ���uԼ����ev��{��蔵%"��P�8��EUJu�`��U�~��x8|_d����Z���*�e�ۧ��,C�+��v��R�I�=����ڙ�ᶛ��p��\j?�.�ٞ����o��E��ܚ����l�������bDkQ>k !\.���%���^/b��(n��3���b*�0d�)�+�¦z���fW�0�Y>C��o���4�o�|�8�~��%���'�B=n��E�)h�g�_�N....�����l��&��z���yv��͵Ŭ'��P_ �@+�k����?�s���Y��(� ���J-j���O⬘�m��0�\�"�!Ɲ)_�g�L%͇�3��R�S��XA���y����¾��"�o�E@ɘ��'gX�rـO�2�jQ�%�ۊ�F�GJ���7֬a��3TǟxP$��2ޕ�I���%|�G��q��Ea-Z���S��즀��늛�@�.w�N�um����6�^t���������V� -2���"�	��|�z��r*js�nQϲ�ZH�,[1��ژ�v�y#���Z�$��Т�tB2>>��?-����]z�Q��J�/��`kCH^8��/�z{S[#��zq}�M�����I����Rʍm�!o���]6��7Dd�����jR�]*��E�g��E�!��\�p�f޶���cVf����I3�����J27�X�O��!R��.(�h"&��Z!#�t	�	���H���͏����z�P=IT�Q�o��ߕ���T���T�8�C���^�i_���E���0[�%�1�i�-�~����gQ̜����(��>�%N����y��'2��q���t�;-¥u�-��?��=�@ϰ�3(?X��i�a�18� ھ�L��7S�}؇A��C�b�Fb���0�vQf�U�P�5��A�W#,�����m����.���|X�Y��3ȧ�CjJ�J9�.IN��{g+I�t�VG���,5�t�#^ޢ.�6���B�A.�m�hG����U��9)�)���Xf{.d1�"��6~Jf#m��$��i�&��$,�(���[�t��Ƌ���.�_�����ɔ�<0%�/e��ш2w4{�uV�.C7gD�dd�@'�8 F��5�#�
�gTН���<X1��Ѿ���O��ُ�����
4dЦ@˰Q}�Va�)
��Bi���UDA��_�y�-]�XW�}��u�=��
-e����;�œ�9���O�����E�M1�Yu���@Ɠ��^78쾼�T~ >�������!Zp�z�MOvI{M�`�J�������z�=ٟ�6*f���s$�ه�f��& ˮ��7%���*�W��9~p�Z�%ۋ�i�#����yQC�w��(�%U���%�q��<��2�PF�����-�O�x��^"���!x�1���!��1�H�M|�oǵ�b	cujɬ�o�t<�H���� �I��tk���u@b*��F��*Wb���Ȑ�,pq߅��a��x��d<��)�;�Cp�5n�
�l	0���:� �PP�^���dHQ2�1��&����D�-��i[��o��?'�1���ż�B"֕MX<;�/�]]G�eV�'E�)sݽu[�+g����c�J�9�р8��zm�ud�%��։Jmrb+G�:[�9l�������� �	Sv�50���K�>@���%J&j����!�sS��"��#��_D{�"L��wr�uM��۞M���.{��u�@�f�Eqv�c"p�'Bsm*�g�c�n��� �mω�̀�sYM�?g�����+ʊ�W�/c� ]�}3A1�"�2����C������*���Q��U�F����7�$_�Bm?>g��^yߩ�i'4Z����i������bYg!*m8��TU�>���Y��c^Q��u����]���M�����G�����Ǐ^�<��~H�	��g�h�?-&�������Op�dsۜe5��%ۯx��y�2�
ZY�y����� ��jt[�N�o� ���\��+W=V�o�Ҧ�K��O�����uYf�Ħ��J|�ʟdݠX�(�R�o�`���3AO%ֆI�<9$��P�p���lP3��Ic���k�9�]�ꮒP�D�u�����A�,cf���B#��l�tQ�Jkx����T�@'7S�m��f�X���&{�nQ;3]�_lrd\RQ?�(��=W�\]�����Ls��u�{؂ �2A�\�������Q�|�㦶�VHt渹ڔ�i�lV�n�a��n��'0�ۗG�\�u�k�Q�q"�1���G��:���
��� ��|���H^2.�'6��E� ֝�(\�J�j'�R�8����1p0Sn�KFq���mLw�d��'��K��~��_2�o˿$���������C�;ж��� =Fnr���	�N;`��w3�Pg7�ҔZ:W۫��^��ϫr��Myur"�"�3�:�/��_��~��%��Bi�W�[��{�_+,2(�nq��}����uWW���c���1�˼B�D��=�>d���f<�W�x���D���ގ;����D��IU�8xDw�X�Q��k��mE�EL���y:7�ס<i�%�tL���d�g�X��	I�-Q���K����_F�ld� �ș����-���1�)�/��Y�N����q�<��6H��V�����2��|����I�?�wԓh݆�%�t��N�:���������*bL'F��&�$�MĐ6a��J���5:����c�a�rm�T����DyNBH��kjc������qN��봋�`�ģj���mu�ל^���}���D�Bi].��	�sv����El�Ӧ���ج<�� �6���)w�r3�����)���6Sr�,d���׮3��u���U]�'wPElj1CB��i�"���7d�~#q��4X#	�6�C�(8�7U7"���	W{p�����-Ym�k�������㝠G�d ��-����N��t!U�N�Ev���x�j3��I��HB��zs��9�BJ�2k�KA��j6�۠�H�s����\���L��2%��T��te�c1႐g�3ō��9ϔfL*hp~Qa�J�s�M�{''yPDdj�� �yu�(� S��J�����	��^�5�51�hz��[�*S�l�|�#C��]?�}��.�t��'���dbx
x����m�@�����M��������~_M�M������� �"���;D��1V�}��k�MHfSe�5���#����I1��� ���	��O��r����j���Djq!^k�Õ��1�i^a����f�Rs^A���.F�x��ʾ���뚐MJ��)�ǭ#���kP����c8�rsS8ǳyF�PZI�.Ϝ����Ѡ���.>|��#�{˹�;Ы�@��5�3ȉ<���{��9m��K��9���k-:%��`�r�s�\�5���H$;oFF��E��� ����x���\u������T�� �z	�KC%n�"��B|
����p������H�v�� r:�Fq;�#�zH��힞u�,mx(�'BlQ��F7ʙ�뤪��_��:fr�^0�W�d�"��ĸ�(�� �p�7O
w�ˡ\��܀zU���q��������]K���Xw�UZ�������V��;�%���o��X��h����?    ���<�d�#�ɗ��G_����g����?�CX��ٴ��+a@Ev#3�d�҃M����=$]�+�5��Cm���*� 2�<�-��tjx��w.�/7#�LAb��')C��^�b��kxj��ǡRD��l����б�ۖs�=�VCx�H��3H��VP�����C�5`�3�3�Հ�O�죠%�7_���ڒd��t���)H�����)�5������4��-���}���2�,2($]���t��)����g=�!��
9^����W���/f0��KU�Ot���`+}M[#*P�Au���˿���{H�F0~vkܳ�խM�VN&u�?��տl���!�A�U�>F����˟PE�]���uAδgƺ�o�o�L�����i�|�х���z|����+�T��������i@�w��5i���a����2j�X�E;í��q�9����i�O(� ����c���i�Ov����'�D�jdT�-�����r:�Fz�'oG��0��m$e�Ermv�a�J˩����Ӌ��jX��y4O�`uv���.H�@����^�3�qa�?��A>�e�����`W;�Clrd`�X���p}��m�ڪ:V jɐd�Q38~f�?��1��R��k�l�������"��?Gt���l� �v�nY�*a?dU�
�g��,�BF5a�N�BP	9�46Z���]�]��K�0/�����v)�0�l6W�@t���0���<MG�u8�@�@����}���Ҋ���LRS�O���k�o_�^%>�iJ̞��LV*m�!�g"�ϖ?�yQ�X�����T�O5рu^�3�Vr ��GF�<x���T��^ [���e�x��6���F����Rr���:s��OPŹ�+�NyH�6g)<M�:Fy��lQ߈Xdi�X:�Aͨ��K�!Q�kK�'�4��cT���.
�o��D�1���b��X�&/v�Hr,D/&��4����߅;�����xq��kO�/51����pr��Ik�y������)��S��@L��y���ۓ�r+�&$^UjB���!��"���@uv�� �G��X�\���><����+SF;F�h l�J��ׯǃ���0�kC���ы�A���!;�k*Ҭ�����f�]��p"���a�����	��C�����0MY��0�w��lry%�!���!I�ک�%}aFv2�j[��,������I$� ���<R�_�l�$B:2 ���r�kt���sq�C@ۤ>�����id���������u�sh��t 9�e)������I�q���G��*�%������~�M�1����-��d����3|{�v�Vvӄ����Һy �B���t�h�x�cfc�e����Y��jk�V��
�[���3@��tږmd ����XW��B�����-+�"�H���#y,�^��@��5��9�G���h7Xv{���D��h�y�
��)��wj�ɡ�u�=
9@�e������GH4���"��*��Y�8��d��[Cd!����G�NS�w!��rt9� d�+��g�S��t��S+`,0m�+9���V��k`G�}M���a�|C�n�P:�v�u4#~�0w���W�}�~j�b�a�f������(֧�4c ���008�<Fҥ%�$��� ^�=*B ��6&H��4ů�#\��C���������vA��?M4/z�����Cd�k|5�-Q��[Ί�E.�}!�؇ f9��̼�eA±����D�`�‵��,_�fp\�E�}�G~��&0ܗ"��E����+������}&!X�m�Xm��#�К�鮻��3����\�f�m�B�3�@g�Ɲ��
���G(ڣ��h����B����w%Fv;�>�6�rkɫ��hO\u[�G�\�B&���|�Ȧ�GJ����P�;��s�:��GVp���D���<`��R���|���^�-�C�e6��7����`�9v�2�h�#�����R�e%t!�Fgw��>r|7�U�4y�\�Y�c�����#� չy�-���*����>$Y����:5�u\!P�͏BF�>4�Cl!b��.��z�>q;�a9QgeqS	�0D�&���}��dޔH�p1َ�@�d�.��[\�%z���x����y ���@�PV�� R���2DSBZ���B�.�d\�6jxTe�'�&�!dfnYJ���8aYO!Nf%��rh;0��hj�e|�S���F?�����m�\<�9f.^��O��m�<
T��p�}K�n��4���Y�Č �O�!��*��� �K����H���f{FH��T��jo���,Y���ץ'�A+pl {6���G�\M�S��:xT6[f@+h��\V�:��cC�1l�-gG�,�6����h1/�o'Ȉ��8�3^p�����E���c����#W��7�W�E�&��T��4�����_8@�l�;���T� ɱ���\�ƺ!
� �$�Im���M2@
,N��Һ�#��nH��F5��e&�4 36���ld,��.�?�0����#F�O�E�>B��ˈ��M3��2`M#8���<�p���y-@A��
�%�>f�++�t�)#�.um��~� I��~Q��-�����&��@����T���Y�����겞������FԦ*�ڏ�HZ��{V�a=� K5THj��7��[�:RS㴚�@��Iē���|�<��t\/����Q��d	�e��ψX$�.W;�I`Q���L������QW����gi�z 95���|��|���PC&�~Π�]�f=w.@*�5N��w��ԕ5�C�t&���b^Z���D�oyV�ޭ$g���p��ī��y	��&
`�R��`�G�gPˢ�nR��e��S/J�@U� y� ��.�_G�@�B�$Tu����V/�K�F��X� ,5�}-����D-��ei��[�',^��q\���k����r��k(C��9Ֆbw��!��E��l��1B�T��,r@��r
���� ���Z��f�Ʊ 50��a��Y�Yv���ym6��!.Z݌����ks�>PG~���*|k��  �A�rp�|�T�1Ɣ�}� �j朔`����2��<��9��f��K����T��ai��9z{���-�}�J��Y@��^�����)�'լ��9CR��K	V�ef��1�ܴ�D3>s�5r.����#���Z�il.���4�Q�=ƭ8����6�Yum�V�)��Sˡ"A�C���Ǘ�k�� m7"��}#�Ÿ�J��M�{�c����Z������z�[d�<z�X$�����F��_�N....�m�69�cm4��}D�w�����Q{+4��"w%��^Pg��H��E�[�^�R�P��@�<��m?~-5���ְ̫�QRI�k��}0P����3m~���@RH7em�Y�R ��"��w0�H�[�Ǣ�fU�ɿl�k��&k����,��u�ރ�ɀ�B�8�,�t�H�i�V���C������	��i~Sg����"���W�y�=�,N}��|��e��m�۫����)�����>�l��E^L/K�N��P���{$�7կ�!<i��Av�oo�����"YLK�7;��"��"���Ƹ��kM6����2��B�zE+ī�H]x��N	$tE����<W#t���;r��H��`����3߫�.�H��c�N"���V�����ʱ���T ���ѭd�c�syE�TԼ�|�pC�2���z4����(to����5DbS�R�e�e!o�^򵚝��9�H���:�.%� d���O#8{��p@Jv�Yv3����_� �yOf a �ܳ��R��SUO�q�Bw���%��!�*�[�����*W��̞������l����еϊ|���.>�e�z��������M����a��XVg�����H�~�C4iVL��u�#�Y',�_���m|Ԧ�}]�^&f�}Y�	O���B�=z����z�!�r���U��rN�    ��Oʔ�sc�/��Ń��lԈ6��U�����z��X��/Su�J{]�E�,������W&�7j[�Cv�0,!����o�}H�Ij+7���Q�:���ﰜW=���J;�B�
�����IY"\�ku���N�%"}�5�����OA��G9B��̔Ne���K�"�61�(��{�!K��ȧ����}){r�=�*�\`q<����||":DFQ�f	_.#a�#�RݯT�|���%}-�M�
���bDY����bw9.���^F^.�h�_>V�r�/D�%c����%,��2]���46��p+G��9��Ox]��(E;ϊvp�Dn$�c��!��j:B��q
�\n�r1d�N-ԼϷO)�� p� zA���Y�#���f�i��ł�S`,�J���]w#W��]?"q�gzg~+㼘���{�*�B�I�N�  ^���2~9�] ��xp�͌�~Z�w��y���E��ŽMs�H�6����w%E�UA|K�V��+ٺ�گo���`	� �	��]���ղ1�����M��$�"	uD߾�.�y2yN~=��we�R���"��2M��Q>��C�����L?�q��b?��a��D��Gb�;S�_�5'x�y��H�d��8���ZHň�D�퇉m�J�5I��Z�h�؄��|T�u	�$-(���S�	��z_��RY)���eD��t=�9^+�,՘;R�x����j�����m��=XzO����)���Sz�q��y�7y��<w���[�i�����rR�b��d�Ǌ��,n�y�@�H�>��v7O�߮ř]���	��g���G&��\|��Yu���{�z)��eR����!3�n���0ʁ���U󍈸J9�3wbf���Xe5*!��ɶ×0�R����+�x��P��gsZ:K�
ހ!x'�����ך[�ta$ўs$�Y�/<	)_wTR�Q6T˺�_}�F�=��1%A�.��;a{&�i��U�y~�X]g�E����m��I�D^�5l,���uY�%�ӱ�dU~�@쫌u��i��::���x���l�{�O���_x�C,��~�»دy�c�	�o�Ɠ��c�9
��$�
�q�؈C ��LtN�t��i4�7�N�a�����/X��]����-��6rmx+��:+���&T0q���qx]�QzW�%�Z��ut=&�%��9F`,ի�/���ޞ�t��Z�����ŤٯBI�)z��h�<9������/�wا�3�3w{������X/	�v��m�n�Q�]�ݎ�Qr����P(f���S�ϩ�_��t�ap�9��rT#�ĵ���G<�$��+��{�mο�m�����
ȆU��MT���^T]A+�}��sˊ��#N�Ya�B��k��Tos��Am��ca��V�?�-���0��W`�Q�by�x�� c�4�yr.�fI}dPR���^���gQ�D.c=���q�P^�H�U�F��nJ{�*'
�g��C���k���6~���C�����y��$s7�@�l���*pb&V#���u�?�ۚ|�i�	�~�7�l�ר]um椈��p��8"�Ô�EBc�*��u�	�7�d�z�(.�����g�+,.Py��KH~j+�yr+���"�>��S��ZՊ�6�܆3�Ÿ���}�$���
��z�>,^���p^�ބ��lak�g��v�#�(��
��C�U<P8AmF칤�I!'b��O�e�:D.xwM9�A�g�4�ZN�s�-��k�^�uZ3����m�������7�&N��}Y��+���^ M@>珺x!Ӂ+n�y}�`��ȚoB���;�n��M�3�꼾���g����b��sv��*w���˳��7�_�O��y[�&���5/|o��^�%��������޿バӌ�;u������'�z�����5ߎP��O+�.�J�_g�3��l��t�י�mq^�-���ҩ��q�bF\$������9t���!� �0�ۘ?k��p�[�E����=��#��%LL���Fߩ���6 �9�H��^�:-���Beq��c��
G� h>�VF��۸M�����.���Z&ۮ�Y:F\;B�1�e)�+���6��3��|O�╥��-h�%���}s
�����^��{q^�>7�,���W����Fߨ>�4X�z%Bq"ѢW�����h���-BW��S8�ך�U"�!@�K�fU�Zo��ߍ�}
/P��A�eU�|WD�&��r�G�����d�a�v~����˙���4�_a	�����o��7+�����٨I�̓EL�"E����XP���s��_m�J�!�g�[��|���Wx��8H��>��ü�bl׏���xo:Sx�+��c9��D��y�O�k���h�el�q��m�z[o���kL����6Y�x�:�y�/��a]�Ur��Nb���\�gP$���j b���&_gPC2����E\(����B�����;��_cB
$q���q̳ٲ��2��/��yV�?�֯qcRD�h�79ﬣS��㍀ˤ�F����B
/qq���k���:Ln���iZóˈl��<�P�n~�'X֍��,�&�N�B���?~�;dn̚Q�cj�&����)ދ)� 1M�����#:,ϥ�6�&{M"�Av*��b5�%�Δ4 �Xl٥���6�g��a����\&�j�)Og��cN8�8��7W��1����#����\?�w��æL��ߙ���xL�̇z���b>/�o�(M��aČ����n|���H��[o��"$�n���8�&$ot2�w�z-0�S7{�j��[G6���b4#��`�x��r_��)6��fE}?��RG���S]p6Hs�>3�Ed�z�^���ܲ��Dyb6E*D��ΰ~H��Sl��[�����l>ތ���MSl����I�����6�fw�@u g�i&��0�%��6��2S��`�d�Ku�R��#Mm�:T�=��"/S2�4����Y �Q���'D��Y���(�)(@P|������l��!r�Y��yH}/���7ڧ"}�`��bǔU��c��"K�U��j�8��,�9\)r��V@����A,��y�8�S8}(�!���->I3d�Y�;�*�S���Y|�ԃ��{I�����,Y�5��!$i�?��$æ��)�N[?M�Ic��U�X��;��-���tmѭѧG��x��u����]@;�Ƨ:��1�ۚ��S~l�'�<p6�/s5ѹ)��9�j^�)H�-(�<�7Yw��^4�����<O!j�x����� n�c�M1��tQ��U�2�w!ɳ Pn���@>S*՝L������i���	��&JBf_�Z3�� �STxs��-�Mx��N���f��v�*c��j����%�r��T~�!�0�f3ۧ�J��Ը� � �<�b� }�x�oRar+�z��Of;�1�Tl��Q�$&�Ω�f=��Y� ����D� r�`���x"�Q�/5���r���{xb*V�����/?[����I������� *������n���3��,�`|pɥ����aF��$�|���*�b����x�
��(�i��B�э}j"!n�gq��SS|�V�A&>�'��d1�I1>	�o�U&7DIR[A�0��ʖ�ↂ�M����ش򔫵qS&� �'�Ï�"7�!��e)<���>1�!!}�������f#���ƺ�N�������VoR�
n�*W�,{,���.j�|_�}�|4OB�@M
��e���hc�Iy�5��("����3H�Q��#R�J�i�&����&<�ߞ��� ��\&��:��)�n�X�$"�Ư�S�<��ͤ�٧g6�!I�1N6݀R����h�_,���)1���d��f,2{�G��{1Z�쎏�%�l��y?[�ڱ�JȿU�y�8����֚�D�A���֛��iBD"� j7�c�H"ҕ$���q�8��f��[����sHDz� HL�֙�۳������j�S��|�"&�3��_	'�(�]eU��˵�w����d+���28R�
��o�"��vt�~*�K���)ICE�9����;�}�O��ѵ�J�    nWMOt1a�	v�iz�fK���,+�.�;]�T��W�Ǥ�Kf�����\��.�H>�x���W�}`�'D���^����5�:����`�C3��Pb��qv5������mr����J�s<�i�{n��6�`���a�~���o�P�y�k�&.���F�Ō|����sKUk��g(����R�P�v�}k���ʶ�����}��T0��tU/��D$��Pie��!M$�c<iE�Tݲ�3}�E�p�'jUt�ĥ ��a@����-��F��T>O��|���~PCAO���z���4AU�B�y����Xϡ}i�(��6���K���Jbx��/����7x�<+��3y~��Dﻠ�ľ��|Yg�0`��W��1x?���W�=1l�K�1Cguǎ�{q���Qm�m���2l�Y�������;%�j�����3:ް��yQ�w��Y���|�D�_q�pD-��޻<f�gk�?�$	%��6���*�:�Cv�2˱�d���$�ͪHN�dp1]��	�3��R��1�c�!
�l��,@\Q_e�:�pC<�Ux��:�#�C�}��f^+��B?�����"���D>�9X/b�u�܊x�3^�(Ӳ���ETp�}QW��<�ӛ�GD�\Q_��~�'��(�|�o'�v'���}���̮��"��<?��_U�P>C){W�˚c0hs�Q�
�P��b+�M_�{K�7�ĺ ��G���a]>n~�\��̬�L=��yo4!;h�G�z�Fe`B�TԆ���ꇈ�d�R�.>�XnJ�rsNwʡ���v��S���=ژ�'��̡��ٵ�"�0{���d�6�g��#\�1��|i�t�f�����;Q��&_$?�ŭ����9�NR��mR_d�8'��/�4�S��Y�?o��r(Ё�N�6�M��</�b���P���H�.[
C�H����^[�Z	M�u�9`6gm(�� 3���W�~Xhb���8Ŷ�\��n�PWZ[+BB���FeK�9K�I�/�;�f�[~E�mh9n�NfM$2�H�"�7ὓ�%/�L���z8h�֒��ӡQ�{��`l4N�#��+Jq���K��y���T�;Kn�\��������GH�Rhc��xJ�Fj�3b�~�hG���'�ؠT�;m�SUm����5�mu��}�Q}�WY�f�R�N²����>�u~O�fm��NJ�6�^�}@c�;O]�`��.�j��<���˝���Rw��Ge04��9�c'nZ���g��J�y3L0���"��u�ݪ�!�Bf.���Ku�;ׇK>�Y�`�e��1�y"�V��~(* �IlHӻ|�Q�C�j����(�r.�+ޗ�r���0曨r��p�NP-%�&�ȴ�7��|�>��	���<�;M�C��8�	G�`?]���`�0��Ҧ�:}�;�KR�9�LrQe7pՁA���P���L�<0ɓu�.��V��#Ƈ��VbA�$g���Vbo۹�jҜ�%7t���Ĝ�v�A���*[fk��p9;MK1���[�t��p�ryn����<�ap|x���{w�= ]	���l	��h����b���E{ ��p2�2���-��n�R�H[���@!�ʬ}�����L��9�<P����߻�(�`8�V����VP�2�㤁��@za���:V����o��|=@<i����>�#_"���
��ɖ�'�(�- r:g�3�(���
�Z�X$�D7���|�ь�KK�/Ю�R��R��'Q�?2�s ��D��y����k$�/��R�`q��	f�/��ީ2�{ ���Q@3^��]Ǒ���#�Ru�,���5�N�余.��,�_Lg<�m,G+f�=W߇�FQs�f�{9�o;ȩ��(¿�T:3/pᢠm�n�r0�jLީ��7]'��I����C��Wz���4�}UR��k�7dDm��/	n!&��|�N����ňڳ�ƨ�$�W�4=0:$�@��uV>������5B��r�:����e{���0���<_5o���0��a;�l���|b��3�§��U��_m�k����|��n2L�����l�^>�bߗ��_�\��8\$��Ց�"��5f�1;RTD[�9I*�`o�o��aG�.�?m'J�2�>���!b��⌲Hv�8�\����N.zs�W�ޱ���}�l�=�	��p�*���A�9O���m��%h0 �X|�����ｿ"�	�	Mٳ\M��3�E^$���
b*v�z�t%@�st���y��(@����^ V��?�3�R��w_�	�b_I�(��g���`�V�[9�4�� s�Mh1�Ng]��Jyi0��A'���y��!�h��[�<�U��` �����״"���\A��!���2"tW�\�e�;� ބ�%������r�u8X�`�l�`|�G��:��R��?��X��~��i����j"�����c;�-,�J�� �{��5�A��F?=��ޔ���:������J�G8rf�
+��	D�k9l�CFĲ��j���!��aH��h����JSNoЗ�C�L��ꝺ�<'9Ɉ�%��Np8��@g[1�#�tv@� u0����CtV-�L��H8������6�C��qK�	��pܿY��)��ʣ��@]��~���:���0��0w���vm��(��f��:�b�ć⦌W������+g��R�m�����K(5[X�fNB����w��Y�Ƨ�"8::��!��h����E��0!����@O�XV�ӭ��w#�@����{�3v7fD��������ބ�+wڊA���b�����{�~J3Hg�=�1ĺ��$O����K�i�������|v��K8��-W�v�p��V4�Vlq��1�uΒe]@A�iK��:��S��28�`|0m�S.�GK�=�ql�C�w�L�5���YO�cs����v��MI;;����rn��wgq�?���9��jNt�W������C-8�!�߄�d�ZL�7F�g��\B$:�ߕ Ǩn3�sq/f�Ʒ��Ag2�Nk4�&d2ŷb�]CNϾ�&��Y���|�ը�n�ľ����-pfV���R�����J��U@:Xs�c=o�@6X�@>�;�N>��A:-7�����U@�˃�vK���0B��9W�} "�P%Rb�n�������tZ=`�M`�ec�c+�a�Nsp�C(��z�0X�g�?ٗr���0�!�KV`���+c���4l�&iw{�/T�d_�ݣ{��&�J��%��� ���sB遇Ϗ����� ��dA=�˿��.tZ�����j��'qbL����[$cZ���-6���Z>��<�iBD��+�T�+S���8�ζ��l��M���9ʙ���1y|-�oI����Ab�N�G�>@hP�!)tmCA�o֑8V�
MOXw��6 ����	���z���`�-��z0.Ü��Ēk��ۂ�l��0_�NV�
����;t!�TJ'�j���r?H�ޡ����y��1�:/J
��m�8pp����/� �T�T�B��TV���	�Bg�����e,�*J��y�A=��Ƒ��d7�F?\2��dA 0<hÑUDx��ί�|%����"!#)I��TU(Ke?X4�n�\f�����̘'��b� �P����Zx��).�l��lhk���a�w��&����+I0�䩃��#z8h>|O���GRX%L�
�#����ʦxЂ���e9 
Bl��2Y���%b��i���7)f0�r˗��{$�����>��FݗZ}4�_츲�V�fO$��`���|�`d�3/@L3`���؟��G|������}j� �A���	��A�DMx�2dH�b�mb�Ĉ�N,u�q���r!��F����bQ�<��.5�O����:��{�،rU.�y�������r��n4��n��6�c��}�=��@��2�f����póY-z⅌��9�Ch    	�� }���k(�S���$�n��N�G��t�97�:	?eB�^@�J�	fp}*;Ip��� ��/8p.�;۠�q\��X���*���y�%[��`��t��ȧ��⬽�
��<��2��X��!���/0�V����fA�X��g��,�)v����Sx�`
xF�Y��>�x��W���N�p�;`B�U�o��.��_l���=�?i0;��:�F{�wYLx�|��A�@�e��z+���9��(��(�J6>�t�PA 
��1�ZX/Y'V�Ҧ��L�C���������ݶG���h�әt.���xf�	�2���,�(,ez�lW�`{�-�Q���`V��i*n� ��w[m��H�ӱ�W�R����N���� wN�sZ.k嚪��6�J2%t��<�d(�Ph�ƕ(�E�?������>�6`~�4�i�י�����T.�D����1���"�������cQg�.e!}`qγ�"�Ѕ���ǣ	c�	�cK��fi2�Ehb�:��TB��?8 M@�Xl�&�m����y��m�|���`��H����\�gN��2Ղ�YϠT��"�QK��*��a]��Ō���}�<식����	C��	��h3��;8����.�ðMF �o]<W�x���y��У��)��ui�����*��A��K�9"�	��h�ꃣ!�m5m �&��j�v|c���Md�����]�R	�[�D{8�I�����9�u�K���&ڑ���uy��8�۬Z$������A��EA��)��bǶ��E���M�S��u��cP5(S
���K���L)��v����ĭ��<~��~��vQ�D�ٗIѩ�
f�����c��o0v�ؿ&�p,O�O��3�x�kB�ɵ�	o3|�Rq=���9bBح�W�d�T.��鵨TX�_'��=F�*o�d��G������XmЀA�n��mc/������������ݸml�$��ؙ0h�O�P�w<5Yl�t�����bW�L�\m
��_�A9���,���Q2�nuML�1������*���:�yf -��+��Mϊ��a]�H�nA-Mи�����U���P�	��̯�5�nP"er8\�mys�l��]��`��S���0��߫Ҁ}�.�;.cM��+��)6���׆�V���(j��0T�N�!I�)>\�؄�ê�P��Ǝ�M$�]f���d���ψj8iJQ������ԭ9�t��?��� NggJ�B�(��A8Ἕ��}��<�R��:(~��n��������_H��,D��h��h�<�c�^7�w
�#��m��K���� �����uA����8��9��}Z���X�'�����n�?Nv��+��T��SP�bGPOe�$���>#~S�j��=NrG>�����=��=�p�;��Pp�F�pr����1=@pr;J)�����yH�	 �RF�,��R�������`ʙ�e5��rK��Q}�{L�x���W�����u�S��@{�d6T���9� X���ʺ�7�D��#a��5�-d!��D� �e�հ��fe�̪d����u��N///�Nڸ<�N]��g�
���Z�*������[��`�.��{��$���0J'̶��.
/.���k�� X���M����v_�{@�a�}ػ<�Y\PJ ��˿]��ק�SMB|����� sZ�E�'�o ��j�@�p�Z�&���A� �P�'����o�$��v+�����;2�QF��_����R.h�BP^��u���k�dl���A���y&~��lpQr �'UZ3$d��Iu���.uSg�G��&�ޤ�����.�y)����=՘�TK{�b��z�d��(���Pjt�:Ś�ːm��f��٘�`+~�,��:�0��oqE�3��٬�^��0"(�3�Ar1(2��u2��zM�<y�.����\~0�����R�uѸ;��E���f��?E\��Ѵy���V(	|z`9���0����~{��@C�1�����(����5���/� ��6�J>�m��o�p��\髶l�N#k�ΔܳЙ��$f8�:U��E�kOZ�i�-:���۞�u���q��0d{�o�Pþ��*�e}��R˲l�����K�T/��-��&����6��1�"l�Y�3L��
���*�{���Y{�K�ݐ��*�E��t'�F���mZ���8Uɱ����LLtS��I�t*��V��Gp@يG��1�vqޣ��#xq�Ǘo����n1*��p�`�3�mV�+�SݮFCFƝh�q(���L|�U����n�rׁOڀ&~��Ru��r��k}�v4/v\�,���j����p�m\��Aل��t�%{����O�QDo�B5x�9f��� hᾌ2T�7pG��g�ᅌ��K�&l�4����ċ[���6��������g�Y#�M��m��8=,�T$_�_j�8���.���a?4�ԟ'�z�	�v�*�6�@Z�
l6��o�%��*yl�'b��C����!L�Lt�$�<1T�3��?��`��ǽ�b�E����������<��b3
|;�"�~�>�a05����E
nx!{���`l��7u�����+�����B��yv�
C��*�����ngh3�e >&E�NW�\Iiy0U(�
�i�uZ[���9�� h3B|�˱� K��|x�C4�� +�TP6Cɂ��Ή�p,��N��@����`���Ur-Zt��N�}��p�5���
?����
��C���r�p8$��o��Q'I�)��̀)?,���0��h���&�Ab���Y��rӿ1�q��]�E��v�|��A�I�gX����a���~����*����?}�����w�}����÷:�.X�WQ������N��Z%p�c5dԙXB���!؈a?P&a3�1���S��pM������ ��5��RC�5�� X�a/�U����f�*���Oq��N�2�r�'�14��^g���Gb�;6g�@��S. !�����G��аK3<ϊ�NlB?��|Y��n�*�4i�/�����,�C���E��9v_"�:�\*�u[�}���y�1E[���>�ٽ�9�� D�ZB�'�&v�R�l�*`�Y^�&��n+C�8�׋�춆c��^D����*5?`��9E��Қ`�&Ҳј��s��Z��]ôJ�33�H�nS��f=���u��TCA3�ҤշŽw��Ҧ�6��HH�h�E��t	u�L�Fi�[�u,dUz�Q��E����/�5��07�g�ZW5<��z6�i�7tfFö���b���6ss�P��uf�s�.�� 7�)�b{ʘ��&�WpQ�c�K����� �ڧ�,e9�Ƞ�35'b�\̳3�Τ�g�"���>z��m$���hUpf0�v�%��@Kӛ.�b�7��>���E��k��&K���k��A��fAVe3�dool2��w�O QyVQY�_$�Xl�ކ�H
�k6���s�ٞ\6����7�qo�:]�޸-%:����s�I��t}���\�������[n���K{�DE���n��A\��H���&;#e�k��ο4e�;m�,��8A��'3.3�wL���Uu)d���N����p���%�����e��톉�<)_<I�����"��OI�Fj�x[�L13��Rc���	��6�iHY�z���tU$���=�'T���}$�8ϫd�Dhu�V�D�����<^F
/�ΓJ��b���to��|!3��e��e	��������ᔞ�g�^�bF�&�û<K�U��1�B̊'C�*}��J�<�x��~P�|.��roBw}|iܝ�EFZ.-|zS�K�l��2{���܃�\h�P��{�Dn$�O�%�D�G�
V �3�,>x�K^�X��z��s��9a��I�_T存Z��3�E"&��T��*�    �Xz1�6I��H%AQ�d����$�]'w�-�y6�6�~�~J�Q�ab�\&PM�![�S#��o l'O,���g�3���M�<؝Q����diH`��J�}� ��@�\}�G*#M%�� �V�ZY!�+7����ʇ0��)=�G2+�����,���ɬ�,1�4�HZ#��5L]S�>_�30���F�a�PCF5|�I����l��騺�a�RJ	������NN��)��G:*�zr�,���˨gJ����!�@����jYVks��4��A��V'�H�-�M6�AI%`?@�xs���Pz� �#��BfL��)��zו���$n�!��߰)�$r��P�|w���	��JEwsʿ�������n���$;��	�N)l�d�>Q0��oY8��`WӔ���J���#Ɔ˘�?�Y�1���1�7���I%�ߖԣ���&(�.%�/�1i�bt��	��
��%C
�0�JVzM*2�%���1���Yu��4G�Y	�f�.��2@}�n�g*6��%7 7�_�����C��B��w7	m��E�%z�Zs�Q"�V��eF�mF��-���?���`��ag�}�`x����1�����hf��a܏��9A7��j�s叞m��ͥ͜A�D:1�̿���� z���=yS�G�#6B���(��ӧ�k:��	�"���ASn���0�j3+�fTı�yDnGV� �>S����{x<Z�i9��8�>���D�c�Lܦ���x<Yw��:l���S���j�0%}�@t)�r`��������Q�d:�qhCԅ�^<f⴯$��[�H*C�v�vb<?F�gH�cu��}V�7�1G�h>I�"*� cK��}����N�5�>���r]�in�A��Z����fA7�E���������%<&���.k�)f�6�� Lr��.���})��k�`|� ���9Ƞt�=��z��ٔ%>	����E�TZ�6��gU	٫P�'�z�	�{��8��Hަ!��]�+�r���=��z�e����k���R�Β��I��:؇��+�m��M�� 
0^�+n�pM���u{yK��h������#�K��FL�R�.��ٌ��i�*f���~.��A��|��x�B�PM�b$&�{��r+{d�fh\�i�M�e���(����	���ە���+�������:�8ƴ@�qe�P���f�#�os�hL�#b*PzUV�={�6B�B<�ݒ�1e.��:�½1M�0I�	��.���B3�x�����*K�y�ީ�f��yL��6���#��^%��oQ���^ϸf�"z�Gnh?b���
�7(�N���0[�l���=���3�?��79f���?�7��0�h��b@ kKe���L�D��p)=�K�<f�H�4S#����O��j1�o��#�$�cl>$���ޗ���o�"�7C���v��FU�I�Z;ǆ�"�k�
����lq�3%�2�Nę.Ì��F� ��K��&T)��@]
�U?�q�n3�c>��� Y��gl�e����(��<_��`�l�����N�͒xL���e��狟��|��?��b��K ���@���ݤf����a��e�`|�G̡N���1y���V0!������l��V�3L63ujf�C�0�Ƀ�<)dc쨃�ˤb ,�:]�ԫu�s()ScD`��+C�S��b<�� �С��dt 䇝��d&>���h�����l5��&sw��X����	��M��	:�
�1�r�$~��ޗB��=y��ٗ���tR��/��K�t���ɍax�`5�'d�f���;�t@����O���@uDffا�3�6}P��H�-.m�,b����� �FA?8{��ϗ?��G�(���1�o3��<M�4���6��dF�(U��at=�-�0zǇ���s`�1�B��Q`;S�4�u��˶6�*�bM/�y'��xrᛩ,L=ޠ���[O�x$�?0
��f*F����9p'//���XX�S����\[v��L"f��5Ĩdʪ��(�U$O��o��/��ҝ���	MKF�|����&|����ݎ���c"�D�DW֩�*��c�&A�g� ����~-ŗO�kf=@@rO���Ce#��C�����̘��HX>Y���:Z!�{�(�D��3�}<t�<F���"B���E�&��d�'���V]����59V���P��(������䋘ﬥ�u(N��f�Ȍ����j�s������\��>|�8~��w�ѿ�Dw}��ObihD<F�ʞ��;�ɔ��ɜ�7[<�,7�
�b�-��R�F��E|����)xF*���N��9
ץj���kr����k�4a�}1�T v $��*��]	�B7@),��G��`�rQ�^�!c=.C����8p�m	ZM<�2������@�3�zX{cC#.�*:)P��TT�a&��]FaQa�:("Z��]gy�t`(�ːT6⪜o~[���.�4�}9
ͣ�c�`�&l a�{�[��!d�Ν�"G{�M~@��� /�.��o���)M�"7k3,/�m�!|G��%>�X�b�S��5�]~�ܛ&�'�!E�Z,�C}��:O{R���S�a�q��W%+xZڟF;b�_�j���?`]Rtt���)#���>=�X���E
:[�t��Ds��j"���Մ&��J�Z��SC��࿾Z��סDɺ�I��r=�k����Ə&f���}�A�P{Yu*9j�E���K�VE�P�/O��r=x��/0��B�e	H���YS:$V��1S~dd1I%(�:��v4�HC���2��N�=S��t'��>�sNh^�����`���)�^*���2򾂄��CR�M�m%���@��"A�@d�	�=��5mF��	r�C�MH""i��ώ�L�m[)��Û��%�Θ����x����O�+˙L&�n!I����DL�����N��MB�+Hؒ?uK�h�G��r�����+Sfk%�y� �}:��� �IV6c��@R<x��m�P\�q��ҷ�j��
':��I�߆���7��h�cz��/��X2�
���|I`�Њ�UvC����i�8G���M7iȤ���ˍ*遐���J%�m=_����l�Ę5֟�:�-,�	K�	'a����(Yg�l�w$YL���7���+J�z�b�5gH
���r?/����#�7b�����&�64f�6��O�|�u#�4�Ш"����jΌ��k�)}��$$�%�;�V�N࣬�8�Ϩ�4�}����6��nG�	0�EQ��
r	���sx1�Nʓe�'�e��H��1���~  �H�}Ic,H>"��;�����28MHG�$�h�v����^��]�;�l�H��eu:������5M)�䰅�d\f ���2�v��1�h���~�������B҇D!�E��l0�Cb�X�)bBB���t��?�$k]Up�d�$$��dJ?:y*4��;i�-]	�����n��z�gw>�Z���	�����M9cd����E%�7��gOR�~���/'��<�fDp|�C��<_�2մH������!�MH�)\�Z�nkq.=j3�d�&��$_�� �%a����
�W�	�J����u �F*���16��p�..�}���:_g�p�h�7/��k�{Ή%��z�[�T�gt�H6�T�mi"��#b�{�$C�MI,����ϑbu�s�ϛD�r�r�rTP�I��dQ�RW۵��D@�fR���#G�`��_Er1��r�h29]&��m��IB���w=�G��fO	T�n��@\�@H�����6�o%[0�Y����3xB���}�T7�*b�$7�����ț���M tX�c�>�x�d�L��Y�BF��a�'�	3_����jB�
�`����%�	���t[�G��ɬ#H��1�����Z?l�&��6�%�U>�_y����ڱ��<iPHfP�`e �o@��|7p���$�;�D� 2l�M�$$�Q    R4�0ף��G����'~�N4@�Y������<Y=�1�v���1#��f+��(���$�J�t�HW�۝e,�dy�ǻ��:L{Z���g�m�g��R&�fC����3��>�+�J�	���O�R";կ�Hˇ����AL�FM��+љ�nBY,���m{S�2:q��a��p��v�T&��շ9�u$gfK{�(�9�P�蝫XP{�i΀l��7��z�?�����Fv�gB���ۤDcІ��^q(�8s_z���I��5HY�èOr�����IѤӘ�7Fi�����F��z�1�&�?vO���hN�!?��%&��1�%?�m��%�� �aԬ[dr8~��o� d��щ� ![���<�&H��mm�w�,��J��jmt��������e�<4�s���d����h��/��:�d��]�	.��f��ɘ�������r7��N��R �L���<� *P,n��"��u�4V���&xb�\1�Bݤ���&L��mY�������p��Px|.�_��k��ymv���ĪJs:O�|a|��rU��}K����\�_������/��g�I<��^婲��2d�O�柊�mtވy�-	&4�����6�q�U迩�j,b�A^ڋ�&���rY��l|Z�iۀ�sL�=�Pc�"�ơN�5��X[p��֋�o��z4�e�g��xܐ����d"/�x��
���uE#2�+������|)�����{���BB���!@3͖�У�FLJ'UqHJ����h�1Ӣ�.�t�	3�s�uC`G�%'�l��aҋ��Ϸ$����?�5���q|N�9�G3�F�3-'��0`�=��q�-�|����Q���!���^�7|�)��-�{q�{�!'L�.A���'��t�,�h���ϝ�F#v������]��m�x���{x�����)#��nK5��h���Ps	O#��f|6�t4搙wM�-,���vd��q�r�wW�ܯ�/�&܆���C���8��$m����0E�F�	e��>���A!*��K,0{�zT �L%\i�����1y�syzX̩$��~��@)�t.�h�O�|s��P  ��,	5�2�y�ޕI�L�G�YZ޴ⲱ�q�m,&�Q�
����&��]5w������`\�Qw�X��K��!��b���R4>�t�L���/nK�f��{o.��)K ��S9_��j!���_&1ؑ�9d�F\H��v�Q�L�Y���~ʳ{�N?&���M3}��ޓ���l�0��*&Y,�����lfr�\���v&��S�SB����t.�ɿd�;L무>Թp�aO��V0�O��v1�g�I��!�i��x֣���E2��g�'n�D���х8��e�i?69�IG��o�f�|]6QK&)l��Ea�EY019Oa�~H9+��w��cu\L*Z�!Fi�ټ�����$�����Y��uBy878�>��I`���rx<{��0I�$��΀�mmtE a��i��a]���B�ֹ�B���H��D����V�l�CR�z���gT�vL���ǡt�R]�g����Q8&���;��ct�v<G��NMF5����S�C��b$��>|�ܫ��&M�_�t��	^iYG�L���}ir=����E���=�Ƥ���;���:{(���*I�\/T6�p�D��+�|��;��.S~h�6r�axѓ��Dn�@I�f����_^�Ƥ�(��E��{!��S�q�6�Yf�(��f�F�Aq���3�>�C ���T�r��׊#�q���8�CE���Ftb�Z�M���X��%D�s�d�2���2Xg?k6�ݥ�`�^0�t2�Q��v�-��*��"����v���#�y-�_9m�B	���To�d���E6EكhQ7e/���0��uN�C�y}�T��H��1ӻ����CG�w�����c�����a�����seŁ:_�b*�"ጊ\�־�6����L��=�pnE����'̩�2�d!W��� x�{�&XQ��!�1�b��m�f���B��ch�噢��	d3Зz^Vj�tO�qdL��[RO@�ɪE��W0(#��eU5�5z�z:-�C�����V�g()�z�&\������.N�8Uy�'l�6��٢Sq�'����YU��B���4���v���Ēv��6Y�;��J�HJO<i��~��i�����%��zEB>D�mzUk;��S�y8�5N]8_�G� �;;�@�x���y��*��n���e�E{�t��5|�*�+1�.��?u�jD��ϸ��f,Z��}��C��:�Z^7re�Pat�� C���OOT2��؆9����f=��,�V�RX�uZw �>l���%�I4	���j�@ �wߛz�D��>�pI�ڪ��v�Y�d��A&q�FB�
#���rq����w�� ^#��r9b��i�i��}F)J���=朞.n�b��dOh��a'�J��>��W���#���d��&P�f(�����6&�"��edq��g#�&�
(�C���4���A*�TI��4f�����P2��������M&�����X���4�V�f��$�p`�9T\��4�����$��B�1��e�}A�=�<��L��9M{�p�����E�'P�P4}� C�q'����TqEOȈ!a�.ķ�\�$�k+��_����֚�5P�F�O�[�u�bd\]�!���`�K�=�
M ��0���¥[o�`n&�V��y�t'6�B�+�c�x]$��>�@���|n�м�0h�h�5�"����D�&`b�GHJ�>�D|��U�׮�W�n;'�|���H4�}�����\ړ.�'�m|ќՙ�)�'��@��*+��Y�$�G�&y��!:�%�2
��^���+cO,��e[$��u�	�o��[ayX���@��h@�<�(����-Z8�����Q�k��(��\�>H8����&I����N�m\-�Q ��t�j���c-���q?�@�����*�����7*�a"��(���>4�C��y�ԁ��a���>�M/|����N��� �۩> .�̲��*�vr�>P8��:��{��O}�] �Msq= �W@�Dd��b��-*�M��
[p���J�����}�h�bF���\$|��'��8�r->y��:�6�_e�ʒ*)s�������0�sP��i�˘E�B8�`��L�S��ɚ����j��q����u]-`E�Z�e2<P�U��F)O~d�Y�=�����f�p�X��;*��xd�x�"2�����Y��pܪFz��+zD�`(w��G��������،C�@�w�$ܯ�#9��:�T���P���w�<Fh��7��p�A8z��6x|���'��)���߯P���D�oE��� q�?iY�'ʇ�����T�FPg.� ���3�C-��X�QX�U��(�u����%���<��mA��<�gH�Zz+��-�s8�b[MO �٭FI3l1i�v�P_���$�p����7˖�R�>���c=��9(R�ᨮ��� ��5Vb{�RȐ���f�)�;����_No�u<�G,�����X��*^����5[��d���י�c����ھ���Q��Q�?R��}9b랮˥�7���}�؛^~�������#~��tL_�{�5L��,Q��/�eC���L��P��9P��_|����,�-Y0ܶ|*��Y&�H�����<?��92����	�B�S�r<��"��Ԕj,�Z�&\�p�J@-�,�?��~�!#��v�C����#n�Y���Y�L�'븟��S�Y<_�!������i�sxq�I�?,�k��O�q�;�N�AW6�H�9�x	��zؠ*��>�c�ʪ�ns����t��E���L�X�����0�7�� !���@���R&������bF&��K�	_�eפ��mU���-���qSGN}�΅�^-�f����Cs��B�s��.�����)���U-34c�nv��u�������� w�9�c�qZ\�I8 �'J�(t^KR�YkG�sY~����X� �	  �W���r�h�/^l�!<;K�?2�Pǁ��7����Y|z�,+<�'��BkZ���0���Y�Dr?$��.��?��G�!0�:_��cMP�A���oJA�Z.R�5��]��إ7��NX'>��,{��D�u�݆��:��� �nU�1ٱ%'�> �R�C�t��U�Lq-��$��9�1�O��,M��A���R?]���r�^�C�`��:�^�.�X���'[LC�ٴRxv]Z��w�fp�_���^X���y��v�t!�Fw��haE���~F�Y��u-fY�K{�<�	�"��� ��[zq�S�B�,���>���rK	kS�}��z�4���I��7�=���.���A��K�ȫ5D�2n|r��N��
��n"�^h8�19���\
�ޞ��Xf%z/ܘq!y�X�OyG7�
�ݱ�u^�%���i|�,6�u��{a��8��J��a/��Yf���*���L�K�\$W�<I!G�$z!�a�[/e֯�b+�P/P�AI6U����&>�C��iq�%2Cf;�jZ�p��z��C��+|��!�П-�QnNw�3���KM |�we�������P*R�B�y��1�-<��-<t�Ҩ��2df�����6��`Cz�A�_�!g�*���|L�1� �,(�
2�:.M��1zA�i�ʥq#�S�Fbs�,�z �������ip����O� �5['�<�i>�ǔ'�D�Z���챯jm?�b��Dz!�]O�-������c��fb�EC�9�8y>�B�>`h���)�ʵ�M h��;��>`�A�ȧ�U�H�Ƅ�1�':>��R�+��e�*>g}Hc�0bG�����K] GREL}0\�O[�>0��%���+0;�>@����:0�������L�b����8�88�����u6_�J����
.�Q��;�$�0�������r�͗p?��Gi�/Y������
���=�i�yi��:9�@ӑ��H�{��LW��Wb��Xs�)i���>�8������;1�i�'4� ��8�X�)f�� )�h���̀F��j��H�����WfH���S��� �H�mA�X�@����%��@���$��� |�h�[��Pe�p{ᄌ�,�.Y{�Dms��O:Pq�}V���&_�`��qw�_�^g�<ԫv���fH\Qr�X��a���������Y��CYa��C�>������vg_��g(��%)�߈�L�F��/����e��<�[& ӨL�
S��O�)���E���K�D��5�o��g)����i
�M��V�6g�(B"p���ے3��-+Jt��{���o�ti��V몭T���5�O�!<��9M_��f�c�bƺ�UZ3�>�֔��7���7�ᦜΗu��o����?Ҳ0�{)w���{(1��1�B�)�Z���4o�T�Ǽ�bWd~$��\@	�Ո��A��M�Pq��>��,�l�y���=g<.�6~�R�9�.:q�Tf�XT�YB���*ي8�!'e��$~U�=[�C�enJGVe�=�^<]5O�����$� ��Q�}�;�wgj�yS�@"��&����gQ%����&�|�⢠��W�X��s�c��g;:]��l7��x��E���6����Hk~�%F�P��˲0o#�/�]���8~A�ڛ6H���͸�u;�'u!��O��P4%��.B�� �|�k��=�-�k�6x�s.T�)��x4���1]���<��ݺݦ�m�����9c1�یWY���Gб��i�+L�j~���%���6����/{�������K<��/�-�EY�g�ܸ��&��&��{B�� �XfO���Z�ƹB��K��4M�NERDk� }�`�%��gR��a*����e.ӧ���W�Rlw��Ϳ�Yey֣�G� m��~�~j]��n��aF|J��@7��GoG���#|6���R�[���G���R�;���PE˅���w{^
e�u�Z)�[)��/�R�w�x5d�0?��Y��.�{�j8/��>7~-J�0�?�� dS±� �
1_�#�o��T�ˢ�O��ظ#M�sd�q2�Y2ϸ�I��q�)"�?� ��抐�{W1b��i@]��h��d"��`I���e��{C�b���(����-�3ٸ���M�%�і�fa���C/�r���g�],��,���"}��9�qG-g�}��ݵ�����M;�16B�L4l��j ��2��=2� �A����=��h[�e��d�:}J���w~h���� ��{�YmڿW�18�ȡ��Ye�e�a�v'�$��d��jn�|O$��X������`'oO�ri��:�6d�alC���j��y�u�Yv����{�Τ��[ߙ�H���cI�s�A�n�D�H�2��	Ms���h���5D�&����0%\�@#�����Pl��g��ϟ��?���^h�,      �   P   x�3���	q��p��4�2�tvvt��9�<Ca�`� � ��)g�����~
>�NA�@3Ng?�P'O?��=... ��      �   �   x�e�A�0��+xA���c�������gx[?Fr��<3�3d�M���B
s����ذ(lEO^3��5~ig찇|�$�;	�j9�3�=�� ���a��~�v҄6�w`��֓D�c�B_[�5)      �   �   x�m��
�0�ϻO�'�?�v��&)i� ���h�����1
ކo>f���Z`��܀��OrO"\Dg�Z]�m%�˴��ڃ*�w/Q\�o��AIV���!�(L%2�6l*\G-'M��X�O��9���/ݹ���p�)�j��_EaF�      �   �   x���A
�0D�?��	�Ji�~��0�&���� �<R/f��Z\�f�73�g�
P�i��b��hCd���'��v�$فm�	\)\�Q�{�?�N�u�i2�˸�Q�}�(Y*����JoV�M6�c-���W�|lC
�����OƘ7�#H�      �   .   x�3���Wp��s���4�2����u
r2�8}C�\���=... �4'      �   �   x�=�;�0Dk�)� �E��Q�L���N�G��p Q͎f�vf�`��xۧ h�
�DK-Y"��ݿs�F{;��Fc§�=��Q���h��HKUz���,��F����}N�'�Ti�n]L�D�9�3�Z����-�uPkjԴQ�*J�2ۻ\>N��}L      �   J   x�3���ww��p�4�2�t��qut��p��� 
s����;{�+�x�s���p���s��1z\\\ "�      �   q  x������0�k�)� �����``Rp�5:{Ɉ���l������`�h�b��\'��$��'�ە�0A8�8�w��5yܐ<cc�-m]O��t� h=�*c*�o��X	h_��]H򌕘��k���GO��=�Y�*"n	�9��yb�L��H�fN�c�D^�Pblٓ�2w*"�l/1� �&�B��ز���LJ�H$���u)!Hq.%$�nH�2�*"��*1� �&�T��e)�'��a���2�q��uo���Tۏ��ť��H����HA���H��ը2�F�HK��\�Z��B��ز���LJ�H$���u)����[)�7�T��{G$-V��u�"��{��q�>@�m<"Ù�r���0x0ǋ3'x;�x�h{�t�sx��|��Z�������w�Mg�n=�M}�n��Kw�v�q���E�����[V��ɀ���#�ۯ���N7#~�{y}D��m���e{\�I���h&Ec�{�Sy�֟���z�5��S�}�zݹ�iq��<�����4m��:�k��#0<D@]c멜��a���)܌�½���#�j8�*d�b�
ܧ"	,d�@,�<5�atL��
-�����>�˲���[�      �   <   x�Mȱ  ��=�-��� �(�f�;�O~������ɝ���d����-����Kt      �   :   x�3�ttt�t�q�qUpt���r�C<��\��ܽ�ܕ8c�8�b���� W��      �   �  x�uT�n�0�ﾂ`$>?��� 	�� ���Q{:(R��`��\�0ܥ1`�XfI�Nb��$�����j1[��g�S�)��b|\�
L�\Q��6;R+KQE�f�.qT����T�J{��̾P8�5��c�|���N]�Ȗk����Z%�z��P���!��n�;��wm��W'~��㎢�ei�i�Y�<P�N>�ξ��}���pK�B�t�O��;jr@�E�DH��4�(�ч����C�+(�V��1�AߒT�S�H�s4���pl�4j�5�X�u>4tE�}0[<�V+k�55�BoIK#귷��yB~�5	fե	s�=fC�G����F�#&nD�F�0{Yct��榎��j� ��m5�D���{E(ē�@��Q���q�JS���؆�4��#����+nc0W�/�L�~B���ۿnw���?u��p�8Xxc�S����}q�`�Vz�A�^�0�Mde�8���Ƕ�3Vޢ�}D}o�6BEu���2L4ɲ`�;x�X�>��˅��8���ڂ��27e��\�I�T�x��M�@ե2Z��:Yu���\�"<"ߵَwc�Q��τ7�Sp����#E���l�7!���
E�AZT���E�;`%5��,��(��ʀ�+��-�~m�
/P	�u�p�	�+������X�      �   �   x�m�M�@�םSp���7J"1�3n P3�ff8�+���$hB�}�k�K5�-9O��*�����y9��UGg��8gu�?���,!��NO$��\rC5o�ŌRF�%1N��J��*���iD�#�8u��zކ��/����\�X�2�!��
:o':�gJ��vy�      �      x�3�tqv
���qt��4����� B��      �   2   x�3�ts�u�����t�4�2��uv��}�|cN�� N 3F��� �S	c      �   A   x�3�q���r�r�tqu�qrt�<<�O��U��1X!��9�H��>� q�NC�=... ��      �   �  x���1r!�z�S�	���7v����9��D㐗���|3�b��jz����������������������q�CA��E�@*H��"�@�|,��@�E�@:H��"�@�/_�$@b��\E??��2f��U��DJfWf��U�I�����8�G2���ʐ�S
6��X=��{z�TYa+�xYi7n�u�k0�?���Q�a�
�ZD+L�m�3Ȯ�e�����C�aQk���u���k�aQW�aQW�aQ�
â��E]-3�Q���R3�y&y��˗�ߧ��)�ߧ��)�����vJ�e��
��S�m��iS�
Ú�5�y7�T�ð�jÚ��̝�5`X]V`X]&0��RV�UV���c���{�F��d��{���-`�e8`:ɰ������+��WVWo0��n0�.L#��he���6�ڼ$bŹ$b�9�>:��xK�"pK�"�F��h��F��+}]�D�u!���B9��DM�k-� ���D�Ȭܷbl�Vl��؊ϰ�s��;v��}I.�ӿ/LrK��s�e���{0'[vOlC��3,�������ψD�6��¥�Tl�R$[�M��.��b���R��b�h�K�����oF��+�?_?��� �      �   d   x��ѻ�0ј��@w��Z�81i�M^6�"�G.�˕o�f�㙵�
�T��Eǂ11�1��ˌ�*c?:&VA��X�
b�*�U8W3� Ϻ��      �   �   x�-λ�0 ���#!��	�(�_��i��D@����r��]ێ��Pv����c	�Ş��������,q�L���Ad'�0̼D����c�%�
6_7c�/+~l?��ϰ�w:���jv
V �n 2"�$M��H@Oƛ;%��������/U�UU���4�      �     x�UQ�J�0|���&��Q��$�O��Ԡ��rZ��o�ǜM�B/Ifgwf"$�>��gO��	��c�:C�-Y�i9�����
;��a_ˤ���뽑C�P��Sn�[�׈s�)b�E��Q��߻q��bQ�k =��Z���a�ϓ�>���Ϸ��͉��s]�ZL4��V��*����&�ku$��Ro��A���>�8����TJ�Ж��(�����g�W}��S�r,���a;��cб:��w�;��r#�G���3��;nu      �   �  x���MR�@�׭S�)�$�-��11��)6mk �3�H"��%V9�.�7FR0E
;�S^���_w���!k-�ym݊iO�$��&/ݍ4���si�L���熪�8���ZZ�\~/��]�/:Kq5bڻ�Fe��Փ�����C�?d�~����ȑ�ui�Y*��$%	��G�c^-P�������9S� 6������{���(��5�CgvƦ`;5vh��v��	k�c:�^~V��]q8����w=�[#g��OCi?�S�I���3�� ���n�ɺ�s�Y�,,U��=;�-���~���R��R�s/�z$�����^He�@DΔ)0Q�8�����w�i�tg54��j���b=�۟`Y������/� (��vS���k���/NLS�p��2<R�\��E3�8>�hځ�k�(�.ƉVh�Ө��I��0/P�[������u;P.PBX�W��d�N�g�$�Xo���A�`}��h��\^֯��4�h�Z��w��WI ���H���{K�[(h��/@�f�!�^;����5�6�N ��N4���ڂ7z����^-��:H]wNP�\�2/�$�96X�w�&I'͚5Z�vh�l*n̰���Aې	���:�m\{�e��P8A���\-�W'lM?��!64��p�(����O�      �   P   x�3�44�0043��u�t��Wu�q�Q�~�.�@^�����������!���X��!39--�b���� �
�      �   6  x�e�;n1Dk�.�8ԿN��] �������&�\�a>��~�[������>d$�TLA��5	���2�OFSI#3I��S�n�m�7F��p}e>�L=L1%Ϩ�r�2-�c�9�$1m�1M?H����2r=ƆCv�1�<H��y	�(�r;ΖcZ�I��5��@d5K���By% ��~=Ai04D�Ț�;���3�P���%�$k��1T=���S	�#n-�˟ô��P=��2o~3��m�� 0���E��;e��beȥ�l�����Ip�ra��$`�G��ǡ5����'�}0�?�̢      �   �  x�mTMo�8>;�%#���}tEEa5��\�%�f�(�J�3�zX�m��c�8�)�U+�����b�\�Im��}Xb��?�7����1IY,�<�)�YD��S��4p���e!#F9[��UA�2+�q���^�m���w���[��$�vp>�̧�}J��\�T�(�-�B�h���$�=4'R�c��F����p��l�ӯW�������E&c�h�+�"�r�'�D��]r�>j^ޏᄳ;��2%}����B2��xYi*F�y�^D��m��_���hs7S%��%���Q�le֝/��j���{i-I/�
8���ؽ����v�B��/�r^�"��N�m��2Zz�l��N��aO$/�]�f�|1��oy=B��Qxg��O�1�4A&�"y����84m�Mk����@A����&����,9��!��H�mU,�j�=�xn�UOQ<ـ��Ug�C]"R�ԊҐQ���jl�CF�c$�ؚ�?xx����+>�p˜����Κi��q�ܚm4G�y
<ȶ��z�,I���\�_��M����U;ё�\��J&��r�<��9u�(��߶�w�i�c��@Ҡ:�37�{/UND:Af!=���{ qY7�m	�b����kC������_nGfh<��B���W��q��I�S����)�	����{�Su�&1��vdV���$����},���.����M����u~��W6�L%$^�7��A�ս��"�S��5�^�}Uq�4
��,� ���
�P�,�n����>x�XH?(��O��̅@�d���!�0�S2ǫ-��#BMV�ݿC5M;��ŕ�޳0�z�h���	/8!Af�=��wmi��_��m�������-ڱk?�/}~��ӈ���hBFsO ��$4�+�Ğ���"�Z��Q��9��F\�"���d����y���ܚ     