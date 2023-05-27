-- Bases de datos, ejemplo del video 020: Generalizaciones
-- Por Nacho Cabanes. Video en: https://youtu.be/4VFBXX0HDcg

-- personas(codigo, nombre, direccion, email)
-- CP:codigo
--
-- estudiantes(codigoPersona, nivelDeEstudios)
-- CP:codigoPersona 
-- CAj:codigoPersona -> personas
-- 
-- profesores(codigoPersona, especialidad)
-- CP:codigoPersona
-- CAj:codigoPersona -> personas

.open generalizacionPEP

CREATE TABLE personas(
	codigo VARCHAR(12) PRIMARY KEY, 
	nombre VARCHAR(50),
	direccion VARCHAR(100),
	email VARCHAR(60)
);

CREATE TABLE estudiantes(
	codigoPersona VARCHAR(12) PRIMARY KEY,  
	nivelDeEstudios VARCHAR(20),
	FOREIGN KEY(codigoPersona) REFERENCES personas(codigo)
);

CREATE TABLE profesores(
	codigoPersona VARCHAR(12) PRIMARY KEY,  
	especialidad VARCHAR(15),
	FOREIGN KEY(codigoPersona) REFERENCES personas(codigo)
);

INSERT INTO personas VALUES("1234","José","Su calle","a@b.c");
INSERT INTO personas VALUES("1235","Josuah","Otra calle","b@b.c");
INSERT INTO personas VALUES("1236","Joe","Aquella calle","c@b.c");

INSERT INTO estudiantes VALUES("1234","Bachillerato");
INSERT INTO estudiantes VALUES("1235","Prueba de acceso");

INSERT INTO profesores VALUES("1236","Bases de datos");

SELECT *
FROM personas, estudiantes
WHERE estudiantes.codigoPersona = personas.codigo; 

SELECT nombre, email, especialidad
FROM personas, profesores
WHERE profesores.codigoPersona = personas.codigo; 
