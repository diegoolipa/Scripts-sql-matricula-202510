--Nombre: Diego Lipa Choque

SELECT * FROM PERSONAS p ;
SELECT * FROM GENEROS g ;
SELECT * FROM TIPO_DOCUMENTO td ;
SELECT * FROM ESTUDIANTES e ;
SELECT * FROM PROFESOR p ;
SELECT * FROM PERSONAL ;

--CREANDO LA TABLA PERSONAL;
CREATE TABLE personal(
	id_personal NUMBER PRIMARY KEY,
	id_persona NUMBER UNIQUE,
	cargo varchar2(100) NOT NULL,
	tipo_jornada varchar2(50) NOT NULL,
	suledo NUMBER(10,2) NOT NULL,
	estado char(1),
	fecha_inicio_contrato date,
	fecha_fin_conrato DATE,
	
	CONSTRAINT FK_PERSONAS_personal 
	FOREIGN KEY (id_persona)
	  REFERENCES PERSONAS(id_persona)
);

--corigiendo la tabla estudiante
ALTER TABLE ESTUDIANTES 
ADD CONSTRAINT fk_personas_estudiantes
FOREIGN KEY (id_persona)
REFERENCES personas(id_persona);





