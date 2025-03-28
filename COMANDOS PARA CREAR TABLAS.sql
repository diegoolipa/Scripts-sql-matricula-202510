CREATE TABLE GENEROS    (	
	ID_GENERO NUMBER , 
	NOMBRE_GENERO VARCHAR2(15) NOT NULL, 
	SIGLA VARCHAR2(2), 
	ORDEN NUMBER, 
	ESTADO CHAR(1), 
);

CREATE TABLE TIPO_DOCUMENTOS (
 	ID_TIPO_DOCUMENTO NUMBER PRIMARY KEY, 
	NOMBRE VARCHAR2(150) NOT NULL , 
	SIGLA VARCHAR2(5), 
	PAIS VARCHAR2(50), 
	CANTIDAD_DIGITOS NUMBER, 
	ORDEN NUMBER, 
	ESTADO CHAR(1)
);

CREATE TABLE PERSONAS (	
	ID_PERSONA NUMBER PRIMARY KEY, 
	ID_TIPO_DOCUMENTO NUMBER, 
	ID_GENERO NUMBER, 
	NOMBRES VARCHAR2(100) NOT NULL , 
	APELLIDO_PATERNO VARCHAR2(50) NOT NULL , 
	APELLIDO_MATERNO VARCHAR2(50) NOT NULL , 
	FECHA_NACIMIENTO DATE, 
	CELULAR NUMBER NOT NULL , 
	NUMERO_DOCUMENTO NUMBER NOT NULL, 
	CORREO VARCHAR2(150), 
	ESTADO CHAR(1),
	CONSTRAINT FK_TIPO_DOCUMENTOS_PERSONAS 
	FOREIGN KEY (ID_TIPO_DOCUMENTO)
	  REFERENCES TIPO_DOCUMENTOS(ID_TIPO_DOCUMENTO),
	  
	CONSTRAINT FK_GENEROS_PERSONAS 
	FOREIGN KEY (ID_GENERO)
	  REFERENCES GENEROS(ID_GENERO)
	);


	 
CREATE TABLE ESTUDIANTES(	
	ID_ESTUDIANTE NUMBER PRIMARY KEY, 
	ID_PERSONA NUMBER, 
	CODIGO_ESTUDIANTE NUMBER, 
	ESTADO CHAR(1),
	
	CONSTRAINT FK_PERSONAS_ESTUDIANTES
	FOREIGN KEY (ID_PERSONA)
	  REFERENCES PERSONAS(ID_PERSONA)
	);


CREATE TABLE PERSONALES (	
	ID_PERSONAL NUMBER PRIMARY KEY, 
	ID_PERSONA NUMBER, 
	CARGO VARCHAR2(100) NOT NULL , 
	TIPO_JORNADA VARCHAR2(50) NOT NULL , 
	SULEDO NUMBER(10,2) NOT NULL , 
	ESTADO CHAR(1), 
	FECHA_INICIO_CONTRATO DATE, 
	FECHA_FIN_CONRATO DATE,
	
	CONSTRAINT FK_PERSONAS_PERSONALES
	FOREIGN KEY (ID_PERSONA)
	  REFERENCES PERSONAS(ID_PERSONA)
	);




CREATE TABLE PROFESORES (	
	ID_PROFESOR NUMBER PRIMARY KEY, 
	ID_PERSONA NUMBER, 
	CARGO VARCHAR2(100), 
	TIPO_JORNADA VARCHAR2(100), 
	SUELDO NUMBER(7,2), 
	ESTADO CHAR(1), 
	FECHA_INICIO_CONTRATO DATE NOT NULL , 
	FECHA_FIN_CONTRATO DATE NOT NULL, 
	ID_USUARIO_REGISTRA NUMBER, 
	ID_USUARIO_ACTUALIZA NUMBER, 
	FECHA_REGISTRO DATE, 
	FECHA_ACTUALIZA DATE,
	
	CONSTRAINT FK_PERSONAS_PROFESORES
	FOREIGN KEY (ID_PERSONA)
	  REFERENCES PERSONAS(ID_PERSONA)
	);

