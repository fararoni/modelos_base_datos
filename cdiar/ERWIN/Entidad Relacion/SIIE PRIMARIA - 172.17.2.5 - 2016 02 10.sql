PROMPT =========================================================================
PROMPT TABLE DEFINITIONS
PROMPT =========================================================================

PROMPT CREATE TABLE adeudo
CREATE TABLE adeudo (
  id         NUMBER NULL,
  alumno_id  NUMBER NULL,
  materia_id NUMBER NULL,
  paso       NUMBER NULL
)
  STORAGE (
    INITIAL    3072 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE adeudo IS 'ADEUDO';

COMMENT ON COLUMN adeudo.id IS 'ID';
COMMENT ON COLUMN adeudo.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN adeudo.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN adeudo.paso IS 'PASO';


PROMPT CREATE TABLE alumno
CREATE TABLE alumno (
  conquienvive           NUMBER(10,0)  NULL,
  id                     NUMBER(19,0)  NOT NULL,
  grupoactivo_id         NUMBER(19,0)  NULL,
  infosalud_id           NUMBER(19,0)  NULL,
  preinscripcion_id      NUMBER(19,0)  NULL,
  estatus                NUMBER(10,0)  NULL,
  otranacionalidad_id    NUMBER(10,0)  NULL,
  municipionacimiento_id NUMBER(19,0)  NULL,
  telefono_id            NUMBER(19,0)  NULL,
  domicilio_id           NUMBER(19,0)  NULL,
  usuariocreacion        VARCHAR2(255) NULL,
  fechacreacion          DATE          DEFAULT sysdate NULL,
  nombrepadre            VARCHAR2(255) NULL,
  nombremadre            VARCHAR2(255) NULL,
  curp                   VARCHAR2(255) NULL,
  serviciomixto          NUMBER(19,0)  NULL,
  fechaalta              DATE          DEFAULT sysdate NULL,
  claveautorizacion      VARCHAR2(255) NULL,
  grupo_sanguineo_id     NUMBER(10,0)  NULL,
  grupo_plantelregular   NUMBER(19,0)  NULL,
  fechnacpadre           TIMESTAMP(3)  NULL,
  fechnacmadre           TIMESTAMP(3)  NULL,
  plantel_id             NUMBER(19,0)  NULL,
  usuarioalumno_id       NUMBER        NULL,
  doblecurp              NUMBER(1,0)   NULL,
  talleractivo_id        NUMBER        NULL,
  plan1_id               NUMBER(19,0)  NULL,
  plan2_id               NUMBER(19,0)  NULL,
  plan3_id               NUMBER(19,0)  NULL,
  plan4_id               NUMBER(19,0)  NULL,
  plan5_id               NUMBER(19,0)  NULL,
  plan6_id               NUMBER(19,0)  NULL,
  promedio_1gdo          NUMBER(4,1)   NULL,
  promedio_2gdo          NUMBER(4,1)   NULL,
  promedio_3gdo          NUMBER(4,1)   NULL,
  promedio_secundaria    NUMBER(4,1)   NULL,
  irregular_1gdo         NUMBER(2,0)   NULL,
  irregular_2gdo         NUMBER(2,0)   NULL,
  irregular_3gdo         NUMBER(2,0)   NULL,
  promedio_edubas        NUMBER(4,1)   NULL,
  p_9_14                 NUMBER(1,0)   NULL,
  promedio_pr_1gdo       NUMBER(5,2)   NULL,
  promedio_pr_2gdo       NUMBER(5,2)   NULL,
  promedio_pr_3gdo       NUMBER(5,2)   NULL,
  promedio_pr_4gdo       NUMBER(5,2)   NULL,
  promedio_pr_5gdo       NUMBER(5,2)   NULL,
  promedio_pr_6gdo       NUMBER(5,2)   NULL,
  promedio_primaria      NUMBER(5,2)   NULL,
  promedio_pr_1gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_2gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_3gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_4gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_5gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_1gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_2gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_3gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_4gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_5gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_6gdo_cve   NUMBER(2,0)   NULL,
  irregular_pr_1gdo      NUMBER(2,0)   NULL,
  irregular_pr_2gdo      NUMBER(2,0)   NULL,
  irregular_pr_3gdo      NUMBER(2,0)   NULL,
  irregular_pr_4gdo      NUMBER(2,0)   NULL,
  irregular_pr_5gdo      NUMBER(2,0)   NULL,
  irregular_pr_6gdo      NUMBER(2,0)   NULL,
  escolaridadpadre       NUMBER(2,0)   NULL,
  escolaridadmadre       NUMBER(2,0)   NULL,
  quien_sostiene_eco     NUMBER(2,0)   NULL,
  cuantos_viven_casa     NUMBER(2,0)   NULL,
  utiliza_usaer          NUMBER(1,0)   NULL,
  edad_en_cicloescolar   NUMBER(7,0)   NULL
)
  STORAGE (
    INITIAL  476160 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno IS 'ALUMNO';

COMMENT ON COLUMN alumno.conquienvive IS 'CON QUIE VIVE';
COMMENT ON COLUMN alumno.id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno.grupoactivo_id IS 'ID GRUPO ACTIVO';
COMMENT ON COLUMN alumno.infosalud_id IS 'ID INFORMACION SALUD';
COMMENT ON COLUMN alumno.preinscripcion_id IS 'ID PREINSCRIPCION';
COMMENT ON COLUMN alumno.estatus IS 'ESTATUS ALUMNO';
COMMENT ON COLUMN alumno.otranacionalidad_id IS 'ID OTRA NACIONALIDAD';
COMMENT ON COLUMN alumno.municipionacimiento_id IS 'ID MUNICIPIO DE NACIMIENTO';
COMMENT ON COLUMN alumno.telefono_id IS 'ID TELEFONO';
COMMENT ON COLUMN alumno.domicilio_id IS 'ID DOMICILIO';
COMMENT ON COLUMN alumno.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN alumno.fechacreacion IS 'FECHA DE CREACION';
COMMENT ON COLUMN alumno.nombrepadre IS 'NOMBRE DEL PADRE';
COMMENT ON COLUMN alumno.nombremadre IS 'NOMBRE DE LA MADRE';
COMMENT ON COLUMN alumno.curp IS 'CURP';
COMMENT ON COLUMN alumno.serviciomixto IS 'SERVICIO MIXTO';
COMMENT ON COLUMN alumno.fechaalta IS 'FECHA ALTA';
COMMENT ON COLUMN alumno.claveautorizacion IS 'CLAVE DE AUTORIZACION';
COMMENT ON COLUMN alumno.grupo_sanguineo_id IS 'ID GRUPO SANGUINEO';
COMMENT ON COLUMN alumno.grupo_plantelregular IS 'GRUPO PLANTEL REGULAR';
COMMENT ON COLUMN alumno.fechnacpadre IS 'FECHA NACIMIENTO DEL PADRE';
COMMENT ON COLUMN alumno.fechnacmadre IS 'FECHA NACIMIENTO DE LA MADRE';
COMMENT ON COLUMN alumno.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN alumno.usuarioalumno_id IS 'ID USUARIO ALUMNO';
COMMENT ON COLUMN alumno.doblecurp IS 'DOBLE CURP';
COMMENT ON COLUMN alumno.talleractivo_id IS 'ID TALLER ACTIVO';
COMMENT ON COLUMN alumno.plan1_id IS 'ID PLAN 1';
COMMENT ON COLUMN alumno.plan2_id IS 'ID PLAN 2';
COMMENT ON COLUMN alumno.plan3_id IS 'ID PLAN 3';
COMMENT ON COLUMN alumno.plan4_id IS 'ID PLAN 4';
COMMENT ON COLUMN alumno.plan5_id IS 'ID PLAN 5';
COMMENT ON COLUMN alumno.plan6_id IS 'ID PLAN 6';
COMMENT ON COLUMN alumno.promedio_1gdo IS 'PROMEDIO SECUNDARIA 1ER GRADO';
COMMENT ON COLUMN alumno.promedio_2gdo IS 'PROMEDIO SECUNDARIA 2DO GRADO';
COMMENT ON COLUMN alumno.promedio_3gdo IS 'PROMEDIO SECUNDARIA 3ER GRADO';
COMMENT ON COLUMN alumno.promedio_secundaria IS 'PROMEDIO SECUNDARIA';
COMMENT ON COLUMN alumno.irregular_1gdo IS 'IRREGULAR SECUNDARIA 1ER GRADO';
COMMENT ON COLUMN alumno.irregular_2gdo IS 'IRREGULAR SECUNDARIA 2DO GRADO';
COMMENT ON COLUMN alumno.irregular_3gdo IS 'IRREGULAR SECUNDARIA 3ER GRADO';
COMMENT ON COLUMN alumno.promedio_edubas IS 'PROMEDIO EDUCACION BASICA';
COMMENT ON COLUMN alumno.p_9_14 IS 'PLAN 9_14';
COMMENT ON COLUMN alumno.promedio_pr_1gdo IS 'PROMEDIO PRIMARIA 1ER GRADO';
COMMENT ON COLUMN alumno.promedio_pr_2gdo IS 'PROMEDIO PRIMARIA 2DO GRADO';
COMMENT ON COLUMN alumno.promedio_pr_3gdo IS 'PROMEDIO PRIMARIA 3ER GRADO';
COMMENT ON COLUMN alumno.promedio_pr_4gdo IS 'PROMEDIO PRIMARIA 4TO GRADO';
COMMENT ON COLUMN alumno.promedio_pr_5gdo IS 'PROMEDIO PRIMARIA 5TO GRADO';
COMMENT ON COLUMN alumno.promedio_pr_6gdo IS 'PROMEDIO PRIMARIA 6TO GRADO';
COMMENT ON COLUMN alumno.promedio_primaria IS 'PROMEDIO PRIMARIA';
COMMENT ON COLUMN alumno.promedio_pr_1gdo_cve IS 'PROMEDIO PRIMARIA 1ER GRADO CLAVE';
COMMENT ON COLUMN alumno.promedio_pr_2gdo_cve IS 'PROMEDIO PRIMARIA 2DO GRADO CLAVE';
COMMENT ON COLUMN alumno.promedio_pr_3gdo_cve IS 'PROMEDIO PRIMARIA 3ER GRADO CLAVE';
COMMENT ON COLUMN alumno.promedio_pr_4gdo_cve IS 'PROMEDIO PRIMARIA 4TO GRADO CLAVE';
COMMENT ON COLUMN alumno.promedio_pr_5gdo_cve IS 'PROMEDIO PRIMARIA 5TO GRADO CLAVE';
COMMENT ON COLUMN alumno.promedio_pr_1gdo_ori IS 'PROMEDIO PRIMARIA 1ER GRADO ORI';
COMMENT ON COLUMN alumno.promedio_pr_2gdo_ori IS 'PROMEDIO PRIMARIA 2DO GRADO ORI';
COMMENT ON COLUMN alumno.promedio_pr_3gdo_ori IS 'PROMEDIO PRIMARIA 3ER GRADO ORI';
COMMENT ON COLUMN alumno.promedio_pr_4gdo_ori IS 'PROMEDIO PRIMARIA 4TO GRADO ORI';
COMMENT ON COLUMN alumno.promedio_pr_5gdo_ori IS 'PROMEDIO PRIMARIA 5TO GRADO ORI';
COMMENT ON COLUMN alumno.promedio_pr_6gdo_cve IS 'PROMEDIO PRIMARIA 6TO GRADO CLAVE';
COMMENT ON COLUMN alumno.irregular_pr_1gdo IS 'IRREGULAR PRIMARIA 1ER GRADO';
COMMENT ON COLUMN alumno.irregular_pr_2gdo IS 'IRREGULAR PRIMARIA 2DO GRADO';
COMMENT ON COLUMN alumno.irregular_pr_3gdo IS 'IRREGULAR PRIMARIA 3ER GRADO';
COMMENT ON COLUMN alumno.irregular_pr_4gdo IS 'IRREGULAR PRIMARIA 4TO GRADO';
COMMENT ON COLUMN alumno.irregular_pr_5gdo IS 'IRREGULAR PRIMARIA 5TO GRADO';
COMMENT ON COLUMN alumno.irregular_pr_6gdo IS 'IRREGULAR PRIMARIA 6TO GRADO';
COMMENT ON COLUMN alumno.escolaridadpadre IS 'ESCOLARIDAD PADRE';
COMMENT ON COLUMN alumno.escolaridadmadre IS 'ESCOLARIDAD MADRE';
COMMENT ON COLUMN alumno.quien_sostiene_eco IS 'QUIEN SOSTIENE ECONOMICAMENTE';
COMMENT ON COLUMN alumno.cuantos_viven_casa IS 'CUANTAS PERSONAS VIVEN EN CASA';
COMMENT ON COLUMN alumno.utiliza_usaer IS 'UTILIZA USAER';
COMMENT ON COLUMN alumno.edad_en_cicloescolar IS 'EDAD EN CICLOESCOLAR';


PROMPT CREATE TABLE alumno_barreras_apoyo
CREATE TABLE alumno_barreras_apoyo (
  alumno_id             NUMBER(19,0)  NOT NULL,
  clave_dewey           VARCHAR2(7)   NOT NULL,
  informacion_adicional VARCHAR2(255) NULL
)
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_barreras_apoyo IS 'ALUMNO BARRERAS APOYO';

COMMENT ON COLUMN alumno_barreras_apoyo.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_barreras_apoyo.clave_dewey IS 'CLAVE DEWEY';
COMMENT ON COLUMN alumno_barreras_apoyo.informacion_adicional IS 'INFORMACION ADICIONAL';


PROMPT CREATE TABLE alumno_barreras_aprendizaje
CREATE TABLE alumno_barreras_aprendizaje (
  alumno_id   NUMBER(19,0) NOT NULL,
  clave_dewey VARCHAR2(10) NOT NULL
)
  STORAGE (
    INITIAL     896 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_barreras_aprendizaje IS 'ALUMNO BARRERAS APRENDIZAJE';

COMMENT ON COLUMN alumno_barreras_aprendizaje.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_barreras_aprendizaje.clave_dewey IS 'CLAVE DEWEY';


PROMPT CREATE TABLE alumno_discapacidad
CREATE TABLE alumno_discapacidad (
  alumno_id         NUMBER(19,0) NOT NULL,
  discapacidades_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    INITIAL     384 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_discapacidad IS 'ALUMNO DISCAPACIDAD';

COMMENT ON COLUMN alumno_discapacidad.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_discapacidad.discapacidades_id IS 'ID DISCAPACIDADES';


PROMPT CREATE TABLE alumno_eval_extraordinario
CREATE TABLE alumno_eval_extraordinario (
  alumno_id                     NUMBER(19,0) NOT NULL,
  evaluacion_extraordinarios_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_eval_extraordinario IS 'ALUMNO EVALUACION EXTRA ORDINARIO';

COMMENT ON COLUMN alumno_eval_extraordinario.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_eval_extraordinario.evaluacion_extraordinarios_id IS 'EVALUACION EXTRAORDINARIO';


PROMPT CREATE TABLE alumno_evaluacion
CREATE TABLE alumno_evaluacion (
  alumno_id       NUMBER(19,0) NOT NULL,
  evaluaciones_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    INITIAL 2097151 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_evaluacion IS 'ALUMNO EVALUACION';

COMMENT ON COLUMN alumno_evaluacion.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_evaluacion.evaluaciones_id IS 'ID EVALUACIONES';


PROMPT CREATE TABLE alumno_evaluacion_regul
CREATE TABLE alumno_evaluacion_regul (
  alumno_id       NUMBER(19,0) NOT NULL,
  evaluaciones_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    INITIAL   15360 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_evaluacion_regul IS 'ALUMNO EVALUACION REGULARES';

COMMENT ON COLUMN alumno_evaluacion_regul.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_evaluacion_regul.evaluaciones_id IS 'ID EVALUACIONES';


PROMPT CREATE TABLE alumno_evaluacionextra
CREATE TABLE alumno_evaluacionextra (
  alumno_id            NUMBER NOT NULL,
  evaluacionesextra_id NUMBER NOT NULL
)
  STORAGE (
    INITIAL    8192 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_evaluacionextra IS 'ALUMNO EVALUACION EXTRA';

COMMENT ON COLUMN alumno_evaluacionextra.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_evaluacionextra.evaluacionesextra_id IS 'ID EVALUACION EXTRA';


PROMPT CREATE TABLE alumno_evaluacionrecupera
CREATE TABLE alumno_evaluacionrecupera (
  alumno_id             NUMBER(19,0) NOT NULL,
  evaluacionrecupera_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_evaluacionrecupera IS 'ALUMNO EVALUACION RECUPERA';

COMMENT ON COLUMN alumno_evaluacionrecupera.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_evaluacionrecupera.evaluacionrecupera_id IS 'EVALUACION RECUPERACION';


PROMPT CREATE TABLE alumno_grupo
CREATE TABLE alumno_grupo (
  alumnos_id NUMBER(19,0) NOT NULL,
  grupos_id  NUMBER(19,0) NOT NULL
)
  STORAGE (
    INITIAL   70656 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_grupo IS 'ALUMNO GRUPO';

COMMENT ON COLUMN alumno_grupo.alumnos_id IS 'ID ALUMNOS';
COMMENT ON COLUMN alumno_grupo.grupos_id IS 'ID GRUPOS';


PROMPT CREATE TABLE alumno_grupotaller
CREATE TABLE alumno_grupotaller (
  alumnos_id  NUMBER NOT NULL,
  talleres_id NUMBER NOT NULL
)
  STORAGE (
    INITIAL   11264 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_grupotaller IS 'ALUMNO GRUPO TALLER';

COMMENT ON COLUMN alumno_grupotaller.alumnos_id IS 'ID ALUMNOS';
COMMENT ON COLUMN alumno_grupotaller.talleres_id IS 'ID TALLERES';


PROMPT CREATE TABLE alumno_info_curp_renapo
CREATE TABLE alumno_info_curp_renapo (
  id              NUMBER        NOT NULL,
  curp            VARCHAR2(18)  NULL,
  primerapellido  VARCHAR2(255) NULL,
  segundoapellido VARCHAR2(255) NULL,
  nombre          VARCHAR2(255) NULL,
  fechanacimiento VARCHAR2(29)  NULL,
  entidad         VARCHAR2(255) NULL,
  sexo            VARCHAR2(30)  NULL,
  fechaalta       VARCHAR2(30)  NULL,
  folio           VARCHAR2(32)  NULL,
  estatus         VARCHAR2(64)  NULL,
  dependencia     VARCHAR2(255) NULL,
  impresiones     VARCHAR2(32)  NULL,
  errores         VARCHAR2(128) NULL,
  idalumno        NUMBER        NULL
)
  STORAGE (
    INITIAL   73728 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_info_curp_renapo IS 'ALUMNO INFORMACION CURP RENAPO';

COMMENT ON COLUMN alumno_info_curp_renapo.id IS 'ID';
COMMENT ON COLUMN alumno_info_curp_renapo.curp IS 'CURP';
COMMENT ON COLUMN alumno_info_curp_renapo.primerapellido IS 'PRIMER APELLIDO';
COMMENT ON COLUMN alumno_info_curp_renapo.segundoapellido IS 'SEGUNDO APELLIDO';
COMMENT ON COLUMN alumno_info_curp_renapo.nombre IS 'NOMBRE';
COMMENT ON COLUMN alumno_info_curp_renapo.fechanacimiento IS 'FECHA NACIMIENTO';
COMMENT ON COLUMN alumno_info_curp_renapo.entidad IS 'ENTIDAD';
COMMENT ON COLUMN alumno_info_curp_renapo.sexo IS 'SEXO';
COMMENT ON COLUMN alumno_info_curp_renapo.fechaalta IS 'FECHA ALTA';
COMMENT ON COLUMN alumno_info_curp_renapo.folio IS 'FOLIO';
COMMENT ON COLUMN alumno_info_curp_renapo.estatus IS 'ESTATUS';
COMMENT ON COLUMN alumno_info_curp_renapo.dependencia IS 'DEPENDENCIA EMISORA';
COMMENT ON COLUMN alumno_info_curp_renapo.impresiones IS 'IMPRESIONES';
COMMENT ON COLUMN alumno_info_curp_renapo.errores IS 'ERRORES';
COMMENT ON COLUMN alumno_info_curp_renapo.idalumno IS 'ID ALUMNO';


PROMPT CREATE TABLE alumno_lecturaevaluacion
CREATE TABLE alumno_lecturaevaluacion (
  alumno_id            NUMBER NOT NULL,
  lecturaevaluacion_id NUMBER NOT NULL
)
  STORAGE (
    INITIAL  523264 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE alumno_lecturaevaluacion IS 'ALUMNO LECTURA EVALUACION';

COMMENT ON COLUMN alumno_lecturaevaluacion.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN alumno_lecturaevaluacion.lecturaevaluacion_id IS 'ID LECTURA EVALUACION';


PROMPT CREATE TABLE aplicacion
CREATE TABLE aplicacion (
  id          NUMBER(19,0)       NOT NULL,
  nombre      VARCHAR2(255 CHAR) NULL,
  descripcion VARCHAR2(30)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE aplicacion IS 'CATALOGO DE APLICACION';

COMMENT ON COLUMN aplicacion.id IS 'ID';
COMMENT ON COLUMN aplicacion.nombre IS 'NOMBRE DE APLICACION';


PROMPT CREATE TABLE asentamiento
CREATE TABLE asentamiento (
  id           NUMBER(19,0)       NOT NULL,
  asentamiento VARCHAR2(255 CHAR) NULL,
  codigo       VARCHAR2(255 CHAR) NULL,
  id_municipio NUMBER(19,0)       NULL,
  tipo_id      NUMBER(19,0)       NULL,
  municipio_id NUMBER(19,0)       NULL
)
  STORAGE (
    INITIAL    5120 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE asentamiento IS 'CATALOGO ASENTAMIENTO';

COMMENT ON COLUMN asentamiento.id IS 'ID';
COMMENT ON COLUMN asentamiento.asentamiento IS 'ASENTAMIENTO';
COMMENT ON COLUMN asentamiento.codigo IS 'CODIGO POSTAL';
COMMENT ON COLUMN asentamiento.id_municipio IS 'ID MUNICIPIO';
COMMENT ON COLUMN asentamiento.tipo_id IS 'ID TIPO';
COMMENT ON COLUMN asentamiento.municipio_id IS 'MUNICIPIO ID';


PROMPT CREATE TABLE audit_alumno_evaluacion
CREATE TABLE audit_alumno_evaluacion (
  alumno_id       NUMBER(19,0) NOT NULL,
  evaluaciones_id NUMBER(19,0) NOT NULL,
  acciontipo      VARCHAR2(6)  NULL,
  accionfecha     DATE         NULL
)
  STORAGE (
    INITIAL   11264 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE audit_alumno_evaluacion IS 'AUDITORIA ALUMNO EVALUACION';

COMMENT ON COLUMN audit_alumno_evaluacion.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN audit_alumno_evaluacion.evaluaciones_id IS 'ID EVALUACIONES';
COMMENT ON COLUMN audit_alumno_evaluacion.acciontipo IS 'ACCION TIPO';
COMMENT ON COLUMN audit_alumno_evaluacion.accionfecha IS 'ACCION FECHA';


PROMPT CREATE TABLE audit_evaluacion
CREATE TABLE audit_evaluacion (
  id              NUMBER(19,0)       NOT NULL,
  calificacion    NUMBER(19,0)       NULL,
  fechacreacion   DATE               NULL,
  inasistencias   NUMBER(19,0)       NULL,
  observaciones   VARCHAR2(255 CHAR) NULL,
  username        VARCHAR2(255 CHAR) NULL,
  cicloescolar_id NUMBER(19,0)       NULL,
  materia_id      NUMBER(10,0)       NULL,
  periodo_id      NUMBER(19,0)       NULL,
  acciontipo      VARCHAR2(6)        NULL,
  accionfecha     DATE               NULL
)
  STORAGE (
    INITIAL   17408 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE audit_evaluacion IS 'AUDITORIA EVALUACION';

COMMENT ON COLUMN audit_evaluacion.id IS 'ID';
COMMENT ON COLUMN audit_evaluacion.calificacion IS 'CALIFICACION';
COMMENT ON COLUMN audit_evaluacion.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN audit_evaluacion.inasistencias IS 'INASISTENCIAS';
COMMENT ON COLUMN audit_evaluacion.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN audit_evaluacion.username IS 'USERNAME';
COMMENT ON COLUMN audit_evaluacion.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN audit_evaluacion.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN audit_evaluacion.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN audit_evaluacion.acciontipo IS 'ACCION TIPO';
COMMENT ON COLUMN audit_evaluacion.accionfecha IS 'ACCION FECHA';


PROMPT CREATE TABLE auditoria_alumno
CREATE TABLE auditoria_alumno (
  conquienvive           NUMBER(10,0)  NULL,
  id                     NUMBER(19,0)  NOT NULL,
  grupoactivo_id         NUMBER(19,0)  NULL,
  infosalud_id           NUMBER(19,0)  NULL,
  preinscripcion_id      NUMBER(19,0)  NULL,
  estatus                NUMBER(10,0)  NULL,
  otranacionalidad_id    NUMBER(10,0)  NULL,
  municipionacimiento_id NUMBER(19,0)  NULL,
  telefono_id            NUMBER(19,0)  NULL,
  domicilio_id           NUMBER(19,0)  NULL,
  usuariocreacion        VARCHAR2(255) NULL,
  fechacreacion          DATE          NULL,
  nombrepadre            VARCHAR2(255) NULL,
  nombremadre            VARCHAR2(255) NULL,
  curp                   VARCHAR2(255) NULL,
  serviciomixto          NUMBER(19,0)  NULL,
  fechaalta              DATE          DEFAULT sysdate NULL,
  claveautorizacion      VARCHAR2(255) NULL,
  grupo_sanguineo_id     NUMBER(10,0)  NULL,
  grupo_plantelregular   NUMBER(19,0)  NULL,
  fechnacpadre           TIMESTAMP(3)  NULL,
  fechnacmadre           TIMESTAMP(3)  NULL,
  plantel_id             NUMBER(19,0)  NULL,
  usuarioalumno_id       NUMBER        NULL,
  doblecurp              NUMBER(1,0)   NULL,
  fechabaja              DATE          NULL
)
  STORAGE (
    INITIAL   81920 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_alumno IS 'AUDITORIA ALUMNO';

COMMENT ON COLUMN auditoria_alumno.conquienvive IS 'CLAVE CONQUIENVIVE';
COMMENT ON COLUMN auditoria_alumno.id IS 'ID';
COMMENT ON COLUMN auditoria_alumno.grupoactivo_id IS 'ID GRUPO ACTIVO';
COMMENT ON COLUMN auditoria_alumno.infosalud_id IS 'ID INFORMACION SALUD';
COMMENT ON COLUMN auditoria_alumno.preinscripcion_id IS 'ID PREINSCRIPCION';
COMMENT ON COLUMN auditoria_alumno.estatus IS 'ESTATUS';
COMMENT ON COLUMN auditoria_alumno.otranacionalidad_id IS 'ID OTRA NACIONALIDAD';
COMMENT ON COLUMN auditoria_alumno.municipionacimiento_id IS 'ID MUNICIPIO NACIMIENTO';
COMMENT ON COLUMN auditoria_alumno.telefono_id IS 'ID TELEFONO';
COMMENT ON COLUMN auditoria_alumno.domicilio_id IS 'ID DOMICILIO';
COMMENT ON COLUMN auditoria_alumno.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN auditoria_alumno.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN auditoria_alumno.nombrepadre IS 'NOMBRE PADRE';
COMMENT ON COLUMN auditoria_alumno.nombremadre IS 'NOMBRE MADRE';
COMMENT ON COLUMN auditoria_alumno.curp IS 'CURP';
COMMENT ON COLUMN auditoria_alumno.serviciomixto IS 'SERVICIO MIXTO';
COMMENT ON COLUMN auditoria_alumno.fechaalta IS 'FECHA ALTA';
COMMENT ON COLUMN auditoria_alumno.claveautorizacion IS 'CLAVE AUTORIZACION';
COMMENT ON COLUMN auditoria_alumno.grupo_sanguineo_id IS 'ID GRUPO SANGUINEO';
COMMENT ON COLUMN auditoria_alumno.grupo_plantelregular IS 'GRUPO PLANTEL REGULAR';
COMMENT ON COLUMN auditoria_alumno.fechnacpadre IS 'FECHA NACIMIENTO PADRE';
COMMENT ON COLUMN auditoria_alumno.fechnacmadre IS 'FECHA NACIMIENTO MADRE';
COMMENT ON COLUMN auditoria_alumno.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN auditoria_alumno.usuarioalumno_id IS 'ID USUARIO ALUMNO';
COMMENT ON COLUMN auditoria_alumno.doblecurp IS 'DOBLE CURP';
COMMENT ON COLUMN auditoria_alumno.fechabaja IS 'FECHA BAJA';


PROMPT CREATE TABLE auditoria_alumno_evaluacion
CREATE TABLE auditoria_alumno_evaluacion (
  alumno_id       NUMBER(19,0) NOT NULL,
  evaluaciones_id NUMBER(19,0) NOT NULL,
  fecha_baja      DATE         NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_alumno_evaluacion IS 'AUDITORIA ALUMNO EVALUACION';

COMMENT ON COLUMN auditoria_alumno_evaluacion.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN auditoria_alumno_evaluacion.evaluaciones_id IS 'ID EVALUACION';
COMMENT ON COLUMN auditoria_alumno_evaluacion.fecha_baja IS 'FECHA BAJA';


PROMPT CREATE TABLE auditoria_alumno_preins
CREATE TABLE auditoria_alumno_preins (
  conquienvive           NUMBER(10,0)  NULL,
  id                     NUMBER(19,0)  NOT NULL,
  grupoactivo_id         NUMBER(19,0)  NULL,
  infosalud_id           NUMBER(19,0)  NULL,
  preinscripcion_id      NUMBER(19,0)  NULL,
  estatus                NUMBER(10,0)  NULL,
  otranacionalidad_id    NUMBER(10,0)  NULL,
  municipionacimiento_id NUMBER(19,0)  NULL,
  telefono_id            NUMBER(19,0)  NULL,
  domicilio_id           NUMBER(19,0)  NULL,
  usuariocreacion        VARCHAR2(255) NULL,
  fechacreacion          DATE          NULL,
  nombrepadre            VARCHAR2(255) NULL,
  nombremadre            VARCHAR2(255) NULL,
  curp                   VARCHAR2(255) NULL,
  serviciomixto          NUMBER(19,0)  NULL,
  fechaalta              DATE          DEFAULT sysdate NULL,
  claveautorizacion      VARCHAR2(255) NULL,
  grupo_sanguineo_id     NUMBER(10,0)  NULL,
  grupo_plantelregular   NUMBER(19,0)  NULL,
  fechnacpadre           TIMESTAMP(3)  NULL,
  fechnacmadre           TIMESTAMP(3)  NULL,
  plantel_id             NUMBER(19,0)  NULL,
  usuarioalumno_id       NUMBER        NULL,
  doblecurp              NUMBER(1,0)   NULL,
  talleractivo_id        NUMBER        NULL,
  fechaactualizacion     TIMESTAMP(3)  NULL,
  recuperar              NUMBER(1,0)   NULL
)
  STORAGE (
    INITIAL    3072 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_alumno_preins IS 'AUDITORIA ALUMNO PREINSCRIPCION';

COMMENT ON COLUMN auditoria_alumno_preins.conquienvive IS 'CLAVE CON QUIEN VIVE';
COMMENT ON COLUMN auditoria_alumno_preins.id IS 'ID';
COMMENT ON COLUMN auditoria_alumno_preins.grupoactivo_id IS 'ID GRUPO ACTIVO';
COMMENT ON COLUMN auditoria_alumno_preins.infosalud_id IS 'ID INFOSALUD';
COMMENT ON COLUMN auditoria_alumno_preins.preinscripcion_id IS 'ID PREINSCRIPCION';
COMMENT ON COLUMN auditoria_alumno_preins.estatus IS 'ESTATUS';
COMMENT ON COLUMN auditoria_alumno_preins.otranacionalidad_id IS 'ID OTRA NACIONALIDAD';
COMMENT ON COLUMN auditoria_alumno_preins.municipionacimiento_id IS 'ID MUNICIPIO DE NACIMIENTO';
COMMENT ON COLUMN auditoria_alumno_preins.telefono_id IS 'ID TELEFONO';
COMMENT ON COLUMN auditoria_alumno_preins.domicilio_id IS 'ID DOMICILIO';
COMMENT ON COLUMN auditoria_alumno_preins.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN auditoria_alumno_preins.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN auditoria_alumno_preins.nombrepadre IS 'NOMBRE PADRE';
COMMENT ON COLUMN auditoria_alumno_preins.nombremadre IS 'NOMBRE MADRE';
COMMENT ON COLUMN auditoria_alumno_preins.curp IS 'CURP';
COMMENT ON COLUMN auditoria_alumno_preins.serviciomixto IS 'SERVICIO MIXTO';
COMMENT ON COLUMN auditoria_alumno_preins.fechaalta IS 'FECHA ALTA';
COMMENT ON COLUMN auditoria_alumno_preins.claveautorizacion IS 'CLAVE AUTORIZACION';
COMMENT ON COLUMN auditoria_alumno_preins.grupo_sanguineo_id IS 'ID GRUPO SANGUINEO';
COMMENT ON COLUMN auditoria_alumno_preins.grupo_plantelregular IS 'GRUPO PLANTEL REGULAR';
COMMENT ON COLUMN auditoria_alumno_preins.fechnacpadre IS 'FECHA NACIMIENTO PADRE';
COMMENT ON COLUMN auditoria_alumno_preins.fechnacmadre IS 'FECHA NACIMIENTO MADRE';
COMMENT ON COLUMN auditoria_alumno_preins.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN auditoria_alumno_preins.usuarioalumno_id IS 'ID USUARIO ALUMNO';
COMMENT ON COLUMN auditoria_alumno_preins.doblecurp IS 'DOBLE CURP';
COMMENT ON COLUMN auditoria_alumno_preins.talleractivo_id IS 'ID TALLER ACTIVO';
COMMENT ON COLUMN auditoria_alumno_preins.fechaactualizacion IS 'FECHA ACTUALIZACION';
COMMENT ON COLUMN auditoria_alumno_preins.recuperar IS 'RECUPERAR';


PROMPT CREATE TABLE auditoria_busqueda_alumnos
CREATE TABLE auditoria_busqueda_alumnos (
  username          VARCHAR2(255)  NULL,
  criterio_busqueda VARCHAR2(255)  NULL,
  fecha             DATE           NULL,
  resultado         VARCHAR2(3000) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_busqueda_alumnos IS 'AUDITORIA BUSQUEDA ALUMNOS';



PROMPT CREATE TABLE auditoria_conflicto_cambiocurp
CREATE TABLE auditoria_conflicto_cambiocurp (
  alumno_id_fuente     NUMBER(19,0)  NULL,
  curp_actual          VARCHAR2(256) NULL,
  grupo_id_actual      NUMBER(19,0)  NULL,
  curp_nueva           VARCHAR2(256) NULL,
  alumno_id_encontrado NUMBER(19,0)  NULL,
  fecha_suceso         DATE          NULL,
  resultado            NUMBER(1,0)   NULL,
  resuelto             NUMBER(1,0)   NULL,
  fecha_resuelto       DATE          NULL
)
  STORAGE (
    INITIAL  155648 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_conflicto_cambiocurp IS 'AUDITORIA CONFLICTO COMBIO CURP';

COMMENT ON COLUMN auditoria_conflicto_cambiocurp.alumno_id_fuente IS 'ID ALUMNO FUENTE';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.curp_actual IS 'CURP ACTUAL';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.grupo_id_actual IS 'ID GRUPO ACTUAL';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.curp_nueva IS 'CURP NUEVA';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.alumno_id_encontrado IS 'ID ALUMNO ENCONTRADO';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.fecha_suceso IS 'FECHA SUCESO';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.resultado IS 'RESULTADO';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.resuelto IS 'RESUELTO';
COMMENT ON COLUMN auditoria_conflicto_cambiocurp.fecha_resuelto IS 'FECHA RESUELTO';


PROMPT CREATE TABLE auditoria_evaluacion
CREATE TABLE auditoria_evaluacion (
  id              NUMBER(19,0)       NOT NULL,
  calificacion    NUMBER(19,0)       NULL,
  fechacreacion   DATE               NULL,
  inasistencias   NUMBER(19,0)       NULL,
  observaciones   VARCHAR2(255 CHAR) NULL,
  username        VARCHAR2(255 CHAR) NULL,
  cicloescolar_id NUMBER(19,0)       NULL,
  materia_id      NUMBER(10,0)       NULL,
  periodo_id      NUMBER(19,0)       NULL,
  fecha_baja      DATE               NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_evaluacion IS 'AUDITORIA EVALUACION';



PROMPT CREATE TABLE auditoria_persona
CREATE TABLE auditoria_persona (
  id                  NUMBER(19,0)       NOT NULL,
  curp                VARCHAR2(255 CHAR) NULL,
  fechanac            TIMESTAMP(6)       NULL,
  nombres             VARCHAR2(255 CHAR) NULL,
  primerapellido      VARCHAR2(255 CHAR) NULL,
  rfc                 VARCHAR2(255 CHAR) NULL,
  segundoapellido     VARCHAR2(255 CHAR) NULL,
  sexo                NUMBER(10,0)       NULL,
  lugarnacimiento_id  NUMBER(19,0)       NULL,
  nacionalidad_id     NUMBER(19,0)       NULL,
  otranacionalidad_id NUMBER(19,0)       DEFAULT 0 NULL,
  usuario_id          NUMBER(19,0)       NULL,
  puebloindigena_id   NUMBER(19,0)       NULL,
  domicilio_id        NUMBER(19,0)       NULL,
  lengua_id           NUMBER(19,0)       NULL,
  fecha_baja          DATE               NULL
)
  STORAGE (
    INITIAL   90112 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_persona IS 'AUDITORIA PERSONA';

COMMENT ON COLUMN auditoria_persona.id IS 'ID';
COMMENT ON COLUMN auditoria_persona.curp IS 'CURP';
COMMENT ON COLUMN auditoria_persona.fechanac IS 'FECHA NACIMIENTO';
COMMENT ON COLUMN auditoria_persona.nombres IS 'NOMBRES';
COMMENT ON COLUMN auditoria_persona.primerapellido IS 'PRIMER APELLIDO';
COMMENT ON COLUMN auditoria_persona.rfc IS 'RFC';
COMMENT ON COLUMN auditoria_persona.segundoapellido IS 'SEGUNDO APELLIDO';
COMMENT ON COLUMN auditoria_persona.sexo IS 'SEXO';
COMMENT ON COLUMN auditoria_persona.lugarnacimiento_id IS 'ID LUGAR NACIMIENTO';
COMMENT ON COLUMN auditoria_persona.nacionalidad_id IS 'ID NACIONALIDAD';
COMMENT ON COLUMN auditoria_persona.otranacionalidad_id IS 'ID OTRA NACIONALIDAD';
COMMENT ON COLUMN auditoria_persona.usuario_id IS 'ID USUARIO';
COMMENT ON COLUMN auditoria_persona.puebloindigena_id IS 'ID PUEBLO INDIGENA';
COMMENT ON COLUMN auditoria_persona.domicilio_id IS 'ID DOMICILIO';
COMMENT ON COLUMN auditoria_persona.lengua_id IS 'ID LENGUA';
COMMENT ON COLUMN auditoria_persona.fecha_baja IS 'FECHA BAJA';


PROMPT CREATE TABLE auditoria_persona_preins
CREATE TABLE auditoria_persona_preins (
  id                    NUMBER(19,0)       NOT NULL,
  curp                  VARCHAR2(255 CHAR) NULL,
  fechanac              TIMESTAMP(6)       NULL,
  nombres               VARCHAR2(255 CHAR) NULL,
  primerapellido        VARCHAR2(255 CHAR) NULL,
  rfc                   VARCHAR2(255 CHAR) NULL,
  segundoapellido       VARCHAR2(255 CHAR) NULL,
  sexo                  NUMBER(10,0)       NULL,
  lugarnacimiento_id    NUMBER(19,0)       NULL,
  nacionalidad_id       NUMBER(19,0)       NULL,
  otranacionalidad_id   NUMBER(19,0)       DEFAULT 0 NULL,
  usuario_id            NUMBER(19,0)       NULL,
  puebloindigena_id     NUMBER(19,0)       NULL,
  domicilio_id          NUMBER(19,0)       NULL,
  lengua_id             NUMBER(19,0)       NULL,
  encontrado            NUMBER             NULL,
  curp_old              VARCHAR2(18)       NULL,
  curprenapo            VARCHAR2(255)      NULL,
  primerapellidorenapo  VARCHAR2(255)      NULL,
  segundoapellidorenapo VARCHAR2(255)      NULL,
  nombresrenapo         VARCHAR2(255)      NULL,
  fechanacrenapo        TIMESTAMP(6)       NULL,
  sexorenapo            VARCHAR2(255)      NULL,
  fechaactualizacion    TIMESTAMP(6)       NULL,
  recuperar             NUMBER(1,0)        NULL
)
  STORAGE (
    INITIAL  221184 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_persona_preins IS 'AUDITORIA PERSONA PREINSCRIPCION';

COMMENT ON COLUMN auditoria_persona_preins.id IS 'ID';
COMMENT ON COLUMN auditoria_persona_preins.curp IS 'CURP';
COMMENT ON COLUMN auditoria_persona_preins.fechanac IS 'FECHA NACIMIENTO';
COMMENT ON COLUMN auditoria_persona_preins.nombres IS 'NOMBRES';
COMMENT ON COLUMN auditoria_persona_preins.primerapellido IS 'PRIMER APELLIDO';
COMMENT ON COLUMN auditoria_persona_preins.rfc IS 'RFC';
COMMENT ON COLUMN auditoria_persona_preins.segundoapellido IS 'SEGUNDO APELLIDO';
COMMENT ON COLUMN auditoria_persona_preins.sexo IS 'SEXO';
COMMENT ON COLUMN auditoria_persona_preins.lugarnacimiento_id IS 'ID LUGAR NACIMIENTO';
COMMENT ON COLUMN auditoria_persona_preins.nacionalidad_id IS 'ID NACIONALIDAD';
COMMENT ON COLUMN auditoria_persona_preins.otranacionalidad_id IS 'ID OTRA NACIONALIDAD';
COMMENT ON COLUMN auditoria_persona_preins.usuario_id IS 'ID USUARIO';
COMMENT ON COLUMN auditoria_persona_preins.puebloindigena_id IS 'ID PUEBLO INDIGENA';
COMMENT ON COLUMN auditoria_persona_preins.domicilio_id IS 'ID DOMICILIO';
COMMENT ON COLUMN auditoria_persona_preins.lengua_id IS 'ID LENGUA';
COMMENT ON COLUMN auditoria_persona_preins.encontrado IS 'ENCONTRADO';
COMMENT ON COLUMN auditoria_persona_preins.curp_old IS 'CURP OLD';
COMMENT ON COLUMN auditoria_persona_preins.curprenapo IS 'CURP RENAPO';
COMMENT ON COLUMN auditoria_persona_preins.primerapellidorenapo IS 'PRIMER APELLIDO RENAPO';
COMMENT ON COLUMN auditoria_persona_preins.segundoapellidorenapo IS 'SEGUNDO APELLIDO RENAPO';
COMMENT ON COLUMN auditoria_persona_preins.nombresrenapo IS 'NOMBRES RENAPO';
COMMENT ON COLUMN auditoria_persona_preins.fechanacrenapo IS 'FECHA NACIMIENTO RENAPO';
COMMENT ON COLUMN auditoria_persona_preins.sexorenapo IS 'SEXO RENAPO';
COMMENT ON COLUMN auditoria_persona_preins.fechaactualizacion IS 'FECHA ACTUALIZACION';
COMMENT ON COLUMN auditoria_persona_preins.recuperar IS 'RECUPERAR';


PROMPT CREATE TABLE auditoria_preinscripcion
CREATE TABLE auditoria_preinscripcion (
  id                      NUMBER(19,0)  NOT NULL,
  cuantosvivencasa        NUMBER(10,0)  NULL,
  escolaridadmadre        NUMBER(10,0)  NULL,
  escolaridadpadre        NUMBER(10,0)  NULL,
  fecha                   DATE          DEFAULT SYSDATE NULL,
  requiereturnocontinuo   NUMBER(1,0)   DEFAULT 0 NULL,
  sostienehogarecono      NUMBER(10,0)  NULL,
  opcion1_id              NUMBER(19,0)  NULL,
  opcion2_id              NUMBER(19,0)  NULL,
  opcion3_id              NUMBER(19,0)  NULL,
  grado                   NUMBER(1,0)   NULL,
  hermanosmismaescuela    NUMBER(10,0)  NULL,
  hermanospreeinscripcion NUMBER(10,0)  NULL,
  username                VARCHAR2(255) NULL,
  tiempopreescolar        NUMBER(10,0)  NULL,
  escuelaprocedencia      VARCHAR2(255) NULL,
  tieneservicios          NUMBER(1,0)   NULL,
  anospreescolar          NUMBER(1,0)   NULL,
  fechacreacion           DATE          DEFAULT sysdate NULL,
  fechacrea               DATE          DEFAULT SYSDATE NULL,
  doblepreins             NUMBER(1,0)   NULL,
  mostrable               NUMBER(1,0)   DEFAULT 1 NULL,
  foliosaid               NUMBER(10,0)  NULL,
  folioplantel            NUMBER        NULL,
  extemporaneo            NUMBER        NULL,
  email                   VARCHAR2(255) NULL,
  fecha_delete            DATE          NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE auditoria_preinscripcion IS 'AUDITORIA PREINSCRIPCION';



PROMPT CREATE TABLE aula
CREATE TABLE aula (
  id                NUMBER NOT NULL,
  material          NUMBER NULL,
  estadofisisco     NUMBER NULL,
  cantidad          NUMBER NULL,
  capacidad         NUMBER NULL,
  plantel_id        NUMBER NULL,
  ocupadamatutino   NUMBER NULL,
  ocupadavespertino NUMBER NULL
)
  STORAGE (
    INITIAL   13312 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE aula IS 'AULA';

COMMENT ON COLUMN aula.id IS 'ID';
COMMENT ON COLUMN aula.material IS 'CLAVE MATERIAL';
COMMENT ON COLUMN aula.estadofisisco IS 'CLAVE ESTADO FISICO';
COMMENT ON COLUMN aula.cantidad IS 'CANTIDAD';
COMMENT ON COLUMN aula.capacidad IS 'CAPACIDAD';
COMMENT ON COLUMN aula.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN aula.ocupadamatutino IS 'OCUPACION MATUTINO';
COMMENT ON COLUMN aula.ocupadavespertino IS 'OCUPACION VESPERTINO';


PROMPT CREATE TABLE autoridad
CREATE TABLE autoridad (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE autoridad IS 'CATALOGO AUTORIDAD';

COMMENT ON COLUMN autoridad.id IS 'ID';
COMMENT ON COLUMN autoridad.nombre IS 'NOMBRE';


PROMPT CREATE TABLE autoridad_grupousuario
CREATE TABLE autoridad_grupousuario (
  autoridad_id NUMBER(19,0) NOT NULL,
  grupos_id    NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE autoridad_grupousuario IS 'AUTORIDAD GRUPO USUARIO';

COMMENT ON COLUMN autoridad_grupousuario.autoridad_id IS 'ID AUTORIDAD';
COMMENT ON COLUMN autoridad_grupousuario.grupos_id IS 'ID GRUPO';


PROMPT CREATE TABLE autoridad_usuario
CREATE TABLE autoridad_usuario (
  autoridad_id NUMBER(19,0) NOT NULL,
  usuarios_id  NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE autoridad_usuario IS 'CATALOGO AUTORIDAD_USUARIO';

COMMENT ON COLUMN autoridad_usuario.autoridad_id IS 'ID AUTORIDAD';
COMMENT ON COLUMN autoridad_usuario.usuarios_id IS 'ID USUARIOS';


PROMPT CREATE TABLE avance_preescolar
CREATE TABLE avance_preescolar (
  id              NUMBER(19,0)   NOT NULL,
  alumno_id       NUMBER(19,0)   NOT NULL,
  materia_id      NUMBER(6,0)    NULL,
  avance1         VARCHAR2(4000) NULL,
  avance2         VARCHAR2(4000) NULL,
  avance3         VARCHAR2(4000) NULL,
  fechacreacion   DATE           NULL,
  username        VARCHAR2(255)  NULL,
  cicloescolar_id NUMBER(19,0)   NOT NULL
)
  STORAGE (
    INITIAL  634880 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE avance_preescolar IS 'AVANCE PREESCOLAR';

COMMENT ON COLUMN avance_preescolar.id IS 'ID';
COMMENT ON COLUMN avance_preescolar.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN avance_preescolar.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN avance_preescolar.avance1 IS 'AVANCE 1';
COMMENT ON COLUMN avance_preescolar.avance2 IS 'AVANCE 2';
COMMENT ON COLUMN avance_preescolar.avance3 IS 'AVANCE 3';
COMMENT ON COLUMN avance_preescolar.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN avance_preescolar.username IS 'USERNAME';
COMMENT ON COLUMN avance_preescolar.cicloescolar_id IS 'ID CICLOESCOLAR';


PROMPT CREATE TABLE aviso
CREATE TABLE aviso (
  id               NUMBER(19,0)   NOT NULL,
  adjunto          VARCHAR2(255)  NULL,
  asunto           VARCHAR2(255)  NULL,
  fechacreacion    DATE           DEFAULT sysdate NULL,
  fechapublicacion DATE           NULL,
  fechavencimiento DATE           NULL,
  folio            VARCHAR2(255)  NULL,
  leido            NUMBER(1,0)    NULL,
  liga             VARCHAR2(255)  NULL,
  texto            VARCHAR2(3000) NULL,
  id_plantel       NUMBER(19,0)   NULL,
  usuariocreacion  VARCHAR2(255)  NULL,
  porcentaje       NUMBER(19,0)   NULL,
  username         VARCHAR2(255)  NULL
)
  STORAGE (
    INITIAL     576 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE aviso IS 'AVISOS';

COMMENT ON COLUMN aviso.id IS 'ID';
COMMENT ON COLUMN aviso.adjunto IS 'ADJUNTO';
COMMENT ON COLUMN aviso.asunto IS 'ASUNTO';
COMMENT ON COLUMN aviso.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN aviso.fechapublicacion IS 'FECHA PUBLICACION';
COMMENT ON COLUMN aviso.fechavencimiento IS 'FECHA VENCIMIENTO';
COMMENT ON COLUMN aviso.folio IS 'FOLIO';
COMMENT ON COLUMN aviso.leido IS 'LEIDO';
COMMENT ON COLUMN aviso.liga IS 'LIGA';
COMMENT ON COLUMN aviso.texto IS 'TEXTO';
COMMENT ON COLUMN aviso.id_plantel IS 'ID PLANTEL';
COMMENT ON COLUMN aviso.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN aviso.porcentaje IS 'PORCENTAJE';
COMMENT ON COLUMN aviso.username IS 'USERNAME';


PROMPT CREATE TABLE aviso_plantel
CREATE TABLE aviso_plantel (
  aviso_id   NUMBER(19,0) NOT NULL,
  plantel_id NUMBER(19,0) NOT NULL,
  id         NUMBER(19,0) NULL,
  leidos     NUMBER(19,0) NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE aviso_plantel IS 'AVISO PLANTEL';

COMMENT ON COLUMN aviso_plantel.aviso_id IS 'ID AVISO';
COMMENT ON COLUMN aviso_plantel.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN aviso_plantel.id IS 'ID';
COMMENT ON COLUMN aviso_plantel.leidos IS 'LEIDOS';


PROMPT CREATE TABLE baja
CREATE TABLE baja (
  id            NUMBER(19,0)  NOT NULL,
  fecha         DATE          DEFAULT sysdate NULL,
  motivo        NUMBER(10,0)  NULL,
  observaciones VARCHAR2(255) NULL,
  usuario       VARCHAR2(255) NULL,
  alumno_id     NUMBER(19,0)  NULL
)
  STORAGE (
    INITIAL   19456 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE baja IS 'BAJA ALUMNO';

COMMENT ON COLUMN baja.id IS 'ID';
COMMENT ON COLUMN baja.fecha IS 'FECHA';
COMMENT ON COLUMN baja.motivo IS 'MOTIVO';
COMMENT ON COLUMN baja.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN baja.usuario IS 'USUARIO';
COMMENT ON COLUMN baja.alumno_id IS 'ID ALUMNO';


PROMPT CREATE TABLE barreras_apoyo
CREATE TABLE barreras_apoyo (
  id          NUMBER        NOT NULL,
  apoyo       VARCHAR2(100) NOT NULL,
  cve_ta      NUMBER        NOT NULL,
  tipo        VARCHAR2(100) NOT NULL,
  clave_dewey VARCHAR2(7)   NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE barreras_apoyo IS 'CATALOGO BARRERAS_APOYO';

COMMENT ON COLUMN barreras_apoyo.id IS 'ID';
COMMENT ON COLUMN barreras_apoyo.apoyo IS 'APOYO';
COMMENT ON COLUMN barreras_apoyo.cve_ta IS 'CLAVE TA';
COMMENT ON COLUMN barreras_apoyo.tipo IS 'TIPO';
COMMENT ON COLUMN barreras_apoyo.clave_dewey IS 'CLAVE DEWEY';


PROMPT CREATE TABLE barreras_aprendizaje
CREATE TABLE barreras_aprendizaje (
  clave_dewey VARCHAR2(10)  NOT NULL,
  descripcion VARCHAR2(100) NOT NULL,
  hoja        NUMBER(1,0)   NOT NULL,
  clave       VARCHAR2(8)   NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE barreras_aprendizaje IS 'CATALOGO BARRERAS_APRENDIZAJE';

COMMENT ON COLUMN barreras_aprendizaje.clave_dewey IS 'CLAVE DEWEY';
COMMENT ON COLUMN barreras_aprendizaje.descripcion IS 'DESCRIPCION';
COMMENT ON COLUMN barreras_aprendizaje.hoja IS 'HOJA';
COMMENT ON COLUMN barreras_aprendizaje.clave IS 'CLAVE';


PROMPT CREATE TABLE bdunica_cct
CREATE TABLE bdunica_cct (
  cct                CHAR(10)     NOT NULL,
  nombre             CHAR(100)    NULL,
  cct_domicilio      CHAR(60)     NULL,
  calle1             CHAR(40)     NULL,
  calle2             CHAR(40)     NULL,
  cod_entidad        CHAR(2)      NULL,
  cod_municipio      CHAR(3)      NULL,
  cod_localidad      CHAR(4)      NULL,
  telefono           CHAR(15)     NULL,
  fax                CHAR(15)     NULL,
  cod_dep_admin      CHAR(3)      NULL,
  cod_clasific       CHAR(1)      NULL,
  cod_identificador  CHAR(2)      NULL,
  cod_dep_normat     CHAR(2)      NULL,
  cod_servicio       CHAR(2)      NULL,
  cod_serv_reg       CHAR(2)      NULL,
  cod_cep_anio       CHAR(4)      NULL,
  zona_escolar       CHAR(3)      NULL,
  sector             CHAR(4)      NULL,
  cod_almacen_acopio CHAR(4)      NULL,
  cod_sostenimiento  CHAR(3)      NULL,
  cod_turno          CHAR(3)      NULL,
  cve_inmueble       CHAR(7)      NULL,
  cod_tip_incorp     CHAR(2)      NULL,
  numofincor         CHAR(6)      NULL,
  fecha_incorpo      DATE         NULL,
  cve_economica      CHAR(14)     NULL,
  fecha_apertura     DATE         NULL,
  cod_situacion      CHAR(1)      NULL,
  fecha_alta         DATE         NULL,
  fecha_ult_act      DATE         NULL,
  cod_modalidad_ed   CHAR(3)      NULL,
  dir_paterno        CHAR(30)     NULL,
  dir_materno        CHAR(30)     NULL,
  dir_nombre         CHAR(30)     NULL,
  cod_movimiento     CHAR(1)      NULL,
  cod_soporte_mov    CHAR(1)      NULL,
  folio_probatorio   CHAR(100)    NULL,
  fecha_solicitud    DATE         NULL,
  observaciones      CHAR(254)    NULL,
  fecha_creacion     DATE         NULL,
  fecha_ult_mod      DATE         NULL,
  usua_ult_mod       CHAR(20)     NULL,
  firma_digital      CHAR(20)     NULL,
  ext_telefono       CHAR(6)      NULL,
  usoinm_aulas       NUMBER(2,0)  NULL,
  ext_fax            CHAR(6)      NULL,
  cod_motivo         CHAR(2)      NULL,
  usoinm_labs        NUMBER(2,0)  NULL,
  correo             CHAR(100)    NULL,
  usoinm_talleres    NUMBER(2,0)  NULL,
  web                CHAR(100)    NULL,
  usoinm_cubs        NUMBER(2,0)  NULL,
  cod_delegacion     CHAR(3)      NULL,
  cveinm             CHAR(8)      NULL,
  correo_sep_df      VARCHAR2(32) NULL,
  cod_responsable    NUMBER(9,0)  NULL,
  domicilio_2        VARCHAR2(60) NULL,
  numero_interior    VARCHAR2(50) NULL,
  numero_exterior    VARCHAR2(50) NULL,
  nombre2            CHAR(100)    NULL,
  curp_director      VARCHAR2(18) NULL,
  rfc_director       VARCHAR2(13) NULL
)
  STORAGE (
    INITIAL   19456 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE bdunica_cct IS 'BDUNICA CCT';

COMMENT ON COLUMN bdunica_cct.cct IS 'CENTRO DE TRABAJO';
COMMENT ON COLUMN bdunica_cct.nombre IS 'NOMBRE';
COMMENT ON COLUMN bdunica_cct.cct_domicilio IS 'CCT DOMICILIO';
COMMENT ON COLUMN bdunica_cct.calle1 IS 'CALLE 1';
COMMENT ON COLUMN bdunica_cct.calle2 IS 'CALLE 2';
COMMENT ON COLUMN bdunica_cct.cod_entidad IS 'CODIGO ENTIDAD';
COMMENT ON COLUMN bdunica_cct.cod_municipio IS 'CODIGO MUNICIPIO';
COMMENT ON COLUMN bdunica_cct.cod_localidad IS 'CODIGO ASENTAMIENTO';
COMMENT ON COLUMN bdunica_cct.telefono IS 'TELEFONO';
COMMENT ON COLUMN bdunica_cct.fax IS 'FAX';
COMMENT ON COLUMN bdunica_cct.cod_dep_admin IS 'CODIGO DEPENDENCIA ADMINISTRATIVA';
COMMENT ON COLUMN bdunica_cct.cod_clasific IS 'CODIGO CLASIFICACION';
COMMENT ON COLUMN bdunica_cct.cod_identificador IS 'CODIGO IDENTIFICADOR';
COMMENT ON COLUMN bdunica_cct.cod_dep_normat IS 'CODIGO DEPENDENCIA NORMATIVA';
COMMENT ON COLUMN bdunica_cct.cod_servicio IS 'CODIGO SERVICIO';
COMMENT ON COLUMN bdunica_cct.cod_serv_reg IS 'CODIGO SERVICIO REG';
COMMENT ON COLUMN bdunica_cct.cod_cep_anio IS 'CODIGO CEP A?O';
COMMENT ON COLUMN bdunica_cct.zona_escolar IS 'ZONA ESCOLAR';
COMMENT ON COLUMN bdunica_cct.sector IS 'SECTOR';
COMMENT ON COLUMN bdunica_cct.cod_almacen_acopio IS 'CODIGO ALMACEN ACOPIO';
COMMENT ON COLUMN bdunica_cct.cod_sostenimiento IS 'CODIGO SOSTENIMIENTO';
COMMENT ON COLUMN bdunica_cct.cod_turno IS 'CODIGO TURNO';
COMMENT ON COLUMN bdunica_cct.cve_inmueble IS 'CLAVE INMUEBLE';
COMMENT ON COLUMN bdunica_cct.cod_tip_incorp IS 'CODIGO TIPO INCORPARACION';
COMMENT ON COLUMN bdunica_cct.numofincor IS 'NUMERO OF INCORPORACION';
COMMENT ON COLUMN bdunica_cct.fecha_incorpo IS 'FECHA INCORPORACION';
COMMENT ON COLUMN bdunica_cct.cve_economica IS 'CLAVE ECONOMICA';
COMMENT ON COLUMN bdunica_cct.fecha_apertura IS 'FECHA APERTURA';
COMMENT ON COLUMN bdunica_cct.cod_situacion IS 'CODIGO SITUACION';
COMMENT ON COLUMN bdunica_cct.fecha_alta IS 'FECHA ALTA';
COMMENT ON COLUMN bdunica_cct.fecha_ult_act IS 'FECHA ULTIMA ACTUALIZACION';
COMMENT ON COLUMN bdunica_cct.cod_modalidad_ed IS 'CODIGO MODALIDAD ED';
COMMENT ON COLUMN bdunica_cct.dir_paterno IS 'DIRECTOR PATERNO';
COMMENT ON COLUMN bdunica_cct.dir_materno IS 'DIRECTOR MATERNO';
COMMENT ON COLUMN bdunica_cct.dir_nombre IS 'DIRECTOR NOMBRE';
COMMENT ON COLUMN bdunica_cct.cod_movimiento IS 'CODIGO MOVIMIENTO';
COMMENT ON COLUMN bdunica_cct.cod_soporte_mov IS 'CODIGO SOPORTE MOVIMIENTO';
COMMENT ON COLUMN bdunica_cct.folio_probatorio IS 'FOLIO PROBATORIO';
COMMENT ON COLUMN bdunica_cct.fecha_solicitud IS 'FECHA SOLICITUD';
COMMENT ON COLUMN bdunica_cct.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN bdunica_cct.fecha_creacion IS 'FECHA CREACION';
COMMENT ON COLUMN bdunica_cct.fecha_ult_mod IS 'FECHA ULTIMO MOVIMIENTO';
COMMENT ON COLUMN bdunica_cct.usua_ult_mod IS 'USUARIO ULTIMO MOVIMIENTO';
COMMENT ON COLUMN bdunica_cct.firma_digital IS 'FIRMA DIGITAL';
COMMENT ON COLUMN bdunica_cct.ext_telefono IS 'EXTENSION TELEFONO';
COMMENT ON COLUMN bdunica_cct.usoinm_aulas IS 'USO INM_AULAS';
COMMENT ON COLUMN bdunica_cct.ext_fax IS 'EXTENSION FAX';
COMMENT ON COLUMN bdunica_cct.cod_motivo IS 'CODIGO MOTIVO';
COMMENT ON COLUMN bdunica_cct.usoinm_labs IS 'USO INM_LABORATORIOS';
COMMENT ON COLUMN bdunica_cct.correo IS 'CORREO';
COMMENT ON COLUMN bdunica_cct.usoinm_talleres IS 'USO INM_TALLERES';
COMMENT ON COLUMN bdunica_cct.web IS 'WEB';
COMMENT ON COLUMN bdunica_cct.usoinm_cubs IS 'USO INM_CUBICULOS';
COMMENT ON COLUMN bdunica_cct.cod_delegacion IS 'CODIGO DELEGACION';
COMMENT ON COLUMN bdunica_cct.cveinm IS 'CLAVE INMUEBLE';
COMMENT ON COLUMN bdunica_cct.correo_sep_df IS 'CORREO SEP DF';
COMMENT ON COLUMN bdunica_cct.cod_responsable IS 'CODIGO RESPONSABLE';
COMMENT ON COLUMN bdunica_cct.domicilio_2 IS 'DOMICILIO 2';
COMMENT ON COLUMN bdunica_cct.numero_interior IS 'NUMERO INTERIOR';
COMMENT ON COLUMN bdunica_cct.numero_exterior IS 'NUMERO EXTERIOR';
COMMENT ON COLUMN bdunica_cct.nombre2 IS 'NOMBRE 2';
COMMENT ON COLUMN bdunica_cct.curp_director IS 'CURP DIRECTOR';
COMMENT ON COLUMN bdunica_cct.rfc_director IS 'RFC DIRECTOR';


PROMPT CREATE TABLE beca
CREATE TABLE beca (
  id              NUMBER(19,0) NOT NULL,
  becado          NUMBER(1,0)  NOT NULL,
  alumno_id       NUMBER(19,0) NOT NULL,
  fechacreacion   DATE         NOT NULL,
  usuariocreacion VARCHAR2(19) NULL
)
  STORAGE (
    INITIAL     704 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE beca IS 'BECA';

COMMENT ON COLUMN beca.id IS 'ID';
COMMENT ON COLUMN beca.becado IS 'BECADO';
COMMENT ON COLUMN beca.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN beca.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN beca.usuariocreacion IS 'USUARIO CREACION';


PROMPT CREATE TABLE cct
CREATE TABLE cct (
  cct                CHAR(10)     NOT NULL,
  nombre             CHAR(100)    NULL,
  cct_domicilio      CHAR(60)     NULL,
  calle1             CHAR(40)     NULL,
  calle2             CHAR(40)     NULL,
  cod_entidad        CHAR(2)      NULL,
  cod_municipio      CHAR(3)      NULL,
  cod_localidad      CHAR(4)      NULL,
  telefono           CHAR(15)     NULL,
  fax                CHAR(15)     NULL,
  cod_dep_admin      CHAR(3)      NULL,
  cod_clasific       CHAR(1)      NULL,
  cod_identificador  CHAR(2)      NULL,
  cod_dep_normat     CHAR(2)      NULL,
  cod_servicio       CHAR(2)      NULL,
  cod_serv_reg       CHAR(2)      NULL,
  cod_cep_anio       CHAR(4)      NULL,
  zona_escolar       CHAR(3)      NULL,
  sector             CHAR(4)      NULL,
  cod_almacen_acopio CHAR(4)      NULL,
  cod_sostenimiento  CHAR(3)      NULL,
  cod_turno          CHAR(3)      NULL,
  cve_inmueble       CHAR(7)      NULL,
  cod_tip_incorp     CHAR(2)      NULL,
  numofincor         CHAR(6)      NULL,
  fecha_incorpo      DATE         NULL,
  cve_economica      CHAR(25)     NULL,
  fecha_apertura     DATE         NULL,
  cod_situacion      CHAR(1)      NULL,
  fecha_alta         DATE         NULL,
  fecha_ult_act      DATE         NULL,
  cod_modalidad_ed   CHAR(3)      NULL,
  dir_paterno        CHAR(30)     NULL,
  dir_materno        CHAR(30)     NULL,
  dir_nombre         CHAR(30)     NULL,
  cod_movimiento     CHAR(1)      NULL,
  cod_soporte_mov    CHAR(1)      NULL,
  folio_probatorio   CHAR(100)    NULL,
  fecha_solicitud    DATE         NULL,
  observaciones      CHAR(254)    NULL,
  fecha_creacion     DATE         NULL,
  fecha_ult_mod      DATE         NULL,
  usua_ult_mod       CHAR(20)     NULL,
  firma_digital      CHAR(20)     NULL,
  ext_telefono       CHAR(6)      NULL,
  usoinm_aulas       NUMBER(2,0)  NULL,
  ext_fax            CHAR(6)      NULL,
  cod_motivo         CHAR(2)      NULL,
  usoinm_labs        NUMBER(2,0)  NULL,
  correo             CHAR(100)    NULL,
  usoinm_talleres    NUMBER(2,0)  NULL,
  web                CHAR(100)    NULL,
  usoinm_cubs        NUMBER(2,0)  NULL,
  cod_delegacion     CHAR(3)      NULL,
  cveinm             CHAR(8)      NULL,
  correo_sep_df      VARCHAR2(32) NULL,
  cod_responsable    NUMBER(9,0)  NULL,
  domicilio_2        VARCHAR2(60) NULL,
  numero_interior    VARCHAR2(50) NULL,
  numero_exterior    VARCHAR2(50) NULL,
  nombre2            CHAR(100)    NULL,
  curp_director      VARCHAR2(18) NULL,
  rfc_director       VARCHAR2(13) NULL
)
  STORAGE (
    INITIAL   19456 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE cct IS 'CENTROS DE TRABAJO';

COMMENT ON COLUMN cct.cct IS 'CENTRO DE TRABAJO';
COMMENT ON COLUMN cct.nombre IS 'NOMBRE';
COMMENT ON COLUMN cct.cct_domicilio IS 'CCT DOMICILIO';
COMMENT ON COLUMN cct.calle1 IS 'CALLE 1';
COMMENT ON COLUMN cct.calle2 IS 'CALLE 2';
COMMENT ON COLUMN cct.cod_entidad IS 'CODIGO ENTIDAD';
COMMENT ON COLUMN cct.cod_municipio IS 'CODIGO MUNICIPIO';
COMMENT ON COLUMN cct.cod_localidad IS 'CODIGO LOCALIDAD';
COMMENT ON COLUMN cct.telefono IS 'TELEFONO';
COMMENT ON COLUMN cct.fax IS 'FAX';
COMMENT ON COLUMN cct.cod_dep_admin IS 'CODIGO DEPENDENCIA ADMINISTRATIVA';
COMMENT ON COLUMN cct.cod_clasific IS 'CODIGO CLASIFICACION';
COMMENT ON COLUMN cct.cod_identificador IS 'CODIGO IDENTIFICADOR';
COMMENT ON COLUMN cct.cod_dep_normat IS 'CODIGO DEPENDENCIA NORMATIVA';
COMMENT ON COLUMN cct.cod_servicio IS 'CODIGO SERVICIO';
COMMENT ON COLUMN cct.cod_serv_reg IS 'CODIGO SERVICIO REG';
COMMENT ON COLUMN cct.cod_cep_anio IS 'CODIGO CEP A?O';
COMMENT ON COLUMN cct.zona_escolar IS 'ZONA ESCOLAR';
COMMENT ON COLUMN cct.sector IS 'SECTOR';
COMMENT ON COLUMN cct.cod_almacen_acopio IS 'CODIGO ALMACEN ACOPIO';
COMMENT ON COLUMN cct.cod_sostenimiento IS 'CODIGO SOSTENIMIENTO';
COMMENT ON COLUMN cct.cod_turno IS 'CODIGO TURNO';
COMMENT ON COLUMN cct.cve_inmueble IS 'CLAVE INMUEBLE';
COMMENT ON COLUMN cct.cod_tip_incorp IS 'CODIGO TIPO INCORPORACION';
COMMENT ON COLUMN cct.numofincor IS 'NUMERO OF INCORPORACION';
COMMENT ON COLUMN cct.fecha_incorpo IS 'FECHA INCORPORACION';
COMMENT ON COLUMN cct.cve_economica IS 'CLAVE ECONOMICA';
COMMENT ON COLUMN cct.fecha_apertura IS 'FECHA APERTURA';
COMMENT ON COLUMN cct.cod_situacion IS 'CODIGO SITUACION';
COMMENT ON COLUMN cct.fecha_alta IS 'FECHA ALTA';
COMMENT ON COLUMN cct.fecha_ult_act IS 'FECHA ULTIMA ACTUALIZACION';
COMMENT ON COLUMN cct.cod_modalidad_ed IS 'CODIGO MODALIDAD ED';
COMMENT ON COLUMN cct.dir_paterno IS 'DIRECTOR PATERNO';
COMMENT ON COLUMN cct.dir_materno IS 'DIRECTOR MATERNO';
COMMENT ON COLUMN cct.dir_nombre IS 'DIRECTOR NOMBRE';
COMMENT ON COLUMN cct.cod_movimiento IS 'CODIGO MOVIMIENTO';
COMMENT ON COLUMN cct.cod_soporte_mov IS 'CODIGO SOPORTE MOVIMIENTO';
COMMENT ON COLUMN cct.folio_probatorio IS 'FOLIO PROBATORIO';
COMMENT ON COLUMN cct.fecha_solicitud IS 'FEHCA SOLICITUD';
COMMENT ON COLUMN cct.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN cct.fecha_creacion IS 'FECHA CREACION';
COMMENT ON COLUMN cct.fecha_ult_mod IS 'FECHA ULTIMO MODIFICACION';
COMMENT ON COLUMN cct.usua_ult_mod IS 'USUARIO ULTIMA MODIFICACION';
COMMENT ON COLUMN cct.firma_digital IS 'FIRMA DIGITAL';
COMMENT ON COLUMN cct.ext_telefono IS 'EXTENSION TELEFONO';
COMMENT ON COLUMN cct.usoinm_aulas IS 'USO INM_AULAS';
COMMENT ON COLUMN cct.ext_fax IS 'EXTENSION FAX';
COMMENT ON COLUMN cct.cod_motivo IS 'CODIGO MOTIVO';
COMMENT ON COLUMN cct.usoinm_labs IS 'USO INM_LABORATORIOS';
COMMENT ON COLUMN cct.correo IS 'CORREO';
COMMENT ON COLUMN cct.usoinm_talleres IS 'USO INM_TALLERES';
COMMENT ON COLUMN cct.web IS 'WEB';
COMMENT ON COLUMN cct.usoinm_cubs IS 'USO INM_CUBICULOS';
COMMENT ON COLUMN cct.cod_delegacion IS 'CODIGO DELEGACION';
COMMENT ON COLUMN cct.cveinm IS 'CLAVE INMUEBLE';
COMMENT ON COLUMN cct.correo_sep_df IS 'CORREO SEP DF';
COMMENT ON COLUMN cct.cod_responsable IS 'CODIGO RESPONSABLE';
COMMENT ON COLUMN cct.domicilio_2 IS 'DOMICILIO 2';
COMMENT ON COLUMN cct.numero_interior IS 'NUMERO INTERIOR';
COMMENT ON COLUMN cct.numero_exterior IS 'NUMERO EXTERIOR';
COMMENT ON COLUMN cct.nombre2 IS 'NOMBRE 2';
COMMENT ON COLUMN cct.curp_director IS 'CURP DIRECTOR';
COMMENT ON COLUMN cct.rfc_director IS 'RFC DIRECTOR';


PROMPT CREATE TABLE cicloescolar
CREATE TABLE cicloescolar (
  id          NUMBER(19,0)       NOT NULL,
  activo      NUMBER(1,0)        NULL,
  descripcion VARCHAR2(255 CHAR) NULL,
  fechafin    TIMESTAMP(6)       NULL,
  fechainicio TIMESTAMP(6)       NULL,
  nombre      VARCHAR2(255 CHAR) NULL,
  estatus     NUMBER(19,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE cicloescolar IS 'CATALOGO CICLOESCOLAR';

COMMENT ON COLUMN cicloescolar.id IS 'ID';
COMMENT ON COLUMN cicloescolar.activo IS 'ACTIVO';
COMMENT ON COLUMN cicloescolar.descripcion IS 'DESCRIPCION';
COMMENT ON COLUMN cicloescolar.fechafin IS 'FECHA FIN';
COMMENT ON COLUMN cicloescolar.fechainicio IS 'FECHA INICIO';
COMMENT ON COLUMN cicloescolar.nombre IS 'NOMBRE';
COMMENT ON COLUMN cicloescolar.estatus IS 'ESTATUS';


PROMPT CREATE TABLE cit
CREATE TABLE cit (
  cod_entidad            CHAR(2)      NOT NULL,
  cod_municipio          CHAR(3)      NOT NULL,
  cod_localidad          CHAR(4)      NOT NULL,
  nombre                 CHAR(50)     NULL,
  codigo_postal          CHAR(5)      NULL,
  cod_cat_polit          CHAR(2)      NULL,
  cod_cat_pobl           CHAR(1)      NULL,
  cod_ran_pobl           CHAR(1)      NULL,
  areametro              CHAR(2)      NULL,
  frontera               CHAR(2)      NULL,
  num_hab                CHAR(8)      NULL,
  cod_leng_indig         CHAR(4)      NULL,
  cod_agua               CHAR(1)      NULL,
  cod_electr             CHAR(1)      NULL,
  cod_drenaje            CHAR(1)      NULL,
  cod_sen_rad            CHAR(1)      NULL,
  cod_sen_tv             CHAR(1)      NULL,
  cod_via_acceso         CHAR(1)      NULL,
  cod_transporte         CHAR(1)      NULL,
  indic_ct               CHAR(1)      NULL,
  cod_comunicacion       CHAR(1)      NULL,
  cod_zona_bd            CHAR(1)      NULL,
  fecha_creacion         DATE         NULL,
  fecha_ult_mod          DATE         NULL,
  usua_ult_mod           CHAR(20)     NULL,
  firma_digital          CHAR(20)     NULL,
  indice_marginacion2010 NUMBER       NULL,
  grado_marginacion2010  VARCHAR2(20) NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE cit IS 'CATALOGO CIT';

COMMENT ON COLUMN cit.cod_entidad IS 'CODIGO ENTIDAD';
COMMENT ON COLUMN cit.cod_municipio IS 'CODIGO MUNICIPIO';
COMMENT ON COLUMN cit.cod_localidad IS 'CODIGO LOCALIDAD';
COMMENT ON COLUMN cit.nombre IS 'NOMBRE';
COMMENT ON COLUMN cit.codigo_postal IS 'CODIGO POSTAL';
COMMENT ON COLUMN cit.cod_cat_polit IS 'CODIGO CAT_POLIT';
COMMENT ON COLUMN cit.cod_cat_pobl IS 'CODIGO CAT_POBL';
COMMENT ON COLUMN cit.cod_ran_pobl IS 'CODIGO RAN_POBL';
COMMENT ON COLUMN cit.areametro IS 'AREAMETRO';
COMMENT ON COLUMN cit.frontera IS 'FRONTERA';
COMMENT ON COLUMN cit.num_hab IS 'NUMERO HABITANTES';
COMMENT ON COLUMN cit.cod_leng_indig IS 'CODIGO LENGUA INDIGENA';
COMMENT ON COLUMN cit.cod_agua IS 'CODIGO AGUA';
COMMENT ON COLUMN cit.cod_electr IS 'CODIGO ELECTRICIDAD';
COMMENT ON COLUMN cit.cod_drenaje IS 'CODIGO DRENAJE';
COMMENT ON COLUMN cit.cod_sen_rad IS 'CODIGO SEN_RAD';
COMMENT ON COLUMN cit.cod_sen_tv IS 'CODIGO SEN_TV';
COMMENT ON COLUMN cit.cod_via_acceso IS 'CODIGO VIA_ACCESO';
COMMENT ON COLUMN cit.cod_transporte IS 'CODIGO TRANSPORTE';
COMMENT ON COLUMN cit.indic_ct IS 'INDIC CT';
COMMENT ON COLUMN cit.cod_comunicacion IS 'CODIGO COMUNICACION';
COMMENT ON COLUMN cit.cod_zona_bd IS 'CODIGO ZONA BD';
COMMENT ON COLUMN cit.fecha_creacion IS 'FECHA CREACION';
COMMENT ON COLUMN cit.fecha_ult_mod IS 'FECHA ULTIMO MODIFICACION';
COMMENT ON COLUMN cit.usua_ult_mod IS 'USUARIO ULTIMA MODIFICACION';
COMMENT ON COLUMN cit.firma_digital IS 'FIRMA DIGITAL';
COMMENT ON COLUMN cit.indice_marginacion2010 IS 'INDICE MARGINACION 2010';
COMMENT ON COLUMN cit.grado_marginacion2010 IS 'GRADO MARGINACION 2010';


PROMPT CREATE TABLE clavesautorizacion
CREATE TABLE clavesautorizacion (
  id              NUMBER       NOT NULL,
  clave           VARCHAR2(70) NULL,
  usuariocreacion VARCHAR2(40) NULL,
  cct             VARCHAR2(40) NULL,
  usada           NUMBER       NULL,
  usuariofinal    VARCHAR2(40) NULL,
  fechauso        DATE         NULL,
  fechacaducidad  DATE         NULL,
  cantidad        NUMBER       NULL
)
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE clavesautorizacion IS 'CLAVES AUTORIZACION';

COMMENT ON COLUMN clavesautorizacion.id IS 'ID';
COMMENT ON COLUMN clavesautorizacion.clave IS 'CLAVE';
COMMENT ON COLUMN clavesautorizacion.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN clavesautorizacion.cct IS 'CENTRO DE TRABAJO';
COMMENT ON COLUMN clavesautorizacion.usada IS 'USADA';
COMMENT ON COLUMN clavesautorizacion.usuariofinal IS 'USUARIO FINAL';
COMMENT ON COLUMN clavesautorizacion.fechauso IS 'FECHA USO';
COMMENT ON COLUMN clavesautorizacion.fechacaducidad IS 'FECHA CADUCIDAD';
COMMENT ON COLUMN clavesautorizacion.cantidad IS 'CANTIDAD';


PROMPT CREATE TABLE coordinacion
CREATE TABLE coordinacion (
  id           NUMBER(19,0)       NOT NULL,
  nombre       VARCHAR2(255 CHAR) NULL,
  direccion_id NUMBER(19,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE coordinacion IS 'CATALOGO COORDINACION';

COMMENT ON COLUMN coordinacion.id IS 'ID';
COMMENT ON COLUMN coordinacion.nombre IS 'NOMBRFE';
COMMENT ON COLUMN coordinacion.direccion_id IS 'ID DIRECCION';


PROMPT CREATE TABLE cve_delegacion
CREATE TABLE cve_delegacion (
  cve_dele       VARCHAR2(3)  NULL,
  descripcion    VARCHAR2(30) NULL,
  fecha_creacion DATE         NULL,
  fecha_ult_mod  DATE         NULL,
  usua_ult_mod   VARCHAR2(20) NULL,
  firma_digital  VARCHAR2(20) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE cve_delegacion IS 'CATALOGO DELEGACIONES';

COMMENT ON COLUMN cve_delegacion.cve_dele IS 'CLAVE DELEGACION';
COMMENT ON COLUMN cve_delegacion.descripcion IS 'DESCRIPCION NOMBRE';
COMMENT ON COLUMN cve_delegacion.fecha_creacion IS 'FECHA CREACION';
COMMENT ON COLUMN cve_delegacion.fecha_ult_mod IS 'FECHA ULTIMA MODIFICACION';
COMMENT ON COLUMN cve_delegacion.usua_ult_mod IS 'USUARIO ULTIMA MODIFICACION';
COMMENT ON COLUMN cve_delegacion.firma_digital IS 'FIRMA DIGITAL';


PROMPT CREATE TABLE dependencia_normat
CREATE TABLE dependencia_normat (
  cod_dep_normat CHAR(2)   NOT NULL,
  des_dep_normat CHAR(100) NULL,
  fecha_creacion DATE      NULL,
  fecha_ult_mod  DATE      NULL,
  usua_ult_mod   CHAR(20)  NULL,
  firma_digital  CHAR(20)  NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE dependencia_normat IS 'CATALOGO DEPENDENCIA NORMATIVA';

COMMENT ON COLUMN dependencia_normat.cod_dep_normat IS 'CODIGO DEPENDENCIA NORMAATIVA';
COMMENT ON COLUMN dependencia_normat.des_dep_normat IS 'DESCRIPCION DEPENDENCIA NORMATIVA';
COMMENT ON COLUMN dependencia_normat.fecha_creacion IS 'FECHA CREACION';
COMMENT ON COLUMN dependencia_normat.fecha_ult_mod IS 'FECHAL ULTIMA MODIFICACION';
COMMENT ON COLUMN dependencia_normat.usua_ult_mod IS 'USUARIO ULTIMA MODIFICACION';
COMMENT ON COLUMN dependencia_normat.firma_digital IS 'FIRMA DIGITAL';


PROMPT CREATE TABLE dialecto
CREATE TABLE dialecto (
  id           NUMBER(19,0)  NOT NULL,
  lengua       VARCHAR2(255) NULL,
  pueblo_id    NUMBER(19,0)  NULL,
  equivalencia NUMBER        NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE dialecto IS 'CATALOGO DIALECTO';

COMMENT ON COLUMN dialecto.id IS 'ID';
COMMENT ON COLUMN dialecto.lengua IS 'NOMBRE LENGUA';
COMMENT ON COLUMN dialecto.pueblo_id IS 'ID PUEBLO';
COMMENT ON COLUMN dialecto.equivalencia IS 'EQUIVALENCIA';


PROMPT CREATE TABLE diplomas
CREATE TABLE diplomas (
  id              NUMBER             NOT NULL,
  alumno_id       NUMBER(19,0)       NULL,
  curp            VARCHAR2(255 CHAR) NULL,
  primerapellido  VARCHAR2(255 CHAR) NULL,
  segundoapellido VARCHAR2(255 CHAR) NULL,
  nombres         VARCHAR2(255 CHAR) NULL,
  taller_nombre   VARCHAR2(255 CHAR) NULL,
  cve_taller      VARCHAR2(255 CHAR) NULL,
  cicloescolar_id NUMBER             NULL,
  plantel_id      NUMBER             NULL,
  folio           VARCHAR2(22)       NULL
)
  STORAGE (
    INITIAL   10240 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE diplomas IS 'DIPLOMAS ALUMNOS';

COMMENT ON COLUMN diplomas.id IS 'ID';
COMMENT ON COLUMN diplomas.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN diplomas.curp IS 'CURP';
COMMENT ON COLUMN diplomas.primerapellido IS 'PRIMER APELLIDO';
COMMENT ON COLUMN diplomas.segundoapellido IS 'SEGUNDO APELLIDO';
COMMENT ON COLUMN diplomas.nombres IS 'NOMBRES';
COMMENT ON COLUMN diplomas.taller_nombre IS 'TALLER NOMBRE';
COMMENT ON COLUMN diplomas.cve_taller IS 'CLAVE TALLER';
COMMENT ON COLUMN diplomas.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN diplomas.plantel_id IS 'ID PLANTEL';


PROMPT CREATE TABLE direcciongeneral
CREATE TABLE direcciongeneral (
  id                   NUMBER(19,0)       NOT NULL,
  nombre               VARCHAR2(255 CHAR) NULL,
  siglas               VARCHAR2(19)       NULL,
  jefe_control_escolar VARCHAR2(255)      NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE direcciongeneral IS 'CATALOGO DIRECCION GENERAL';

COMMENT ON COLUMN direcciongeneral.id IS 'ID';
COMMENT ON COLUMN direcciongeneral.nombre IS 'NOMBRE';
COMMENT ON COLUMN direcciongeneral.siglas IS 'SIGLAS';
COMMENT ON COLUMN direcciongeneral.jefe_control_escolar IS 'JEFE CONTROL ESCOLAR';


PROMPT CREATE TABLE discapacidad
CREATE TABLE discapacidad (
  id              NUMBER(19,0)       NOT NULL,
  nombre          VARCHAR2(255 CHAR) NULL,
  cvediscapacidad VARCHAR2(10)       NULL,
  cve_matricula   NUMBER(19,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE discapacidad IS 'CATALOGO DISCAPACIDAD';

COMMENT ON COLUMN discapacidad.id IS 'ID';
COMMENT ON COLUMN discapacidad.nombre IS 'NOMBRE';
COMMENT ON COLUMN discapacidad.cvediscapacidad IS 'CLAVE DISCAPACIDAD';
COMMENT ON COLUMN discapacidad.cve_matricula IS 'CLAVE MATRICULA';


PROMPT CREATE TABLE documento_fechaentrega
CREATE TABLE documento_fechaentrega (
  id               NUMBER(19,0)  NOT NULL,
  cicloescolar_id  NUMBER(19,0)  NULL,
  nivelescolar_id  NUMBER(19,0)  NULL,
  tipodocumento_id NUMBER(19,0)  NULL,
  fecha            DATE          NULL,
  fecha_texto      VARCHAR2(128) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE documento_fechaentrega IS 'DOCUMENTO FECHA ENTREGA';

COMMENT ON COLUMN documento_fechaentrega.id IS 'ID';
COMMENT ON COLUMN documento_fechaentrega.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN documento_fechaentrega.nivelescolar_id IS 'ID NIVEL ESCOLAR';
COMMENT ON COLUMN documento_fechaentrega.tipodocumento_id IS 'ID TIPO DOCUMENTO';
COMMENT ON COLUMN documento_fechaentrega.fecha IS 'FECHA';
COMMENT ON COLUMN documento_fechaentrega.fecha_texto IS 'FECHA EN TEXTO';


PROMPT CREATE TABLE domicilio
CREATE TABLE domicilio (
  id              NUMBER(19,0)       NOT NULL,
  calle           VARCHAR2(255 CHAR) NULL,
  numext          VARCHAR2(255 CHAR) NULL,
  numint          VARCHAR2(255 CHAR) NULL,
  id_asentamiento NUMBER(19,0)       NULL,
  asentamiento_id NUMBER(19,0)       NULL,
  otracolonia     VARCHAR2(255)      NULL
)
  STORAGE (
    INITIAL  188416 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE domicilio IS 'DOMICILIO';

COMMENT ON COLUMN domicilio.id IS 'ID';
COMMENT ON COLUMN domicilio.calle IS 'NOMBRE CALLE';
COMMENT ON COLUMN domicilio.numext IS 'NUMERO EXTERIOR';
COMMENT ON COLUMN domicilio.numint IS 'NUMERO INTERIOR';
COMMENT ON COLUMN domicilio.id_asentamiento IS 'ID ASENTAMIENTO';
COMMENT ON COLUMN domicilio.asentamiento_id IS 'ID ASENTAMIENTO';
COMMENT ON COLUMN domicilio.otracolonia IS 'OTRA COLONIA';


PROMPT CREATE TABLE empleado
CREATE TABLE empleado (
  id      NUMBER(19,0) NOT NULL,
  tipo_id NUMBER(19,0) NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE empleado IS 'EMPLEADO
';

COMMENT ON COLUMN empleado.id IS 'ID';
COMMENT ON COLUMN empleado.tipo_id IS 'ID TIPO';


PROMPT CREATE TABLE empleado_plaza
CREATE TABLE empleado_plaza (
  empleado_id NUMBER(19,0) NULL,
  plaza_id    NUMBER(19,0) NULL
)
  STORAGE (
    INITIAL   12288 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE empleado_plaza IS 'EMPLEADO PLAZA';

COMMENT ON COLUMN empleado_plaza.empleado_id IS 'ID EMPLEADO';
COMMENT ON COLUMN empleado_plaza.plaza_id IS 'ID PLAZA';


PROMPT CREATE TABLE encuesta_oic
CREATE TABLE encuesta_oic (
  id                             NUMBER        NULL,
  informacion                    VARCHAR2(200) NULL,
  trato_servidorp                VARCHAR2(100) NULL,
  instalaciones                  VARCHAR2(100) NULL,
  solicito_dinero                NUMBER        NULL,
  esta_satisfecho                NUMBER        NULL,
  discriminacion                 NUMBER        NULL,
  discriminacion_adulto_mayor    NUMBER        NULL,
  discriminacion_discapacidad    NUMBER        NULL,
  discriminacion_afrodescendient NUMBER        NULL,
  discriminacion_vihsidad        NUMBER        NULL,
  discriminacion_religion        NUMBER        NULL,
  discriminacion_psexual         NUMBER        NULL,
  discriminacion_getnico         NUMBER        NULL,
  discriminacion_joven           NUMBER        NULL,
  discriminacion_migrante        NUMBER        NULL,
  discriminacion_trabajahogar    NUMBER        NULL,
  discriminacion_hombre_mujer    NUMBER        NULL,
  discriminacion_ideaspoliticas  NUMBER        NULL,
  discriminacion_otra            VARCHAR2(100) NULL,
  sugerencia_menos_requisitos    NUMBER        NULL,
  sugerencia_unapersonaatienda   NUMBER        NULL,
  sugerencia_capacitacionpersona NUMBER        NULL,
  sugerencia_notardentanto       NUMBER        NULL,
  sugerencia_personaamable       NUMBER        NULL,
  sugerencia_solucionquejas      NUMBER        NULL,
  sugerencia_ampliarhorario      NUMBER        NULL,
  sugerencia_formatosencillo     NUMBER        NULL,
  sugerencia_internet            NUMBER        NULL,
  sugerencia_eliminarerrores     NUMBER        NULL,
  sugerencia_hacerloportelefono  NUMBER        NULL,
  sugerencia_infoconsistente     NUMBER        NULL,
  sugerencia_pedirinfosolounavez NUMBER        NULL,
  sugerencia_otra                VARCHAR2(100) NULL,
  eltramitemejoro                NUMBER        NULL,
  opiniotecnologia               VARCHAR2(201) NULL,
  genero                         VARCHAR2(20)  NULL,
  ocupacion                      VARCHAR2(100) NULL,
  edad                           NUMBER        NULL,
  disenopagina                   VARCHAR2(50)  NULL,
  serviciopagina                 VARCHAR2(50)  NULL,
  usopagina                      VARCHAR2(50)  NULL,
  respuestapagina                VARCHAR2(50)  NULL,
  comentario_sugerencia          VARCHAR2(200) NULL,
  fecha_creacion                 DATE          DEFAULT SYSDATE NULL
)
  STORAGE (
    INITIAL    6144 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE encuesta_oic IS 'ENCUENTAS ORGANO INTERNO DE CONTROL';

COMMENT ON COLUMN encuesta_oic.id IS 'ID';
COMMENT ON COLUMN encuesta_oic.informacion IS 'INFORMACION';
COMMENT ON COLUMN encuesta_oic.trato_servidorp IS 'TRATO SERVIDOR P';
COMMENT ON COLUMN encuesta_oic.instalaciones IS 'INSTALACIONES';
COMMENT ON COLUMN encuesta_oic.solicito_dinero IS 'SOLICITO DINERO';
COMMENT ON COLUMN encuesta_oic.esta_satisfecho IS 'ESTA SATISFECHO';
COMMENT ON COLUMN encuesta_oic.discriminacion IS 'DISCRIMINACION';
COMMENT ON COLUMN encuesta_oic.discriminacion_adulto_mayor IS 'DISCRIMINACION ADULTO MAYOR';
COMMENT ON COLUMN encuesta_oic.discriminacion_discapacidad IS 'DISCRIMINACION DISCAPACIDAD';
COMMENT ON COLUMN encuesta_oic.discriminacion_afrodescendient IS 'DISCRIMINACION AFRO DESCENDIENTE';
COMMENT ON COLUMN encuesta_oic.discriminacion_vihsidad IS 'DISCRIMINACION VIH SIDAD';
COMMENT ON COLUMN encuesta_oic.discriminacion_religion IS 'DISCRIMINACION RELIGION';
COMMENT ON COLUMN encuesta_oic.discriminacion_psexual IS 'DISCRIMINACION P SEXUAL';
COMMENT ON COLUMN encuesta_oic.discriminacion_getnico IS 'DISCRIMINACION GETNICO';
COMMENT ON COLUMN encuesta_oic.discriminacion_joven IS 'DISCRIMINACION JOVEN';
COMMENT ON COLUMN encuesta_oic.discriminacion_migrante IS 'DISCRIMINACION MIGRANTE';
COMMENT ON COLUMN encuesta_oic.discriminacion_trabajahogar IS 'DISCRIMINACION TRABAJA HOGAR';
COMMENT ON COLUMN encuesta_oic.discriminacion_hombre_mujer IS 'DISCRIMINACION HOMBRE MUJER';
COMMENT ON COLUMN encuesta_oic.discriminacion_ideaspoliticas IS 'DISCRIMINACION IDEAS POLITICAS';
COMMENT ON COLUMN encuesta_oic.discriminacion_otra IS 'DISCRIMINACION OTRA';
COMMENT ON COLUMN encuesta_oic.sugerencia_menos_requisitos IS 'SUGERENCIA MENOS REQUISITOS';
COMMENT ON COLUMN encuesta_oic.sugerencia_unapersonaatienda IS 'SUGERENCIA UNA PERSONA ATIENDA';
COMMENT ON COLUMN encuesta_oic.sugerencia_capacitacionpersona IS 'SUGERENCIA CAPACITACION PERSONA';
COMMENT ON COLUMN encuesta_oic.sugerencia_notardentanto IS 'SUGERENCIA NO TARDENTANTO';
COMMENT ON COLUMN encuesta_oic.sugerencia_personaamable IS 'SUGERENCIA PERSONA AMABLE';
COMMENT ON COLUMN encuesta_oic.sugerencia_solucionquejas IS 'SUGERENCIA SOLUCION QUEJAS';
COMMENT ON COLUMN encuesta_oic.sugerencia_ampliarhorario IS 'SUGERENCIA AMPLIAR HORARIO';
COMMENT ON COLUMN encuesta_oic.sugerencia_formatosencillo IS 'SUGERENCIA FORMO SENCILLO';
COMMENT ON COLUMN encuesta_oic.sugerencia_internet IS 'SUGERENCIA INTERNET';
COMMENT ON COLUMN encuesta_oic.sugerencia_eliminarerrores IS 'SUGERENCIA ELIMINAR ERRORES';
COMMENT ON COLUMN encuesta_oic.sugerencia_hacerloportelefono IS 'SUGERENCIA HACERLO POR TELEFONO';
COMMENT ON COLUMN encuesta_oic.sugerencia_infoconsistente IS 'SUGERENCIA INFORMACION CONSISTENTE';
COMMENT ON COLUMN encuesta_oic.sugerencia_pedirinfosolounavez IS 'SUGERENCIA PERDIR INFORMES SOLA UNA VEZ';
COMMENT ON COLUMN encuesta_oic.sugerencia_otra IS 'SUGERENCIA OTRA';
COMMENT ON COLUMN encuesta_oic.eltramitemejoro IS 'EL TRAMITE MEJORO';
COMMENT ON COLUMN encuesta_oic.opiniotecnologia IS 'OPINION TECNOLOGIA';
COMMENT ON COLUMN encuesta_oic.genero IS 'GENERO';
COMMENT ON COLUMN encuesta_oic.ocupacion IS 'OCUPACION';
COMMENT ON COLUMN encuesta_oic.edad IS 'EDAD';
COMMENT ON COLUMN encuesta_oic.disenopagina IS 'DISE?O PAGINA';
COMMENT ON COLUMN encuesta_oic.serviciopagina IS 'SERVICIO PAGINA';
COMMENT ON COLUMN encuesta_oic.usopagina IS 'USO PAGINA';
COMMENT ON COLUMN encuesta_oic.respuestapagina IS 'RESPUESTA PAGINA';
COMMENT ON COLUMN encuesta_oic.comentario_sugerencia IS 'COMENTARIO SUGERENCIA';
COMMENT ON COLUMN encuesta_oic.fecha_creacion IS 'FECHA CREACION';


PROMPT CREATE TABLE estadistica_cuadro_concentra
CREATE TABLE estadistica_cuadro_concentra (
  id                    NUMBER(19,0) NULL,
  alumnosinscritos      NUMBER(10,0) NULL,
  numeroaltas           NUMBER(10,0) NULL,
  numerobajas           NUMBER(10,0) NULL,
  alumnosaprobados      NUMBER(10,0) NULL,
  alumnosreprobados     NUMBER(19,0) NULL,
  periodo_id            NUMBER(19,0) NULL,
  cicloescolar_id       NUMBER(19,0) NULL,
  materia_id            NUMBER(19,0) NULL,
  grupo_id              NUMBER(19,0) NULL,
  promedioperiodo       NUMBER(4,1)  NULL,
  cve_materia           NUMBER(19,0) NULL,
  usuariocreacion       VARCHAR2(32) NULL,
  fechacreacion         DATE         NULL,
  por_alumnosaprobados  FLOAT(19)    NULL,
  por_alumnosreprobados FLOAT(126)   NULL
)
  STORAGE (
    INITIAL   62464 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE estadistica_cuadro_concentra IS 'ESTADISTICA CUADRO CONCENTRA';

COMMENT ON COLUMN estadistica_cuadro_concentra.id IS 'ID';
COMMENT ON COLUMN estadistica_cuadro_concentra.alumnosinscritos IS 'ALUMNOS INSCRITOS';
COMMENT ON COLUMN estadistica_cuadro_concentra.numeroaltas IS 'NUMERO ALTAS';
COMMENT ON COLUMN estadistica_cuadro_concentra.numerobajas IS 'NUMERO BAJAS';
COMMENT ON COLUMN estadistica_cuadro_concentra.alumnosaprobados IS 'ALUMNOS APROBADOS';
COMMENT ON COLUMN estadistica_cuadro_concentra.alumnosreprobados IS 'ALUMNOS REPROBADOS';
COMMENT ON COLUMN estadistica_cuadro_concentra.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN estadistica_cuadro_concentra.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN estadistica_cuadro_concentra.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN estadistica_cuadro_concentra.grupo_id IS 'ID GRUPO';
COMMENT ON COLUMN estadistica_cuadro_concentra.promedioperiodo IS 'PROMEDIO PERIODO';
COMMENT ON COLUMN estadistica_cuadro_concentra.cve_materia IS 'CLAVE MATERIA';
COMMENT ON COLUMN estadistica_cuadro_concentra.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN estadistica_cuadro_concentra.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN estadistica_cuadro_concentra.por_alumnosaprobados IS 'POR ALUMNOS APROBADOS';
COMMENT ON COLUMN estadistica_cuadro_concentra.por_alumnosreprobados IS 'POR ALUMNOS REPROBADOS';


PROMPT CREATE TABLE estado
CREATE TABLE estado (
  id          NUMBER(19,0)       NOT NULL,
  nombre      VARCHAR2(255 CHAR) NULL,
  id_pais     NUMBER(19,0)       NULL,
  abreviacion VARCHAR2(255)      NULL,
  pais_id     NUMBER(19,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE estado IS 'CATALOGO ESTADO';

COMMENT ON COLUMN estado.id IS 'ID';
COMMENT ON COLUMN estado.nombre IS 'NOMBRE ESTADO';
COMMENT ON COLUMN estado.id_pais IS 'ID PAIS';
COMMENT ON COLUMN estado.abreviacion IS 'ABREVIACION';
COMMENT ON COLUMN estado.pais_id IS 'ID PAIS';


PROMPT CREATE TABLE evaluacion
CREATE TABLE evaluacion (
  id                  NUMBER(19,0)       NOT NULL,
  calificacion        NUMBER(4,1)        NULL,
  fechacreacion       DATE               NULL,
  inasistencias       NUMBER(19,0)       NULL,
  observaciones       VARCHAR2(255 CHAR) NULL,
  username            VARCHAR2(255 CHAR) NULL,
  cicloescolar_id     NUMBER(19,0)       NULL,
  materia_id          NUMBER(10,0)       NULL,
  periodo_id          NUMBER(19,0)       NULL,
  alumno_id           NUMBER(19,0)       NULL,
  cve_materia         VARCHAR2(6)        NULL,
  recupera            NUMBER             NULL,
  calificacion_entera NUMBER(4,2)        NULL
)
  STORAGE (
    INITIAL 2097151 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE evaluacion IS 'EVALUACION';

COMMENT ON COLUMN evaluacion.id IS 'ID';
COMMENT ON COLUMN evaluacion.calificacion IS '''A'' : -1; ''Q'' : -2; ''X'' : -3; ''PA'': -4; ''PO'': -5; null: -6';
COMMENT ON COLUMN evaluacion.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN evaluacion.inasistencias IS 'INASISTENCIAS';
COMMENT ON COLUMN evaluacion.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN evaluacion.username IS 'USERNAME';
COMMENT ON COLUMN evaluacion.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN evaluacion.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN evaluacion.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN evaluacion.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN evaluacion.cve_materia IS 'CLAVE MATERIA';
COMMENT ON COLUMN evaluacion.recupera IS 'RECUPERA';
COMMENT ON COLUMN evaluacion.calificacion_entera IS 'CALIFICACION ENTERA';


PROMPT CREATE TABLE evaluacion_extraordinario
CREATE TABLE evaluacion_extraordinario (
  id                        NUMBER(19,0)       NOT NULL,
  calificacion              NUMBER(19,0)       NULL,
  fechacreacion             DATE               NULL,
  username                  VARCHAR2(255 CHAR) NULL,
  cicloescolar_id           NUMBER(19,0)       NULL,
  materia_id                NUMBER(10,0)       NULL,
  periodo_extraordinario_id NUMBER(19,0)       NULL,
  fechaexamen               DATE               NULL,
  tecnologia_id             NUMBER(19,0)       NULL,
  cve_materia               VARCHAR2(6)        NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE evaluacion_extraordinario IS 'EVALUACION EXTRA ORDINARIOS';

COMMENT ON COLUMN evaluacion_extraordinario.id IS 'ID';
COMMENT ON COLUMN evaluacion_extraordinario.calificacion IS 'CALIFICACION';
COMMENT ON COLUMN evaluacion_extraordinario.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN evaluacion_extraordinario.username IS 'USERNAME';
COMMENT ON COLUMN evaluacion_extraordinario.cicloescolar_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN evaluacion_extraordinario.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN evaluacion_extraordinario.periodo_extraordinario_id IS 'ID PERIODO EXTRAORDINARIO';
COMMENT ON COLUMN evaluacion_extraordinario.fechaexamen IS 'FECHA EXCAMEN';
COMMENT ON COLUMN evaluacion_extraordinario.tecnologia_id IS 'ID TECNOLOGIA';
COMMENT ON COLUMN evaluacion_extraordinario.cve_materia IS 'CLAVE MATERIA';


PROMPT CREATE TABLE evaluacion_regul
CREATE TABLE evaluacion_regul (
  id              NUMBER(19,0)       NOT NULL,
  calificacion    NUMBER(19,0)       NULL,
  fechacreacion   DATE               NULL,
  inasistencias   NUMBER(19,0)       NULL,
  observaciones   VARCHAR2(255 CHAR) NULL,
  username        VARCHAR2(255 CHAR) NULL,
  cicloescolar_id NUMBER(19,0)       NULL,
  materia_id      NUMBER(10,0)       NULL,
  periodo_id      NUMBER(19,0)       NULL,
  clave_materia   VARCHAR2(6)        NULL
)
  STORAGE (
    INITIAL   46080 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE evaluacion_regul IS 'EVALUACION REGULARES';

COMMENT ON COLUMN evaluacion_regul.id IS 'ID';
COMMENT ON COLUMN evaluacion_regul.calificacion IS 'CALIFICACION';
COMMENT ON COLUMN evaluacion_regul.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN evaluacion_regul.inasistencias IS 'INASISTENCIAS';
COMMENT ON COLUMN evaluacion_regul.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN evaluacion_regul.username IS 'USERNAME';
COMMENT ON COLUMN evaluacion_regul.cicloescolar_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN evaluacion_regul.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN evaluacion_regul.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN evaluacion_regul.clave_materia IS 'CLAVE MATERIA';


PROMPT CREATE TABLE evaluacioncertificacion
CREATE TABLE evaluacioncertificacion (
  id               NUMBER(19,0)  NULL,
  alumno_id        NUMBER(19,0)  NULL,
  materia_id       NUMBER(10,0)  NULL,
  promedio_materia NUMBER(4,1)   NULL,
  grado            NUMBER(10,0)  NULL,
  cicloescolar_id  NUMBER(19,0)  NULL,
  fechacreacion    DATE          DEFAULT sysdate NULL,
  usuariocreacion  VARCHAR2(255) NULL
)
  STORAGE (
    INITIAL     128 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE evaluacioncertificacion IS 'EVALUACION CERTIFICACION';

COMMENT ON COLUMN evaluacioncertificacion.id IS 'ID';
COMMENT ON COLUMN evaluacioncertificacion.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN evaluacioncertificacion.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN evaluacioncertificacion.promedio_materia IS 'PROMEDIO MATERIA';
COMMENT ON COLUMN evaluacioncertificacion.grado IS 'GRADO';
COMMENT ON COLUMN evaluacioncertificacion.cicloescolar_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN evaluacioncertificacion.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN evaluacioncertificacion.usuariocreacion IS 'USUARIO CREACION';


PROMPT CREATE TABLE evaluacionextra
CREATE TABLE evaluacionextra (
  id              NUMBER       NOT NULL,
  calificacion    NUMBER(4,2)  NULL,
  fechacreacion   DATE         NULL,
  usuariocreacion VARCHAR2(19) NULL,
  cicloescolar_id NUMBER       NULL,
  materia_id      NUMBER       NULL,
  periodo_id      NUMBER       NULL,
  fecha           DATE         NULL,
  cve_materia     VARCHAR2(6)  NULL
)
  STORAGE (
    INITIAL   25600 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE evaluacionextra IS 'EVALUACION EXTRA';

COMMENT ON COLUMN evaluacionextra.id IS 'ID';
COMMENT ON COLUMN evaluacionextra.calificacion IS 'CALIFICACION';
COMMENT ON COLUMN evaluacionextra.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN evaluacionextra.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN evaluacionextra.cicloescolar_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN evaluacionextra.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN evaluacionextra.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN evaluacionextra.fecha IS 'FECHA';
COMMENT ON COLUMN evaluacionextra.cve_materia IS 'CLAVE MATERIA';


PROMPT CREATE TABLE evaluacionpg
CREATE TABLE evaluacionpg (
  id              NUMBER(19,0)  NULL,
  alumno_id       NUMBER(19,0)  NULL,
  promedio_gdo    NUMBER(4,1)   NULL,
  grado           NUMBER(10,0)  NULL,
  fechacreacion   DATE          DEFAULT sysdate NULL,
  usuariocreacion VARCHAR2(255) NULL,
  cicloescolar_id NUMBER(19,0)  NULL,
  tipo            NUMBER(1,0)   NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE evaluacionpg IS 'EVALUACION PROMEDIO GRADO
';

COMMENT ON COLUMN evaluacionpg.id IS 'ID';
COMMENT ON COLUMN evaluacionpg.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN evaluacionpg.promedio_gdo IS 'PROMEDIO GRADO';
COMMENT ON COLUMN evaluacionpg.grado IS 'GRADO';
COMMENT ON COLUMN evaluacionpg.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN evaluacionpg.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN evaluacionpg.cicloescolar_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN evaluacionpg.tipo IS 'TIPO';


PROMPT CREATE TABLE evaluacionrecupera
CREATE TABLE evaluacionrecupera (
  id              NUMBER       NULL,
  calificacion    NUMBER(4,2)  NULL,
  usuariocreacion VARCHAR2(19) NULL,
  cicloescolar_id NUMBER       NULL,
  materia_id      NUMBER       NULL,
  fecha           DATE         NULL,
  cve_materia     VARCHAR2(6)  NULL,
  alumno_id       NUMBER       NULL,
  periodo_id      NUMBER       NULL
)
  STORAGE (
    INITIAL   26624 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE evaluacionrecupera IS 'EVALUACION RECUPERA';

COMMENT ON COLUMN evaluacionrecupera.id IS 'ID';
COMMENT ON COLUMN evaluacionrecupera.calificacion IS 'CALIFICACION';
COMMENT ON COLUMN evaluacionrecupera.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN evaluacionrecupera.cicloescolar_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN evaluacionrecupera.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN evaluacionrecupera.fecha IS 'FECHA';
COMMENT ON COLUMN evaluacionrecupera.cve_materia IS 'CLAVE MATERIA';
COMMENT ON COLUMN evaluacionrecupera.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN evaluacionrecupera.periodo_id IS 'ID PERIODO';


PROMPT CREATE TABLE familiar
CREATE TABLE familiar (
  id                     NUMBER(19,0)  NOT NULL,
  escolaridad            NUMBER(10,0)  NULL,
  responsable            NUMBER(1,0)   NULL,
  sostieneeconomicamente NUMBER(1,0)   NULL,
  tutor                  NUMBER(1,0)   NULL,
  ocupacion_id           NUMBER(19,0)  NULL,
  parentesco             NUMBER(10,0)  NULL,
  usuariocreacion        VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE familiar IS 'FAMILIAR';

COMMENT ON COLUMN familiar.id IS 'ID';
COMMENT ON COLUMN familiar.escolaridad IS 'ESCOLARIDAD';
COMMENT ON COLUMN familiar.responsable IS 'RESPONSABLE';
COMMENT ON COLUMN familiar.sostieneeconomicamente IS 'SOSTIENE ECONOMICAMENTE';
COMMENT ON COLUMN familiar.tutor IS 'TUTOR';
COMMENT ON COLUMN familiar.ocupacion_id IS 'ID OCUPACION';
COMMENT ON COLUMN familiar.parentesco IS 'PARENTESCO';
COMMENT ON COLUMN familiar.usuariocreacion IS 'USUARIO CREACION';


PROMPT CREATE TABLE familiar_alumno
CREATE TABLE familiar_alumno (
  familiar_id NUMBER(19,0) NOT NULL,
  alumno_id   NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE familiar_alumno IS 'FAMILIAR ALUMNO';

COMMENT ON COLUMN familiar_alumno.familiar_id IS 'ID FAMILIAR';
COMMENT ON COLUMN familiar_alumno.alumno_id IS 'ID ALUMNO';


PROMPT CREATE TABLE foliocartilla
CREATE TABLE foliocartilla (
  id                NUMBER(19,0) NOT NULL,
  folio             VARCHAR2(15) NOT NULL,
  grado             NUMBER(2,0)  NOT NULL,
  alumno_id         NUMBER(19,0) NULL,
  fechacreacion     DATE         NULL,
  usuariocreacion   VARCHAR2(32) NULL,
  tipo_folio        NUMBER(1,0)  NULL,
  niveleducativo_id NUMBER(1,0)  NULL,
  cicloescolar_id   NUMBER(3,0)  NULL
)
  STORAGE (
    INITIAL  111616 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE foliocartilla IS 'FOLIO CARTILLA';

COMMENT ON COLUMN foliocartilla.id IS 'ID';
COMMENT ON COLUMN foliocartilla.folio IS 'FOLIO';
COMMENT ON COLUMN foliocartilla.grado IS 'GRADO';
COMMENT ON COLUMN foliocartilla.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN foliocartilla.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN foliocartilla.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN foliocartilla.tipo_folio IS 'TIPO FOLIO';
COMMENT ON COLUMN foliocartilla.niveleducativo_id IS 'ID NIVEL EDUCATIVO';
COMMENT ON COLUMN foliocartilla.cicloescolar_id IS 'ID CICLO ESCOLAR';


PROMPT CREATE TABLE foliocartilla_repetidores
CREATE TABLE foliocartilla_repetidores (
  id              NUMBER(19,0) NULL,
  folio           VARCHAR2(15) NOT NULL,
  grado           NUMBER(2,0)  NOT NULL,
  alumno_id       NUMBER(19,0) NULL,
  fechacreacion   DATE         NULL,
  usuariocreacion VARCHAR2(32) NULL,
  tipo_folio      NUMBER(1,0)  NULL,
  estatus         VARCHAR2(9)  NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE foliocartilla_repetidores IS 'FOLIO CARTILLA REPETIDORES';

COMMENT ON COLUMN foliocartilla_repetidores.id IS 'ID';


PROMPT CREATE TABLE foliocertificado
CREATE TABLE foliocertificado (
  id              NUMBER(19,0) NOT NULL,
  folio           VARCHAR2(10) NOT NULL,
  alumno_id       NUMBER(19,0) NOT NULL,
  fechacreacion   DATE         NOT NULL,
  usuariocreacion VARCHAR2(19) NULL
)
  STORAGE (
    INITIAL   11264 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE foliocertificado IS 'FOLIO CERTFICADO';

COMMENT ON COLUMN foliocertificado.id IS 'ID';
COMMENT ON COLUMN foliocertificado.folio IS 'FOLIO';
COMMENT ON COLUMN foliocertificado.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN foliocertificado.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN foliocertificado.usuariocreacion IS 'USUARIO CREACION';


PROMPT CREATE TABLE funcion
CREATE TABLE funcion (
  id            NUMBER(19,0)       NOT NULL,
  icono         VARCHAR2(255 CHAR) NULL,
  nombre        VARCHAR2(255 CHAR) NULL,
  target        VARCHAR2(255 CHAR) NULL,
  tipo          NUMBER(10,0)       NULL,
  url           VARCHAR2(255 CHAR) NULL,
  aplicacion_id NUMBER(19,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE funcion IS 'FUNCION';

COMMENT ON COLUMN funcion.id IS 'ID';
COMMENT ON COLUMN funcion.icono IS 'ICONO';
COMMENT ON COLUMN funcion.nombre IS 'NOMBRE TRAMITE';
COMMENT ON COLUMN funcion.target IS 'TARGET';
COMMENT ON COLUMN funcion.tipo IS 'TIPO';
COMMENT ON COLUMN funcion.url IS 'URL';
COMMENT ON COLUMN funcion.aplicacion_id IS 'ID APLICACION';


PROMPT CREATE TABLE funcion_autoridad
CREATE TABLE funcion_autoridad (
  funcion_id     NUMBER(19,0) NOT NULL,
  autoridades_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE funcion_autoridad IS 'FUNCION AUTORIDAD';

COMMENT ON COLUMN funcion_autoridad.funcion_id IS 'ID FUNCION';
COMMENT ON COLUMN funcion_autoridad.autoridades_id IS 'ID AUTORIDADES';


PROMPT CREATE TABLE funcionreal
CREATE TABLE funcionreal (
  id                 NUMBER(19,0)       NOT NULL,
  nombre             VARCHAR2(255 CHAR) NULL,
  nivel_educativo_id NUMBER             NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE funcionreal IS 'CATALOGO FUNCION REAL';

COMMENT ON COLUMN funcionreal.id IS 'ID';
COMMENT ON COLUMN funcionreal.nombre IS 'NOMBRE DE FUNCION';
COMMENT ON COLUMN funcionreal.nivel_educativo_id IS 'ID NIVEL EDUCATIVO';


PROMPT CREATE TABLE gastosplantel
CREATE TABLE gastosplantel (
  id         NUMBER NOT NULL,
  cuotas     NUMBER NULL,
  uniformes  NUMBER NULL,
  utiles     NUMBER NULL,
  ciclo_id   NUMBER NULL,
  plantel_id NUMBER NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE gastosplantel IS 'GASTOS PLANTEL';

COMMENT ON COLUMN gastosplantel.id IS 'ID';
COMMENT ON COLUMN gastosplantel.cuotas IS 'CUOTAS';
COMMENT ON COLUMN gastosplantel.uniformes IS 'UNIFORMES';
COMMENT ON COLUMN gastosplantel.utiles IS 'UTILES';
COMMENT ON COLUMN gastosplantel.ciclo_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN gastosplantel.plantel_id IS 'ID PLANTEL';


PROMPT CREATE TABLE grupo
CREATE TABLE grupo (
  id              NUMBER(19,0)       NOT NULL,
  grado           NUMBER(10,0)       NULL,
  nombre          VARCHAR2(255 CHAR) NULL,
  usuariocreacion VARCHAR2(255)      NULL,
  fechacreacion   DATE               DEFAULT sysdate NULL,
  plantel_id      NUMBER(19,0)       NULL,
  turno_id        NUMBER(19,0)       NULL,
  cicloescolar_id NUMBER(19,0)       NULL,
  nivelescolar_id NUMBER(19,0)       NULL,
  empleado_id     NUMBER(19,0)       NULL,
  aula_id         NUMBER             NULL
)
  STORAGE (
    INITIAL   13312 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE grupo IS 'GRUPO';

COMMENT ON COLUMN grupo.id IS 'ID';
COMMENT ON COLUMN grupo.grado IS 'GRADO';
COMMENT ON COLUMN grupo.nombre IS 'NOMBRE GRUPO';
COMMENT ON COLUMN grupo.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN grupo.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN grupo.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN grupo.turno_id IS 'ID TURNO';
COMMENT ON COLUMN grupo.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN grupo.nivelescolar_id IS 'ID NIVEL ESCOLAR';
COMMENT ON COLUMN grupo.empleado_id IS 'ID EMPLEADO';
COMMENT ON COLUMN grupo.aula_id IS 'ID AULA';


PROMPT CREATE TABLE grupotaller
CREATE TABLE grupotaller (
  id              NUMBER(19,0)  NOT NULL,
  tecnologia_id   NUMBER        NULL,
  usuariocreacion VARCHAR2(255) NULL,
  fechacreacion   DATE          DEFAULT sysdate NULL,
  plantel_id      NUMBER(19,0)  NULL,
  turno_id        NUMBER(19,0)  NULL,
  cicloescolar_id NUMBER(19,0)  NULL,
  nivelescolar_id NUMBER(19,0)  NULL,
  aula_id         NUMBER        NULL,
  grado           NUMBER        NULL,
  empleado_id     NUMBER        NULL,
  nombre          VARCHAR2(255) NULL
)
  STORAGE (
    INITIAL    6144 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE grupotaller IS 'GRUPO TALLER';

COMMENT ON COLUMN grupotaller.id IS 'ID';
COMMENT ON COLUMN grupotaller.tecnologia_id IS 'ID TECNOLOGIA';
COMMENT ON COLUMN grupotaller.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN grupotaller.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN grupotaller.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN grupotaller.turno_id IS 'ID TURNO';
COMMENT ON COLUMN grupotaller.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN grupotaller.nivelescolar_id IS 'ID NIVEL ESCOLAR';
COMMENT ON COLUMN grupotaller.aula_id IS 'ID AULA';
COMMENT ON COLUMN grupotaller.grado IS 'GRADO';
COMMENT ON COLUMN grupotaller.empleado_id IS 'ID EMPLEADO';
COMMENT ON COLUMN grupotaller.nombre IS 'NOMBRE';


PROMPT CREATE TABLE grupousuario
CREATE TABLE grupousuario (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE grupousuario IS 'CATALOGO GRUPO USUARIO';

COMMENT ON COLUMN grupousuario.id IS 'ID';
COMMENT ON COLUMN grupousuario.nombre IS 'NOMBRE';


PROMPT CREATE TABLE grupousuario_grupousuario
CREATE TABLE grupousuario_grupousuario (
  id_grupousuario NUMBER(19,0) NOT NULL,
  id_grupo        NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE grupousuario_usuario
CREATE TABLE grupousuario_usuario (
  id_grupousuario NUMBER(19,0) NOT NULL,
  id_usuario      NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE grupousuario_usuario IS 'GRUPO USUARIO USUARIO';

COMMENT ON COLUMN grupousuario_usuario.id_grupousuario IS 'ID GRUPO USUARIO';
COMMENT ON COLUMN grupousuario_usuario.id_usuario IS 'ID USUARIO';


PROMPT CREATE TABLE herramientas_aprendizaje
CREATE TABLE herramientas_aprendizaje (
  alumno_id        NUMBER(19,0)  NOT NULL,
  nivelescolar_id  NUMBER(19,0)  NOT NULL,
  cicloescolar_id  NUMBER(19,0)  NOT NULL,
  grado            NUMBER(1,0)   NOT NULL,
  periodo_id       NUMBER(19,0)  NOT NULL,
  observaciones    VARCHAR2(160) NULL,
  requiere_apoyo   NUMBER(1,0)   NULL,
  fecha_creacion   DATE          NULL,
  usuario_creacion VARCHAR2(32)  NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE herramientas_aprendizaje IS 'HERRAMIENTAS APRENDIZAJE';

COMMENT ON COLUMN herramientas_aprendizaje.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN herramientas_aprendizaje.nivelescolar_id IS 'ID NIVEL ESCOLAR';
COMMENT ON COLUMN herramientas_aprendizaje.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN herramientas_aprendizaje.grado IS 'GRADO';
COMMENT ON COLUMN herramientas_aprendizaje.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN herramientas_aprendizaje.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN herramientas_aprendizaje.requiere_apoyo IS 'REQUIERE APOYO';
COMMENT ON COLUMN herramientas_aprendizaje.fecha_creacion IS 'FECHA CREACION';
COMMENT ON COLUMN herramientas_aprendizaje.usuario_creacion IS 'USUARIO CREACION';


PROMPT CREATE TABLE historico_alumno_grupo
CREATE TABLE historico_alumno_grupo (
  alumno_id       NUMBER(19,0)       NOT NULL,
  cicloescolar_id NUMBER(19,0)       NULL,
  plantel_id      NUMBER(19,0)       NULL,
  grupo_id        NUMBER(19,0)       NOT NULL,
  grado           NUMBER(10,0)       NULL,
  turno_id        NUMBER(19,0)       NULL,
  grupo           VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    INITIAL   98304 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE historico_alumno_grupo IS 'HISTORICO ALUMNO GRUPO';

COMMENT ON COLUMN historico_alumno_grupo.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN historico_alumno_grupo.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN historico_alumno_grupo.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN historico_alumno_grupo.grupo_id IS 'ID GRUPO';
COMMENT ON COLUMN historico_alumno_grupo.grado IS 'GRADO';
COMMENT ON COLUMN historico_alumno_grupo.turno_id IS 'ID TURNO';
COMMENT ON COLUMN historico_alumno_grupo.grupo IS 'GRUPO';


PROMPT CREATE TABLE historico_alumno_grupotaller
CREATE TABLE historico_alumno_grupotaller (
  alumno_id       NUMBER(19,0)  NOT NULL,
  cicloescolar_id NUMBER(19,0)  NULL,
  plantel_id      NUMBER(19,0)  NULL,
  grupotaller_id  NUMBER(19,0)  NOT NULL,
  grado           NUMBER        NULL,
  turno_id        NUMBER(19,0)  NULL,
  grupo           VARCHAR2(255) NULL,
  tecnologia_id   NUMBER        NULL
)
  STORAGE (
    INITIAL   49152 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE historico_alumno_grupotaller IS 'HISTORICO ALUMNO GRUPO TALLER';

COMMENT ON COLUMN historico_alumno_grupotaller.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN historico_alumno_grupotaller.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN historico_alumno_grupotaller.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN historico_alumno_grupotaller.grupotaller_id IS 'ID GRUPO TALLER';
COMMENT ON COLUMN historico_alumno_grupotaller.grado IS 'GRADO';
COMMENT ON COLUMN historico_alumno_grupotaller.turno_id IS 'ID TURNO';
COMMENT ON COLUMN historico_alumno_grupotaller.grupo IS 'GRUPO';
COMMENT ON COLUMN historico_alumno_grupotaller.tecnologia_id IS 'ID TECNOLOGIA';


PROMPT CREATE TABLE historico_alumnor_evalextra
CREATE TABLE historico_alumnor_evalextra (
  alumno_id          NUMBER(19,0) NOT NULL,
  evaluacionextra_id NUMBER       NULL,
  calificacion       NUMBER(4,2)  NULL,
  fechacreacion      DATE         NULL,
  usuariocreacion    VARCHAR2(19) NULL,
  cicloescolar_id    NUMBER       NULL,
  materia_id         NUMBER       NULL,
  periodo_id         NUMBER       NULL,
  fecha              DATE         NULL,
  cve_materia        VARCHAR2(6)  NULL
)
  STORAGE (
    INITIAL     256 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE historico_alumnor_evalextra IS 'HISTORICO ALUMNOR EVALUACION EXTRA';

COMMENT ON COLUMN historico_alumnor_evalextra.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN historico_alumnor_evalextra.evaluacionextra_id IS 'ID EVALUACION EXTRA';
COMMENT ON COLUMN historico_alumnor_evalextra.calificacion IS 'CALIFICACION';
COMMENT ON COLUMN historico_alumnor_evalextra.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN historico_alumnor_evalextra.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN historico_alumnor_evalextra.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN historico_alumnor_evalextra.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN historico_alumnor_evalextra.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN historico_alumnor_evalextra.fecha IS 'FECHA';
COMMENT ON COLUMN historico_alumnor_evalextra.cve_materia IS 'CLAVE MATERIA';


PROMPT CREATE TABLE historico_alumnor_evalrecupera
CREATE TABLE historico_alumnor_evalrecupera (
  alumno_id             NUMBER(19,0) NOT NULL,
  evaluacionrecupera_id NUMBER       NULL,
  calificacion          NUMBER(4,2)  NULL,
  usuariocreacion       VARCHAR2(19) NULL,
  cicloescolar_id       NUMBER       NULL,
  materia_id            NUMBER       NULL,
  fecha                 DATE         NULL,
  cve_materia           VARCHAR2(6)  NULL,
  periodo_id            NUMBER(2,0)  NULL
)
  STORAGE (
    INITIAL     832 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE historico_alumnor_evalrecupera IS 'HISTORICO ALUMNOR EVALUACION RECUPERA';

COMMENT ON COLUMN historico_alumnor_evalrecupera.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN historico_alumnor_evalrecupera.evaluacionrecupera_id IS 'ID EVALUACION RECUPERA';
COMMENT ON COLUMN historico_alumnor_evalrecupera.calificacion IS 'CALIFICACION';
COMMENT ON COLUMN historico_alumnor_evalrecupera.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN historico_alumnor_evalrecupera.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN historico_alumnor_evalrecupera.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN historico_alumnor_evalrecupera.fecha IS 'FECHA';
COMMENT ON COLUMN historico_alumnor_evalrecupera.cve_materia IS 'CLAVE MATERIA';
COMMENT ON COLUMN historico_alumnor_evalrecupera.periodo_id IS 'ID PERIODO';


PROMPT CREATE TABLE historico_alumnor_evaluacion
CREATE TABLE historico_alumnor_evaluacion (
  alumno_id       NUMBER(19,0)       NOT NULL,
  evaluacion_id   NUMBER(19,0)       NOT NULL,
  fechacreacion   DATE               NULL,
  inasistencias   NUMBER(19,0)       NULL,
  observaciones   VARCHAR2(255 CHAR) NULL,
  username        VARCHAR2(255 CHAR) NULL,
  cicloescolar_id NUMBER(19,0)       NULL,
  materia_id      NUMBER(10,0)       NULL,
  periodo_id      NUMBER(19,0)       NULL,
  cve_materia     VARCHAR2(6)        NULL,
  recupera        NUMBER             NULL,
  calificacion    NUMBER(4,1)        NULL
)
  STORAGE (
    INITIAL   64512 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE historico_alumnor_evaluacion IS 'HISTORICO ALUMNOR EVALUACION';

COMMENT ON COLUMN historico_alumnor_evaluacion.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN historico_alumnor_evaluacion.evaluacion_id IS 'ID EVALUACION';
COMMENT ON COLUMN historico_alumnor_evaluacion.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN historico_alumnor_evaluacion.inasistencias IS 'INASISTENCIAS';
COMMENT ON COLUMN historico_alumnor_evaluacion.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN historico_alumnor_evaluacion.username IS 'USERNAME';
COMMENT ON COLUMN historico_alumnor_evaluacion.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN historico_alumnor_evaluacion.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN historico_alumnor_evaluacion.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN historico_alumnor_evaluacion.cve_materia IS 'CLAVE MATERIA';
COMMENT ON COLUMN historico_alumnor_evaluacion.recupera IS 'RECUPERA';
COMMENT ON COLUMN historico_alumnor_evaluacion.calificacion IS 'CALIFICACION';


PROMPT CREATE TABLE historico_alumnor_leceval
CREATE TABLE historico_alumnor_leceval (
  alumno_id            NUMBER(19,0) NOT NULL,
  lecturaevaluacion_id NUMBER       NULL,
  periodo_id           NUMBER       NULL,
  lecturahabilidad_id  NUMBER       NULL,
  cicloescolar_id      NUMBER       NULL,
  puntaje              NUMBER       NULL,
  grupo_id             NUMBER       NULL,
  nivelescolar_id      NUMBER(1,0)  NULL,
  grado                NUMBER(1,0)  NULL,
  semestre             NUMBER(1,0)  NULL
)
  STORAGE (
    INITIAL    7168 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE historico_alumnor_leceval IS 'HISTORICO ALUMNOR LECTURA EVALUACION';

COMMENT ON COLUMN historico_alumnor_leceval.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN historico_alumnor_leceval.lecturaevaluacion_id IS 'ID LECTURA EVALUACION';
COMMENT ON COLUMN historico_alumnor_leceval.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN historico_alumnor_leceval.lecturahabilidad_id IS 'ID LECTURA HABILIDAD';
COMMENT ON COLUMN historico_alumnor_leceval.cicloescolar_id IS 'ID CICLOESCOLAR';
COMMENT ON COLUMN historico_alumnor_leceval.puntaje IS 'PUNTAJE';
COMMENT ON COLUMN historico_alumnor_leceval.grupo_id IS 'ID GRUPO';
COMMENT ON COLUMN historico_alumnor_leceval.nivelescolar_id IS 'ID NIVEL ESCOLAR';
COMMENT ON COLUMN historico_alumnor_leceval.grado IS 'GRADO';
COMMENT ON COLUMN historico_alumnor_leceval.semestre IS 'SEMESTRE';


PROMPT CREATE TABLE inasistencia_preescolar
CREATE TABLE inasistencia_preescolar (
  id              NUMBER(19,0)  NOT NULL,
  alumno_id       NUMBER(19,0)  NOT NULL,
  inasistencia1   NUMBER(2,0)   NULL,
  inasistencia2   NUMBER(2,0)   NULL,
  inasistencia3   NUMBER(2,0)   NULL,
  fechacreacion   DATE          NULL,
  username        VARCHAR2(255) NULL,
  cicloescolar_id NUMBER(19,0)  NOT NULL
)
  STORAGE (
    INITIAL   14336 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE inasistencia_preescolar IS 'INASISTENCIA PREESCOLAR';

COMMENT ON COLUMN inasistencia_preescolar.id IS 'ID';
COMMENT ON COLUMN inasistencia_preescolar.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN inasistencia_preescolar.inasistencia1 IS 'INASISTENCIA 1';
COMMENT ON COLUMN inasistencia_preescolar.inasistencia2 IS 'INASISTENCIA 2';
COMMENT ON COLUMN inasistencia_preescolar.inasistencia3 IS 'INASISTENCIA 3';
COMMENT ON COLUMN inasistencia_preescolar.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN inasistencia_preescolar.username IS 'USERNAME';
COMMENT ON COLUMN inasistencia_preescolar.cicloescolar_id IS 'ID CICLO ESCOLAR';


PROMPT CREATE TABLE inasistenciaperiodo
CREATE TABLE inasistenciaperiodo (
  id            NUMBER(19,0)       NOT NULL,
  inasistencias NUMBER(10,0)       NULL,
  observaciones VARCHAR2(255 CHAR) NULL,
  alumno_id     NUMBER(19,0)       NULL,
  periodo_id    NUMBER(19,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE inasistenciaperiodo IS 'INASISTENCIA PERIODO';

COMMENT ON COLUMN inasistenciaperiodo.id IS 'ID';
COMMENT ON COLUMN inasistenciaperiodo.inasistencias IS 'INASISTENCIAS';
COMMENT ON COLUMN inasistenciaperiodo.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN inasistenciaperiodo.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN inasistenciaperiodo.periodo_id IS 'ID PERIODO';


PROMPT CREATE TABLE incidenciaempleado
CREATE TABLE incidenciaempleado (
  id                NUMBER(19,0)  NOT NULL,
  fechacreacion     DATE          NULL,
  fechafin          TIMESTAMP(6)  NULL,
  fechainicio       TIMESTAMP(6)  NULL,
  observacion       VARCHAR2(255) NULL,
  oficio            VARCHAR2(255) NULL,
  username          VARCHAR2(255) NULL,
  plaza_id          NUMBER(19,0)  NULL,
  tipo_id           NUMBER(19,0)  NULL,
  fechapresentacion TIMESTAMP(6)  NULL,
  motivo            VARCHAR2(500) NULL,
  empleado_id       NUMBER        NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE incidenciaempleado IS 'INCIDENCIA EMPLEADO';

COMMENT ON COLUMN incidenciaempleado.id IS 'ID';
COMMENT ON COLUMN incidenciaempleado.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN incidenciaempleado.fechafin IS 'FECHA FIN';
COMMENT ON COLUMN incidenciaempleado.fechainicio IS 'FECHA INICIO';
COMMENT ON COLUMN incidenciaempleado.observacion IS 'OBSERVACION';
COMMENT ON COLUMN incidenciaempleado.oficio IS 'OFICIO';
COMMENT ON COLUMN incidenciaempleado.username IS 'USERNAME';
COMMENT ON COLUMN incidenciaempleado.plaza_id IS 'ID PLAZA';
COMMENT ON COLUMN incidenciaempleado.tipo_id IS 'ID TIPO';
COMMENT ON COLUMN incidenciaempleado.fechapresentacion IS 'FECHA PRESENTACION';
COMMENT ON COLUMN incidenciaempleado.motivo IS 'MOTIVO';
COMMENT ON COLUMN incidenciaempleado.empleado_id IS 'ID EMPLEADO';


PROMPT CREATE TABLE incidenciaplantel
CREATE TABLE incidenciaplantel (
  id              NUMBER(19,0)       NOT NULL,
  status          VARCHAR2(255 CHAR) NULL,
  descripcion     VARCHAR2(4000)     NULL,
  email           VARCHAR2(255 CHAR) NULL,
  folio           VARCHAR2(255 CHAR) NULL,
  texto           VARCHAR2(255 CHAR) NULL,
  id_plantel      NUMBER(19,0)       NULL,
  tipo            NUMBER(2,0)        NULL,
  usuariocreacion VARCHAR2(255)      NULL,
  fechacreacion   DATE               DEFAULT sysdate NULL,
  fechaincidencia DATE               NULL,
  plantel_id      NUMBER(19,0)       NULL,
  username        VARCHAR2(30)       NULL,
  seguimiento     NUMBER(1,0)        NULL
)
  STORAGE (
    INITIAL   33792 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE incidenciaplantel IS 'INCIDENCIA PLANTEL';

COMMENT ON COLUMN incidenciaplantel.id IS 'ID';
COMMENT ON COLUMN incidenciaplantel.status IS 'STATUS';
COMMENT ON COLUMN incidenciaplantel.descripcion IS 'DESCRIPCION';
COMMENT ON COLUMN incidenciaplantel.email IS 'EMAIL';
COMMENT ON COLUMN incidenciaplantel.folio IS 'FOLIO';
COMMENT ON COLUMN incidenciaplantel.texto IS 'TEXTO';
COMMENT ON COLUMN incidenciaplantel.id_plantel IS 'ID PLANTEL';
COMMENT ON COLUMN incidenciaplantel.tipo IS 'TIPO';
COMMENT ON COLUMN incidenciaplantel.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN incidenciaplantel.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN incidenciaplantel.fechaincidencia IS 'FECHA INCIDENCIA';
COMMENT ON COLUMN incidenciaplantel.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN incidenciaplantel.username IS 'USERNAME';
COMMENT ON COLUMN incidenciaplantel.seguimiento IS 'SEGUIMIENTO';


PROMPT CREATE TABLE infosalud
CREATE TABLE infosalud (
  id               NUMBER(19,0)   NOT NULL,
  gruposanguineo   NUMBER(10,0)   NULL,
  peso             NUMBER(10,0)   NULL,
  talla            NUMBER(3,2)    NULL,
  derechohabiencia NUMBER(5,0)    NULL,
  desayuno         NUMBER(1,0)    NULL,
  observaciones    VARCHAR2(1000) NULL,
  alergias         VARCHAR2(1000) NULL,
  todelete         NUMBER(1,0)    NULL
)
  STORAGE (
    INITIAL   91136 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE infosalud IS 'INFORMACION SALUD';

COMMENT ON COLUMN infosalud.id IS 'ID';
COMMENT ON COLUMN infosalud.gruposanguineo IS 'GRUPO SANGUINEO';
COMMENT ON COLUMN infosalud.peso IS 'PESO';
COMMENT ON COLUMN infosalud.talla IS 'TALLA';
COMMENT ON COLUMN infosalud.derechohabiencia IS 'DERECHO HABIENCIA';
COMMENT ON COLUMN infosalud.desayuno IS 'DESAYUNO';
COMMENT ON COLUMN infosalud.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN infosalud.alergias IS 'ALERGIAS';
COMMENT ON COLUMN infosalud.todelete IS 'TO DELETE';


PROMPT CREATE TABLE inmueble
CREATE TABLE inmueble (
  id                   NUMBER(16,0) NOT NULL,
  capacidadalumnosaula NUMBER(16,0) NULL,
  superficie           NUMBER       NULL,
  construccion         NUMBER       NULL,
  tipoterreno          NUMBER       NULL,
  material             NUMBER       NULL,
  numeroniveles        NUMBER       NULL,
  numeroescaleras      NUMBER       NULL,
  adaptado             NUMBER       NULL,
  escaleraemergencia   NUMBER       NULL,
  claveinmueble        NUMBER       NULL,
  numerotinacos        INTEGER      NULL,
  rampa                NUMBER       NULL,
  plantel_id           NUMBER       NULL,
  libre                NUMBER       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE inmueble IS 'INMUEBLE';

COMMENT ON COLUMN inmueble.id IS 'ID';
COMMENT ON COLUMN inmueble.capacidadalumnosaula IS 'CAPACIDAD ALUMNOS AULA';
COMMENT ON COLUMN inmueble.superficie IS 'SUPERFICIE';
COMMENT ON COLUMN inmueble.construccion IS 'CONSTRUCCION';
COMMENT ON COLUMN inmueble.tipoterreno IS 'TIPO TERRENO';
COMMENT ON COLUMN inmueble.material IS 'MATERIAL';
COMMENT ON COLUMN inmueble.numeroniveles IS 'NUMERO NIVELES';
COMMENT ON COLUMN inmueble.numeroescaleras IS 'NUMERO ESCALERAS';
COMMENT ON COLUMN inmueble.adaptado IS 'ADAPTADO';
COMMENT ON COLUMN inmueble.escaleraemergencia IS 'ESCALERA EMERGENCIA';
COMMENT ON COLUMN inmueble.claveinmueble IS 'CLAVE INMUEBLE';
COMMENT ON COLUMN inmueble.numerotinacos IS 'NUMERO TINACOS';
COMMENT ON COLUMN inmueble.rampa IS 'RAMPA';
COMMENT ON COLUMN inmueble.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN inmueble.libre IS 'LIBRE';


PROMPT CREATE TABLE inmueble_servicios
CREATE TABLE inmueble_servicios (
  id           NUMBER NOT NULL,
  inmueble_id  NUMBER NULL,
  servicios_id NUMBER NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE inmueble_servicios IS 'INMUEBLE SERVICIOS';

COMMENT ON COLUMN inmueble_servicios.id IS 'ID';
COMMENT ON COLUMN inmueble_servicios.inmueble_id IS 'ID INMUEBLE';
COMMENT ON COLUMN inmueble_servicios.servicios_id IS 'ID SERVICIOS';


PROMPT CREATE TABLE lecturaevaluacion
CREATE TABLE lecturaevaluacion (
  id                  NUMBER       NOT NULL,
  periodo_id          NUMBER       NULL,
  lecturahabilidad_id NUMBER       NULL,
  cicloescolar_id     NUMBER       NULL,
  puntaje             NUMBER       NULL,
  grupo_id            NUMBER       NULL,
  alumno_id           NUMBER(19,0) NULL
)
  STORAGE (
    INITIAL  905216 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE lecturaevaluacion IS 'LECTURA EVALUACIN';

COMMENT ON COLUMN lecturaevaluacion.id IS 'ID';
COMMENT ON COLUMN lecturaevaluacion.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN lecturaevaluacion.lecturahabilidad_id IS 'ID LECTURA HABILIDAD';
COMMENT ON COLUMN lecturaevaluacion.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN lecturaevaluacion.puntaje IS 'PUNTAJE';
COMMENT ON COLUMN lecturaevaluacion.grupo_id IS 'ID GRUPO';
COMMENT ON COLUMN lecturaevaluacion.alumno_id IS 'ID ALUMNO';


PROMPT CREATE TABLE lecturahabilidad
CREATE TABLE lecturahabilidad (
  id     NUMBER        NOT NULL,
  nombre VARCHAR2(300) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE lecturahabilidad IS 'CATALOGO LECTURA HABILIDAD';

COMMENT ON COLUMN lecturahabilidad.id IS 'ID';
COMMENT ON COLUMN lecturahabilidad.nombre IS 'DESCRIPCION';


PROMPT CREATE TABLE lecturahabilidadlogro
CREATE TABLE lecturahabilidadlogro (
  id                   NUMBER NOT NULL,
  grado                NUMBER NULL,
  niveleducativo_id    NUMBER NULL,
  lecturahabilidad_id  NUMBER NULL,
  puntajeinicial       NUMBER NULL,
  puntajefinal         NUMBER NULL,
  lecturanivellogro_id NUMBER NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE lecturahabilidadlogro IS 'LECTURA HABILIDAD LOGRO';

COMMENT ON COLUMN lecturahabilidadlogro.id IS 'ID';
COMMENT ON COLUMN lecturahabilidadlogro.grado IS 'GRADO';
COMMENT ON COLUMN lecturahabilidadlogro.niveleducativo_id IS 'ID NIVEL EDUCATIVO';
COMMENT ON COLUMN lecturahabilidadlogro.lecturahabilidad_id IS 'ID LECTURA HABILIDAD';
COMMENT ON COLUMN lecturahabilidadlogro.puntajeinicial IS 'PUNTAJE INICIAL';
COMMENT ON COLUMN lecturahabilidadlogro.puntajefinal IS 'PUNTAJE FINAL';
COMMENT ON COLUMN lecturahabilidadlogro.lecturanivellogro_id IS 'ID LECTURA NIVEL LOGRO';


PROMPT CREATE TABLE lecturanivellogro
CREATE TABLE lecturanivellogro (
  id     NUMBER        NOT NULL,
  nombre VARCHAR2(300) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE lecturanivellogro IS 'CATALOGO LECTURA NIVEL LOGRO';

COMMENT ON COLUMN lecturanivellogro.id IS 'ID';
COMMENT ON COLUMN lecturanivellogro.nombre IS 'DESCRIPCION';


PROMPT CREATE TABLE local
CREATE TABLE local (
  id         NUMBER NOT NULL,
  cantidad   NUMBER NULL,
  plantel_id NUMBER NULL,
  tipo_id    NUMBER NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE local IS 'LOCAL';

COMMENT ON COLUMN local.id IS 'ID';
COMMENT ON COLUMN local.cantidad IS 'CANTIDAD';
COMMENT ON COLUMN local.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN local.tipo_id IS 'ID TIPO';


PROMPT CREATE TABLE materia
CREATE TABLE materia (
  id             NUMBER(10,0)       NOT NULL,
  fechacreacion  DATE               NULL,
  grado          NUMBER(10,0)       NULL,
  nombre         VARCHAR2(255 CHAR) NULL,
  numhorasanual  NUMBER(10,0)       NULL,
  numhorassemana NUMBER(10,0)       NULL,
  username       VARCHAR2(255 CHAR) NULL,
  abreviatura    VARCHAR2(20)       NULL,
  orden          NUMBER(3,0)        NULL,
  tipo           NUMBER             NULL,
  empleado_id    NUMBER             NULL,
  cve_materia    VARCHAR2(6)        NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE materia IS 'CATALOGO MATERIA SECUNDARIA';

COMMENT ON COLUMN materia.id IS 'ID';
COMMENT ON COLUMN materia.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN materia.grado IS 'GRADO';
COMMENT ON COLUMN materia.nombre IS 'NOMBRE';
COMMENT ON COLUMN materia.numhorasanual IS 'NUMERO HORAS ANUAL';
COMMENT ON COLUMN materia.numhorassemana IS 'NUMERO HORAS SEMANA';
COMMENT ON COLUMN materia.username IS 'USERNAME';
COMMENT ON COLUMN materia.abreviatura IS 'ABREAVIATURA';
COMMENT ON COLUMN materia.orden IS 'ORDEN';
COMMENT ON COLUMN materia.tipo IS 'TIPO';
COMMENT ON COLUMN materia.empleado_id IS 'ID EMPLEADO';
COMMENT ON COLUMN materia.cve_materia IS 'CVE_MATERIA';


PROMPT CREATE TABLE materia_profesor
CREATE TABLE materia_profesor (
  id          NUMBER(15,0) NOT NULL,
  materia_id  NUMBER(15,0) NULL,
  profesor_id NUMBER(15,0) NULL,
  grupo_id    NUMBER(15,0) NULL
)
  STORAGE (
    INITIAL     256 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE materia_profesor IS 'MATERIA PROFESOR';

COMMENT ON COLUMN materia_profesor.id IS 'ID';
COMMENT ON COLUMN materia_profesor.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN materia_profesor.profesor_id IS 'ID PROFESOR';
COMMENT ON COLUMN materia_profesor.grupo_id IS 'ID GRUPO';


PROMPT CREATE TABLE mediocontacto
CREATE TABLE mediocontacto (
  id         NUMBER(19,0)       NOT NULL,
  numero     VARCHAR2(255 CHAR) NULL,
  tipo       NUMBER(10,0)       DEFAULT 0 NULL,
  id_plantel NUMBER(19,0)       NULL
)
  STORAGE (
    INITIAL   77824 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE mediocontacto IS 'MEDIO CONTACTO TELEFONO';

COMMENT ON COLUMN mediocontacto.id IS 'ID';
COMMENT ON COLUMN mediocontacto.numero IS 'NUMERO';
COMMENT ON COLUMN mediocontacto.tipo IS 'TIPO';
COMMENT ON COLUMN mediocontacto.id_plantel IS 'ID PLANTEL';


PROMPT CREATE TABLE municipio
CREATE TABLE municipio (
  id        NUMBER(19,0)       NOT NULL,
  nombre    VARCHAR2(255 CHAR) NULL,
  estado_id NUMBER(19,0)       NULL,
  id_estado NUMBER(19,0)       NULL
)
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE municipio IS 'CATALOGO MUNICIPIO';

COMMENT ON COLUMN municipio.id IS 'ID';
COMMENT ON COLUMN municipio.nombre IS 'NOMBRE';
COMMENT ON COLUMN municipio.estado_id IS 'ID ESTADO';
COMMENT ON COLUMN municipio.id_estado IS 'ID ESTADO';


PROMPT CREATE TABLE nacionalidad
CREATE TABLE nacionalidad (
  id          NUMBER(19,0)       NOT NULL,
  nombre      VARCHAR2(255 CHAR) NULL,
  abreviatura VARCHAR2(3)        NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE nacionalidad IS 'CATALOGO DE NACIONALIDAD';

COMMENT ON COLUMN nacionalidad.id IS 'ID DE NACIONALIDAD';
COMMENT ON COLUMN nacionalidad.nombre IS 'NOMBRE DE LA NACIONALIDAD';
COMMENT ON COLUMN nacionalidad.abreviatura IS 'ABREVIATURA DE NACIONALIDAD';


PROMPT CREATE TABLE niveleducativo
CREATE TABLE niveleducativo (
  id          NUMBER(19,0)       NOT NULL,
  nombre      VARCHAR2(255 CHAR) NULL,
  tipoplantel VARCHAR2(255)      NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE niveleducativo IS 'CATALOGO NIVEL EDUCATIVO';

COMMENT ON COLUMN niveleducativo.id IS 'ID';
COMMENT ON COLUMN niveleducativo.nombre IS 'NOMBRE';
COMMENT ON COLUMN niveleducativo.tipoplantel IS 'TIPO PLANTEL';


PROMPT CREATE TABLE observaciones_generales
CREATE TABLE observaciones_generales (
  alummno_id       NUMBER(19,0)   NOT NULL,
  nivelescolar_id  NUMBER(19,0)   NOT NULL,
  cicloescolar_id  NUMBER(19,0)   NOT NULL,
  grado            NUMBER(2,0)    NOT NULL,
  observaciones    VARCHAR2(1024) NULL,
  fecha_creacion   DATE           NULL,
  usuario_creacion VARCHAR2(32)   NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE observaciones_generales IS 'OBSERVACIONES GENERALES';

COMMENT ON COLUMN observaciones_generales.alummno_id IS 'ID ALUMNO';
COMMENT ON COLUMN observaciones_generales.nivelescolar_id IS 'ID NIVEL ESCOLAR';
COMMENT ON COLUMN observaciones_generales.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN observaciones_generales.grado IS 'GRADO';
COMMENT ON COLUMN observaciones_generales.observaciones IS 'OBSERVACIONES';
COMMENT ON COLUMN observaciones_generales.fecha_creacion IS 'FECHA CREACION';
COMMENT ON COLUMN observaciones_generales.usuario_creacion IS 'USUARIO CREACION';


PROMPT CREATE TABLE ocupacion
CREATE TABLE ocupacion (
  id          NUMBER(19,0)  NOT NULL,
  descripcion VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE ocupacion IS 'CATALOGO OCUPACION';

COMMENT ON COLUMN ocupacion.id IS 'ID';
COMMENT ON COLUMN ocupacion.descripcion IS 'DESCRIPCION';


PROMPT CREATE TABLE pais
CREATE TABLE pais (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE pais IS 'CATALOGO DE PAISES';

COMMENT ON COLUMN pais.id IS 'ID';
COMMENT ON COLUMN pais.nombre IS 'NOMBRE DE PAIS';


PROMPT CREATE TABLE periodo
CREATE TABLE periodo (
  id                NUMBER(19,0)       NOT NULL,
  fechacreacion     DATE               NULL,
  fechafin          DATE               NULL,
  fechainicio       DATE               NULL,
  nombre            VARCHAR2(255 CHAR) NULL,
  username          VARCHAR2(255 CHAR) NULL,
  niveleducativo_id NUMBER(19,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE periodo IS 'CATALOGO PERIODO BIMESTRE';

COMMENT ON COLUMN periodo.id IS 'ID';
COMMENT ON COLUMN periodo.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN periodo.fechafin IS 'FECHA FIN';
COMMENT ON COLUMN periodo.fechainicio IS 'FECHA INICIO';
COMMENT ON COLUMN periodo.nombre IS 'NOMBRE PERIODO';
COMMENT ON COLUMN periodo.username IS 'USERNAME';
COMMENT ON COLUMN periodo.niveleducativo_id IS 'ID NIVEL EDUCATIVO';


PROMPT CREATE TABLE periodo_extraordinario
CREATE TABLE periodo_extraordinario (
  id                NUMBER(19,0)       NOT NULL,
  fechacreacion     DATE               NULL,
  nombre            VARCHAR2(255 CHAR) NULL,
  username          VARCHAR2(255 CHAR) NULL,
  niveleducativo_id NUMBER(19,0)       NULL,
  cve_periodo       NUMBER(1,0)        NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE periodo_extraordinario IS 'PERIODO EXTRAORDINARIO';

COMMENT ON COLUMN periodo_extraordinario.id IS 'ID';
COMMENT ON COLUMN periodo_extraordinario.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN periodo_extraordinario.nombre IS 'NOMBRE';
COMMENT ON COLUMN periodo_extraordinario.username IS 'USERNAME';
COMMENT ON COLUMN periodo_extraordinario.niveleducativo_id IS 'ID NIVEL EDUCATIVO';
COMMENT ON COLUMN periodo_extraordinario.cve_periodo IS 'CLAVE PERIODO';


PROMPT CREATE TABLE persona
CREATE TABLE persona (
  id                    NUMBER(19,0)       NOT NULL,
  curp                  VARCHAR2(255 CHAR) NULL,
  fechanac              TIMESTAMP(6)       NULL,
  nombres               VARCHAR2(255 CHAR) NULL,
  primerapellido        VARCHAR2(255 CHAR) NULL,
  rfc                   VARCHAR2(255 CHAR) NULL,
  segundoapellido       VARCHAR2(255 CHAR) NULL,
  sexo                  NUMBER(10,0)       NULL,
  lugarnacimiento_id    NUMBER(19,0)       NULL,
  nacionalidad_id       NUMBER(19,0)       NULL,
  otranacionalidad_id   NUMBER(19,0)       DEFAULT 0 NULL,
  usuario_id            NUMBER(19,0)       NULL,
  puebloindigena_id     NUMBER(19,0)       NULL,
  domicilio_id          NUMBER(19,0)       NULL,
  lengua_id             NUMBER(19,0)       NULL,
  encontrado            NUMBER             NULL,
  curp_old              VARCHAR2(18)       NULL,
  curprenapo            VARCHAR2(255)      NULL,
  primerapellidorenapo  VARCHAR2(255)      NULL,
  segundoapellidorenapo VARCHAR2(255)      NULL,
  nombresrenapo         VARCHAR2(255)      NULL,
  fechanacrenapo        TIMESTAMP(6)       NULL,
  sexorenapo            VARCHAR2(255)      NULL
)
  STORAGE (
    INITIAL  382976 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE persona IS 'PERSONA';

COMMENT ON COLUMN persona.id IS 'ID';
COMMENT ON COLUMN persona.curp IS 'CURP';
COMMENT ON COLUMN persona.fechanac IS 'FECHA NACIMIENTO';
COMMENT ON COLUMN persona.nombres IS 'NOMBRES';
COMMENT ON COLUMN persona.primerapellido IS 'PRIMER';
COMMENT ON COLUMN persona.rfc IS 'RFC';
COMMENT ON COLUMN persona.segundoapellido IS 'SEGUNDO APELLIDO';
COMMENT ON COLUMN persona.sexo IS 'SEXO';
COMMENT ON COLUMN persona.lugarnacimiento_id IS 'ID LUGAR NACIMIENTO';
COMMENT ON COLUMN persona.nacionalidad_id IS 'ID NACIONALIDAD';
COMMENT ON COLUMN persona.otranacionalidad_id IS 'ID OTRA NACIONALIDAD';
COMMENT ON COLUMN persona.usuario_id IS 'ID USUARIO';
COMMENT ON COLUMN persona.puebloindigena_id IS 'ID PUEBLO INDIGENA';
COMMENT ON COLUMN persona.domicilio_id IS 'ID DOMICILIO';
COMMENT ON COLUMN persona.lengua_id IS 'ID LENGUA';
COMMENT ON COLUMN persona.encontrado IS 'ENCONTRADO';
COMMENT ON COLUMN persona.curp_old IS 'CURP OLD';
COMMENT ON COLUMN persona.curprenapo IS 'CURP RENAPO';
COMMENT ON COLUMN persona.primerapellidorenapo IS 'PRIMER APELLIDO RENAPO';
COMMENT ON COLUMN persona.segundoapellidorenapo IS 'SEGUNDO APELLIDO RENAPO';
COMMENT ON COLUMN persona.nombresrenapo IS 'NOMBRES RENAPO';
COMMENT ON COLUMN persona.fechanacrenapo IS 'FECHA RENAPO';
COMMENT ON COLUMN persona.sexorenapo IS 'SEXO RENAPO';


PROMPT CREATE TABLE persona_mediocontacto
CREATE TABLE persona_mediocontacto (
  persona_id        NUMBER(19,0) NOT NULL,
  medioscontacto_id NUMBER(19,0) NOT NULL,
  telefono_id       NUMBER(19,0) NULL
)
  STORAGE (
    INITIAL   24576 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE persona_mediocontacto IS 'PERSONA MEDIO CONTACTO';

COMMENT ON COLUMN persona_mediocontacto.persona_id IS 'ID PERSONA';
COMMENT ON COLUMN persona_mediocontacto.medioscontacto_id IS 'ID MEDIOS CONTACTO';
COMMENT ON COLUMN persona_mediocontacto.telefono_id IS 'ID TELEFONO';


PROMPT CREATE TABLE plan_table
CREATE TABLE plan_table (
  statement_id      VARCHAR2(30)   NULL,
  plan_id           NUMBER         NULL,
  timestamp         DATE           NULL,
  remarks           VARCHAR2(4000) NULL,
  operation         VARCHAR2(30)   NULL,
  options           VARCHAR2(255)  NULL,
  object_node       VARCHAR2(128)  NULL,
  object_owner      VARCHAR2(30)   NULL,
  object_name       VARCHAR2(30)   NULL,
  object_alias      VARCHAR2(65)   NULL,
  object_instance   INTEGER        NULL,
  object_type       VARCHAR2(30)   NULL,
  optimizer         VARCHAR2(255)  NULL,
  search_columns    NUMBER         NULL,
  id                INTEGER        NULL,
  parent_id         INTEGER        NULL,
  depth             INTEGER        NULL,
  position          INTEGER        NULL,
  cost              INTEGER        NULL,
  cardinality       INTEGER        NULL,
  bytes             INTEGER        NULL,
  other_tag         VARCHAR2(255)  NULL,
  partition_start   VARCHAR2(255)  NULL,
  partition_stop    VARCHAR2(255)  NULL,
  partition_id      INTEGER        NULL,
  other             LONG           NULL,
  distribution      VARCHAR2(30)   NULL,
  cpu_cost          INTEGER        NULL,
  io_cost           INTEGER        NULL,
  temp_space        INTEGER        NULL,
  access_predicates VARCHAR2(4000) NULL,
  filter_predicates VARCHAR2(4000) NULL,
  projection        VARCHAR2(4000) NULL,
  time              INTEGER        NULL,
  qblock_name       VARCHAR2(30)   NULL,
  other_xml         CLOB           NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE planestudios
CREATE TABLE planestudios (
  id              NUMBER(10,0)  NOT NULL,
  descripcion     VARCHAR2(255) NULL,
  nombre          VARCHAR2(255) NULL,
  cicloescolar_id NUMBER(19,0)  NULL,
  nivel_id        NUMBER(19,0)  NULL,
  plan            NUMBER(5,0)   NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE planestudios IS 'CATALOGO PLAN ESTUDIOS';

COMMENT ON COLUMN planestudios.id IS 'ID';
COMMENT ON COLUMN planestudios.descripcion IS 'DESCRIPCION';
COMMENT ON COLUMN planestudios.nombre IS 'NOMBRE';
COMMENT ON COLUMN planestudios.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN planestudios.nivel_id IS 'ID NIVEL';
COMMENT ON COLUMN planestudios.plan IS 'PLAN A?O';


PROMPT CREATE TABLE planestudios_materia
CREATE TABLE planestudios_materia (
  planestudios_id NUMBER(10,0) NOT NULL,
  materias_id     NUMBER(10,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE planestudios_materia IS 'PLAN ESTUDIOS MATERIA';

COMMENT ON COLUMN planestudios_materia.planestudios_id IS 'ID PLAN ESTUDIOS';
COMMENT ON COLUMN planestudios_materia.materias_id IS 'ID MATERIAS';


PROMPT CREATE TABLE plantel
CREATE TABLE plantel (
  id                    NUMBER(19,0)       NOT NULL,
  cct                   VARCHAR2(255 CHAR) NULL,
  claveeconomica        VARCHAR2(25)       NULL,
  diradministrativa     NUMBER(5,0)        NULL,
  email                 VARCHAR2(255 CHAR) NULL,
  iniciofunciones       TIMESTAMP(6)       NULL,
  modalidad             NUMBER(1,0)        NULL,
  nombre                VARCHAR2(255 CHAR) NULL,
  nuincorpsep           VARCHAR2(255 CHAR) NULL,
  numapa                NUMBER(10,0)       NULL,
  ordenproceso          NUMBER(10,0)       NULL,
  regionubicacion       NUMBER(5,0)        NULL,
  sitoweb               VARCHAR2(255 CHAR) NULL,
  subzonadiagnostico    NUMBER(5,0)        NULL,
  zonadiagnostico       NUMBER(3,0)        NULL,
  zonaeconomica         NUMBER(5,0)        NULL,
  zonaescolar           NUMBER(5,0)        NULL,
  cicloescolaractivo_id NUMBER(19,0)       NULL,
  director_id           NUMBER(19,0)       NULL,
  domicilio_id          NUMBER(19,0)       NULL,
  subdirector_id        NUMBER(19,0)       NULL,
  inmueble_id           NUMBER(19,0)       NULL,
  niveleducativo_id     NUMBER(19,0)       NULL,
  preinscripcion        NUMBER(1,0)        NULL,
  tipoplantel_id        NUMBER(2,0)        NULL,
  turno_id              NUMBER(19,0)       NULL,
  direccion_id          NUMBER(19,0)       NULL,
  zona_id               NUMBER(19,0)       NULL,
  entrecalle1           VARCHAR2(250)      NULL,
  entrecalle2           VARCHAR2(250)      NULL,
  actualizado           NUMBER(1,0)        NULL,
  estatus               NUMBER(1,0)        NULL,
  ilce                  INTEGER            DEFAULT 0 NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE plantel IS 'PLANTEL';

COMMENT ON COLUMN plantel.id IS 'ID';
COMMENT ON COLUMN plantel.cct IS 'CENTRO DE TRABAJO';
COMMENT ON COLUMN plantel.claveeconomica IS 'CLAVE ECONOMICA';
COMMENT ON COLUMN plantel.diradministrativa IS 'DIRECION ADMINISTRATIVA';
COMMENT ON COLUMN plantel.email IS 'EMAIL';
COMMENT ON COLUMN plantel.iniciofunciones IS 'INICIO FUNCIONES';
COMMENT ON COLUMN plantel.modalidad IS 'MODALIDAD';
COMMENT ON COLUMN plantel.nombre IS 'NOMBRE';
COMMENT ON COLUMN plantel.nuincorpsep IS 'NUMERO INCORPORACION SEP';
COMMENT ON COLUMN plantel.numapa IS 'NUMERO APA';
COMMENT ON COLUMN plantel.ordenproceso IS 'ORDEN PROCESO';
COMMENT ON COLUMN plantel.regionubicacion IS 'REGION UBICACION';
COMMENT ON COLUMN plantel.sitoweb IS 'SITIO WEBE';
COMMENT ON COLUMN plantel.subzonadiagnostico IS 'SUBZONA DIAGNOSTICO';
COMMENT ON COLUMN plantel.zonadiagnostico IS 'ZONA DIAGNOSTIVO';
COMMENT ON COLUMN plantel.zonaeconomica IS 'ZONA ECONOMICA';
COMMENT ON COLUMN plantel.zonaescolar IS 'ZONA ESCOLAR';
COMMENT ON COLUMN plantel.cicloescolaractivo_id IS 'ID CICLO ESCOLAR ACTIVO';
COMMENT ON COLUMN plantel.director_id IS 'ID DIRECTOR';
COMMENT ON COLUMN plantel.domicilio_id IS 'ID DOMIICLIO';
COMMENT ON COLUMN plantel.subdirector_id IS 'ID SUBDIRECTOR';
COMMENT ON COLUMN plantel.inmueble_id IS 'ID INMUEBLE';
COMMENT ON COLUMN plantel.niveleducativo_id IS 'ID NIVEL EDUCATIVO';
COMMENT ON COLUMN plantel.preinscripcion IS 'PREINSCRIPCION';
COMMENT ON COLUMN plantel.tipoplantel_id IS 'ID TIPO PLANTEL';
COMMENT ON COLUMN plantel.turno_id IS 'ID TURNO';
COMMENT ON COLUMN plantel.direccion_id IS 'ID DIRECCION 1-DGOSE, 2-DGSEI, 3-DGNAM, 4-DGEST';
COMMENT ON COLUMN plantel.zona_id IS 'ID ZONA';
COMMENT ON COLUMN plantel.entrecalle1 IS 'ENTRE CALLE 1';
COMMENT ON COLUMN plantel.entrecalle2 IS 'ENTRE CALLE 2';
COMMENT ON COLUMN plantel.actualizado IS 'ACTUALIZADO';
COMMENT ON COLUMN plantel.estatus IS 'ESTATUS';
COMMENT ON COLUMN plantel.ilce IS 'CAMPO QUE INDICA SI EL PLANTEL ESTA CON EL MANTENIMIENTO SIIEWeb (ILCE)';


PROMPT CREATE TABLE plantel_mediocontacto
CREATE TABLE plantel_mediocontacto (
  plantel_id        NUMBER(19,0) NOT NULL,
  medioscontacto_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    INITIAL     384 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE plantel_mediocontacto IS 'PLANTEL MEDIO CONTACTO';

COMMENT ON COLUMN plantel_mediocontacto.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN plantel_mediocontacto.medioscontacto_id IS 'ID MEDIO CONTACTO';


PROMPT CREATE TABLE plantel_programa
CREATE TABLE plantel_programa (
  plantel_id   NUMBER(19,0) NOT NULL,
  programas_id NUMBER(19,0) NOT NULL,
  id_plantel   NUMBER(19,0) NULL
)
  STORAGE (
    INITIAL     256 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE plantel_programa IS 'PLANTEL PROGRAMA';

COMMENT ON COLUMN plantel_programa.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN plantel_programa.programas_id IS 'ID PROGRAMAS';
COMMENT ON COLUMN plantel_programa.id_plantel IS 'ID PLANTEL';


PROMPT CREATE TABLE plantel_usuario
CREATE TABLE plantel_usuario (
  plantel_id  NUMBER(19,0) NOT NULL,
  usuarios_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE plantel_usuario IS 'PLANTEL USUARIO';

COMMENT ON COLUMN plantel_usuario.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN plantel_usuario.usuarios_id IS 'ID USUARIOS';


PROMPT CREATE TABLE plaza
CREATE TABLE plaza (
  id              NUMBER(19,0)       NOT NULL,
  codigo          VARCHAR2(255 CHAR) NULL,
  horaslaborables NUMBER(10,0)       NULL,
  periodofin      VARCHAR2(255 CHAR) NULL,
  periodoinicio   VARCHAR2(255 CHAR) NULL,
  plantel_id      NUMBER(19,0)       NULL,
  empleado_id     NUMBER(15,0)       NULL,
  funcion_real_id NUMBER(19,0)       NULL
)
  STORAGE (
    INITIAL   17408 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE plaza IS 'PLAZA EMPLEADOS';

COMMENT ON COLUMN plaza.id IS 'ID';
COMMENT ON COLUMN plaza.codigo IS 'CODIGO';
COMMENT ON COLUMN plaza.horaslaborables IS 'HORAS LABORABLES';
COMMENT ON COLUMN plaza.periodofin IS 'PERIODO FIN';
COMMENT ON COLUMN plaza.periodoinicio IS 'PERIODO INICIO';
COMMENT ON COLUMN plaza.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN plaza.empleado_id IS 'ID EMPLEADO';
COMMENT ON COLUMN plaza.funcion_real_id IS 'ID FUNCION REAL';


PROMPT CREATE TABLE plaza_incidenciaempleado
CREATE TABLE plaza_incidenciaempleado (
  plaza_id       NUMBER(19,0) NOT NULL,
  incidencias_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE plaza_incidenciaempleado IS 'PLAZA INCIDENCIA EMPLEADO';

COMMENT ON COLUMN plaza_incidenciaempleado.plaza_id IS 'ID PLAZA';
COMMENT ON COLUMN plaza_incidenciaempleado.incidencias_id IS 'ID INCIDENCIA';


PROMPT CREATE TABLE preinscripcion
CREATE TABLE preinscripcion (
  id                      NUMBER(19,0)  NOT NULL,
  cuantosvivencasa        NUMBER(10,0)  NULL,
  escolaridadmadre        NUMBER(10,0)  NULL,
  escolaridadpadre        NUMBER(10,0)  NULL,
  fecha                   DATE          DEFAULT SYSDATE NULL,
  requiereturnocontinuo   NUMBER(1,0)   DEFAULT 0 NULL,
  sostienehogarecono      NUMBER(10,0)  NULL,
  opcion1_id              NUMBER(19,0)  NULL,
  opcion2_id              NUMBER(19,0)  NULL,
  opcion3_id              NUMBER(19,0)  NULL,
  grado                   NUMBER(1,0)   NULL,
  hermanosmismaescuela    NUMBER(10,0)  NULL,
  hermanospreeinscripcion NUMBER(10,0)  NULL,
  username                VARCHAR2(255) NULL,
  tiempopreescolar        NUMBER(10,0)  NULL,
  escuelaprocedencia      VARCHAR2(255) NULL,
  tieneservicios          NUMBER(1,0)   NULL,
  anospreescolar          NUMBER(1,0)   NULL,
  fechacreacion           DATE          DEFAULT sysdate NULL,
  fechacrea               DATE          DEFAULT SYSDATE NULL,
  doblepreins             NUMBER(1,0)   NULL,
  mostrable               NUMBER(1,0)   DEFAULT 1 NULL,
  foliosaid               NUMBER(10,0)  NULL,
  folioplantel            NUMBER        NULL,
  extemporaneo            NUMBER        NULL,
  email                   VARCHAR2(255) NULL,
  gdo_hermn               VARCHAR2(16)  NULL,
  tur_hermn               VARCHAR2(16)  NULL,
  hrmprein                VARCHAR2(16)  NULL,
  gpoprmalmn              VARCHAR2(16)  NULL,
  fue_kindr               VARCHAR2(16)  NULL,
  cct_prima               VARCHAR2(10)  NULL,
  gpo_primar              VARCHAR2(16)  NULL,
  duplicado_said          NUMBER(1,0)   NULL
)
  STORAGE (
    INITIAL   12288 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE preinscripcion IS 'PREINSCRIPCION(PREESCOLAR, PRIMARIA Y SECUNDARIA)';

COMMENT ON COLUMN preinscripcion.id IS 'ID';
COMMENT ON COLUMN preinscripcion.cuantosvivencasa IS 'CUANTOS VIVEN CASA';
COMMENT ON COLUMN preinscripcion.escolaridadmadre IS 'ESCOLARIDAD MADRE';
COMMENT ON COLUMN preinscripcion.escolaridadpadre IS 'ESCOLARIDAD PADRE';
COMMENT ON COLUMN preinscripcion.fecha IS 'FECHA';
COMMENT ON COLUMN preinscripcion.requiereturnocontinuo IS 'REQUIERE TURNO CONTINUO';
COMMENT ON COLUMN preinscripcion.sostienehogarecono IS 'SOSTIENE HOGAR RECONO';
COMMENT ON COLUMN preinscripcion.opcion1_id IS 'ID OPCION 1';
COMMENT ON COLUMN preinscripcion.opcion2_id IS 'ID OPCION 2';
COMMENT ON COLUMN preinscripcion.opcion3_id IS 'ID OPCION 3';
COMMENT ON COLUMN preinscripcion.grado IS 'GRADO';
COMMENT ON COLUMN preinscripcion.hermanosmismaescuela IS 'HERMANOS MISMA ESCUELA';
COMMENT ON COLUMN preinscripcion.hermanospreeinscripcion IS 'HERMANOS PREINSCRIPCION';
COMMENT ON COLUMN preinscripcion.username IS 'USERNAME';
COMMENT ON COLUMN preinscripcion.tiempopreescolar IS 'TIEMPO PREESCOLAR';
COMMENT ON COLUMN preinscripcion.escuelaprocedencia IS 'ESCUELA PROCEDENCIA';
COMMENT ON COLUMN preinscripcion.tieneservicios IS 'TIENES SERVICIOS';
COMMENT ON COLUMN preinscripcion.anospreescolar IS 'A?OS PREESCOLAR';
COMMENT ON COLUMN preinscripcion.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN preinscripcion.fechacrea IS 'FECHA CREA';
COMMENT ON COLUMN preinscripcion.doblepreins IS 'DOBLE PREINS';
COMMENT ON COLUMN preinscripcion.mostrable IS 'MOSTRABLE';
COMMENT ON COLUMN preinscripcion.foliosaid IS 'FOLIO SAID';
COMMENT ON COLUMN preinscripcion.folioplantel IS 'FOLIO PLANTEL';
COMMENT ON COLUMN preinscripcion.extemporaneo IS 'EXTEMPORANEO';
COMMENT ON COLUMN preinscripcion.email IS 'EMAIL';
COMMENT ON COLUMN preinscripcion.gdo_hermn IS 'GRADO HERMANO';
COMMENT ON COLUMN preinscripcion.tur_hermn IS 'TURNO HERMANO';
COMMENT ON COLUMN preinscripcion.hrmprein IS 'HRM PREINSCRIPCION';
COMMENT ON COLUMN preinscripcion.gpoprmalmn IS 'GRUPO PRIMARIA ALUMNO';
COMMENT ON COLUMN preinscripcion.fue_kindr IS 'FUE KINDER';
COMMENT ON COLUMN preinscripcion.cct_prima IS 'CENTRO DE TRABAJO PRIMARIA';
COMMENT ON COLUMN preinscripcion.gpo_primar IS 'GRUPO PRIMARIA';
COMMENT ON COLUMN preinscripcion.duplicado_said IS 'DUPLICADO SAID';


PROMPT CREATE TABLE preinscripcionfolio
CREATE TABLE preinscripcionfolio (
  id              NUMBER NOT NULL,
  plantel_id      NUMBER NULL,
  cicloescolar_id NUMBER NULL,
  foliomax        NUMBER NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE preinscripcionfolio IS 'PREINSCRIPCION FOLIO';

COMMENT ON COLUMN preinscripcionfolio.id IS 'ID';
COMMENT ON COLUMN preinscripcionfolio.plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN preinscripcionfolio.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN preinscripcionfolio.foliomax IS 'FOLIO MAX';


PROMPT CREATE TABLE procesa_reporte_preescolar
CREATE TABLE procesa_reporte_preescolar (
  cct               VARCHAR2(255 CHAR) NULL,
  matriculaescolar  NUMBER             NULL,
  turno_id          NUMBER(19,0)       NULL,
  plantel_id        NUMBER(19,0)       NOT NULL,
  niveleducativo_id NUMBER(19,0)       NULL,
  cod_municipio     CHAR(3)            NULL,
  estatus           NUMBER             NULL,
  fechacreacion     DATE               NULL,
  dg                VARCHAR2(20)       NULL,
  lote              NUMBER(10,0)       NULL
)
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE procesa_reporte_primaria
CREATE TABLE procesa_reporte_primaria (
  dg                NUMBER(19,0)       NULL,
  regionubicacion   NUMBER(5,0)        NULL,
  cct               VARCHAR2(255 CHAR) NULL,
  turno_id          NUMBER(19,0)       NULL,
  estatus           NUMBER             NULL,
  plantel_id        NUMBER(19,0)       NOT NULL,
  fecha_creacion    DATE               NULL,
  fecha_generado    DATE               NULL,
  niveleducativo_id NUMBER(19,0)       NULL,
  inc               NUMBER             NULL,
  lote              NUMBER             NULL
)
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE procesa_reporte_secundaria
CREATE TABLE procesa_reporte_secundaria (
  dg                VARCHAR2(19)       NULL,
  regionubicacion   NUMBER(5,0)        NULL,
  cct               VARCHAR2(255 CHAR) NULL,
  turno_id          NUMBER(19,0)       NULL,
  grado             NUMBER(10,0)       NULL,
  estatus           NUMBER             NULL,
  plantel_id        NUMBER(19,0)       NULL,
  fecha_creacion    DATE               NULL,
  fecha_generado    DATE               NULL,
  niveleducativo_id NUMBER             NULL,
  inc               NUMBER             NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE procesa_secundaria_impresos
CREATE TABLE procesa_secundaria_impresos (
  cct VARCHAR2(10) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE programa
CREATE TABLE programa (
  id          NUMBER(19,0)       NOT NULL,
  descripcion VARCHAR2(255 CHAR) NULL,
  nombre      VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE promedios
CREATE TABLE promedios (
  id        NUMBER        NOT NULL,
  alumno_id NUMBER        NULL,
  promedio  NUMBER(4,2)   NULL,
  folio     VARCHAR2(255) NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE promedios IS 'PROMEDIOS(ALUMNOS)';

COMMENT ON COLUMN promedios.id IS 'ID';
COMMENT ON COLUMN promedios.alumno_id IS 'ID ALUMNOS';
COMMENT ON COLUMN promedios.promedio IS 'PROMEDIO';
COMMENT ON COLUMN promedios.folio IS 'FOLIO';


PROMPT CREATE TABLE puebloindigena
CREATE TABLE puebloindigena (
  id         NUMBER(19,0)  NOT NULL,
  nombre     VARCHAR2(255) NULL,
  referencia NUMBER(19,0)  NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE puebloindigena IS 'CATALOGO PUEBLO INDIGENA';

COMMENT ON COLUMN puebloindigena.id IS 'ID';
COMMENT ON COLUMN puebloindigena.nombre IS 'NOMBRE';
COMMENT ON COLUMN puebloindigena.referencia IS 'REFERENCIA';


PROMPT CREATE TABLE recomendacion_preescolar
CREATE TABLE recomendacion_preescolar (
  id              NUMBER(19,0)   NOT NULL,
  alumno_id       NUMBER(19,0)   NOT NULL,
  fechacreacion   DATE           NULL,
  username        VARCHAR2(255)  NULL,
  cicloescolar_id NUMBER(19,0)   NOT NULL,
  observacion     VARCHAR2(2048) NULL
)
  STORAGE (
    INITIAL   51200 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE recomendacion_preescolar IS 'RECOMENDACION PREESCOLAR';

COMMENT ON COLUMN recomendacion_preescolar.id IS 'ID';
COMMENT ON COLUMN recomendacion_preescolar.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN recomendacion_preescolar.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN recomendacion_preescolar.username IS 'USERNAME';
COMMENT ON COLUMN recomendacion_preescolar.cicloescolar_id IS 'ID CICLO ESCOLAR';
COMMENT ON COLUMN recomendacion_preescolar.observacion IS 'OBSERVACION';


PROMPT CREATE TABLE region
CREATE TABLE region (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE region IS 'CATALOG REGION(PREESCOLAR, PRIMARIA, SECUNDARIA)';

COMMENT ON COLUMN region.id IS 'ID';
COMMENT ON COLUMN region.nombre IS 'NOMBRE';


PROMPT CREATE TABLE resumenciclo
CREATE TABLE resumenciclo (
  id                             NUMBER        NOT NULL,
  plantel_id                     NUMBER        NULL,
  superficieterreno              NUMBER        NULL,
  superficieconstruido           NUMBER        NULL,
  superficieterrenolibre         NUMBER        NULL,
  numerorepetidores              NUMBER        NULL,
  aulaspropuestasprimero         NUMBER        NULL,
  aulaspropuestassegundo         NUMBER        NULL,
  aulaspropuestastercero         NUMBER        NULL,
  aulaspropuestasprimerocapacida NUMBER        NULL,
  aulaspropuestassegundocapacida NUMBER        NULL,
  aulaspropuestastercerocapacida NUMBER        NULL,
  totalaulasescuela              NUMBER        NULL,
  aulasvacias                    NUMBER        NULL,
  gruposprimero                  NUMBER        NULL,
  grupossegundo                  NUMBER        NULL,
  grupostercero                  NUMBER        NULL,
  fechaconstrucciondefinitiva    DATE          NULL,
  fechaconstruccionmultipanel    DATE          NULL,
  fechaconstruccionpintro        DATE          NULL,
  plantelexprofeso               NUMBER        NULL,
  director                       VARCHAR2(200) NULL,
  directoroperativo              VARCHAR2(200) NULL,
  inspector                      VARCHAR2(200) NULL,
  definitiva                     NUMBER        NULL,
  multipanel                     NUMBER        NULL,
  pintro                         NUMBER        NULL,
  totalaspirantes                NUMBER(5,0)   NULL
)
  STORAGE (
    INITIAL     128 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE riesgo
CREATE TABLE riesgo (
  id         NUMBER       NULL,
  alumno_id  NUMBER(19,0) NOT NULL,
  materia_id NUMBER(10,0) NULL,
  periodo_id NUMBER(19,0) NULL,
  pasoexamen NUMBER       NULL
)
  STORAGE (
    INITIAL   15360 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE riesgo IS 'RIESGO';

COMMENT ON COLUMN riesgo.id IS 'ID';
COMMENT ON COLUMN riesgo.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN riesgo.materia_id IS 'ID MATERIA';
COMMENT ON COLUMN riesgo.periodo_id IS 'ID PERIODO';
COMMENT ON COLUMN riesgo.pasoexamen IS 'PASO EXAMEN';


PROMPT CREATE TABLE riesgo_old
CREATE TABLE riesgo_old (
  id         NUMBER NULL,
  alumno_id  NUMBER NULL,
  materia_id NUMBER NULL,
  pasoexamen NUMBER NULL,
  periodo_id NUMBER NULL
)
  STORAGE (
    INITIAL     256 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE sector
CREATE TABLE sector (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE sector IS 'CATALOGO SECTOR(DELEGACIONAL, DIRECCION, NIVEL, DGSEI)';

COMMENT ON COLUMN sector.id IS 'ID';
COMMENT ON COLUMN sector.nombre IS 'NOMBRE';


PROMPT CREATE TABLE seguimiento
CREATE TABLE seguimiento (
  id              NUMBER(19,0)       NOT NULL,
  comentario      VARCHAR2(255 CHAR) NULL,
  fecha           TIMESTAMP(6)       NULL,
  username        VARCHAR2(255 CHAR) NULL,
  usuariocreacion VARCHAR2(255)      NULL,
  fechacreacion   DATE               DEFAULT sysdate NULL,
  incidencia_id   NUMBER(19,0)       NULL,
  id_incidencia   NUMBER(19,0)       NULL
)
  STORAGE (
    INITIAL   20480 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE seguimiento IS 'SEGUIMIENTO(INCIDENCIA)';

COMMENT ON COLUMN seguimiento.id IS 'ID';
COMMENT ON COLUMN seguimiento.comentario IS 'COMENTARIO';
COMMENT ON COLUMN seguimiento.fecha IS 'FECHA';
COMMENT ON COLUMN seguimiento.username IS 'USERNAME';
COMMENT ON COLUMN seguimiento.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN seguimiento.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN seguimiento.incidencia_id IS 'ID INCIDENCIA';
COMMENT ON COLUMN seguimiento.id_incidencia IS 'ID INCIDENCIA';


PROMPT CREATE TABLE servicios
CREATE TABLE servicios (
  id     NUMBER        NOT NULL,
  nombre VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE servicios IS 'CATALOGO SERVICIOS(LUZ Y AGUA)';

COMMENT ON COLUMN servicios.id IS 'ID';
COMMENT ON COLUMN servicios.nombre IS 'NOMBRE';


PROMPT CREATE TABLE solicitudbaja
CREATE TABLE solicitudbaja (
  id              NUMBER(19,0) NOT NULL,
  alumno_id       NUMBER(19,0) NOT NULL,
  to_grupo_id     NUMBER(19,0) NOT NULL,
  from_plantel_id NUMBER(19,0) NOT NULL,
  from_turno_id   NUMBER(19,0) NOT NULL,
  from_usuario_id NUMBER(19,0) NOT NULL,
  fecha_solicitud DATE         DEFAULT sysdate NOT NULL,
  to_estatus      NUMBER(1,0)  DEFAULT 0 NULL,
  to_usuario_id   NUMBER(19,0) NULL,
  fecha_atencion  DATE         NULL
)
  STORAGE (
    INITIAL    7168 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE solicitudbaja IS 'SOLICITUD BAJA';

COMMENT ON COLUMN solicitudbaja.id IS 'ID';
COMMENT ON COLUMN solicitudbaja.alumno_id IS 'ID ALUMNO';
COMMENT ON COLUMN solicitudbaja.to_grupo_id IS 'ID GRUPO';
COMMENT ON COLUMN solicitudbaja.from_plantel_id IS 'ID PLANTEL';
COMMENT ON COLUMN solicitudbaja.from_turno_id IS 'ID TURNO';
COMMENT ON COLUMN solicitudbaja.from_usuario_id IS 'ID USUARIO';
COMMENT ON COLUMN solicitudbaja.fecha_solicitud IS 'FECHA SOLICITUD';
COMMENT ON COLUMN solicitudbaja.to_estatus IS 'ESTATUS';
COMMENT ON COLUMN solicitudbaja.to_usuario_id IS 'ID USUARIO';
COMMENT ON COLUMN solicitudbaja.fecha_atencion IS 'FECHA ATENCION';


PROMPT CREATE TABLE spooler
CREATE TABLE spooler (
  id                  NUMBER(19,0)   NOT NULL,
  classname           VARCHAR2(2048) NULL,
  bytes               BLOB           DEFAULT empty_blob() NULL,
  tiporeporte         VARCHAR2(32)   NULL,
  estatus             NUMBER(1,0)    NULL,
  fechasolicitud      DATE           NULL,
  fechaatencionini    DATE           NULL,
  fechaatencionfin    DATE           NULL,
  fechaultimadescarga DATE           NULL,
  rutafisica          VARCHAR2(128)  NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE tecnologia
CREATE TABLE tecnologia (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL,
  clave  VARCHAR2(255 CHAR) NULL,
  grado  NUMBER(10,0)       NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tecnologia IS 'CATALOGO TECNOLOGIA (MATERIA SECUNDARIA)';

COMMENT ON COLUMN tecnologia.id IS 'ID';
COMMENT ON COLUMN tecnologia.nombre IS 'NOMBRE';
COMMENT ON COLUMN tecnologia.clave IS 'CLAVE';
COMMENT ON COLUMN tecnologia.grado IS 'GRADO';


PROMPT CREATE TABLE tipoasentamiento
CREATE TABLE tipoasentamiento (
  id     NUMBER(19,0)  NULL,
  nombre VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipoasentamiento IS 'CATALOGO TIPO ASENTAMIENTO';

COMMENT ON COLUMN tipoasentamiento.id IS 'ID';
COMMENT ON COLUMN tipoasentamiento.nombre IS 'NOMBRE';


PROMPT CREATE TABLE tipodocumento
CREATE TABLE tipodocumento (
  id     NUMBER(19,0) NOT NULL,
  nombre VARCHAR2(60) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipodocumento IS 'CATALOGO TIPO DOCUMENTO(REPORTE DE EVALUACION)';

COMMENT ON COLUMN tipodocumento.id IS 'ID';
COMMENT ON COLUMN tipodocumento.nombre IS 'NOMBRE';


PROMPT CREATE TABLE tipoempleado
CREATE TABLE tipoempleado (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipoempleado IS 'CATALOGO TIPO EMPLEADO';

COMMENT ON COLUMN tipoempleado.id IS 'ID';
COMMENT ON COLUMN tipoempleado.nombre IS 'NOMBRE';


PROMPT CREATE TABLE tipoevaluacion
CREATE TABLE tipoevaluacion (
  id     NUMBER(19,0)  NULL,
  nombre VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipoevaluacion IS 'CATALOGO TIPO EVALUACION(EXAMEN, -PA-)';

COMMENT ON COLUMN tipoevaluacion.id IS 'ID';
COMMENT ON COLUMN tipoevaluacion.nombre IS 'NOMBRE';


PROMPT CREATE TABLE tipofolio
CREATE TABLE tipofolio (
  id     NUMBER(19,0)  NULL,
  nombre VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipofolio IS 'CATALOGO FOLIO (IMPRESO, ELECTRONICO)';

COMMENT ON COLUMN tipofolio.id IS 'ID';
COMMENT ON COLUMN tipofolio.nombre IS 'NOMBRE';


PROMPT CREATE TABLE tipoincidenciaempleado
CREATE TABLE tipoincidenciaempleado (
  id            NUMBER(19,0)       NOT NULL,
  nombre        VARCHAR2(255 CHAR) NULL,
  repercutepago NUMBER(1,0)        NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipoincidenciaempleado IS 'CATALOGO TIPO INCIDENCIA EMPLEADO';

COMMENT ON COLUMN tipoincidenciaempleado.id IS 'ID';
COMMENT ON COLUMN tipoincidenciaempleado.nombre IS 'NOMBRE';
COMMENT ON COLUMN tipoincidenciaempleado.repercutepago IS 'REPERCUTE PAGO';


PROMPT CREATE TABLE tipolocal
CREATE TABLE tipolocal (
  id     NUMBER        NOT NULL,
  nombre VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipolocal IS 'CATALOGO TIPO LOCAL';

COMMENT ON COLUMN tipolocal.id IS 'ID';
COMMENT ON COLUMN tipolocal.nombre IS 'NOMBRE';


PROMPT CREATE TABLE tipoplantel
CREATE TABLE tipoplantel (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipoplantel IS 'CATALOGO TIPO PLANTEL';

COMMENT ON COLUMN tipoplantel.id IS 'ID';
COMMENT ON COLUMN tipoplantel.nombre IS 'NOMBRE';


PROMPT CREATE TABLE tipotramite
CREATE TABLE tipotramite (
  id     NUMBER(2,0)   NULL,
  nombre VARCHAR2(255) NULL,
  email  VARCHAR2(255) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tipotramite IS 'CATALOGO TIPO TRAMITE';

COMMENT ON COLUMN tipotramite.id IS 'ID';
COMMENT ON COLUMN tipotramite.nombre IS 'NOMBRE';
COMMENT ON COLUMN tipotramite.email IS 'EMAIL';


PROMPT CREATE TABLE tmp_escuelas_ilce_2014_2015
CREATE TABLE tmp_escuelas_ilce_2014_2015 (
  numero     NUMBER(4,0)   NOT NULL,
  cct        VARCHAR2(10)  NOT NULL,
  nombre     VARCHAR2(128) NOT NULL,
  turno      VARCHAR2(32)  NOT NULL,
  delegacion VARCHAR2(64)  NOT NULL,
  nivel      VARCHAR2(8)   NOT NULL
)
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE toad_plan_table
CREATE TABLE toad_plan_table (
  statement_id      VARCHAR2(30)   NULL,
  plan_id           NUMBER         NULL,
  timestamp         DATE           NULL,
  remarks           VARCHAR2(4000) NULL,
  operation         VARCHAR2(30)   NULL,
  options           VARCHAR2(255)  NULL,
  object_node       VARCHAR2(128)  NULL,
  object_owner      VARCHAR2(30)   NULL,
  object_name       VARCHAR2(30)   NULL,
  object_alias      VARCHAR2(65)   NULL,
  object_instance   INTEGER        NULL,
  object_type       VARCHAR2(30)   NULL,
  optimizer         VARCHAR2(255)  NULL,
  search_columns    NUMBER         NULL,
  id                INTEGER        NULL,
  parent_id         INTEGER        NULL,
  depth             INTEGER        NULL,
  position          INTEGER        NULL,
  cost              INTEGER        NULL,
  cardinality       INTEGER        NULL,
  bytes             INTEGER        NULL,
  other_tag         VARCHAR2(255)  NULL,
  partition_start   VARCHAR2(255)  NULL,
  partition_stop    VARCHAR2(255)  NULL,
  partition_id      INTEGER        NULL,
  other             LONG           NULL,
  distribution      VARCHAR2(30)   NULL,
  cpu_cost          INTEGER        NULL,
  io_cost           INTEGER        NULL,
  temp_space        INTEGER        NULL,
  access_predicates VARCHAR2(4000) NULL,
  filter_predicates VARCHAR2(4000) NULL,
  projection        VARCHAR2(4000) NULL,
  time              INTEGER        NULL,
  qblock_name       VARCHAR2(30)   NULL,
  other_xml         CLOB           NULL
)
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE tramite
CREATE TABLE tramite (
  id              NUMBER(19,0)       NOT NULL,
  folio           VARCHAR2(255 CHAR) NULL,
  oficio          VARCHAR2(255 CHAR) NULL,
  reporte         VARCHAR2(255 CHAR) NULL,
  tipo_id         NUMBER(19,0)       NULL,
  descripcion     VARCHAR2(1000)     NULL,
  usuariocreacion VARCHAR2(255)      NULL,
  fechacreacion   DATE               DEFAULT sysdate NULL,
  plantel_id      NUMBER(19,0)       NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tramite IS 'TRAMITE';

COMMENT ON COLUMN tramite.id IS 'ID';
COMMENT ON COLUMN tramite.folio IS 'FOLIO';
COMMENT ON COLUMN tramite.oficio IS 'OFICIO';
COMMENT ON COLUMN tramite.reporte IS 'REPORTE';
COMMENT ON COLUMN tramite.tipo_id IS 'ID TIPO';
COMMENT ON COLUMN tramite.descripcion IS 'DESCRIPCION';
COMMENT ON COLUMN tramite.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN tramite.fechacreacion IS 'FECHA CREACION';
COMMENT ON COLUMN tramite.plantel_id IS 'ID PLANTEL';


PROMPT CREATE TABLE tramitesupervision
CREATE TABLE tramitesupervision (
  id              NUMBER(19,0)       NOT NULL,
  comentario      VARCHAR2(255 CHAR) NULL,
  fecha           TIMESTAMP(6)       NULL,
  username        VARCHAR2(255 CHAR) NULL,
  tramite_id      NUMBER(19,0)       NULL,
  id_tramite      NUMBER(19,0)       NULL,
  usuariocreacion VARCHAR2(255)      NULL,
  fechacreacion   DATE               DEFAULT sysdate NULL
)
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE tramitesupervision IS 'TRAMITE SUPERVISION';

COMMENT ON COLUMN tramitesupervision.id IS 'ID';
COMMENT ON COLUMN tramitesupervision.comentario IS 'COMENTARIO';
COMMENT ON COLUMN tramitesupervision.fecha IS 'FECHA';
COMMENT ON COLUMN tramitesupervision.username IS 'USERNAME';
COMMENT ON COLUMN tramitesupervision.tramite_id IS 'ID TRAMITE';
COMMENT ON COLUMN tramitesupervision.id_tramite IS 'ID TRAMITE';
COMMENT ON COLUMN tramitesupervision.usuariocreacion IS 'USUARIO CREACION';
COMMENT ON COLUMN tramitesupervision.fechacreacion IS 'FECHA CREACION';


PROMPT CREATE TABLE turno
CREATE TABLE turno (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE turno IS 'CATALOGO TURNO';

COMMENT ON COLUMN turno.id IS 'ID';
COMMENT ON COLUMN turno.nombre IS 'NOMBRE';


PROMPT CREATE TABLE usuario
CREATE TABLE usuario (
  id                     NUMBER(19,0)       NOT NULL,
  activo                 NUMBER(1,0)        NULL,
  email                  VARCHAR2(255 CHAR) NULL,
  password               VARCHAR2(255 CHAR) NULL,
  username               VARCHAR2(255 CHAR) NULL,
  persona_id             NUMBER             NULL,
  loginsibisep           VARCHAR2(255)      NULL,
  turno_id               NUMBER             NULL,
  max_sesiones_pesimista NUMBER(2,0)        NULL,
  max_sesiones_optimista NUMBER(2,0)        NULL,
  aplicacion_id          NUMBER(1,0)        DEFAULT 0 NULL
)
  STORAGE (
    INITIAL     896 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE usuario IS 'USUARIO';

COMMENT ON COLUMN usuario.id IS 'ID';
COMMENT ON COLUMN usuario.activo IS 'ACTIVO';
COMMENT ON COLUMN usuario.email IS 'EMAIL';
COMMENT ON COLUMN usuario.password IS 'PASSWORD';
COMMENT ON COLUMN usuario.username IS 'USERNAME';
COMMENT ON COLUMN usuario.persona_id IS 'ID PERSONA';
COMMENT ON COLUMN usuario.loginsibisep IS 'LOGIN SIBISEP';
COMMENT ON COLUMN usuario.turno_id IS 'ID TURNO';
COMMENT ON COLUMN usuario.max_sesiones_pesimista IS 'MAXIMA SESIONES PESIMISTA';
COMMENT ON COLUMN usuario.max_sesiones_optimista IS 'MAXIMA SESIONES OPTIMISTA';


PROMPT CREATE TABLE usuario_pri
CREATE TABLE usuario_pri (
  id                     NUMBER(19,0)       NOT NULL,
  activo                 NUMBER(1,0)        NULL,
  email                  VARCHAR2(255 CHAR) NULL,
  password               VARCHAR2(255 CHAR) NULL,
  username               VARCHAR2(255 CHAR) NULL,
  persona_id             NUMBER             NULL,
  loginsibisep           VARCHAR2(255)      NULL,
  turno_id               NUMBER             NULL,
  max_sesiones_pesimista NUMBER(2,0)        NULL,
  max_sesiones_optimista NUMBER(2,0)        NULL,
  aplicacion_id          NUMBER(1,0)        DEFAULT 0 NULL
)
  STORAGE (
    INITIAL     768 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE usuario_sesion
CREATE TABLE usuario_sesion (
  usuario_id                    NUMBER(19,0)  NOT NULL,
  session_id                    VARCHAR2(64)  NOT NULL,
  server                        VARCHAR2(128) NULL,
  fecha_hora_sesion_inicio      DATE          NULL,
  fecha_hora_sesion_fin         DATE          NULL,
  fecha_hora_interaccion_ultima DATE          NULL,
  estatus                       NUMBER(1,0)   NULL
)
  STORAGE (
    INITIAL   99328 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE usuario_sesion IS 'USUARIO SESION';

COMMENT ON COLUMN usuario_sesion.usuario_id IS 'ID USUARIO';
COMMENT ON COLUMN usuario_sesion.session_id IS 'ID SESSION';
COMMENT ON COLUMN usuario_sesion.server IS 'SERVER';
COMMENT ON COLUMN usuario_sesion.fecha_hora_sesion_inicio IS 'FECHA HORA SESION INICIO';
COMMENT ON COLUMN usuario_sesion.fecha_hora_sesion_fin IS 'FECHA HORA SESION FIN';
COMMENT ON COLUMN usuario_sesion.fecha_hora_interaccion_ultima IS 'FECHA HORA INTERACCION ULTIMA';
COMMENT ON COLUMN usuario_sesion.estatus IS 'ESTATUS';


PROMPT CREATE TABLE usuarioalumno
CREATE TABLE usuarioalumno (
  id       NUMBER       NOT NULL,
  usuario  VARCHAR2(50) NULL,
  password VARCHAR2(50) NULL,
  email    VARCHAR2(50) NULL
)
  STORAGE (
    INITIAL     128 K
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE usuarioalumno IS 'USUARIO ALUMNO';

COMMENT ON COLUMN usuarioalumno.id IS 'ID';
COMMENT ON COLUMN usuarioalumno.usuario IS 'USUARIO';
COMMENT ON COLUMN usuarioalumno.password IS 'PASSWORD';
COMMENT ON COLUMN usuarioalumno.email IS 'EMAIL';


PROMPT CREATE TABLE usuarioalumno_alumno
CREATE TABLE usuarioalumno_alumno (
  usuarioalumno_id NUMBER NOT NULL,
  alumno_id        NUMBER NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE usuarioalumno_alumno IS 'USUARIO ALUMNO ALUMNO';

COMMENT ON COLUMN usuarioalumno_alumno.usuarioalumno_id IS 'ID USUARIO ALUMNO';
COMMENT ON COLUMN usuarioalumno_alumno.alumno_id IS 'ID ALUMNO';


PROMPT CREATE TABLE vault_alumno_fin_ciclo
CREATE TABLE vault_alumno_fin_ciclo (
  alumno_id                    NUMBER(19,0) NOT NULL,
  grupo_id                     NUMBER(19,0) NOT NULL,
  p_9_14                       NUMBER(1,0)  NULL,
  promocion_interciclo         NUMBER(1,0)  NULL,
  falto_captura                NUMBER(1,0)  NULL,
  promedio_grado               NUMBER(4,1)  NULL,
  promedio_nivel               NUMBER(4,1)  NULL,
  asignaturas_reprobadas_grado NUMBER(2,0)  NULL,
  promover                     NUMBER(1,0)  NULL,
  condicionado                 NUMBER(1,0)  NULL,
  fechacreacion                DATE         NULL,
  usuariocreacion              VARCHAR2(32) NULL,
  fechamodificacion            DATE         NULL,
  usuariomodificacion          VARCHAR2(32) NULL,
  taller_id                    NUMBER(19,0) NULL
)
  STORAGE (
    INITIAL   94208 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE w_asentamiento_to_cit
CREATE TABLE w_asentamiento_to_cit (
  pais_id         NUMBER(19,0) NULL,
  estado_id       NUMBER(19,0) NULL,
  municipio_id    NUMBER(19,0) NULL,
  asentamiento_id NUMBER(19,0) NULL,
  cod_entidad     CHAR(2)      NULL,
  cod_municipio   CHAR(3)      NULL,
  cod_localidad   CHAR(4)      NULL,
  match_tipo      NUMBER(5,0)  NULL
)
  STORAGE (
    INITIAL     256 K
    NEXT       1024 K
  )
  LOGGING
/



PROMPT CREATE TABLE wk_alumno_evaluacion_primaria
CREATE TABLE wk_alumno_evaluacion_primaria (
  alumno_id       NUMBER(19,0) NOT NULL,
  evaluaciones_id NUMBER(19,0) NOT NULL
)
  STORAGE (
    NEXT       1024 K
  )
/



PROMPT CREATE TABLE wk_alumno_primaria
CREATE TABLE wk_alumno_primaria (
  conquienvive           NUMBER(10,0)  NULL,
  id                     NUMBER(19,0)  NOT NULL,
  grupoactivo_id         NUMBER(19,0)  NULL,
  infosalud_id           NUMBER(19,0)  NULL,
  preinscripcion_id      NUMBER(19,0)  NULL,
  estatus                NUMBER(10,0)  NULL,
  otranacionalidad_id    NUMBER(10,0)  NULL,
  municipionacimiento_id NUMBER(19,0)  NULL,
  telefono_id            NUMBER(19,0)  NULL,
  domicilio_id           NUMBER(19,0)  NULL,
  usuariocreacion        VARCHAR2(255) NULL,
  fechacreacion          DATE          DEFAULT sysdate NULL,
  nombrepadre            VARCHAR2(255) NULL,
  nombremadre            VARCHAR2(255) NULL,
  curp                   VARCHAR2(255) NULL,
  serviciomixto          NUMBER(19,0)  NULL,
  fechaalta              DATE          DEFAULT sysdate NULL,
  claveautorizacion      VARCHAR2(255) NULL,
  grupo_sanguineo_id     NUMBER(10,0)  NULL,
  grupo_plantelregular   NUMBER(19,0)  NULL,
  fechnacpadre           TIMESTAMP(3)  NULL,
  fechnacmadre           TIMESTAMP(3)  NULL,
  plantel_id             NUMBER(19,0)  NULL,
  usuarioalumno_id       NUMBER        NULL,
  doblecurp              NUMBER(1,0)   NULL,
  talleractivo_id        NUMBER        NULL,
  plan1_id               NUMBER(19,0)  NULL,
  plan2_id               NUMBER(19,0)  NULL,
  plan3_id               NUMBER(19,0)  NULL,
  plan4_id               NUMBER(19,0)  NULL,
  plan5_id               NUMBER(19,0)  NULL,
  plan6_id               NUMBER(19,0)  NULL,
  promedio_1gdo          NUMBER(4,1)   NULL,
  promedio_2gdo          NUMBER(4,1)   NULL,
  promedio_3gdo          NUMBER(4,1)   NULL,
  promedio_secundaria    NUMBER(4,1)   NULL,
  irregular_1gdo         NUMBER(2,0)   NULL,
  irregular_2gdo         NUMBER(2,0)   NULL,
  irregular_3gdo         NUMBER(2,0)   NULL,
  promedio_edubas        NUMBER(4,1)   NULL,
  p_9_14                 NUMBER(1,0)   NULL,
  promedio_pr_1gdo       NUMBER(5,2)   NULL,
  promedio_pr_2gdo       NUMBER(5,2)   NULL,
  promedio_pr_3gdo       NUMBER(5,2)   NULL,
  promedio_pr_4gdo       NUMBER(5,2)   NULL,
  promedio_pr_5gdo       NUMBER(5,2)   NULL,
  promedio_pr_6gdo       NUMBER(5,2)   NULL,
  promedio_primaria      NUMBER(5,2)   NULL,
  promedio_pr_1gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_2gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_3gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_4gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_5gdo_cve   NUMBER(2,0)   NULL,
  promedio_pr_1gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_2gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_3gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_4gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_5gdo_ori   NUMBER(5,2)   NULL,
  promedio_pr_6gdo_cve   NUMBER(2,0)   NULL,
  irregular_pr_1gdo      NUMBER(2,0)   NULL,
  irregular_pr_2gdo      NUMBER(2,0)   NULL,
  irregular_pr_3gdo      NUMBER(2,0)   NULL,
  irregular_pr_4gdo      NUMBER(2,0)   NULL,
  irregular_pr_5gdo      NUMBER(2,0)   NULL,
  irregular_pr_6gdo      NUMBER(2,0)   NULL,
  escolaridadpadre       NUMBER(2,0)   NULL,
  escolaridadmadre       NUMBER(2,0)   NULL,
  quien_sostiene_eco     NUMBER(2,0)   NULL,
  cuantos_viven_casa     NUMBER(2,0)   NULL,
  utiliza_usaer          NUMBER(1,0)   NULL,
  edad_en_cicloescolar   NUMBER(7,0)   NULL
)
  STORAGE (
    NEXT       1024 K
  )
/



PROMPT CREATE TABLE wk_domicilio_primaria
CREATE TABLE wk_domicilio_primaria (
  id              NUMBER(19,0)       NOT NULL,
  calle           VARCHAR2(255 CHAR) NULL,
  numext          VARCHAR2(255 CHAR) NULL,
  numint          VARCHAR2(255 CHAR) NULL,
  id_asentamiento NUMBER(19,0)       NULL,
  asentamiento_id NUMBER(19,0)       NULL,
  otracolonia     VARCHAR2(255)      NULL
)
  STORAGE (
    NEXT       1024 K
  )
/



PROMPT CREATE TABLE wk_evaluacion_primaria
CREATE TABLE wk_evaluacion_primaria (
  id                  NUMBER(19,0)       NOT NULL,
  calificacion        NUMBER(4,1)        NULL,
  fechacreacion       DATE               NULL,
  inasistencias       NUMBER(19,0)       NULL,
  observaciones       VARCHAR2(255 CHAR) NULL,
  username            VARCHAR2(255 CHAR) NULL,
  cicloescolar_id     NUMBER(19,0)       NULL,
  materia_id          NUMBER(10,0)       NULL,
  periodo_id          NUMBER(19,0)       NULL,
  alumno_id           NUMBER(19,0)       NULL,
  cve_materia         VARCHAR2(6)        NULL,
  recupera            NUMBER             NULL,
  calificacion_entera NUMBER(4,2)        NULL
)
  STORAGE (
    NEXT       1024 K
  )
/



PROMPT CREATE TABLE wk_grupo_primaria
CREATE TABLE wk_grupo_primaria (
  id              NUMBER(19,0)       NOT NULL,
  grado           NUMBER(10,0)       NULL,
  nombre          VARCHAR2(255 CHAR) NULL,
  usuariocreacion VARCHAR2(255)      NULL,
  fechacreacion   DATE               DEFAULT sysdate NULL,
  plantel_id      NUMBER(19,0)       NULL,
  turno_id        NUMBER(19,0)       NULL,
  cicloescolar_id NUMBER(19,0)       NULL,
  nivelescolar_id NUMBER(19,0)       NULL,
  empleado_id     NUMBER(19,0)       NULL,
  aula_id         NUMBER             NULL
)
  STORAGE (
    NEXT       1024 K
  )
/



PROMPT CREATE TABLE wk_lecturaevaluacion_primaria
CREATE TABLE wk_lecturaevaluacion_primaria (
  id                  NUMBER       NULL,
  periodo_id          NUMBER       NULL,
  lecturahabilidad_id NUMBER       NULL,
  cicloescolar_id     NUMBER       NULL,
  puntaje             NUMBER       NULL,
  grupo_id            NUMBER       NULL,
  alumno_id           NUMBER(19,0) NULL
)
  STORAGE (
    NEXT       1024 K
  )
/



PROMPT CREATE TABLE wk_persona_primaria
CREATE TABLE wk_persona_primaria (
  id                    NUMBER(19,0)       NOT NULL,
  curp                  VARCHAR2(255 CHAR) NULL,
  fechanac              TIMESTAMP(6)       NULL,
  nombres               VARCHAR2(255 CHAR) NULL,
  primerapellido        VARCHAR2(255 CHAR) NULL,
  rfc                   VARCHAR2(255 CHAR) NULL,
  segundoapellido       VARCHAR2(255 CHAR) NULL,
  sexo                  NUMBER(10,0)       NULL,
  lugarnacimiento_id    NUMBER(19,0)       NULL,
  nacionalidad_id       NUMBER(19,0)       NULL,
  otranacionalidad_id   NUMBER(19,0)       DEFAULT 0 NULL,
  usuario_id            NUMBER(19,0)       NULL,
  puebloindigena_id     NUMBER(19,0)       NULL,
  domicilio_id          NUMBER(19,0)       NULL,
  lengua_id             NUMBER(19,0)       NULL,
  encontrado            NUMBER             NULL,
  curp_old              VARCHAR2(18)       NULL,
  curprenapo            VARCHAR2(255)      NULL,
  primerapellidorenapo  VARCHAR2(255)      NULL,
  segundoapellidorenapo VARCHAR2(255)      NULL,
  nombresrenapo         VARCHAR2(255)      NULL,
  fechanacrenapo        TIMESTAMP(6)       NULL,
  sexorenapo            VARCHAR2(255)      NULL
)
  STORAGE (
    NEXT       1024 K
  )
/



PROMPT CREATE TABLE zona
CREATE TABLE zona (
  id     NUMBER(19,0)       NOT NULL,
  nombre VARCHAR2(255 CHAR) NULL
)
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

COMMENT ON TABLE zona IS 'CATALOGO ZONA ESCOLAR';

COMMENT ON COLUMN zona.id IS 'ID';
COMMENT ON COLUMN zona.nombre IS 'NOMBRE';


PROMPT =========================================================================
PROMPT INDEXES
PROMPT =========================================================================

PROMPT CREATE INDEX idx_adeudos_alumnno_id
CREATE INDEX idx_adeudos_alumnno_id
  ON adeudo (
    alumno_id
  )
  STORAGE (
    INITIAL    4096 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx$$_2da4e0001
CREATE INDEX idx$$_2da4e0001
  ON alumno (
    grupoactivo_id,
    estatus
  )
  STORAGE (
    INITIAL  139264 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx$$_4bdaa0003
CREATE INDEX idx$$_4bdaa0003
  ON alumno (
    talleractivo_id
  )
  STORAGE (
    INITIAL   16384 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_preinscripcion_id
CREATE BITMAP INDEX idx_preinscripcion_id
  ON alumno (
    preinscripcion_id
  )
  STORAGE (
    INITIAL   10240 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_alumno_estatus
CREATE INDEX ix_alumno_estatus
  ON alumno (
    estatus
  )
  STORAGE (
    INITIAL   81920 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_idalumno_renapo
CREATE INDEX idx_idalumno_renapo
  ON alumno_info_curp_renapo (
    idalumno
  )
  STORAGE (
    INITIAL    8192 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_asentamiento_cp
CREATE INDEX ix_asentamiento_cp
  ON asentamiento (
    codigo
  )
  TABLESPACE sedf_inx
  STORAGE (
    INITIAL    3072 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_adt_alum_eval
CREATE INDEX idx_adt_alum_eval
  ON audit_alumno_evaluacion (
    alumno_id,
    evaluaciones_id
  )
  STORAGE (
    INITIAL   11264 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_aud_alum_eval
CREATE INDEX idx_aud_alum_eval
  ON auditoria_alumno_evaluacion (
    alumno_id,
    evaluaciones_id
  )
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_recuperar_alu_preins
CREATE INDEX idx_recuperar_alu_preins
  ON auditoria_alumno_preins (
    recuperar
  )
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_avancealumno_id
CREATE INDEX idx_avancealumno_id
  ON avance_preescolar (
    alumno_id
  )
  STORAGE (
    INITIAL   46080 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_avancemateria
CREATE INDEX idx_avancemateria
  ON avance_preescolar (
    materia_id
  )
  STORAGE (
    INITIAL   53248 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_avance_id
CREATE UNIQUE INDEX idx_avance_id
  ON avance_preescolar (
    id
  )
  STORAGE (
    INITIAL   30720 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_bdu_cct_cct
CREATE UNIQUE INDEX idx_bdu_cct_cct
  ON bdunica_cct (
    cct
  )
  STORAGE (
    INITIAL     448 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_cct_cct
CREATE UNIQUE INDEX idx_cct_cct
  ON cct (
    cct
  )
  STORAGE (
    INITIAL     448 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_cct_cod_ent
CREATE INDEX idx_cct_cod_ent
  ON cct (
    cod_entidad
  )
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_cct_cod_loc
CREATE INDEX idx_cct_cod_loc
  ON cct (
    cod_localidad
  )
  STORAGE (
    INITIAL     384 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_cct_cod_mun
CREATE INDEX idx_cct_cod_mun
  ON cct (
    cod_municipio
  )
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx$$_4be020002
CREATE INDEX idx$$_4be020002
  ON cicloescolar (
    activo
  )
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_cit_cod_ent
CREATE INDEX idx_cit_cod_ent
  ON cit (
    cod_entidad
  )
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_cit_cod_mun
CREATE INDEX idx_cit_cod_mun
  ON cit (
    cod_municipio
  )
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_xit_cod_loc
CREATE INDEX idx_xit_cod_loc
  ON cit (
    cod_localidad
  )
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX diplomas_al
CREATE INDEX diplomas_al
  ON diplomas (
    alumno_id
  )
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX diplomas_key
CREATE INDEX diplomas_key
  ON diplomas (
    cicloescolar_id,
    alumno_id
  )
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_domicilio_calle
CREATE INDEX ix_domicilio_calle
  ON domicilio (
    calle
  )
  STORAGE (
    INITIAL  207872 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evaluacion_all
CREATE BITMAP INDEX idx_evaluacion_all
  ON evaluacion (
    cicloescolar_id,
    materia_id,
    periodo_id
  )
  STORAGE (
    INITIAL  237568 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evaluacion_cicloescolar
CREATE BITMAP INDEX idx_evaluacion_cicloescolar
  ON evaluacion (
    cicloescolar_id
  )
  STORAGE (
    INITIAL   28672 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evaluacion_cvemateria
CREATE BITMAP INDEX idx_evaluacion_cvemateria
  ON evaluacion (
    cve_materia
  )
  STORAGE (
    INITIAL   97280 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evaluacion_materia
CREATE BITMAP INDEX idx_evaluacion_materia
  ON evaluacion (
    materia_id
  )
  STORAGE (
    INITIAL  201728 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evaluacion_periodo
CREATE BITMAP INDEX idx_evaluacion_periodo
  ON evaluacion (
    periodo_id
  )
  STORAGE (
    INITIAL   31744 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evalextra_all
CREATE BITMAP INDEX idx_evalextra_all
  ON evaluacionextra (
    cicloescolar_id,
    materia_id,
    periodo_id
  )
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evalextra_cicloescolar
CREATE BITMAP INDEX idx_evalextra_cicloescolar
  ON evaluacionextra (
    cicloescolar_id
  )
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evalextra_cvemateria
CREATE BITMAP INDEX idx_evalextra_cvemateria
  ON evaluacionextra (
    cve_materia
  )
  STORAGE (
    INITIAL     576 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evalextra_materia
CREATE BITMAP INDEX idx_evalextra_materia
  ON evaluacionextra (
    materia_id
  )
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_evalextra_periodo
CREATE BITMAP INDEX idx_evalextra_periodo
  ON evaluacionextra (
    periodo_id
  )
  STORAGE (
    INITIAL     256 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX evaluacionrecupera_pk
CREATE UNIQUE INDEX evaluacionrecupera_pk
  ON evaluacionrecupera (
    id
  )
  STORAGE (
    INITIAL   16384 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx$$_4be020001
CREATE INDEX idx$$_4be020001
  ON evaluacionrecupera (
    alumno_id,
    materia_id
  )
  STORAGE (
    INITIAL    9216 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_erecupera_alumno_id
CREATE INDEX idx_erecupera_alumno_id
  ON evaluacionrecupera (
    alumno_id
  )
  STORAGE (
    INITIAL   10240 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_fcar_alumno_id
CREATE INDEX idx_fcar_alumno_id
  ON foliocartilla (
    alumno_id
  )
  STORAGE (
    INITIAL   45056 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_fc_alumno_id
CREATE INDEX idx_fc_alumno_id
  ON foliocertificado (
    alumno_id
  )
  STORAGE (
    INITIAL    6144 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_gpo_ciclo
CREATE INDEX idx_gpo_ciclo
  ON grupo (
    nombre,
    cicloescolar_id
  )
  STORAGE (
    INITIAL   10240 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_grupo
CREATE UNIQUE INDEX idx_grupo
  ON grupo (
    cicloescolar_id,
    nivelescolar_id,
    plantel_id,
    turno_id,
    grado,
    nombre
  )
  STORAGE (
    INITIAL   14336 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_grupo_grado
CREATE INDEX idx_grupo_grado
  ON grupo (
    grado
  )
  STORAGE (
    INITIAL    5120 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_grupo_turno_id
CREATE INDEX idx_grupo_turno_id
  ON grupo (
    turno_id
  )
  STORAGE (
    INITIAL    5120 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_his_alu_gpo
CREATE INDEX idx_his_alu_gpo
  ON historico_alumno_grupo (
    cicloescolar_id,
    grupo_id,
    alumno_id
  )
  STORAGE (
    INITIAL   87040 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_alu_taller_alu_ciclo
CREATE INDEX idx_alu_taller_alu_ciclo
  ON historico_alumno_grupotaller (
    alumno_id,
    cicloescolar_id
  )
  STORAGE (
    INITIAL   24576 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_his_evx_evaex_id
CREATE INDEX idx_his_evx_evaex_id
  ON historico_alumnor_evalextra (
    evaluacionextra_id
  )
  STORAGE (
    INITIAL     128 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_his_evalrec_id
CREATE INDEX idx_his_evalrec_id
  ON historico_alumnor_evalrecupera (
    evaluacionrecupera_id
  )
  STORAGE (
    INITIAL     448 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_his_alr_eval
CREATE INDEX idx_his_alr_eval
  ON historico_alumnor_evaluacion (
    evaluacion_id
  )
  STORAGE (
    INITIAL   35840 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_his_leceva_idl
CREATE INDEX idx_his_leceva_idl
  ON historico_alumnor_leceval (
    lecturaevaluacion_id
  )
  STORAGE (
    INITIAL    7168 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_alumno_id
CREATE INDEX idx_alumno_id
  ON inasistencia_preescolar (
    alumno_id
  )
  STORAGE (
    INITIAL    6144 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_id
CREATE UNIQUE INDEX idx_id
  ON inasistencia_preescolar (
    id
  )
  STORAGE (
    INITIAL    5120 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_mat_cve
CREATE INDEX idx_mat_cve
  ON materia (
    cve_materia
  )
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_mat_grado
CREATE INDEX idx_mat_grado
  ON materia (
    grado
  )
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_medio_contacto
CREATE INDEX ix_medio_contacto
  ON mediocontacto (
    numero
  )
  TABLESPACE sedf_inx
  STORAGE (
    INITIAL   81920 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_persona_domicilio
CREATE BITMAP INDEX idx_persona_domicilio
  ON persona (
    domicilio_id
  )
  STORAGE (
    INITIAL  184320 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_persona_nombres
CREATE INDEX idx_persona_nombres
  ON persona (
    primerapellido,
    segundoapellido,
    nombres
  )
  STORAGE (
    INITIAL  131072 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_persona_usuario_id
CREATE INDEX idx_persona_usuario_id
  ON persona (
    usuario_id
  )
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_lower_personacurp
CREATE INDEX ix_lower_personacurp
  ON persona (
    LOWER("CURP")
  )
  STORAGE (
    INITIAL  136192 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_persona_curp
CREATE INDEX ix_persona_curp
  ON persona (
    curp
  )
  TABLESPACE sedf_inx
  STORAGE (
    INITIAL  147456 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_pe_ce_niv
CREATE INDEX idx_pe_ce_niv
  ON planestudios (
    cicloescolar_id,
    nivel_id
  )
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx$$_4bdaa0002
CREATE INDEX idx$$_4bdaa0002
  ON plantel (
    id,
    cicloescolaractivo_id
  )
  STORAGE (
    INITIAL     512 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_plantel_domicilio
CREATE BITMAP INDEX idx_plantel_domicilio
  ON plantel (
    domicilio_id
  )
  STORAGE (
    INITIAL     384 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_plantel_turno_id
CREATE INDEX idx_plantel_turno_id
  ON plantel (
    turno_id
  )
  STORAGE (
    INITIAL     256 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_plantel_cct
CREATE UNIQUE INDEX ix_plantel_cct
  ON plantel (
    cct
  )
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX plantel_user_idx
CREATE INDEX plantel_user_idx
  ON plantel_usuario (
    usuarios_id
  )
  TABLESPACE sedf_inx
  STORAGE (
    INITIAL    2048 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_opcion_1_id
CREATE BITMAP INDEX idx_opcion_1_id
  ON preinscripcion (
    opcion1_id
  )
  STORAGE (
    INITIAL     704 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX f_folios
CREATE INDEX f_folios
  ON promedios (
    alumno_id
  )
  STORAGE (
    INITIAL     832 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX alumno_id_idx
CREATE INDEX alumno_id_idx
  ON recomendacion_preescolar (
    alumno_id
  )
  STORAGE (
    INITIAL    8192 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX id_idx
CREATE UNIQUE INDEX id_idx
  ON recomendacion_preescolar (
    id
  )
  STORAGE (
    INITIAL    5120 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_solbaja_alumno_id
CREATE INDEX idx_solbaja_alumno_id
  ON solicitudbaja (
    alumno_id
  )
  STORAGE (
    INITIAL    4096 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_solbaja_grupo_id
CREATE INDEX idx_solbaja_grupo_id
  ON solicitudbaja (
    to_grupo_id
  )
  STORAGE (
    INITIAL    3072 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX ix_tmp_escuelas_ilce_2014_2015
CREATE UNIQUE INDEX ix_tmp_escuelas_ilce_2014_2015
  ON tmp_escuelas_ilce_2014_2015 (
    cct
  )
  STORAGE (
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_usuario_turno
CREATE INDEX idx_usuario_turno
  ON usuario (
    turno_id
  )
  STORAGE (
    INITIAL     320 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX user_idx
CREATE INDEX user_idx
  ON usuario (
    username
  )
  TABLESPACE sedf_inx
  STORAGE (
    INITIAL     704 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT CREATE INDEX idx_w_asen_to_cit
CREATE INDEX idx_w_asen_to_cit
  ON w_asentamiento_to_cit (
    cod_entidad,
    cod_municipio,
    cod_localidad
  )
  STORAGE (
    INITIAL     192 K
    NEXT       1024 K
  )
  LOGGING
/

PROMPT =========================================================================
PROMPT PRIMARY AND UNIQUE CONSTRAINTS
PROMPT =========================================================================

PROMPT ALTER TABLE alumno ADD PRIMARY KEY
ALTER TABLE alumno
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL   98304 K
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE alumno_barreras_apoyo ADD CONSTRAINT alumno_barreras_apoyo_pk PRIMARY KEY
ALTER TABLE alumno_barreras_apoyo
  ADD CONSTRAINT alumno_barreras_apoyo_pk PRIMARY KEY (
    alumno_id,
    clave_dewey
  )
  USING INDEX
    STORAGE (
      INITIAL     320 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_barreras_aprendizaje ADD CONSTRAINT alumno_barreras_aprendizaje_pk PRIMARY KEY
ALTER TABLE alumno_barreras_aprendizaje
  ADD CONSTRAINT alumno_barreras_aprendizaje_pk PRIMARY KEY (
    alumno_id,
    clave_dewey
  )
  USING INDEX
    STORAGE (
      INITIAL    2048 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_discapacidad ADD PRIMARY KEY
ALTER TABLE alumno_discapacidad
  ADD PRIMARY KEY (
    alumno_id,
    discapacidades_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     576 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_eval_extraordinario ADD PRIMARY KEY
ALTER TABLE alumno_eval_extraordinario
  ADD PRIMARY KEY (
    alumno_id,
    evaluacion_extraordinarios_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_eval_extraordinario ADD UNIQUE
ALTER TABLE alumno_eval_extraordinario
  ADD UNIQUE (
    evaluacion_extraordinarios_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_evaluacion ADD PRIMARY KEY
ALTER TABLE alumno_evaluacion
  ADD PRIMARY KEY (
    alumno_id,
    evaluaciones_id
  )
  USING INDEX
    STORAGE (
      INITIAL 2097151 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_evaluacion ADD UNIQUE
ALTER TABLE alumno_evaluacion
  ADD UNIQUE (
    evaluaciones_id
  )
  USING INDEX
    STORAGE (
      INITIAL 2097151 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_evaluacion_regul ADD PRIMARY KEY
ALTER TABLE alumno_evaluacion_regul
  ADD PRIMARY KEY (
    alumno_id,
    evaluaciones_id
  )
  USING INDEX
    STORAGE (
      INITIAL   26624 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_evaluacionextra ADD CONSTRAINT alumno_evaluacionextraordin_pk PRIMARY KEY
ALTER TABLE alumno_evaluacionextra
  ADD CONSTRAINT alumno_evaluacionextraordin_pk PRIMARY KEY (
    alumno_id,
    evaluacionesextra_id
  )
  USING INDEX
    STORAGE (
      INITIAL   13312 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_evaluacionrecupera ADD PRIMARY KEY
ALTER TABLE alumno_evaluacionrecupera
  ADD PRIMARY KEY (
    alumno_id,
    evaluacionrecupera_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_evaluacionrecupera ADD UNIQUE
ALTER TABLE alumno_evaluacionrecupera
  ADD UNIQUE (
    evaluacionrecupera_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_grupo ADD PRIMARY KEY
ALTER TABLE alumno_grupo
  ADD PRIMARY KEY (
    alumnos_id,
    grupos_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL  106496 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_grupotaller ADD CONSTRAINT alumno_grupotaller_pk PRIMARY KEY
ALTER TABLE alumno_grupotaller
  ADD CONSTRAINT alumno_grupotaller_pk PRIMARY KEY (
    alumnos_id,
    talleres_id
  )
  USING INDEX
    STORAGE (
      INITIAL   18432 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_info_curp_renapo ADD CONSTRAINT alumno_info_curp_renapo_pk PRIMARY KEY
ALTER TABLE alumno_info_curp_renapo
  ADD CONSTRAINT alumno_info_curp_renapo_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL    7168 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE alumno_lecturaevaluacion ADD CONSTRAINT alumno_lecturaevaluacion_pk PRIMARY KEY
ALTER TABLE alumno_lecturaevaluacion
  ADD CONSTRAINT alumno_lecturaevaluacion_pk PRIMARY KEY (
    alumno_id,
    lecturaevaluacion_id
  )
  USING INDEX
    STORAGE (
      INITIAL  878592 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE aplicacion ADD PRIMARY KEY
ALTER TABLE aplicacion
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE asentamiento ADD PRIMARY KEY
ALTER TABLE asentamiento
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    2048 K
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE aula ADD CONSTRAINT aula_pk PRIMARY KEY
ALTER TABLE aula
  ADD CONSTRAINT aula_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL   18432 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE autoridad ADD PRIMARY KEY
ALTER TABLE autoridad
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE autoridad_grupousuario ADD PRIMARY KEY
ALTER TABLE autoridad_grupousuario
  ADD PRIMARY KEY (
    autoridad_id,
    grupos_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE autoridad_usuario ADD PRIMARY KEY
ALTER TABLE autoridad_usuario
  ADD PRIMARY KEY (
    autoridad_id,
    usuarios_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     128 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE aviso ADD PRIMARY KEY
ALTER TABLE aviso
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE aviso_plantel ADD PRIMARY KEY
ALTER TABLE aviso_plantel
  ADD PRIMARY KEY (
    aviso_id,
    plantel_id
  )
  USING INDEX
    STORAGE (
      INITIAL     192 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE baja ADD PRIMARY KEY
ALTER TABLE baja
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL   12288 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE barreras_apoyo ADD PRIMARY KEY
ALTER TABLE barreras_apoyo
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE barreras_aprendizaje ADD PRIMARY KEY
ALTER TABLE barreras_aprendizaje
  ADD PRIMARY KEY (
    clave_dewey
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE beca ADD CONSTRAINT beca_pk PRIMARY KEY
ALTER TABLE beca
  ADD CONSTRAINT beca_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL     256 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE beca ADD CONSTRAINT cns_beca_alumno_id UNIQUE
ALTER TABLE beca
  ADD CONSTRAINT cns_beca_alumno_id UNIQUE (
    alumno_id
  )
  USING INDEX
    STORAGE (
      INITIAL     384 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE cicloescolar ADD PRIMARY KEY
ALTER TABLE cicloescolar
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE clavesautorizacion ADD CONSTRAINT clavesautorizacion_pk PRIMARY KEY
ALTER TABLE clavesautorizacion
  ADD CONSTRAINT clavesautorizacion_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     128 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE coordinacion ADD PRIMARY KEY
ALTER TABLE coordinacion
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE dialecto ADD PRIMARY KEY
ALTER TABLE dialecto
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE diplomas ADD CONSTRAINT diplomas_pk PRIMARY KEY
ALTER TABLE diplomas
  ADD CONSTRAINT diplomas_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL    2048 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE diplomas ADD CONSTRAINT diplomas_r01 UNIQUE
ALTER TABLE diplomas
  ADD CONSTRAINT diplomas_r01 UNIQUE (
    alumno_id,
    cicloescolar_id
  )
  USING INDEX
    STORAGE (
      INITIAL    2048 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE diplomas ADD CONSTRAINT diplomas_u01 UNIQUE
ALTER TABLE diplomas
  ADD CONSTRAINT diplomas_u01 UNIQUE (
    folio
  )
  USING INDEX
    STORAGE (
      INITIAL    2048 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE direcciongeneral ADD PRIMARY KEY
ALTER TABLE direcciongeneral
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE discapacidad ADD PRIMARY KEY
ALTER TABLE discapacidad
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE documento_fechaentrega ADD CONSTRAINT documento_fechaentrega_pk PRIMARY KEY
ALTER TABLE documento_fechaentrega
  ADD CONSTRAINT documento_fechaentrega_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE domicilio ADD PRIMARY KEY
ALTER TABLE domicilio
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL  157696 K
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE empleado ADD PRIMARY KEY
ALTER TABLE empleado
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    3072 K
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE estadistica_cuadro_concentra ADD CONSTRAINT cns_est_cc_uniq UNIQUE
ALTER TABLE estadistica_cuadro_concentra
  ADD CONSTRAINT cns_est_cc_uniq UNIQUE (
    cicloescolar_id,
    grupo_id,
    materia_id,
    periodo_id
  )
  USING INDEX
    STORAGE (
      INITIAL   25600 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE estado ADD PRIMARY KEY
ALTER TABLE estado
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE evaluacion ADD PRIMARY KEY
ALTER TABLE evaluacion
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL 2097151 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE evaluacion_extraordinario ADD PRIMARY KEY
ALTER TABLE evaluacion_extraordinario
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE evaluacion_regul ADD PRIMARY KEY
ALTER TABLE evaluacion_regul
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL   20480 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE evaluacioncertificacion ADD CONSTRAINT evaluacioncertificacion_u01 UNIQUE
ALTER TABLE evaluacioncertificacion
  ADD CONSTRAINT evaluacioncertificacion_u01 UNIQUE (
    alumno_id,
    materia_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE evaluacionextra ADD CONSTRAINT evaluacionextraordinario_pk PRIMARY KEY
ALTER TABLE evaluacionextra
  ADD CONSTRAINT evaluacionextraordinario_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL   14336 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE evaluacionpg ADD CONSTRAINT evaluacionpg_u01 UNIQUE
ALTER TABLE evaluacionpg
  ADD CONSTRAINT evaluacionpg_u01 UNIQUE (
    alumno_id,
    grado
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE familiar ADD CONSTRAINT familiar_pk PRIMARY KEY
ALTER TABLE familiar
  ADD CONSTRAINT familiar_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE familiar_alumno ADD CONSTRAINT familiar_alumno_pk PRIMARY KEY
ALTER TABLE familiar_alumno
  ADD CONSTRAINT familiar_alumno_pk PRIMARY KEY (
    familiar_id,
    alumno_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE foliocartilla ADD CONSTRAINT foliocartilla_pk PRIMARY KEY
ALTER TABLE foliocartilla
  ADD CONSTRAINT foliocartilla_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL  102400 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE foliocertificado ADD CONSTRAINT foliocertificado_pk PRIMARY KEY
ALTER TABLE foliocertificado
  ADD CONSTRAINT foliocertificado_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL    6144 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE funcion ADD PRIMARY KEY
ALTER TABLE funcion
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE funcion_autoridad ADD PRIMARY KEY
ALTER TABLE funcion_autoridad
  ADD PRIMARY KEY (
    funcion_id,
    autoridades_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE funcionreal ADD PRIMARY KEY
ALTER TABLE funcionreal
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
/

PROMPT ALTER TABLE gastosplantel ADD CONSTRAINT gastosplantel_pk PRIMARY KEY
ALTER TABLE gastosplantel
  ADD CONSTRAINT gastosplantel_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE grupo ADD PRIMARY KEY
ALTER TABLE grupo
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    5120 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE grupotaller ADD PRIMARY KEY
ALTER TABLE grupotaller
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL    2048 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE grupousuario ADD PRIMARY KEY
ALTER TABLE grupousuario
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE grupousuario_grupousuario ADD PRIMARY KEY
ALTER TABLE grupousuario_grupousuario
  ADD PRIMARY KEY (
    id_grupousuario,
    id_grupo
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE grupousuario_usuario ADD PRIMARY KEY
ALTER TABLE grupousuario_usuario
  ADD PRIMARY KEY (
    id_grupousuario,
    id_usuario
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE herramientas_aprendizaje ADD CONSTRAINT herramientas_aprendizaje_pk PRIMARY KEY
ALTER TABLE herramientas_aprendizaje
  ADD CONSTRAINT herramientas_aprendizaje_pk PRIMARY KEY (
    alumno_id,
    nivelescolar_id,
    cicloescolar_id,
    grado,
    periodo_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE inasistenciaperiodo ADD PRIMARY KEY
ALTER TABLE inasistenciaperiodo
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE incidenciaempleado ADD PRIMARY KEY
ALTER TABLE incidenciaempleado
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE incidenciaplantel ADD PRIMARY KEY
ALTER TABLE incidenciaplantel
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    1024 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE infosalud ADD PRIMARY KEY
ALTER TABLE infosalud
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL   98304 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE inmueble ADD CONSTRAINT inmueble_pk PRIMARY KEY
ALTER TABLE inmueble
  ADD CONSTRAINT inmueble_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE inmueble_servicios ADD CONSTRAINT inmueble_servicios_pk PRIMARY KEY
ALTER TABLE inmueble_servicios
  ADD CONSTRAINT inmueble_servicios_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE lecturaevaluacion ADD CONSTRAINT lecturaevaluacion_pk PRIMARY KEY
ALTER TABLE lecturaevaluacion
  ADD CONSTRAINT lecturaevaluacion_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL  485376 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE lecturaevaluacion ADD CONSTRAINT cnt_ulecturaevaluacion UNIQUE
ALTER TABLE lecturaevaluacion
  ADD CONSTRAINT cnt_ulecturaevaluacion UNIQUE (
    cicloescolar_id,
    periodo_id,
    lecturahabilidad_id,
    alumno_id
  )
  DISABLE
  NOVALIDATE
/

PROMPT ALTER TABLE lecturahabilidad ADD CONSTRAINT lecturahabilidad_pk PRIMARY KEY
ALTER TABLE lecturahabilidad
  ADD CONSTRAINT lecturahabilidad_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE lecturahabilidadlogro ADD CONSTRAINT lecturahabilidadlogro_pk PRIMARY KEY
ALTER TABLE lecturahabilidadlogro
  ADD CONSTRAINT lecturahabilidadlogro_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE lecturanivellogro ADD CONSTRAINT lecturanivellogro_pk PRIMARY KEY
ALTER TABLE lecturanivellogro
  ADD CONSTRAINT lecturanivellogro_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE local ADD CONSTRAINT local_pk PRIMARY KEY
ALTER TABLE local
  ADD CONSTRAINT local_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE materia ADD PRIMARY KEY
ALTER TABLE materia
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE materia_profesor ADD CONSTRAINT materia_profesor_pk PRIMARY KEY
ALTER TABLE materia_profesor
  ADD CONSTRAINT materia_profesor_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL     192 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE mediocontacto ADD PRIMARY KEY
ALTER TABLE mediocontacto
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL   90112 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE municipio ADD PRIMARY KEY
ALTER TABLE municipio
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     128 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE nacionalidad ADD PRIMARY KEY
ALTER TABLE nacionalidad
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE niveleducativo ADD PRIMARY KEY
ALTER TABLE niveleducativo
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE observaciones_generales ADD PRIMARY KEY
ALTER TABLE observaciones_generales
  ADD PRIMARY KEY (
    alummno_id,
    nivelescolar_id,
    cicloescolar_id,
    grado
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE ocupacion ADD PRIMARY KEY
ALTER TABLE ocupacion
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE pais ADD PRIMARY KEY
ALTER TABLE pais
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE periodo ADD PRIMARY KEY
ALTER TABLE periodo
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE periodo_extraordinario ADD PRIMARY KEY
ALTER TABLE periodo_extraordinario
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE persona ADD PRIMARY KEY
ALTER TABLE persona
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL  106496 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE persona ADD CONSTRAINT uk_curp UNIQUE
ALTER TABLE persona
  ADD CONSTRAINT uk_curp UNIQUE (
    curp
  )
/

PROMPT ALTER TABLE persona_mediocontacto ADD PRIMARY KEY
ALTER TABLE persona_mediocontacto
  ADD PRIMARY KEY (
    persona_id,
    medioscontacto_id
  )
  RELY
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL   58368 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE persona_mediocontacto ADD UNIQUE
ALTER TABLE persona_mediocontacto
  ADD UNIQUE (
    medioscontacto_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL   48128 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE planestudios ADD PRIMARY KEY
ALTER TABLE planestudios
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE planestudios_materia ADD PRIMARY KEY
ALTER TABLE planestudios_materia
  ADD PRIMARY KEY (
    planestudios_id,
    materias_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plantel ADD PRIMARY KEY
ALTER TABLE plantel
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     256 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plantel_mediocontacto ADD PRIMARY KEY
ALTER TABLE plantel_mediocontacto
  ADD PRIMARY KEY (
    plantel_id,
    medioscontacto_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     320 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plantel_mediocontacto ADD UNIQUE
ALTER TABLE plantel_mediocontacto
  ADD UNIQUE (
    medioscontacto_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     256 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plantel_programa ADD PRIMARY KEY
ALTER TABLE plantel_programa
  ADD PRIMARY KEY (
    plantel_id,
    programas_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     128 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plantel_usuario ADD PRIMARY KEY
ALTER TABLE plantel_usuario
  ADD PRIMARY KEY (
    plantel_id,
    usuarios_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    3072 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plaza ADD PRIMARY KEY
ALTER TABLE plaza
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    5120 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plaza_incidenciaempleado ADD PRIMARY KEY
ALTER TABLE plaza_incidenciaempleado
  ADD PRIMARY KEY (
    plaza_id,
    incidencias_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE plaza_incidenciaempleado ADD UNIQUE
ALTER TABLE plaza_incidenciaempleado
  ADD UNIQUE (
    incidencias_id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE preinscripcion ADD PRIMARY KEY
ALTER TABLE preinscripcion
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    5120 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE preinscripcionfolio ADD CONSTRAINT preinscripcionfolio_pk PRIMARY KEY
ALTER TABLE preinscripcionfolio
  ADD CONSTRAINT preinscripcionfolio_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE programa ADD PRIMARY KEY
ALTER TABLE programa
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE promedios ADD PRIMARY KEY
ALTER TABLE promedios
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL     640 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE puebloindigena ADD CONSTRAINT puebloindigena_pk PRIMARY KEY
ALTER TABLE puebloindigena
  ADD CONSTRAINT puebloindigena_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE recomendacion_preescolar ADD CONSTRAINT id_dcx PRIMARY KEY
ALTER TABLE recomendacion_preescolar
  ADD CONSTRAINT id_dcx PRIMARY KEY (
    id
  )
/

PROMPT ALTER TABLE region ADD PRIMARY KEY
ALTER TABLE region
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE resumenciclo ADD PRIMARY KEY
ALTER TABLE resumenciclo
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE resumenciclo ADD CONSTRAINT resumenciclo_u01 UNIQUE
ALTER TABLE resumenciclo
  ADD CONSTRAINT resumenciclo_u01 UNIQUE (
    plantel_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE seguimiento ADD PRIMARY KEY
ALTER TABLE seguimiento
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL    2048 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE servicios ADD CONSTRAINT servicios_pk PRIMARY KEY
ALTER TABLE servicios
  ADD CONSTRAINT servicios_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE solicitudbaja ADD PRIMARY KEY
ALTER TABLE solicitudbaja
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      INITIAL    3072 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE spooler ADD CONSTRAINT spooler_pk PRIMARY KEY
ALTER TABLE spooler
  ADD CONSTRAINT spooler_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE tecnologia ADD PRIMARY KEY
ALTER TABLE tecnologia
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE tipodocumento ADD CONSTRAINT tipodocumento_pk PRIMARY KEY
ALTER TABLE tipodocumento
  ADD CONSTRAINT tipodocumento_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE tipoempleado ADD PRIMARY KEY
ALTER TABLE tipoempleado
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE tipoincidenciaempleado ADD PRIMARY KEY
ALTER TABLE tipoincidenciaempleado
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE tipolocal ADD CONSTRAINT tipolocal_pk PRIMARY KEY
ALTER TABLE tipolocal
  ADD CONSTRAINT tipolocal_pk PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE tramite ADD PRIMARY KEY
ALTER TABLE tramite
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     256 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE turno ADD PRIMARY KEY
ALTER TABLE turno
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE usuario ADD PRIMARY KEY
ALTER TABLE usuario
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      INITIAL     384 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE usuario ADD CONSTRAINT usuario_u01 UNIQUE
ALTER TABLE usuario
  ADD CONSTRAINT usuario_u01 UNIQUE (
    username
  )
/

PROMPT ALTER TABLE usuario_sesion ADD PRIMARY KEY
ALTER TABLE usuario_sesion
  ADD PRIMARY KEY (
    usuario_id,
    session_id
  )
  USING INDEX
    STORAGE (
      INITIAL   81920 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE usuarioalumno ADD CONSTRAINT usuarioalumno_pk PRIMARY KEY
ALTER TABLE usuarioalumno
  ADD CONSTRAINT usuarioalumno_pk PRIMARY KEY (
    id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE usuarioalumno_alumno ADD CONSTRAINT usuarioalumno_alumno_pk PRIMARY KEY
ALTER TABLE usuarioalumno_alumno
  ADD CONSTRAINT usuarioalumno_alumno_pk PRIMARY KEY (
    usuarioalumno_id,
    alumno_id
  )
  USING INDEX
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE vault_alumno_fin_ciclo ADD CONSTRAINT vault_alumno_fin_ciclo_pk PRIMARY KEY
ALTER TABLE vault_alumno_fin_ciclo
  ADD CONSTRAINT vault_alumno_fin_ciclo_pk PRIMARY KEY (
    alumno_id,
    grupo_id
  )
  USING INDEX
    STORAGE (
      INITIAL   43008 K
      NEXT       1024 K
    )
    LOGGING
/

PROMPT ALTER TABLE zona ADD PRIMARY KEY
ALTER TABLE zona
  ADD PRIMARY KEY (
    id
  )
  USING INDEX
    TABLESPACE sedf_inx
    STORAGE (
      NEXT       1024 K
    )
    LOGGING
/

PROMPT =========================================================================
PROMPT FOREIGN CONSTRAINTS
PROMPT =========================================================================

PROMPT ALTER TABLE alumno ADD CONSTRAINT alumno_r05 FOREIGN KEY
ALTER TABLE alumno
  ADD CONSTRAINT alumno_r05 FOREIGN KEY (
    usuarioalumno_id
  ) REFERENCES usuarioalumno (
    id
  )
/

PROMPT ALTER TABLE alumno ADD CONSTRAINT alumno_r06 FOREIGN KEY
ALTER TABLE alumno
  ADD CONSTRAINT alumno_r06 FOREIGN KEY (
    talleractivo_id
  ) REFERENCES grupotaller (
    id
  )
/

PROMPT ALTER TABLE alumno ADD CONSTRAINT fk7513c1241da8d1c2 FOREIGN KEY
ALTER TABLE alumno
  ADD CONSTRAINT fk7513c1241da8d1c2 FOREIGN KEY (
    grupoactivo_id
  ) REFERENCES grupo (
    id
  )
/

PROMPT ALTER TABLE alumno ADD CONSTRAINT fk7513c1246afc776f FOREIGN KEY
ALTER TABLE alumno
  ADD CONSTRAINT fk7513c1246afc776f FOREIGN KEY (
    id
  ) REFERENCES persona (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE alumno ADD CONSTRAINT fk7513c124e8c7bde2 FOREIGN KEY
ALTER TABLE alumno
  ADD CONSTRAINT fk7513c124e8c7bde2 FOREIGN KEY (
    infosalud_id
  ) REFERENCES infosalud (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE alumno ADD CONSTRAINT fk_municipionac_municipio FOREIGN KEY
ALTER TABLE alumno
  ADD CONSTRAINT fk_municipionac_municipio FOREIGN KEY (
    municipionacimiento_id
  ) REFERENCES municipio (
    id
  )
/

PROMPT ALTER TABLE alumno_discapacidad ADD CONSTRAINT fk7945f67f698ca324 FOREIGN KEY
ALTER TABLE alumno_discapacidad
  ADD CONSTRAINT fk7945f67f698ca324 FOREIGN KEY (
    discapacidades_id
  ) REFERENCES discapacidad (
    id
  )
/

PROMPT ALTER TABLE alumno_discapacidad ADD CONSTRAINT fk7945f67f9ed89392 FOREIGN KEY
ALTER TABLE alumno_discapacidad
  ADD CONSTRAINT fk7945f67f9ed89392 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE alumno_evaluacion ADD CONSTRAINT fk9e895f089ed89392 FOREIGN KEY
ALTER TABLE alumno_evaluacion
  ADD CONSTRAINT fk9e895f089ed89392 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE alumno_evaluacionextra ADD CONSTRAINT alumno_evaluacionextraordi_r01 FOREIGN KEY
ALTER TABLE alumno_evaluacionextra
  ADD CONSTRAINT alumno_evaluacionextraordi_r01 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE alumno_evaluacionextra ADD CONSTRAINT alumno_evaluacionextraordi_r02 FOREIGN KEY
ALTER TABLE alumno_evaluacionextra
  ADD CONSTRAINT alumno_evaluacionextraordi_r02 FOREIGN KEY (
    evaluacionesextra_id
  ) REFERENCES evaluacionextra (
    id
  )
/

PROMPT ALTER TABLE alumno_grupo ADD CONSTRAINT fkc419d56e8f1ab0c7 FOREIGN KEY
ALTER TABLE alumno_grupo
  ADD CONSTRAINT fkc419d56e8f1ab0c7 FOREIGN KEY (
    alumnos_id
  ) REFERENCES alumno (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE alumno_grupo ADD CONSTRAINT fkc419d56ed1fc9961 FOREIGN KEY
ALTER TABLE alumno_grupo
  ADD CONSTRAINT fkc419d56ed1fc9961 FOREIGN KEY (
    grupos_id
  ) REFERENCES grupo (
    id
  )
/

PROMPT ALTER TABLE alumno_grupotaller ADD CONSTRAINT alumno_grupotaller_r01 FOREIGN KEY
ALTER TABLE alumno_grupotaller
  ADD CONSTRAINT alumno_grupotaller_r01 FOREIGN KEY (
    alumnos_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE alumno_grupotaller ADD CONSTRAINT alumno_grupotaller_r02 FOREIGN KEY
ALTER TABLE alumno_grupotaller
  ADD CONSTRAINT alumno_grupotaller_r02 FOREIGN KEY (
    talleres_id
  ) REFERENCES grupotaller (
    id
  )
/

PROMPT ALTER TABLE alumno_lecturaevaluacion ADD CONSTRAINT alumno_lecturaevaluacion_r01 FOREIGN KEY
ALTER TABLE alumno_lecturaevaluacion
  ADD CONSTRAINT alumno_lecturaevaluacion_r01 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE alumno_lecturaevaluacion ADD CONSTRAINT alumno_lecturaevaluacion_r02 FOREIGN KEY
ALTER TABLE alumno_lecturaevaluacion
  ADD CONSTRAINT alumno_lecturaevaluacion_r02 FOREIGN KEY (
    lecturaevaluacion_id
  ) REFERENCES lecturaevaluacion (
    id
  )
/

PROMPT ALTER TABLE asentamiento ADD CONSTRAINT fkca74daa880bb625e FOREIGN KEY
ALTER TABLE asentamiento
  ADD CONSTRAINT fkca74daa880bb625e FOREIGN KEY (
    id_municipio
  ) REFERENCES municipio (
    id
  )
/

PROMPT ALTER TABLE asentamiento ADD CONSTRAINT fk_asentamiento_municipio FOREIGN KEY
ALTER TABLE asentamiento
  ADD CONSTRAINT fk_asentamiento_municipio FOREIGN KEY (
    municipio_id
  ) REFERENCES municipio (
    id
  )
/

PROMPT ALTER TABLE aula ADD CONSTRAINT aula_r01 FOREIGN KEY
ALTER TABLE aula
  ADD CONSTRAINT aula_r01 FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE autoridad_grupousuario ADD CONSTRAINT fkeaa2b0a35eb2fa19 FOREIGN KEY
ALTER TABLE autoridad_grupousuario
  ADD CONSTRAINT fkeaa2b0a35eb2fa19 FOREIGN KEY (
    grupos_id
  ) REFERENCES grupousuario (
    id
  )
/

PROMPT ALTER TABLE autoridad_grupousuario ADD CONSTRAINT fkeaa2b0a3708bd56 FOREIGN KEY
ALTER TABLE autoridad_grupousuario
  ADD CONSTRAINT fkeaa2b0a3708bd56 FOREIGN KEY (
    autoridad_id
  ) REFERENCES autoridad (
    id
  )
/

PROMPT ALTER TABLE autoridad_usuario ADD CONSTRAINT fk235a4e5012d931ff FOREIGN KEY
ALTER TABLE autoridad_usuario
  ADD CONSTRAINT fk235a4e5012d931ff FOREIGN KEY (
    usuarios_id
  ) REFERENCES usuario (
    id
  )
/

PROMPT ALTER TABLE autoridad_usuario ADD CONSTRAINT fk235a4e50708bd56 FOREIGN KEY
ALTER TABLE autoridad_usuario
  ADD CONSTRAINT fk235a4e50708bd56 FOREIGN KEY (
    autoridad_id
  ) REFERENCES autoridad (
    id
  )
/

PROMPT ALTER TABLE aviso ADD CONSTRAINT fk3cb34101f6f428 FOREIGN KEY
ALTER TABLE aviso
  ADD CONSTRAINT fk3cb34101f6f428 FOREIGN KEY (
    id_plantel
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE aviso_plantel ADD CONSTRAINT fk_aviso FOREIGN KEY
ALTER TABLE aviso_plantel
  ADD CONSTRAINT fk_aviso FOREIGN KEY (
    aviso_id
  ) REFERENCES aviso (
    id
  )
/

PROMPT ALTER TABLE aviso_plantel ADD CONSTRAINT fk_aviso_plantel FOREIGN KEY
ALTER TABLE aviso_plantel
  ADD CONSTRAINT fk_aviso_plantel FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE baja ADD CONSTRAINT fk_baja_alumno FOREIGN KEY
ALTER TABLE baja
  ADD CONSTRAINT fk_baja_alumno FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE beca ADD CONSTRAINT beca_r01 FOREIGN KEY
ALTER TABLE beca
  ADD CONSTRAINT beca_r01 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE domicilio ADD CONSTRAINT fkaba87945b2a59c0c FOREIGN KEY
ALTER TABLE domicilio
  ADD CONSTRAINT fkaba87945b2a59c0c FOREIGN KEY (
    id_asentamiento
  ) REFERENCES asentamiento (
    id
  )
/

PROMPT ALTER TABLE domicilio ADD CONSTRAINT fk_domicilio_asentamiento FOREIGN KEY
ALTER TABLE domicilio
  ADD CONSTRAINT fk_domicilio_asentamiento FOREIGN KEY (
    asentamiento_id
  ) REFERENCES asentamiento (
    id
  )
/

PROMPT ALTER TABLE empleado ADD CONSTRAINT fk4af864eb4e01f47d FOREIGN KEY
ALTER TABLE empleado
  ADD CONSTRAINT fk4af864eb4e01f47d FOREIGN KEY (
    tipo_id
  ) REFERENCES tipoempleado (
    id
  )
/

PROMPT ALTER TABLE empleado ADD CONSTRAINT fk4af864eb6afc776f FOREIGN KEY
ALTER TABLE empleado
  ADD CONSTRAINT fk4af864eb6afc776f FOREIGN KEY (
    id
  ) REFERENCES persona (
    id
  )
/

PROMPT ALTER TABLE estado ADD CONSTRAINT fk7c492586c54810b2 FOREIGN KEY
ALTER TABLE estado
  ADD CONSTRAINT fk7c492586c54810b2 FOREIGN KEY (
    id_pais
  ) REFERENCES pais (
    id
  )
/

PROMPT ALTER TABLE estado ADD CONSTRAINT fk_estado_pais FOREIGN KEY
ALTER TABLE estado
  ADD CONSTRAINT fk_estado_pais FOREIGN KEY (
    pais_id
  ) REFERENCES pais (
    id
  )
/

PROMPT ALTER TABLE evaluacion ADD CONSTRAINT fka9f6290d47c3d12 FOREIGN KEY
ALTER TABLE evaluacion
  ADD CONSTRAINT fka9f6290d47c3d12 FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE evaluacion ADD CONSTRAINT fka9f6290d81ec71a2 FOREIGN KEY
ALTER TABLE evaluacion
  ADD CONSTRAINT fka9f6290d81ec71a2 FOREIGN KEY (
    periodo_id
  ) REFERENCES periodo (
    id
  )
/

PROMPT ALTER TABLE evaluacion ADD CONSTRAINT fka9f6290db01ac642 FOREIGN KEY
ALTER TABLE evaluacion
  ADD CONSTRAINT fka9f6290db01ac642 FOREIGN KEY (
    materia_id
  ) REFERENCES materia (
    id
  )
/

PROMPT ALTER TABLE evaluacion_extraordinario ADD CONSTRAINT fka9f6290d47c3d13 FOREIGN KEY
ALTER TABLE evaluacion_extraordinario
  ADD CONSTRAINT fka9f6290d47c3d13 FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE evaluacion_extraordinario ADD CONSTRAINT fka9f6290d81ec71a3 FOREIGN KEY
ALTER TABLE evaluacion_extraordinario
  ADD CONSTRAINT fka9f6290d81ec71a3 FOREIGN KEY (
    periodo_extraordinario_id
  ) REFERENCES periodo_extraordinario (
    id
  )
/

PROMPT ALTER TABLE evaluacion_extraordinario ADD CONSTRAINT fka9f6290db01ac643 FOREIGN KEY
ALTER TABLE evaluacion_extraordinario
  ADD CONSTRAINT fka9f6290db01ac643 FOREIGN KEY (
    materia_id
  ) REFERENCES materia (
    id
  )
/

PROMPT ALTER TABLE evaluacionextra ADD CONSTRAINT evaluacionextraordinario_r01 FOREIGN KEY
ALTER TABLE evaluacionextra
  ADD CONSTRAINT evaluacionextraordinario_r01 FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE evaluacionextra ADD CONSTRAINT evaluacionextraordinario_r02 FOREIGN KEY
ALTER TABLE evaluacionextra
  ADD CONSTRAINT evaluacionextraordinario_r02 FOREIGN KEY (
    materia_id
  ) REFERENCES materia (
    id
  )
/

PROMPT ALTER TABLE evaluacionextra ADD CONSTRAINT evaluacionextraordinario_r03 FOREIGN KEY
ALTER TABLE evaluacionextra
  ADD CONSTRAINT evaluacionextraordinario_r03 FOREIGN KEY (
    periodo_id
  ) REFERENCES periodo (
    id
  )
/

PROMPT ALTER TABLE familiar_alumno ADD CONSTRAINT familiar_alumno_r01 FOREIGN KEY
ALTER TABLE familiar_alumno
  ADD CONSTRAINT familiar_alumno_r01 FOREIGN KEY (
    familiar_id
  ) REFERENCES familiar (
    id
  )
/

PROMPT ALTER TABLE familiar_alumno ADD CONSTRAINT familiar_alumno_r02 FOREIGN KEY
ALTER TABLE familiar_alumno
  ADD CONSTRAINT familiar_alumno_r02 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE foliocartilla ADD CONSTRAINT foliocartilla_r01 FOREIGN KEY
ALTER TABLE foliocartilla
  ADD CONSTRAINT foliocartilla_r01 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE foliocertificado ADD CONSTRAINT foliocertificado_r01 FOREIGN KEY
ALTER TABLE foliocertificado
  ADD CONSTRAINT foliocertificado_r01 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE funcion ADD CONSTRAINT fk44d7e6a4d7a0a406 FOREIGN KEY
ALTER TABLE funcion
  ADD CONSTRAINT fk44d7e6a4d7a0a406 FOREIGN KEY (
    aplicacion_id
  ) REFERENCES aplicacion (
    id
  )
/

PROMPT ALTER TABLE funcion_autoridad ADD CONSTRAINT fkc1f211a6b512a576 FOREIGN KEY
ALTER TABLE funcion_autoridad
  ADD CONSTRAINT fkc1f211a6b512a576 FOREIGN KEY (
    funcion_id
  ) REFERENCES funcion (
    id
  )
/

PROMPT ALTER TABLE funcion_autoridad ADD CONSTRAINT fkc1f211a6fb569628 FOREIGN KEY
ALTER TABLE funcion_autoridad
  ADD CONSTRAINT fkc1f211a6fb569628 FOREIGN KEY (
    autoridades_id
  ) REFERENCES autoridad (
    id
  )
/

PROMPT ALTER TABLE gastosplantel ADD FOREIGN KEY
ALTER TABLE gastosplantel
  ADD FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE gastosplantel ADD CONSTRAINT gastosplantel_r01 FOREIGN KEY
ALTER TABLE gastosplantel
  ADD CONSTRAINT gastosplantel_r01 FOREIGN KEY (
    ciclo_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE grupo ADD CONSTRAINT fk_cicloescolar FOREIGN KEY
ALTER TABLE grupo
  ADD CONSTRAINT fk_cicloescolar FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE grupo ADD CONSTRAINT fk_nivelescolar FOREIGN KEY
ALTER TABLE grupo
  ADD CONSTRAINT fk_nivelescolar FOREIGN KEY (
    nivelescolar_id
  ) REFERENCES niveleducativo (
    id
  )
/

PROMPT ALTER TABLE grupo ADD CONSTRAINT fk_plantel FOREIGN KEY
ALTER TABLE grupo
  ADD CONSTRAINT fk_plantel FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE grupo ADD CONSTRAINT fk_turno FOREIGN KEY
ALTER TABLE grupo
  ADD CONSTRAINT fk_turno FOREIGN KEY (
    turno_id
  ) REFERENCES turno (
    id
  )
/

PROMPT ALTER TABLE grupo ADD CONSTRAINT grupo_r05 FOREIGN KEY
ALTER TABLE grupo
  ADD CONSTRAINT grupo_r05 FOREIGN KEY (
    aula_id
  ) REFERENCES aula (
    id
  )
/

PROMPT ALTER TABLE grupotaller ADD CONSTRAINT fk_cicloescolar_taller FOREIGN KEY
ALTER TABLE grupotaller
  ADD CONSTRAINT fk_cicloescolar_taller FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE grupotaller ADD CONSTRAINT fk_nivelescolar_taller FOREIGN KEY
ALTER TABLE grupotaller
  ADD CONSTRAINT fk_nivelescolar_taller FOREIGN KEY (
    nivelescolar_id
  ) REFERENCES niveleducativo (
    id
  )
/

PROMPT ALTER TABLE grupotaller ADD CONSTRAINT fk_plantel_taller FOREIGN KEY
ALTER TABLE grupotaller
  ADD CONSTRAINT fk_plantel_taller FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE grupotaller ADD CONSTRAINT fk_turno_taller FOREIGN KEY
ALTER TABLE grupotaller
  ADD CONSTRAINT fk_turno_taller FOREIGN KEY (
    turno_id
  ) REFERENCES turno (
    id
  )
/

PROMPT ALTER TABLE grupotaller ADD CONSTRAINT grupotaller_r01 FOREIGN KEY
ALTER TABLE grupotaller
  ADD CONSTRAINT grupotaller_r01 FOREIGN KEY (
    tecnologia_id
  ) REFERENCES tecnologia (
    id
  )
/

PROMPT ALTER TABLE grupotaller ADD CONSTRAINT grupotaller_r07 FOREIGN KEY
ALTER TABLE grupotaller
  ADD CONSTRAINT grupotaller_r07 FOREIGN KEY (
    empleado_id
  ) REFERENCES empleado (
    id
  )
/

PROMPT ALTER TABLE grupotaller ADD CONSTRAINT grupo_r05_taller FOREIGN KEY
ALTER TABLE grupotaller
  ADD CONSTRAINT grupo_r05_taller FOREIGN KEY (
    aula_id
  ) REFERENCES aula (
    id
  )
/

PROMPT ALTER TABLE grupousuario_grupousuario ADD CONSTRAINT fke8309dff6f828e0e FOREIGN KEY
ALTER TABLE grupousuario_grupousuario
  ADD CONSTRAINT fke8309dff6f828e0e FOREIGN KEY (
    id_grupo
  ) REFERENCES grupousuario (
    id
  )
/

PROMPT ALTER TABLE grupousuario_grupousuario ADD CONSTRAINT fke8309dff7052112 FOREIGN KEY
ALTER TABLE grupousuario_grupousuario
  ADD CONSTRAINT fke8309dff7052112 FOREIGN KEY (
    id_grupousuario
  ) REFERENCES grupousuario (
    id
  )
/

PROMPT ALTER TABLE grupousuario_usuario ADD CONSTRAINT fkad2c77747052112 FOREIGN KEY
ALTER TABLE grupousuario_usuario
  ADD CONSTRAINT fkad2c77747052112 FOREIGN KEY (
    id_grupousuario
  ) REFERENCES grupousuario (
    id
  )
/

PROMPT ALTER TABLE grupousuario_usuario ADD CONSTRAINT fkad2c777483372974 FOREIGN KEY
ALTER TABLE grupousuario_usuario
  ADD CONSTRAINT fkad2c777483372974 FOREIGN KEY (
    id_usuario
  ) REFERENCES usuario (
    id
  )
/

PROMPT ALTER TABLE inasistenciaperiodo ADD CONSTRAINT fk49111b6f81ec71a2 FOREIGN KEY
ALTER TABLE inasistenciaperiodo
  ADD CONSTRAINT fk49111b6f81ec71a2 FOREIGN KEY (
    periodo_id
  ) REFERENCES periodo (
    id
  )
/

PROMPT ALTER TABLE inasistenciaperiodo ADD CONSTRAINT fk49111b6f9ed89392 FOREIGN KEY
ALTER TABLE inasistenciaperiodo
  ADD CONSTRAINT fk49111b6f9ed89392 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE incidenciaempleado ADD CONSTRAINT fkaf1e9da4660f72e2 FOREIGN KEY
ALTER TABLE incidenciaempleado
  ADD CONSTRAINT fkaf1e9da4660f72e2 FOREIGN KEY (
    plaza_id
  ) REFERENCES plaza (
    id
  )
/

PROMPT ALTER TABLE incidenciaempleado ADD CONSTRAINT fkaf1e9da47245ae36 FOREIGN KEY
ALTER TABLE incidenciaempleado
  ADD CONSTRAINT fkaf1e9da47245ae36 FOREIGN KEY (
    tipo_id
  ) REFERENCES tipoincidenciaempleado (
    id
  )
/

PROMPT ALTER TABLE incidenciaempleado ADD CONSTRAINT incidenciaempleado_r03 FOREIGN KEY
ALTER TABLE incidenciaempleado
  ADD CONSTRAINT incidenciaempleado_r03 FOREIGN KEY (
    empleado_id
  ) REFERENCES empleado (
    id
  )
/

PROMPT ALTER TABLE incidenciaplantel ADD CONSTRAINT fk6a0bdc591f6f428 FOREIGN KEY
ALTER TABLE incidenciaplantel
  ADD CONSTRAINT fk6a0bdc591f6f428 FOREIGN KEY (
    id_plantel
  ) REFERENCES plantel (
    id
  )
  DISABLE
  NOVALIDATE
/

PROMPT ALTER TABLE inmueble ADD FOREIGN KEY
ALTER TABLE inmueble
  ADD FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE inmueble_servicios ADD CONSTRAINT inmueble_servicios_r01 FOREIGN KEY
ALTER TABLE inmueble_servicios
  ADD CONSTRAINT inmueble_servicios_r01 FOREIGN KEY (
    inmueble_id
  ) REFERENCES inmueble (
    id
  )
/

PROMPT ALTER TABLE inmueble_servicios ADD CONSTRAINT inmueble_servicios_r02 FOREIGN KEY
ALTER TABLE inmueble_servicios
  ADD CONSTRAINT inmueble_servicios_r02 FOREIGN KEY (
    servicios_id
  ) REFERENCES servicios (
    id
  )
/

PROMPT ALTER TABLE lecturaevaluacion ADD CONSTRAINT lecturaevaluacion_r01 FOREIGN KEY
ALTER TABLE lecturaevaluacion
  ADD CONSTRAINT lecturaevaluacion_r01 FOREIGN KEY (
    periodo_id
  ) REFERENCES periodo (
    id
  )
/

PROMPT ALTER TABLE lecturaevaluacion ADD CONSTRAINT lecturaevaluacion_r02 FOREIGN KEY
ALTER TABLE lecturaevaluacion
  ADD CONSTRAINT lecturaevaluacion_r02 FOREIGN KEY (
    lecturahabilidad_id
  ) REFERENCES lecturahabilidad (
    id
  )
/

PROMPT ALTER TABLE lecturaevaluacion ADD CONSTRAINT lecturaevaluacion_r03 FOREIGN KEY
ALTER TABLE lecturaevaluacion
  ADD CONSTRAINT lecturaevaluacion_r03 FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE lecturaevaluacion ADD CONSTRAINT lecturaevaluacion_r04 FOREIGN KEY
ALTER TABLE lecturaevaluacion
  ADD CONSTRAINT lecturaevaluacion_r04 FOREIGN KEY (
    grupo_id
  ) REFERENCES grupo (
    id
  )
/

PROMPT ALTER TABLE lecturahabilidadlogro ADD CONSTRAINT lecturahabilidadlogro_r01 FOREIGN KEY
ALTER TABLE lecturahabilidadlogro
  ADD CONSTRAINT lecturahabilidadlogro_r01 FOREIGN KEY (
    niveleducativo_id
  ) REFERENCES niveleducativo (
    id
  )
/

PROMPT ALTER TABLE lecturahabilidadlogro ADD CONSTRAINT lecturahabilidadlogro_r02 FOREIGN KEY
ALTER TABLE lecturahabilidadlogro
  ADD CONSTRAINT lecturahabilidadlogro_r02 FOREIGN KEY (
    lecturahabilidad_id
  ) REFERENCES lecturahabilidad (
    id
  )
/

PROMPT ALTER TABLE lecturahabilidadlogro ADD CONSTRAINT lecturahabilidadlogro_r03 FOREIGN KEY
ALTER TABLE lecturahabilidadlogro
  ADD CONSTRAINT lecturahabilidadlogro_r03 FOREIGN KEY (
    lecturanivellogro_id
  ) REFERENCES lecturanivellogro (
    id
  )
/

PROMPT ALTER TABLE local ADD CONSTRAINT local_r01 FOREIGN KEY
ALTER TABLE local
  ADD CONSTRAINT local_r01 FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE local ADD CONSTRAINT local_r02 FOREIGN KEY
ALTER TABLE local
  ADD CONSTRAINT local_r02 FOREIGN KEY (
    tipo_id
  ) REFERENCES tipolocal (
    id
  )
/

PROMPT ALTER TABLE materia ADD CONSTRAINT materia_r01 FOREIGN KEY
ALTER TABLE materia
  ADD CONSTRAINT materia_r01 FOREIGN KEY (
    empleado_id
  ) REFERENCES empleado (
    id
  )
/

PROMPT ALTER TABLE materia_profesor ADD CONSTRAINT materia_profesor_r01 FOREIGN KEY
ALTER TABLE materia_profesor
  ADD CONSTRAINT materia_profesor_r01 FOREIGN KEY (
    materia_id
  ) REFERENCES materia (
    id
  )
/

PROMPT ALTER TABLE materia_profesor ADD CONSTRAINT materia_profesor_r02 FOREIGN KEY
ALTER TABLE materia_profesor
  ADD CONSTRAINT materia_profesor_r02 FOREIGN KEY (
    profesor_id
  ) REFERENCES empleado (
    id
  )
/

PROMPT ALTER TABLE materia_profesor ADD CONSTRAINT materia_profesor_r03 FOREIGN KEY
ALTER TABLE materia_profesor
  ADD CONSTRAINT materia_profesor_r03 FOREIGN KEY (
    grupo_id
  ) REFERENCES grupo (
    id
  )
/

PROMPT ALTER TABLE municipio ADD CONSTRAINT fk_estado FOREIGN KEY
ALTER TABLE municipio
  ADD CONSTRAINT fk_estado FOREIGN KEY (
    id_estado
  ) REFERENCES estado (
    id
  )
/

PROMPT ALTER TABLE municipio ADD CONSTRAINT fk_municipio_estado FOREIGN KEY
ALTER TABLE municipio
  ADD CONSTRAINT fk_municipio_estado FOREIGN KEY (
    estado_id
  ) REFERENCES estado (
    id
  )
/

PROMPT ALTER TABLE periodo ADD CONSTRAINT fk3ac3daaecdcbb1f2 FOREIGN KEY
ALTER TABLE periodo
  ADD CONSTRAINT fk3ac3daaecdcbb1f2 FOREIGN KEY (
    niveleducativo_id
  ) REFERENCES niveleducativo (
    id
  )
/

PROMPT ALTER TABLE periodo_extraordinario ADD CONSTRAINT fk3ac3daaecdcbb1f3 FOREIGN KEY
ALTER TABLE periodo_extraordinario
  ADD CONSTRAINT fk3ac3daaecdcbb1f3 FOREIGN KEY (
    niveleducativo_id
  ) REFERENCES niveleducativo (
    id
  )
/

PROMPT ALTER TABLE persona ADD CONSTRAINT fk3ac8678c2ebc071e FOREIGN KEY
ALTER TABLE persona
  ADD CONSTRAINT fk3ac8678c2ebc071e FOREIGN KEY (
    otranacionalidad_id
  ) REFERENCES nacionalidad (
    id
  )
/

PROMPT ALTER TABLE persona ADD CONSTRAINT fk3ac8678c320dfc47 FOREIGN KEY
ALTER TABLE persona
  ADD CONSTRAINT fk3ac8678c320dfc47 FOREIGN KEY (
    lugarnacimiento_id
  ) REFERENCES municipio (
    id
  )
/

PROMPT ALTER TABLE persona ADD CONSTRAINT fk3ac8678c6fb05536 FOREIGN KEY
ALTER TABLE persona
  ADD CONSTRAINT fk3ac8678c6fb05536 FOREIGN KEY (
    usuario_id
  ) REFERENCES usuario (
    id
  )
/

PROMPT ALTER TABLE persona ADD CONSTRAINT fk3ac8678c8bd74072 FOREIGN KEY
ALTER TABLE persona
  ADD CONSTRAINT fk3ac8678c8bd74072 FOREIGN KEY (
    nacionalidad_id
  ) REFERENCES nacionalidad (
    id
  )
/

PROMPT ALTER TABLE persona ADD CONSTRAINT fk_persona_domicilio FOREIGN KEY
ALTER TABLE persona
  ADD CONSTRAINT fk_persona_domicilio FOREIGN KEY (
    domicilio_id
  ) REFERENCES domicilio (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE planestudios ADD CONSTRAINT fk_plan_cicloescolar FOREIGN KEY
ALTER TABLE planestudios
  ADD CONSTRAINT fk_plan_cicloescolar FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE planestudios ADD CONSTRAINT fk_plan_niveleducativo FOREIGN KEY
ALTER TABLE planestudios
  ADD CONSTRAINT fk_plan_niveleducativo FOREIGN KEY (
    nivel_id
  ) REFERENCES niveleducativo (
    id
  )
/

PROMPT ALTER TABLE planestudios_materia ADD CONSTRAINT fk_planmat_materia FOREIGN KEY
ALTER TABLE planestudios_materia
  ADD CONSTRAINT fk_planmat_materia FOREIGN KEY (
    materias_id
  ) REFERENCES materia (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE planestudios_materia ADD CONSTRAINT fk_planmat_plan FOREIGN KEY
ALTER TABLE planestudios_materia
  ADD CONSTRAINT fk_planmat_plan FOREIGN KEY (
    planestudios_id
  ) REFERENCES planestudios (
    id
  ) ON DELETE CASCADE
/

PROMPT ALTER TABLE plantel ADD CONSTRAINT fk45c890322adb7791 FOREIGN KEY
ALTER TABLE plantel
  ADD CONSTRAINT fk45c890322adb7791 FOREIGN KEY (
    subdirector_id
  ) REFERENCES empleado (
    id
  )
/

PROMPT ALTER TABLE plantel ADD CONSTRAINT fk45c890329f954c42 FOREIGN KEY
ALTER TABLE plantel
  ADD CONSTRAINT fk45c890329f954c42 FOREIGN KEY (
    domicilio_id
  ) REFERENCES domicilio (
    id
  )
/

PROMPT ALTER TABLE plantel ADD CONSTRAINT fk45c89032af3faa42 FOREIGN KEY
ALTER TABLE plantel
  ADD CONSTRAINT fk45c89032af3faa42 FOREIGN KEY (
    cicloescolaractivo_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE plantel ADD CONSTRAINT fk45c89032c0569dd1 FOREIGN KEY
ALTER TABLE plantel
  ADD CONSTRAINT fk45c89032c0569dd1 FOREIGN KEY (
    director_id
  ) REFERENCES empleado (
    id
  )
/

PROMPT ALTER TABLE plantel_programa ADD CONSTRAINT fk8ec5cfeac5f05322 FOREIGN KEY
ALTER TABLE plantel_programa
  ADD CONSTRAINT fk8ec5cfeac5f05322 FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE plantel_programa ADD CONSTRAINT fk8ec5cfeaea7b60f9 FOREIGN KEY
ALTER TABLE plantel_programa
  ADD CONSTRAINT fk8ec5cfeaea7b60f9 FOREIGN KEY (
    programas_id
  ) REFERENCES programa (
    id
  )
  DISABLE
  NOVALIDATE
/

PROMPT ALTER TABLE plantel_usuario ADD CONSTRAINT fk5973700112d931ff FOREIGN KEY
ALTER TABLE plantel_usuario
  ADD CONSTRAINT fk5973700112d931ff FOREIGN KEY (
    usuarios_id
  ) REFERENCES usuario (
    id
  )
/

PROMPT ALTER TABLE plantel_usuario ADD CONSTRAINT fk59737001c5f05322 FOREIGN KEY
ALTER TABLE plantel_usuario
  ADD CONSTRAINT fk59737001c5f05322 FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE plaza ADD CONSTRAINT fk499ebacc5f05322 FOREIGN KEY
ALTER TABLE plaza
  ADD CONSTRAINT fk499ebacc5f05322 FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE plaza_incidenciaempleado ADD CONSTRAINT fkcca52117660f72e2 FOREIGN KEY
ALTER TABLE plaza_incidenciaempleado
  ADD CONSTRAINT fkcca52117660f72e2 FOREIGN KEY (
    plaza_id
  ) REFERENCES plaza (
    id
  )
/

PROMPT ALTER TABLE preinscripcionfolio ADD CONSTRAINT preinscripcionfolio_r01 FOREIGN KEY
ALTER TABLE preinscripcionfolio
  ADD CONSTRAINT preinscripcionfolio_r01 FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE preinscripcionfolio ADD CONSTRAINT preinscripcionfolio_r02 FOREIGN KEY
ALTER TABLE preinscripcionfolio
  ADD CONSTRAINT preinscripcionfolio_r02 FOREIGN KEY (
    cicloescolar_id
  ) REFERENCES cicloescolar (
    id
  )
/

PROMPT ALTER TABLE promedios ADD CONSTRAINT promedios_r01 FOREIGN KEY
ALTER TABLE promedios
  ADD CONSTRAINT promedios_r01 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT ALTER TABLE resumenciclo ADD CONSTRAINT resumenciclo_r01 FOREIGN KEY
ALTER TABLE resumenciclo
  ADD CONSTRAINT resumenciclo_r01 FOREIGN KEY (
    plantel_id
  ) REFERENCES plantel (
    id
  )
/

PROMPT ALTER TABLE seguimiento ADD CONSTRAINT fk_incidenciaplantel FOREIGN KEY
ALTER TABLE seguimiento
  ADD CONSTRAINT fk_incidenciaplantel FOREIGN KEY (
    incidencia_id
  ) REFERENCES incidenciaplantel (
    id
  )
/

PROMPT ALTER TABLE tramitesupervision ADD CONSTRAINT fk_tramitesupervision FOREIGN KEY
ALTER TABLE tramitesupervision
  ADD CONSTRAINT fk_tramitesupervision FOREIGN KEY (
    tramite_id
  ) REFERENCES tramite (
    id
  )
/

PROMPT ALTER TABLE usuarioalumno_alumno ADD CONSTRAINT usuarioalumno_alumno_r01 FOREIGN KEY
ALTER TABLE usuarioalumno_alumno
  ADD CONSTRAINT usuarioalumno_alumno_r01 FOREIGN KEY (
    usuarioalumno_id
  ) REFERENCES usuarioalumno (
    id
  )
/

PROMPT ALTER TABLE usuarioalumno_alumno ADD CONSTRAINT usuarioalumno_alumno_r02 FOREIGN KEY
ALTER TABLE usuarioalumno_alumno
  ADD CONSTRAINT usuarioalumno_alumno_r02 FOREIGN KEY (
    alumno_id
  ) REFERENCES alumno (
    id
  )
/

PROMPT =========================================================================
PROMPT TRIGGERS
PROMPT =========================================================================

PROMPT CREATE OR REPLACE TRIGGER alumno_before_delete
CREATE OR REPLACE TRIGGER alumno_before_delete
BEFORE DELETE
    ON alumno
    FOR EACH ROW

DECLARE
    v_username varchar2(10);

BEGIN

    -- Insert record into audit table
    INSERT INTO AUDITORIA_ALUMNO
     (
      CONQUIENVIVE
      ,ID
      ,GRUPOACTIVO_ID
      ,INFOSALUD_ID
      ,PREINSCRIPCION_ID
      ,ESTATUS
      ,OTRANACIONALIDAD_ID
      ,MUNICIPIONACIMIENTO_ID
      ,TELEFONO_ID
      ,DOMICILIO_ID
      ,USUARIOCREACION
      ,FECHACREACION
      ,NOMBREPADRE
      ,NOMBREMADRE
      ,CURP
      ,SERVICIOMIXTO
      ,FECHAALTA
      ,CLAVEAUTORIZACION
      ,GRUPO_SANGUINEO_ID
      ,GRUPO_PLANTELREGULAR
      ,FECHNACPADRE
      ,FECHNACMADRE
      ,PLANTEL_ID
      ,USUARIOALUMNO_ID
      ,DOBLECURP
      ,FECHABAJA
       )
    VALUES
     (
       :old.CONQUIENVIVE
      ,:old.ID
      ,:old.GRUPOACTIVO_ID
      ,:old.INFOSALUD_ID
      ,:old.PREINSCRIPCION_ID
      ,:old.ESTATUS
      ,:old.OTRANACIONALIDAD_ID
      ,:old.MUNICIPIONACIMIENTO_ID
      ,:old.TELEFONO_ID
      ,:old.DOMICILIO_ID
      ,:old.USUARIOCREACION
      ,:old.FECHACREACION
      ,:old.NOMBREPADRE
      ,:old.NOMBREMADRE
      ,:old.CURP
      ,:old.SERVICIOMIXTO
      ,:old.FECHAALTA
      ,:old.CLAVEAUTORIZACION
      ,:old.GRUPO_SANGUINEO_ID
      ,:old.GRUPO_PLANTELREGULAR
      ,:old.FECHNACPADRE
      ,:old.FECHNACMADRE
      ,:old.PLANTEL_ID
      ,:old.USUARIOALUMNO_ID
      ,:old.DOBLECURP
      ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER alumno_before_update
CREATE OR REPLACE TRIGGER alumno_before_update
BEFORE update
    ON alumno
    FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN

if :old.preinscripcion_id is not null and :old.preinscripcion_id <> :new.preinscripcion_id then
            raise_application_error (-20999,'Error al actualizar preinscripcion');
end if;
    -- Insert record into audit table
    INSERT INTO AUDITORIA_ALUMNO_PREINS
     (
      CONQUIENVIVE
      ,ID
      ,GRUPOACTIVO_ID
      ,INFOSALUD_ID
      ,PREINSCRIPCION_ID
      ,ESTATUS
      ,OTRANACIONALIDAD_ID
      ,MUNICIPIONACIMIENTO_ID
      ,TELEFONO_ID
      ,DOMICILIO_ID
      ,USUARIOCREACION
      ,FECHACREACION
      ,NOMBREPADRE
      ,NOMBREMADRE
      ,CURP
      ,SERVICIOMIXTO
      ,FECHAALTA
      ,CLAVEAUTORIZACION
      ,GRUPO_SANGUINEO_ID
      ,GRUPO_PLANTELREGULAR
      ,FECHNACPADRE
      ,FECHNACMADRE
      ,PLANTEL_ID
      ,USUARIOALUMNO_ID
      ,DOBLECURP
      ,TALLERACTIVO_ID
      ,FECHAACTUALIZACION
       )
    VALUES
     (
      :old.CONQUIENVIVE
      ,:old.ID
      ,:old.GRUPOACTIVO_ID
      ,:old.INFOSALUD_ID
      ,:old.PREINSCRIPCION_ID
      ,:old.ESTATUS
      ,:old.OTRANACIONALIDAD_ID
      ,:old.MUNICIPIONACIMIENTO_ID
      ,:old.TELEFONO_ID
      ,:old.DOMICILIO_ID
      ,:old.USUARIOCREACION
      ,:old.FECHACREACION
      ,:old.NOMBREPADRE
      ,:old.NOMBREMADRE
      ,:old.CURP
      ,:old.SERVICIOMIXTO
      ,:old.FECHAALTA
      ,:old.CLAVEAUTORIZACION
      ,:old.GRUPO_SANGUINEO_ID
      ,:old.GRUPO_PLANTELREGULAR
      ,:old.FECHNACPADRE
      ,:old.FECHNACMADRE
      ,:old.PLANTEL_ID
      ,:old.USUARIOALUMNO_ID
      ,:old.DOBLECURP
      ,:old.TALLERACTIVO_ID
      ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER alumno_eval_before_delete
CREATE OR REPLACE TRIGGER alumno_eval_before_delete
BEFORE DELETE
    ON alumno_evaluacion
    FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN
    -- Insert record into audit table
    INSERT INTO AUDIT_ALUMNO_EVALUACION
     (
       ALUMNO_ID        --NUMBER(19)                   NOT NULL,
      ,EVALUACIONES_ID  --NUMBER(19)                   NOT NULL
      ,ACCIONTIPO
      ,ACCIONFECHA
       )
    VALUES
     (
      :old.ALUMNO_ID        --NUMBER(19)                   NOT NULL,
      ,:old.EVALUACIONES_ID  --NUMBER(19)                   NOT NULL
      ,'DELETE'
     ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER alumno_evex_before_insert
CREATE OR REPLACE TRIGGER alumno_evex_before_insert
BEFORE insert
    ON alumno_evaluacionextra
    FOR EACH ROW
DECLARE
    v_clave varchar2(10);
 cursor c1 is
   select
case when
       (gpo.grado = 1 and evx.MATERIA_ID = 56)
    or (gpo.grado = 2 and evx.MATERIA_ID = 67)
    or (gpo.grado = 3 and evx.MATERIA_ID = 77)
    then
  (select tc.clave from grupotaller gt, tecnologia tc
    where alu.talleractivo_id = gt.id and gt.tecnologia_id = tc.id  )
  else
  (
    select max(cve_materia) from alumno_evaluacion ae, evaluacion ev
    where ae.alumno_id = alu.id
      and ae.evaluaciones_id = ev.id
      and evx.materia_id = ev.materia_id
   )
  end cve_tecnologia
   from alumno alu
   , grupo gpo
   ,evaluacionextra evx
   where  alu.id = :new.alumno_id
   and evx.id = :new.evaluacionesextra_id
   and alu.grupoactivo_id = gpo.id
   ;

BEGIN

   open c1;
   fetch c1 into v_clave;


if v_clave is not null
   then
   update evaluacionextra set cve_materia = v_clave where id = :new.evaluacionesextra_id;
end if;



END;
/

PROMPT CREATE OR REPLACE TRIGGER alu_evalextra_before_ins_upd
CREATE OR REPLACE TRIGGER alu_evalextra_before_ins_upd
BEFORE insert or update
    ON alumno_evaluacionextra
    FOR EACH ROW

DECLARE
    v_materia_id number;
    v_clave_materia varchar2(6);
    v_clave_materia_recuperada varchar2(6);
BEGIN

 select
  ex.materia_id
  ,ex.cve_materia
  , case when ex.materia_id in(56,67,77) and ex.cve_materia is null then
      nvl(
            (
              select t.clave from tecnologia t, grupotaller gt
              where a.talleractivo_id = gt.id
                and gt.tecnologia_id = t.id
            )
           ,
            (
               select max(e.cve_materia) from alumno_evaluacion ae, evaluacion e
               where ae.alumno_id = a.id
               and ae.evaluaciones_id = e.id
               and e.materia_id = ex.materia_id
               and e.PERIODO_ID =
                                 (
                                  select max(e.periodo_id) from alumno_evaluacion ae, evaluacion e
                                   where ae.alumno_id = a.id
                                   and ae.evaluaciones_id = e.id
                                   and e.materia_id = ex.materia_id
                                   and e.CVE_MATERIA is not null
                                 )
             )

           )
        else
          ex.cve_materia
        end cve_materia_recuperada
        into v_materia_id,v_clave_materia,v_clave_materia_recuperada
   from evaluacionextra ex,alumno a
   where
   ex.id = :new.EVALUACIONESEXTRA_ID
   and a.id = :new.alumno_id;


if  ( v_materia_id in (56,67,77) and v_clave_materia is not null )
then
    update evaluacionextra ex set ex.cve_materia = v_clave_materia where ex.id = :new.EVALUACIONESEXTRA_ID;
end if;

if  ( v_materia_id in (56,67,77) and v_clave_materia is null and v_clave_materia_recuperada is not null )
then
    update evaluacionextra ex set ex.cve_materia = v_clave_materia_recuperada where ex.id = :new.EVALUACIONESEXTRA_ID;
end if;


END;
/

PROMPT CREATE OR REPLACE TRIGGER bi_aviso_plantel
CREATE OR REPLACE TRIGGER bi_aviso_plantel     before insert on aviso_plantel    for each row
begin     if inserting then       if :NEW."ID" is null then          select AVISOPLANTEL_SEQ.nextval into :NEW."ID" from dual;       end if;    end if; end;
/

PROMPT CREATE OR REPLACE TRIGGER evaluacion_before_delete
CREATE OR REPLACE TRIGGER evaluacion_before_delete
BEFORE DELETE
    ON evaluacion
    FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN
    -- Insert record into audit table
    INSERT INTO AUDIT_EVALUACION
     (
      ID               --NUMBER(19)                   NOT NULL,
      ,CALIFICACION     --NUMBER(19),
      ,FECHACREACION    --DATE,
      ,INASISTENCIAS    --NUMBER(19),
      ,OBSERVACIONES    --VARCHAR2(255 CHAR),
      ,USERNAME         --VARCHAR2(255 CHAR),
      ,CICLOESCOLAR_ID  --NUMBER(19),
      ,MATERIA_ID       --NUMBER(10),
      ,PERIODO_ID       --NUMBER(19)
      ,ACCIONTIPO
      ,ACCIONFECHA
       )
    VALUES
     (
      :old.ID                --NUMBER(19)                   NOT NULL,
     ,:old.CALIFICACION     --NUMBER(19),
     ,:old.FECHACREACION    --DATE,
     ,:old.INASISTENCIAS    --NUMBER(19),
     ,:old.OBSERVACIONES    --VARCHAR2(255 CHAR),
     ,:old.USERNAME         --VARCHAR2(255 CHAR),
     ,:old.CICLOESCOLAR_ID  --NUMBER(19),
     ,:old.MATERIA_ID       --NUMBER(10),
     ,:old.PERIODO_ID       --NUMBER(19)
     ,'DELETE'
     ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER evaluacion_before_update
CREATE OR REPLACE TRIGGER evaluacion_before_update
BEFORE update
    ON evaluacion
    FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN
    -- Insert record into audit table
    INSERT INTO AUDIT_EVALUACION
     (
      ID               --NUMBER(19)                   NOT NULL,
      ,CALIFICACION     --NUMBER(19),
      ,FECHACREACION    --DATE,
      ,INASISTENCIAS    --NUMBER(19),
      ,OBSERVACIONES    --VARCHAR2(255 CHAR),
      ,USERNAME         --VARCHAR2(255 CHAR),
      ,CICLOESCOLAR_ID  --NUMBER(19),
      ,MATERIA_ID       --NUMBER(10),
      ,PERIODO_ID       --NUMBER(19)
      ,ACCIONTIPO
      ,ACCIONFECHA
       )
    VALUES
     (
      :old.ID                --NUMBER(19)                   NOT NULL,
     ,:old.CALIFICACION     --NUMBER(19),
     ,:old.FECHACREACION    --DATE,
     ,:old.INASISTENCIAS    --NUMBER(19),
     ,:old.OBSERVACIONES    --VARCHAR2(255 CHAR),
     ,:old.USERNAME         --VARCHAR2(255 CHAR),
     ,:old.CICLOESCOLAR_ID  --NUMBER(19),
     ,:old.MATERIA_ID       --NUMBER(10),
     ,:old.PERIODO_ID       --NUMBER(19)
     ,'UPDATE'
     ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER evalextra_before_insert
CREATE OR REPLACE TRIGGER evalextra_before_insert
BEFORE insert
    ON evaluacionextra
    FOR EACH ROW
BEGIN



if  (
      (
        :new.FECHA >= to_date('2014/08/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('2014/08/31 23:59','yyyy/mm/dd HH24:MI')
      )
     or
      (
        :new.FECHA >= to_date('0014/08/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('0014/08/31 23:59','yyyy/mm/dd HH24:MI')
      )
     and :new.cicloescolar_id = 15
     and :new.periodo_id = 5
    )
then
    :new.cicloescolar_id := 16;
    :new.periodo_id := 5;
end if;

if  (
      (
        :new.FECHA >= to_date('2014/09/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('2014/09/30 23:59','yyyy/mm/dd HH24:MI')
      )
     or
      (
        :new.FECHA >= to_date('0014/09/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('0014/09/30 23:59','yyyy/mm/dd HH24:MI')
      )
     and :new.cicloescolar_id = 15
     and :new.periodo_id = 6
    )
then
    :new.cicloescolar_id := 16;
    :new.periodo_id := 6;
end if;

END;
/

PROMPT CREATE OR REPLACE TRIGGER evalextra_before_update
CREATE OR REPLACE TRIGGER evalextra_before_update
BEFORE update
    ON evaluacionextra
    FOR EACH ROW
BEGIN



if  (
      (
        :new.FECHA >= to_date('2014/08/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('2014/08/31 23:59','yyyy/mm/dd HH24:MI')
      )
     or
      (
        :new.FECHA >= to_date('0014/08/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('0014/08/31 23:59','yyyy/mm/dd HH24:MI')
      )
     and :new.cicloescolar_id = 15
     and :new.periodo_id = 5
    )
then
    :new.cicloescolar_id := 16;
    :new.periodo_id := 5;
end if;

if  (
      (
        :new.FECHA >= to_date('2014/09/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('2014/09/30 23:59','yyyy/mm/dd HH24:MI')
      )
     or
      (
        :new.FECHA >= to_date('0014/09/01 00:00','yyyy/mm/dd HH24:MI')
       and :new.FECHA <= to_date('0014/09/30 23:59','yyyy/mm/dd HH24:MI')
      )
     and :new.cicloescolar_id = 15
     and :new.periodo_id = 6
    )
then
    :new.cicloescolar_id := 16;
    :new.periodo_id := 6;
end if;

END;
/

PROMPT CREATE OR REPLACE TRIGGER foliocartilla_before_insert
CREATE OR REPLACE TRIGGER foliocartilla_before_insert
BEFORE INSERT
ON foliocartilla
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN
if substr(:new.folio,1,1) = '9'
then
raise_application_error (-20999,'El folio electronico no se puede ingresar, por ser de certificado.');
end if;

END;
/

PROMPT CREATE OR REPLACE TRIGGER foliocartilla_before_update
CREATE OR REPLACE TRIGGER foliocartilla_before_update
BEFORE UPDATE
ON foliocartilla
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN
if (substr(:OLD.folio,1,1) = '9') or (substr(:OLD.folio,1,2) = '09')
  then
raise_application_error (-20999,'El folio electronico no se puede modificar.');
end if;

END;
/

PROMPT CREATE OR REPLACE TRIGGER grupo_bi
CREATE OR REPLACE TRIGGER grupo_bi     before insert on grupo    for each row
begin     if inserting then       if :NEW."ID" is null then          select GRUPO_SEQ.nextval into :NEW."ID" from dual;       end if;    end if; end;
/

PROMPT CREATE OR REPLACE TRIGGER lecturaeval_before_insert
CREATE OR REPLACE TRIGGER lecturaeval_before_insert
before insert
    ON lecturaevaluacion FOR EACH ROW
BEGIN

if :new.id > 1 then
raise_application_error (-20999,'Error la lectura evaluacion no se puede registrar');
end if;


END;
/

PROMPT CREATE OR REPLACE TRIGGER ai_persona
CREATE OR REPLACE TRIGGER ai_persona     before insert on persona    for each row
begin
 if inserting then
 if :NEW."ID" is null then
     select PERSONA_SEQ.nextval into :NEW."ID"
		 from dual;
		 end if;
		 end if;
		 end;
/

PROMPT CREATE OR REPLACE TRIGGER persona_before_delete
CREATE OR REPLACE TRIGGER persona_before_delete
BEFORE DELETE
    ON persona
    FOR EACH ROW

DECLARE
    v_username varchar2(10);

BEGIN

    -- Insert record into audit table
    INSERT INTO AUDITORIA_PERSONA
     (
  ID
  ,CURP
  ,FECHANAC
  ,NOMBRES
  ,PRIMERAPELLIDO
  ,RFC
  ,SEGUNDOAPELLIDO
  ,SEXO
  ,LUGARNACIMIENTO_ID
  ,NACIONALIDAD_ID
  ,OTRANACIONALIDAD_ID
  ,USUARIO_ID
  ,PUEBLOINDIGENA_ID
  ,DOMICILIO_ID
  ,LENGUA_ID
  ,FECHA_BAJA
       )
    VALUES
     (
  :old.ID
  ,:old.CURP
  ,:old.FECHANAC
  ,:old.NOMBRES
  ,:old.PRIMERAPELLIDO
  ,:old.RFC
  ,:old.SEGUNDOAPELLIDO
  ,:old.SEXO
  ,:old.LUGARNACIMIENTO_ID
  ,:old.NACIONALIDAD_ID
  ,:old.OTRANACIONALIDAD_ID
  ,:old.USUARIO_ID
  ,:old.PUEBLOINDIGENA_ID
  ,:old.DOMICILIO_ID
  ,:old.LENGUA_ID
      ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER persona_before_update
CREATE OR REPLACE TRIGGER persona_before_update
BEFORE update
    ON persona
    FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN

    -- Insert record into audit table
    INSERT INTO AUDITORIA_PERSONA_PREINS
     (
  ID
  ,CURP
  ,FECHANAC
  ,NOMBRES
  ,PRIMERAPELLIDO
  ,RFC
  ,SEGUNDOAPELLIDO
  ,SEXO
  ,LUGARNACIMIENTO_ID
  ,NACIONALIDAD_ID
  ,OTRANACIONALIDAD_ID
  ,USUARIO_ID
  ,PUEBLOINDIGENA_ID
  ,DOMICILIO_ID
  ,LENGUA_ID
  ,ENCONTRADO
  ,CURP_OLD
  ,CURPRENAPO
  ,PRIMERAPELLIDORENAPO
  ,SEGUNDOAPELLIDORENAPO
  ,NOMBRESRENAPO
  ,FECHANACRENAPO
  ,SEXORENAPO
  ,FECHAACTUALIZACION
       )
    VALUES
     (
  :old.ID
  ,:old.CURP
  ,:old.FECHANAC
  ,:old.NOMBRES
  ,:old.PRIMERAPELLIDO
  ,:old.RFC
  ,:old.SEGUNDOAPELLIDO
  ,:old.SEXO
  ,:old.LUGARNACIMIENTO_ID
  ,:old.NACIONALIDAD_ID
  ,:old.OTRANACIONALIDAD_ID
  ,:old.USUARIO_ID
  ,:old.PUEBLOINDIGENA_ID
  ,:old.DOMICILIO_ID
  ,:old.LENGUA_ID
  ,:old.ENCONTRADO
  ,:old.CURP_OLD
  ,:old.CURPRENAPO
  ,:old.PRIMERAPELLIDORENAPO
  ,:old.SEGUNDOAPELLIDORENAPO
  ,:old.NOMBRESRENAPO
  ,:old.FECHANACRENAPO
  ,:old.SEXORENAPO
      ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER ai_plaza
CREATE OR REPLACE TRIGGER ai_plaza     before insert on plaza    for each row
begin     if inserting then       if :NEW."ID" is null then          select PLAZA_ID.nextval into :NEW."ID" from dual;       end if;    end if; end;
/

PROMPT CREATE OR REPLACE TRIGGER preinscripcion_before_delete
CREATE OR REPLACE TRIGGER preinscripcion_before_delete
BEFORE delete
    ON preinscripcion
    FOR EACH ROW
DECLARE
    v_username varchar2(10);

BEGIN
    -- Insert record into audit table
    INSERT INTO  AUDITORIA_PREINSCRIPCION
(
  ID
  ,CUANTOSVIVENCASA
  ,ESCOLARIDADMADRE
  ,ESCOLARIDADPADRE
  ,FECHA
  ,REQUIERETURNOCONTINUO
  ,SOSTIENEHOGARECONO
  ,OPCION1_ID
  ,OPCION2_ID
  ,OPCION3_ID
  ,GRADO
  ,HERMANOSMISMAESCUELA
  ,HERMANOSPREEINSCRIPCION
  ,USERNAME
  ,TIEMPOPREESCOLAR
  ,ESCUELAPROCEDENCIA
  ,TIENESERVICIOS
  ,ANOSPREESCOLAR
  ,FECHACREACION
  ,FECHACREA
  ,DOBLEPREINS
  ,MOSTRABLE
  ,FOLIOSAID
  ,FOLIOPLANTEL
  ,EXTEMPORANEO
  ,EMAIL
  ,FECHA_DELETE
)
    VALUES
     (
  :old.ID
  ,:old.CUANTOSVIVENCASA
  ,:old.ESCOLARIDADMADRE
  ,:old.ESCOLARIDADPADRE
  ,:old.FECHA
  ,:old.REQUIERETURNOCONTINUO
  ,:old.SOSTIENEHOGARECONO
  ,:old.OPCION1_ID
  ,:old.OPCION2_ID
  ,:old.OPCION3_ID
  ,:old.GRADO
  ,:old.HERMANOSMISMAESCUELA
  ,:old.HERMANOSPREEINSCRIPCION
  ,:old.USERNAME
  ,:old.TIEMPOPREESCOLAR
  ,:old.ESCUELAPROCEDENCIA
  ,:old.TIENESERVICIOS
  ,:old.ANOSPREESCOLAR
  ,:old.FECHACREACION
  ,:old.FECHACREA
  ,:old.DOBLEPREINS
  ,:old.MOSTRABLE
  ,:old.FOLIOSAID
  ,:old.FOLIOPLANTEL
  ,:old.EXTEMPORANEO
  ,:old.EMAIL
  ,SYSDATE
     );

END;
/

PROMPT CREATE OR REPLACE TRIGGER preinscripcion_before_insert
CREATE OR REPLACE TRIGGER preinscripcion_before_insert
BEFORE insert
    ON preinscripcion
    FOR EACH ROW
DECLARE
    out_folioplantel number;
    v_cod_dep_normat varchar2(10);
 cursor c1 is
   select B.cod_dep_normat
   from plantel A, bdunica_cct B
   where  A.id = :new.opcion1_id
   and A.cct = B.cct;

BEGIN

   open c1;
   fetch c1 into v_cod_dep_normat;


if v_cod_dep_normat <> 'TE'
   then
   raise_application_error (-20999,'Error al actualizar preinscripcion');
end if;


if :new.folioplantel = 0 then
    getFolioPreinscripcion(:new.opcion1_id,out_folioplantel);
    :new.folioplantel := out_folioplantel;
end if;

END;
/

PROMPT CREATE OR REPLACE TRIGGER preinscripcion_before_update
CREATE OR REPLACE TRIGGER preinscripcion_before_update
BEFORE update
    ON preinscripcion
    FOR EACH ROW
DECLARE
    v_cod_dep_normat varchar2(10);

 cursor c1 is
   select B.cod_dep_normat
   from plantel A, bdunica_cct B
   where  A.id = :old.opcion1_id
   and A.cct = B.cct;

BEGIN

   open c1;
   fetch c1 into v_cod_dep_normat;

if v_cod_dep_normat <> 'TE'
--   and :old.fechacrea is not null
--   and :old.fechacrea <= to_date('2013/02/24 23:59','yyyy/mm/dd HH24:MI')
   --and (:old.opcion2_id <> :new.opcion2_id or :old.opcion3_id <> :new.opcion3_id)
/*   and :old.id not in (
 102482
,79025
,93590
,89967
,162376
,67220
,68535
,106183
,75713
,121603
,79045
,66621
,202340
,108912
,92967
,175245
,91761
,86357
,126393
,94279
,67736
,143586
,80768
,73236
,71099
,78618
,79024
,200859
,67543
,200686
,74432
,74532
,137555
,67690
,68552
,118741
,144697
,70555
,73979
,87250
,120728
,77356
,192918
,69130
,100635
,163406
,78669
,80043
,113257
)*/

   then
   raise_application_error (-20999,'Error al actualizar preinscripcion');
end if;

if v_cod_dep_normat = 'TE'
and :old.folioplantel > 9000
--   and :old.fechacrea is not null
--   and :old.fechacrea <= to_date('2013/06/06 23:59','yyyy/mm/dd HH24:MI')
/*   and :old.id not in (
 102482
,79025
,93590
,89967
,162376
,67220
,68535
,106183
,75713
,121603
,79045
,66621
,202340
,108912
,92967
,175245
,91761
,86357
,126393
,94279
,67736
,143586
,80768
,73236
,71099
,78618
,79024
,200859
,67543
,200686
,74432
,74532
,137555
,67690
,68552
,118741
,144697
,70555
,73979
,87250
,120728
,77356
,192918
,69130
,100635
,163406
,78669
,80043
,113257
)*/
   then
      raise_application_error (-20999,'Error al actualizar preinscripcion');
end if;
close c1;
END;
/

PROMPT CREATE OR REPLACE TRIGGER usuario_bi
CREATE OR REPLACE TRIGGER usuario_bi     before insert on usuario    for each row
begin     if inserting then       if :NEW."ID" is null then          select USUARIO_SEQ.nextval into :NEW."ID" from dual;       end if;    end if; end;
/

