-- Bases de datos, ejemplo del video 019: Más sobre relaciones ternarias
-- Por Nacho Cabanes. Video en: https://youtu.be/mvmCL9bl8mE

-- alumnos(id,nombre)
-- CP:id
--
-- profesores(id,nombre)
-- CP:id 
-- 
-- asignaturas(id,nombre)
-- CP:id
--
-- asistir(id_alumno,id_profesor,id_asignatura)
-- CP:id_alumno,id_profesor
-- CAlt:id_alumno,id_asignatura
-- CAj:id_alumno->alumnos
-- CAj:id_profesor->profesores
-- CAj:id_asignatura->asignaturas

.open alumnosProfesAsignaturas11M

CREATE TABLE alumnos(
    id NUMERIC(3) PRIMARY KEY, 
    nombre VARCHAR(50)
);

CREATE TABLE profesores(
    id NUMERIC(3) PRIMARY KEY, 
    nombre VARCHAR(60)
);

CREATE TABLE asignaturas(
    id NUMERIC(3) PRIMARY KEY, 
    nombre VARCHAR(60)
);

CREATE TABLE asistir(
    id_alumno NUMERIC(3), 
    id_profesor NUMERIC(3), 
    id_asignatura NUMERIC(3),
    PRIMARY KEY(id_alumno,id_profesor), 
    UNIQUE (id_alumno,id_asignatura),
    FOREIGN KEY(id_alumno) REFERENCES alumnos(id), 
    FOREIGN KEY(id_profesor) REFERENCES profesores(id), 
    FOREIGN KEY(id_asignatura) REFERENCES asignaturas(id)
);

INSERT INTO alumnos VALUES(111,"Alejandro");
INSERT INTO alumnos VALUES(112,"Carlos");

INSERT INTO profesores VALUES(501,"Prof.1");
INSERT INTO profesores VALUES(502,"Prof.2");

INSERT INTO asignaturas VALUES(1,"Bases de Datos");
INSERT INTO asignaturas VALUES(2,"Programación");

INSERT INTO asistir VALUES(111, 501, 1);
INSERT INTO asistir VALUES(111, 502, 2);
INSERT INTO asistir VALUES(112, 501, 1);
INSERT INTO asistir VALUES(112, 502, 2);

INSERT INTO asistir VALUES(111, 501, 3); -- Par alumno, profesor repetido
INSERT INTO asistir VALUES(111, 503, 2); -- Par alumno, asignatura repetido

SELECT alumnos.nombre, profesores.nombre, asignaturas.nombre
FROM alumnos, profesores, asignaturas, asistir
WHERE alumnos.id = id_alumno 
AND profesores.id = id_profesor
AND asignaturas.id = id_asignatura;
