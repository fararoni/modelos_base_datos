
CREATE TABLE ALUMNO_USUARIO
(
	N_IDUSUARIO          INTEGER NOT NULL ,
	S_eMail              VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKALUMNO_USUARIO ON ALUMNO_USUARIO
(N_IDUSUARIO   ASC);



ALTER TABLE ALUMNO_USUARIO
	ADD CONSTRAINT  XPKALUMNO_USUARIO PRIMARY KEY (N_IDUSUARIO);



CREATE TABLE EMPLEADO_USUARIO
(
	N_IDUSUARIO          INTEGER NOT NULL ,
	S_eMail              VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKEMPLEADO_USUARIO ON EMPLEADO_USUARIO
(N_IDUSUARIO   ASC);



ALTER TABLE EMPLEADO_USUARIO
	ADD CONSTRAINT  XPKEMPLEADO_USUARIO PRIMARY KEY (N_IDUSUARIO);



CREATE TABLE EMPPART_USUARIOS
(
	N_IDUSUARIO          INTEGER NOT NULL ,
	S_eMail              VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKEMPPART_USUARIOS ON EMPPART_USUARIOS
(N_IDUSUARIO   ASC);



ALTER TABLE EMPPART_USUARIOS
	ADD CONSTRAINT  XPKEMPPART_USUARIOS PRIMARY KEY (N_IDUSUARIO);



CREATE TABLE LOG_ACTIVIDAD
(
	N_IDLOG              INTEGER NOT NULL ,
	N_IDUSUARIO          VARCHAR2(20) NULL ,
	N_IDOPERACION        INTEGER NULL ,
	N_IDROL              INTEGER NULL ,
	N_IDAPP              INTEGER NULL ,
	D_FECHAHORA          DATE NULL ,
	S_IP_CLIENTE         VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKLOG_ACTIVIDAD ON LOG_ACTIVIDAD
(N_IDLOG   ASC);



ALTER TABLE LOG_ACTIVIDAD
	ADD CONSTRAINT  XPKLOG_ACTIVIDAD PRIMARY KEY (N_IDLOG);



CREATE TABLE LOG_CONTRASENAS
(
	N_IDUSUARIO          INTEGER NOT NULL ,
	S_CVE_USUARIO_ANT    VARCHAR2(20) NULL ,
	S_CVE_USUARIO_NEW    VARCHAR2(20) NULL ,
	S_FECHA_CAMBIO       VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKLOG_CONTRASENAS ON LOG_CONTRASENAS
(N_IDUSUARIO   ASC);



ALTER TABLE LOG_CONTRASENAS
	ADD CONSTRAINT  XPKLOG_CONTRASENAS PRIMARY KEY (N_IDUSUARIO);



CREATE TABLE OU_USUARIOS
(
	S_CCT                VARCHAR2(20) NOT NULL ,
	N_IDUSUARIO          INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKOU_USUARIOS ON OU_USUARIOS
(S_CCT   ASC,N_IDUSUARIO   ASC);



ALTER TABLE OU_USUARIOS
	ADD CONSTRAINT  XPKOU_USUARIOS PRIMARY KEY (S_CCT,N_IDUSUARIO);



CREATE TABLE PERMISOS_APPS
(
	N_IDAPP              CHAR(18) NOT NULL ,
	N_IDPERMISO          INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKPERMISOS_APPS ON PERMISOS_APPS
(N_IDAPP   ASC,N_IDPERMISO   ASC);



ALTER TABLE PERMISOS_APPS
	ADD CONSTRAINT  XPKPERMISOS_APPS PRIMARY KEY (N_IDAPP,N_IDPERMISO);



CREATE TABLE PUBLICO_USUARIO
(
	N_IDUSUARIO          INTEGER NOT NULL ,
	S_eMail              VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKPUBLICO_USUARIO ON PUBLICO_USUARIO
(N_IDUSUARIO   ASC);



ALTER TABLE PUBLICO_USUARIO
	ADD CONSTRAINT  XPKPUBLICO_USUARIO PRIMARY KEY (N_IDUSUARIO);



CREATE TABLE ROLES_PERMISOS
(
	N_IDROL              INTEGER NOT NULL ,
	N_IDPERMISO          INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKROLES_PERMISOS ON ROLES_PERMISOS
(N_IDROL   ASC,N_IDPERMISO   ASC);



ALTER TABLE ROLES_PERMISOS
	ADD CONSTRAINT  XPKROLES_PERMISOS PRIMARY KEY (N_IDROL,N_IDPERMISO);



CREATE TABLE SESION
(
	N_IDSESION           INTEGER NOT NULL ,
	N_IDUSUARIO          INTEGER NOT NULL ,
	N_IDROL              INTEGER NOT NULL ,
	S_FECHA              VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKSESION ON SESION
(N_IDSESION   ASC);



ALTER TABLE SESION
	ADD CONSTRAINT  XPKSESION PRIMARY KEY (N_IDSESION);



CREATE TABLE TC_OPERACIONES
(
	N_IDOPERACION        INTEGER NOT NULL ,
	S_DESCRIPCION        VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTC_OPERACIONES ON TC_OPERACIONES
(N_IDOPERACION   ASC);



ALTER TABLE TC_OPERACIONES
	ADD CONSTRAINT  XPKTC_OPERACIONES PRIMARY KEY (N_IDOPERACION);



CREATE TABLE TC_PERMISOS
(
	N_IDPERMISO          INTEGER NOT NULL ,
	S_NOMBRE             VARCHAR2(20) NULL ,
	S_DESCRIPCION        VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTC_PERMISOS ON TC_PERMISOS
(N_IDPERMISO   ASC);



ALTER TABLE TC_PERMISOS
	ADD CONSTRAINT  XPKTC_PERMISOS PRIMARY KEY (N_IDPERMISO);



CREATE TABLE TC_ROLES
(
	N_IDROL              INTEGER NOT NULL ,
	S_NOMBRE             VARCHAR2(20) NULL ,
	S_DESCRIPCION        VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTC_ROLES ON TC_ROLES
(N_IDROL   ASC);



ALTER TABLE TC_ROLES
	ADD CONSTRAINT  XPKTC_ROLES PRIMARY KEY (N_IDROL);



CREATE TABLE TC_USUARIOS
(
	N_IDUSUARIO          INTEGER NOT NULL ,
	S_CVE_USUARIO        VARCHAR2(20) NULL ,
	S_CONTRASENA         VARCHAR2(20) NULL ,
	S_ESTATUS            CHAR(18) NULL ,
	D_FECHAALTA          DATE NULL ,
	D_FECHABAJA          DATE NULL 
);



CREATE UNIQUE INDEX XPKTC_USUARIOS ON TC_USUARIOS
(N_IDUSUARIO   ASC);



ALTER TABLE TC_USUARIOS
	ADD CONSTRAINT  XPKTC_USUARIOS PRIMARY KEY (N_IDUSUARIO);



CREATE TABLE TW_APLICACION
(
	N_IDAPP              CHAR(18) NOT NULL ,
	PARENT               CHAR(18) NULL ,
	N_IDMODULO           INTEGER NULL ,
	S_DESCRIPCION        VARCHAR2(20) NULL ,
	S_URL                VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKTW_APLICACION ON TW_APLICACION
(N_IDAPP   ASC);



ALTER TABLE TW_APLICACION
	ADD CONSTRAINT  XPKTW_APLICACION PRIMARY KEY (N_IDAPP);



CREATE TABLE UNIDAD_ORGANIZACIONAL
(
	S_CCT                VARCHAR2(20) NOT NULL ,
	PARENT_CCT           VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKUNIDAD_ORGANIZACIONAL ON UNIDAD_ORGANIZACIONAL
(S_CCT   ASC);



ALTER TABLE UNIDAD_ORGANIZACIONAL
	ADD CONSTRAINT  XPKUNIDAD_ORGANIZACIONAL PRIMARY KEY (S_CCT);



CREATE TABLE USUARIOS_ROLES
(
	N_IDUSUARIO          INTEGER NOT NULL ,
	N_IDROL              INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKUSUARIOS_ROLES ON USUARIOS_ROLES
(N_IDUSUARIO   ASC,N_IDROL   ASC);



ALTER TABLE USUARIOS_ROLES
	ADD CONSTRAINT  XPKUSUARIOS_ROLES PRIMARY KEY (N_IDUSUARIO,N_IDROL);



ALTER TABLE ALUMNO_USUARIO
	ADD (CONSTRAINT R_26 FOREIGN KEY (N_IDUSUARIO) REFERENCES TC_USUARIOS (N_IDUSUARIO));



ALTER TABLE EMPLEADO_USUARIO
	ADD (CONSTRAINT R_21 FOREIGN KEY (N_IDUSUARIO) REFERENCES TC_USUARIOS (N_IDUSUARIO));



ALTER TABLE EMPPART_USUARIOS
	ADD (CONSTRAINT R_28 FOREIGN KEY (N_IDUSUARIO) REFERENCES TC_USUARIOS (N_IDUSUARIO));



ALTER TABLE OU_USUARIOS
	ADD (CONSTRAINT R_40 FOREIGN KEY (S_CCT) REFERENCES UNIDAD_ORGANIZACIONAL (S_CCT));



ALTER TABLE OU_USUARIOS
	ADD (CONSTRAINT R_41 FOREIGN KEY (N_IDUSUARIO) REFERENCES TC_USUARIOS (N_IDUSUARIO));



ALTER TABLE PERMISOS_APPS
	ADD (CONSTRAINT R_37 FOREIGN KEY (N_IDAPP) REFERENCES TW_APLICACION (N_IDAPP));



ALTER TABLE PERMISOS_APPS
	ADD (CONSTRAINT R_38 FOREIGN KEY (N_IDPERMISO) REFERENCES TC_PERMISOS (N_IDPERMISO));



ALTER TABLE PUBLICO_USUARIO
	ADD (CONSTRAINT R_27 FOREIGN KEY (N_IDUSUARIO) REFERENCES TC_USUARIOS (N_IDUSUARIO));



ALTER TABLE ROLES_PERMISOS
	ADD (CONSTRAINT R_33 FOREIGN KEY (N_IDROL) REFERENCES TC_ROLES (N_IDROL));



ALTER TABLE ROLES_PERMISOS
	ADD (CONSTRAINT R_36 FOREIGN KEY (N_IDPERMISO) REFERENCES TC_PERMISOS (N_IDPERMISO));



ALTER TABLE SESION
	ADD (CONSTRAINT R_30 FOREIGN KEY (N_IDUSUARIO, N_IDROL) REFERENCES USUARIOS_ROLES (N_IDUSUARIO, N_IDROL));



ALTER TABLE TW_APLICACION
	ADD (CONSTRAINT R_34 FOREIGN KEY (PARENT) REFERENCES TW_APLICACION (N_IDAPP) ON DELETE SET NULL);



ALTER TABLE UNIDAD_ORGANIZACIONAL
	ADD (CONSTRAINT R_39 FOREIGN KEY (PARENT_CCT) REFERENCES UNIDAD_ORGANIZACIONAL (S_CCT) ON DELETE SET NULL);



ALTER TABLE USUARIOS_ROLES
	ADD (CONSTRAINT R_10 FOREIGN KEY (N_IDUSUARIO) REFERENCES TC_USUARIOS (N_IDUSUARIO));



ALTER TABLE USUARIOS_ROLES
	ADD (CONSTRAINT R_11 FOREIGN KEY (N_IDROL) REFERENCES TC_ROLES (N_IDROL));



CREATE  TRIGGER tI_ALUMNO_USUARIO BEFORE INSERT ON ALUMNO_USUARIO for each row
-- ERwin Builtin Trigger
-- INSERT trigger on ALUMNO_USUARIO 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  ALUMNO_USUARIO on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00010203", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="ALUMNO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_USUARIOS
      WHERE
        /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
        :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert ALUMNO_USUARIO because TC_USUARIOS does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_ALUMNO_USUARIO AFTER UPDATE ON ALUMNO_USUARIO for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on ALUMNO_USUARIO 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  ALUMNO_USUARIO on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="000101e0", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="ALUMNO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="N_IDUSUARIO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_USUARIOS
    WHERE
      /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
      :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update ALUMNO_USUARIO because TC_USUARIOS does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_EMPLEADO_USUARIO BEFORE INSERT ON EMPLEADO_USUARIO for each row
-- ERwin Builtin Trigger
-- INSERT trigger on EMPLEADO_USUARIO 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  EMPLEADO_USUARIO on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000fd6e", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPLEADO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_USUARIOS
      WHERE
        /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
        :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert EMPLEADO_USUARIO because TC_USUARIOS does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_EMPLEADO_USUARIO AFTER UPDATE ON EMPLEADO_USUARIO for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on EMPLEADO_USUARIO 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  EMPLEADO_USUARIO on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0000f9fb", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPLEADO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="N_IDUSUARIO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_USUARIOS
    WHERE
      /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
      :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update EMPLEADO_USUARIO because TC_USUARIOS does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_EMPPART_USUARIOS BEFORE INSERT ON EMPPART_USUARIOS for each row
-- ERwin Builtin Trigger
-- INSERT trigger on EMPPART_USUARIOS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  EMPPART_USUARIOS on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000fe3a", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPPART_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_USUARIOS
      WHERE
        /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
        :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert EMPPART_USUARIOS because TC_USUARIOS does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_EMPPART_USUARIOS AFTER UPDATE ON EMPPART_USUARIOS for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on EMPPART_USUARIOS 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  EMPPART_USUARIOS on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00010185", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPPART_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="N_IDUSUARIO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_USUARIOS
    WHERE
      /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
      :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update EMPPART_USUARIOS because TC_USUARIOS does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_OU_USUARIOS BEFORE INSERT ON OU_USUARIOS for each row
-- ERwin Builtin Trigger
-- INSERT trigger on OU_USUARIOS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  OU_USUARIOS on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00021f7a", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_USUARIOS
      WHERE
        /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
        :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert OU_USUARIOS because TC_USUARIOS does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* UNIDAD_ORGANIZACIONAL  OU_USUARIOS on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="S_CCT" */
    SELECT count(*) INTO NUMROWS
      FROM UNIDAD_ORGANIZACIONAL
      WHERE
        /* %JoinFKPK(:%New,UNIDAD_ORGANIZACIONAL," = "," AND") */
        :new.S_CCT = UNIDAD_ORGANIZACIONAL.S_CCT;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert OU_USUARIOS because UNIDAD_ORGANIZACIONAL does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_OU_USUARIOS AFTER UPDATE ON OU_USUARIOS for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on OU_USUARIOS 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  OU_USUARIOS on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00021dcb", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="N_IDUSUARIO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_USUARIOS
    WHERE
      /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
      :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update OU_USUARIOS because TC_USUARIOS does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* UNIDAD_ORGANIZACIONAL  OU_USUARIOS on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="S_CCT" */
  SELECT count(*) INTO NUMROWS
    FROM UNIDAD_ORGANIZACIONAL
    WHERE
      /* %JoinFKPK(:%New,UNIDAD_ORGANIZACIONAL," = "," AND") */
      :new.S_CCT = UNIDAD_ORGANIZACIONAL.S_CCT;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update OU_USUARIOS because UNIDAD_ORGANIZACIONAL does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_PERMISOS_APPS BEFORE INSERT ON PERMISOS_APPS for each row
-- ERwin Builtin Trigger
-- INSERT trigger on PERMISOS_APPS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_PERMISOS  PERMISOS_APPS on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00020de0", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="N_IDPERMISO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_PERMISOS
      WHERE
        /* %JoinFKPK(:%New,TC_PERMISOS," = "," AND") */
        :new.N_IDPERMISO = TC_PERMISOS.N_IDPERMISO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert PERMISOS_APPS because TC_PERMISOS does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TW_APLICACION  PERMISOS_APPS on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="N_IDAPP" */
    SELECT count(*) INTO NUMROWS
      FROM TW_APLICACION
      WHERE
        /* %JoinFKPK(:%New,TW_APLICACION," = "," AND") */
        :new.N_IDAPP = TW_APLICACION.N_IDAPP;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert PERMISOS_APPS because TW_APLICACION does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_PERMISOS_APPS AFTER UPDATE ON PERMISOS_APPS for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on PERMISOS_APPS 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_PERMISOS  PERMISOS_APPS on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="000215d8", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="N_IDPERMISO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_PERMISOS
    WHERE
      /* %JoinFKPK(:%New,TC_PERMISOS," = "," AND") */
      :new.N_IDPERMISO = TC_PERMISOS.N_IDPERMISO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update PERMISOS_APPS because TC_PERMISOS does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* TW_APLICACION  PERMISOS_APPS on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="N_IDAPP" */
  SELECT count(*) INTO NUMROWS
    FROM TW_APLICACION
    WHERE
      /* %JoinFKPK(:%New,TW_APLICACION," = "," AND") */
      :new.N_IDAPP = TW_APLICACION.N_IDAPP;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update PERMISOS_APPS because TW_APLICACION does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_PUBLICO_USUARIO BEFORE INSERT ON PUBLICO_USUARIO for each row
-- ERwin Builtin Trigger
-- INSERT trigger on PUBLICO_USUARIO 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  PUBLICO_USUARIO on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f606", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="PUBLICO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_USUARIOS
      WHERE
        /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
        :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert PUBLICO_USUARIO because TC_USUARIOS does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_PUBLICO_USUARIO AFTER UPDATE ON PUBLICO_USUARIO for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on PUBLICO_USUARIO 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  PUBLICO_USUARIO on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0000f6bf", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="PUBLICO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="N_IDUSUARIO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_USUARIOS
    WHERE
      /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
      :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update PUBLICO_USUARIO because TC_USUARIOS does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_ROLES_PERMISOS BEFORE INSERT ON ROLES_PERMISOS for each row
-- ERwin Builtin Trigger
-- INSERT trigger on ROLES_PERMISOS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_PERMISOS  ROLES_PERMISOS on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0001fb24", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="N_IDPERMISO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_PERMISOS
      WHERE
        /* %JoinFKPK(:%New,TC_PERMISOS," = "," AND") */
        :new.N_IDPERMISO = TC_PERMISOS.N_IDPERMISO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert ROLES_PERMISOS because TC_PERMISOS does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_ROLES  ROLES_PERMISOS on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="N_IDROL" */
    SELECT count(*) INTO NUMROWS
      FROM TC_ROLES
      WHERE
        /* %JoinFKPK(:%New,TC_ROLES," = "," AND") */
        :new.N_IDROL = TC_ROLES.N_IDROL;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert ROLES_PERMISOS because TC_ROLES does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_ROLES_PERMISOS AFTER UPDATE ON ROLES_PERMISOS for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on ROLES_PERMISOS 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_PERMISOS  ROLES_PERMISOS on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00020356", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="N_IDPERMISO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_PERMISOS
    WHERE
      /* %JoinFKPK(:%New,TC_PERMISOS," = "," AND") */
      :new.N_IDPERMISO = TC_PERMISOS.N_IDPERMISO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update ROLES_PERMISOS because TC_PERMISOS does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_ROLES  ROLES_PERMISOS on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="N_IDROL" */
  SELECT count(*) INTO NUMROWS
    FROM TC_ROLES
    WHERE
      /* %JoinFKPK(:%New,TC_ROLES," = "," AND") */
      :new.N_IDROL = TC_ROLES.N_IDROL;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update ROLES_PERMISOS because TC_ROLES does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_SESION BEFORE INSERT ON SESION for each row
-- ERwin Builtin Trigger
-- INSERT trigger on SESION 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* USUARIOS_ROLES  SESION on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="000117c7", PARENT_OWNER="", PARENT_TABLE="USUARIOS_ROLES"
    CHILD_OWNER="", CHILD_TABLE="SESION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="N_IDUSUARIO""N_IDROL" */
    SELECT count(*) INTO NUMROWS
      FROM USUARIOS_ROLES
      WHERE
        /* %JoinFKPK(:%New,USUARIOS_ROLES," = "," AND") */
        :new.N_IDUSUARIO = USUARIOS_ROLES.N_IDUSUARIO AND
        :new.N_IDROL = USUARIOS_ROLES.N_IDROL;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert SESION because USUARIOS_ROLES does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_SESION AFTER UPDATE ON SESION for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on SESION 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* USUARIOS_ROLES  SESION on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0001165e", PARENT_OWNER="", PARENT_TABLE="USUARIOS_ROLES"
    CHILD_OWNER="", CHILD_TABLE="SESION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="N_IDUSUARIO""N_IDROL" */
  SELECT count(*) INTO NUMROWS
    FROM USUARIOS_ROLES
    WHERE
      /* %JoinFKPK(:%New,USUARIOS_ROLES," = "," AND") */
      :new.N_IDUSUARIO = USUARIOS_ROLES.N_IDUSUARIO AND
      :new.N_IDROL = USUARIOS_ROLES.N_IDROL;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update SESION because USUARIOS_ROLES does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_TC_PERMISOS AFTER DELETE ON TC_PERMISOS for each row
-- ERwin Builtin Trigger
-- DELETE trigger on TC_PERMISOS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_PERMISOS  PERMISOS_APPS on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001e644", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="N_IDPERMISO" */
    SELECT count(*) INTO NUMROWS
      FROM PERMISOS_APPS
      WHERE
        /*  %JoinFKPK(PERMISOS_APPS,:%Old," = "," AND") */
        PERMISOS_APPS.N_IDPERMISO = :old.N_IDPERMISO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_PERMISOS because PERMISOS_APPS exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_PERMISOS  ROLES_PERMISOS on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="N_IDPERMISO" */
    SELECT count(*) INTO NUMROWS
      FROM ROLES_PERMISOS
      WHERE
        /*  %JoinFKPK(ROLES_PERMISOS,:%Old," = "," AND") */
        ROLES_PERMISOS.N_IDPERMISO = :old.N_IDPERMISO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_PERMISOS because ROLES_PERMISOS exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_TC_PERMISOS AFTER UPDATE ON TC_PERMISOS for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on TC_PERMISOS 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_PERMISOS  PERMISOS_APPS on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00023dcc", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="N_IDPERMISO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDPERMISO <> :new.N_IDPERMISO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM PERMISOS_APPS
      WHERE
        /*  %JoinFKPK(PERMISOS_APPS,:%Old," = "," AND") */
        PERMISOS_APPS.N_IDPERMISO = :old.N_IDPERMISO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_PERMISOS because PERMISOS_APPS exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_PERMISOS  ROLES_PERMISOS on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_PERMISOS"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="N_IDPERMISO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDPERMISO <> :new.N_IDPERMISO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM ROLES_PERMISOS
      WHERE
        /*  %JoinFKPK(ROLES_PERMISOS,:%Old," = "," AND") */
        ROLES_PERMISOS.N_IDPERMISO = :old.N_IDPERMISO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_PERMISOS because ROLES_PERMISOS exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_TC_ROLES AFTER DELETE ON TC_ROLES for each row
-- ERwin Builtin Trigger
-- DELETE trigger on TC_ROLES 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_ROLES  ROLES_PERMISOS on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001e1b5", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="N_IDROL" */
    SELECT count(*) INTO NUMROWS
      FROM ROLES_PERMISOS
      WHERE
        /*  %JoinFKPK(ROLES_PERMISOS,:%Old," = "," AND") */
        ROLES_PERMISOS.N_IDROL = :old.N_IDROL;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_ROLES because ROLES_PERMISOS exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_ROLES  USUARIOS_ROLES on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="N_IDROL" */
    SELECT count(*) INTO NUMROWS
      FROM USUARIOS_ROLES
      WHERE
        /*  %JoinFKPK(USUARIOS_ROLES,:%Old," = "," AND") */
        USUARIOS_ROLES.N_IDROL = :old.N_IDROL;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_ROLES because USUARIOS_ROLES exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_TC_ROLES AFTER UPDATE ON TC_ROLES for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on TC_ROLES 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_ROLES  ROLES_PERMISOS on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00022862", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="ROLES_PERMISOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="N_IDROL" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDROL <> :new.N_IDROL
  THEN
    SELECT count(*) INTO NUMROWS
      FROM ROLES_PERMISOS
      WHERE
        /*  %JoinFKPK(ROLES_PERMISOS,:%Old," = "," AND") */
        ROLES_PERMISOS.N_IDROL = :old.N_IDROL;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_ROLES because ROLES_PERMISOS exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_ROLES  USUARIOS_ROLES on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="N_IDROL" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDROL <> :new.N_IDROL
  THEN
    SELECT count(*) INTO NUMROWS
      FROM USUARIOS_ROLES
      WHERE
        /*  %JoinFKPK(USUARIOS_ROLES,:%Old," = "," AND") */
        USUARIOS_ROLES.N_IDROL = :old.N_IDROL;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_ROLES because USUARIOS_ROLES exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_TC_USUARIOS AFTER DELETE ON TC_USUARIOS for each row
-- ERwin Builtin Trigger
-- DELETE trigger on TC_USUARIOS 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  OU_USUARIOS on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00063080", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM OU_USUARIOS
      WHERE
        /*  %JoinFKPK(OU_USUARIOS,:%Old," = "," AND") */
        OU_USUARIOS.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_USUARIOS because OU_USUARIOS exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  EMPPART_USUARIOS on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPPART_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM EMPPART_USUARIOS
      WHERE
        /*  %JoinFKPK(EMPPART_USUARIOS,:%Old," = "," AND") */
        EMPPART_USUARIOS.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_USUARIOS because EMPPART_USUARIOS exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  PUBLICO_USUARIO on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="PUBLICO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM PUBLICO_USUARIO
      WHERE
        /*  %JoinFKPK(PUBLICO_USUARIO,:%Old," = "," AND") */
        PUBLICO_USUARIO.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_USUARIOS because PUBLICO_USUARIO exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  ALUMNO_USUARIO on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="ALUMNO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM ALUMNO_USUARIO
      WHERE
        /*  %JoinFKPK(ALUMNO_USUARIO,:%Old," = "," AND") */
        ALUMNO_USUARIO.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_USUARIOS because ALUMNO_USUARIO exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  EMPLEADO_USUARIO on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPLEADO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM EMPLEADO_USUARIO
      WHERE
        /*  %JoinFKPK(EMPLEADO_USUARIO,:%Old," = "," AND") */
        EMPLEADO_USUARIO.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_USUARIOS because EMPLEADO_USUARIO exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  USUARIOS_ROLES on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM USUARIOS_ROLES
      WHERE
        /*  %JoinFKPK(USUARIOS_ROLES,:%Old," = "," AND") */
        USUARIOS_ROLES.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TC_USUARIOS because USUARIOS_ROLES exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_TC_USUARIOS AFTER UPDATE ON TC_USUARIOS for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on TC_USUARIOS 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  OU_USUARIOS on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00071c1c", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="N_IDUSUARIO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDUSUARIO <> :new.N_IDUSUARIO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM OU_USUARIOS
      WHERE
        /*  %JoinFKPK(OU_USUARIOS,:%Old," = "," AND") */
        OU_USUARIOS.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_USUARIOS because OU_USUARIOS exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  EMPPART_USUARIOS on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPPART_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="N_IDUSUARIO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDUSUARIO <> :new.N_IDUSUARIO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM EMPPART_USUARIOS
      WHERE
        /*  %JoinFKPK(EMPPART_USUARIOS,:%Old," = "," AND") */
        EMPPART_USUARIOS.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_USUARIOS because EMPPART_USUARIOS exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  PUBLICO_USUARIO on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="PUBLICO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="N_IDUSUARIO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDUSUARIO <> :new.N_IDUSUARIO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM PUBLICO_USUARIO
      WHERE
        /*  %JoinFKPK(PUBLICO_USUARIO,:%Old," = "," AND") */
        PUBLICO_USUARIO.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_USUARIOS because PUBLICO_USUARIO exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  ALUMNO_USUARIO on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="ALUMNO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="N_IDUSUARIO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDUSUARIO <> :new.N_IDUSUARIO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM ALUMNO_USUARIO
      WHERE
        /*  %JoinFKPK(ALUMNO_USUARIO,:%Old," = "," AND") */
        ALUMNO_USUARIO.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_USUARIOS because ALUMNO_USUARIO exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  EMPLEADO_USUARIO on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="EMPLEADO_USUARIO"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="N_IDUSUARIO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDUSUARIO <> :new.N_IDUSUARIO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM EMPLEADO_USUARIO
      WHERE
        /*  %JoinFKPK(EMPLEADO_USUARIO,:%Old," = "," AND") */
        EMPLEADO_USUARIO.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_USUARIOS because EMPLEADO_USUARIO exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  USUARIOS_ROLES on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="N_IDUSUARIO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDUSUARIO <> :new.N_IDUSUARIO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM USUARIOS_ROLES
      WHERE
        /*  %JoinFKPK(USUARIOS_ROLES,:%Old," = "," AND") */
        USUARIOS_ROLES.N_IDUSUARIO = :old.N_IDUSUARIO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TC_USUARIOS because USUARIOS_ROLES exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_TW_APLICACION BEFORE INSERT ON TW_APLICACION for each row
-- ERwin Builtin Trigger
-- INSERT trigger on TW_APLICACION 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TW_APLICACION  TW_APLICACION on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000f441", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="TW_APLICACION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="PARENT" */
    UPDATE TW_APLICACION
      SET
        /* %SetFK(TW_APLICACION,NULL) */
        TW_APLICACION.PARENT = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM TW_APLICACION
            WHERE
              /* %JoinFKPK(:%New,TW_APLICACION," = "," AND") */
              :new.PARENT = TW_APLICACION.N_IDAPP
        ) 
        /* %JoinPKPK(TW_APLICACION,:%New," = "," AND") */
         and TW_APLICACION.N_IDAPP = :new.N_IDAPP;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_TW_APLICACION AFTER DELETE ON TW_APLICACION for each row
-- ERwin Builtin Trigger
-- DELETE trigger on TW_APLICACION 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TW_APLICACION  PERMISOS_APPS on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001c45c", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="N_IDAPP" */
    SELECT count(*) INTO NUMROWS
      FROM PERMISOS_APPS
      WHERE
        /*  %JoinFKPK(PERMISOS_APPS,:%Old," = "," AND") */
        PERMISOS_APPS.N_IDAPP = :old.N_IDAPP;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete TW_APLICACION because PERMISOS_APPS exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TW_APLICACION  TW_APLICACION on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="TW_APLICACION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="PARENT" */
    UPDATE TW_APLICACION
      SET
        /* %SetFK(TW_APLICACION,NULL) */
        TW_APLICACION.PARENT = NULL
      WHERE
        /* %JoinFKPK(TW_APLICACION,:%Old," = "," AND") */
        TW_APLICACION.PARENT = :old.N_IDAPP;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_TW_APLICACION AFTER UPDATE ON TW_APLICACION for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on TW_APLICACION 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* TW_APLICACION  PERMISOS_APPS on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000328d5", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="PERMISOS_APPS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="N_IDAPP" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDAPP <> :new.N_IDAPP
  THEN
    SELECT count(*) INTO NUMROWS
      FROM PERMISOS_APPS
      WHERE
        /*  %JoinFKPK(PERMISOS_APPS,:%Old," = "," AND") */
        PERMISOS_APPS.N_IDAPP = :old.N_IDAPP;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update TW_APLICACION because PERMISOS_APPS exists.'
      );
    END IF;
  END IF;

  /* TW_APLICACION  TW_APLICACION on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="TW_APLICACION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="PARENT" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDAPP <> :new.N_IDAPP
  THEN
    UPDATE TW_APLICACION
      SET
        /* %SetFK(TW_APLICACION,NULL) */
        TW_APLICACION.PARENT = NULL
      WHERE
        /* %JoinFKPK(TW_APLICACION,:%Old," = ",",") */
        TW_APLICACION.PARENT = :old.N_IDAPP;
  END IF;

  /* ERwin Builtin Trigger */
  /* TW_APLICACION  TW_APLICACION on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TW_APLICACION"
    CHILD_OWNER="", CHILD_TABLE="TW_APLICACION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="PARENT" */
  SELECT count(*) INTO NUMROWS
    FROM TW_APLICACION
    WHERE
      /* %JoinFKPK(:%New,TW_APLICACION," = "," AND") */
      :new.PARENT = TW_APLICACION.N_IDAPP;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.PARENT IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update TW_APLICACION because TW_APLICACION does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_UNIDAD_ORGANIZACIONAL BEFORE INSERT ON UNIDAD_ORGANIZACIONAL for each row
-- ERwin Builtin Trigger
-- INSERT trigger on UNIDAD_ORGANIZACIONAL 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* UNIDAD_ORGANIZACIONAL  UNIDAD_ORGANIZACIONAL on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="00012a4b", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="UNIDAD_ORGANIZACIONAL"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="PARENT_CCT" */
    UPDATE UNIDAD_ORGANIZACIONAL
      SET
        /* %SetFK(UNIDAD_ORGANIZACIONAL,NULL) */
        UNIDAD_ORGANIZACIONAL.PARENT_CCT = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM UNIDAD_ORGANIZACIONAL
            WHERE
              /* %JoinFKPK(:%New,UNIDAD_ORGANIZACIONAL," = "," AND") */
              :new.PARENT_CCT = UNIDAD_ORGANIZACIONAL.S_CCT
        ) 
        /* %JoinPKPK(UNIDAD_ORGANIZACIONAL,:%New," = "," AND") */
         and UNIDAD_ORGANIZACIONAL.S_CCT = :new.S_CCT;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_UNIDAD_ORGANIZACIONAL AFTER DELETE ON UNIDAD_ORGANIZACIONAL for each row
-- ERwin Builtin Trigger
-- DELETE trigger on UNIDAD_ORGANIZACIONAL 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* UNIDAD_ORGANIZACIONAL  OU_USUARIOS on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001e39c", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="S_CCT" */
    SELECT count(*) INTO NUMROWS
      FROM OU_USUARIOS
      WHERE
        /*  %JoinFKPK(OU_USUARIOS,:%Old," = "," AND") */
        OU_USUARIOS.S_CCT = :old.S_CCT;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete UNIDAD_ORGANIZACIONAL because OU_USUARIOS exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* UNIDAD_ORGANIZACIONAL  UNIDAD_ORGANIZACIONAL on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="UNIDAD_ORGANIZACIONAL"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="PARENT_CCT" */
    UPDATE UNIDAD_ORGANIZACIONAL
      SET
        /* %SetFK(UNIDAD_ORGANIZACIONAL,NULL) */
        UNIDAD_ORGANIZACIONAL.PARENT_CCT = NULL
      WHERE
        /* %JoinFKPK(UNIDAD_ORGANIZACIONAL,:%Old," = "," AND") */
        UNIDAD_ORGANIZACIONAL.PARENT_CCT = :old.S_CCT;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_UNIDAD_ORGANIZACIONAL AFTER UPDATE ON UNIDAD_ORGANIZACIONAL for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on UNIDAD_ORGANIZACIONAL 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* UNIDAD_ORGANIZACIONAL  OU_USUARIOS on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00036d36", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="OU_USUARIOS"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="S_CCT" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.S_CCT <> :new.S_CCT
  THEN
    SELECT count(*) INTO NUMROWS
      FROM OU_USUARIOS
      WHERE
        /*  %JoinFKPK(OU_USUARIOS,:%Old," = "," AND") */
        OU_USUARIOS.S_CCT = :old.S_CCT;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update UNIDAD_ORGANIZACIONAL because OU_USUARIOS exists.'
      );
    END IF;
  END IF;

  /* UNIDAD_ORGANIZACIONAL  UNIDAD_ORGANIZACIONAL on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="UNIDAD_ORGANIZACIONAL"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="PARENT_CCT" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.S_CCT <> :new.S_CCT
  THEN
    UPDATE UNIDAD_ORGANIZACIONAL
      SET
        /* %SetFK(UNIDAD_ORGANIZACIONAL,NULL) */
        UNIDAD_ORGANIZACIONAL.PARENT_CCT = NULL
      WHERE
        /* %JoinFKPK(UNIDAD_ORGANIZACIONAL,:%Old," = ",",") */
        UNIDAD_ORGANIZACIONAL.PARENT_CCT = :old.S_CCT;
  END IF;

  /* ERwin Builtin Trigger */
  /* UNIDAD_ORGANIZACIONAL  UNIDAD_ORGANIZACIONAL on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="UNIDAD_ORGANIZACIONAL"
    CHILD_OWNER="", CHILD_TABLE="UNIDAD_ORGANIZACIONAL"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="PARENT_CCT" */
  SELECT count(*) INTO NUMROWS
    FROM UNIDAD_ORGANIZACIONAL
    WHERE
      /* %JoinFKPK(:%New,UNIDAD_ORGANIZACIONAL," = "," AND") */
      :new.PARENT_CCT = UNIDAD_ORGANIZACIONAL.S_CCT;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.PARENT_CCT IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update UNIDAD_ORGANIZACIONAL because UNIDAD_ORGANIZACIONAL does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_USUARIOS_ROLES BEFORE INSERT ON USUARIOS_ROLES for each row
-- ERwin Builtin Trigger
-- INSERT trigger on USUARIOS_ROLES 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* TC_ROLES  USUARIOS_ROLES on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="000206af", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="N_IDROL" */
    SELECT count(*) INTO NUMROWS
      FROM TC_ROLES
      WHERE
        /* %JoinFKPK(:%New,TC_ROLES," = "," AND") */
        :new.N_IDROL = TC_ROLES.N_IDROL;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert USUARIOS_ROLES because TC_ROLES does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* TC_USUARIOS  USUARIOS_ROLES on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="N_IDUSUARIO" */
    SELECT count(*) INTO NUMROWS
      FROM TC_USUARIOS
      WHERE
        /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
        :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert USUARIOS_ROLES because TC_USUARIOS does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_USUARIOS_ROLES AFTER DELETE ON USUARIOS_ROLES for each row
-- ERwin Builtin Trigger
-- DELETE trigger on USUARIOS_ROLES 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* USUARIOS_ROLES  SESION on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f46f", PARENT_OWNER="", PARENT_TABLE="USUARIOS_ROLES"
    CHILD_OWNER="", CHILD_TABLE="SESION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="N_IDUSUARIO""N_IDROL" */
    SELECT count(*) INTO NUMROWS
      FROM SESION
      WHERE
        /*  %JoinFKPK(SESION,:%Old," = "," AND") */
        SESION.N_IDUSUARIO = :old.N_IDUSUARIO AND
        SESION.N_IDROL = :old.N_IDROL;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete USUARIOS_ROLES because SESION exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_USUARIOS_ROLES AFTER UPDATE ON USUARIOS_ROLES for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on USUARIOS_ROLES 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* USUARIOS_ROLES  SESION on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000349c0", PARENT_OWNER="", PARENT_TABLE="USUARIOS_ROLES"
    CHILD_OWNER="", CHILD_TABLE="SESION"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="N_IDUSUARIO""N_IDROL" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.N_IDUSUARIO <> :new.N_IDUSUARIO OR 
    :old.N_IDROL <> :new.N_IDROL
  THEN
    SELECT count(*) INTO NUMROWS
      FROM SESION
      WHERE
        /*  %JoinFKPK(SESION,:%Old," = "," AND") */
        SESION.N_IDUSUARIO = :old.N_IDUSUARIO AND
        SESION.N_IDROL = :old.N_IDROL;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update USUARIOS_ROLES because SESION exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_ROLES  USUARIOS_ROLES on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_ROLES"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="N_IDROL" */
  SELECT count(*) INTO NUMROWS
    FROM TC_ROLES
    WHERE
      /* %JoinFKPK(:%New,TC_ROLES," = "," AND") */
      :new.N_IDROL = TC_ROLES.N_IDROL;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update USUARIOS_ROLES because TC_ROLES does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* TC_USUARIOS  USUARIOS_ROLES on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="TC_USUARIOS"
    CHILD_OWNER="", CHILD_TABLE="USUARIOS_ROLES"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="N_IDUSUARIO" */
  SELECT count(*) INTO NUMROWS
    FROM TC_USUARIOS
    WHERE
      /* %JoinFKPK(:%New,TC_USUARIOS," = "," AND") */
      :new.N_IDUSUARIO = TC_USUARIOS.N_IDUSUARIO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update USUARIOS_ROLES because TC_USUARIOS does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/

