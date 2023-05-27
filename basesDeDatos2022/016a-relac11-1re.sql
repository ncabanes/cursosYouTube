-- Bases de datos, ejemplo del video 016: Relaciones "uno a uno" (1:1)
-- Por Nacho Cabanes. Video en: https://youtu.be/MnhXnyxawc4

-- .open proyectos11b

--DIRECTOR(cod, nombre)
--CP: cod

--PROYECTO(cod, nombre, codDir)

--DIRIGIR(codDir, codPro)
--CP: codDir
--CAlt: codPro
--CAj: codDir -> Director

CREATE TABLE directores(
    cod VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(30)
);

CREATE TABLE proyectos(
    cod VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(40),
    codDir VARCHAR(15) UNIQUE NOT NULL
);


INSERT INTO directores VALUES("jl", "José López");
INSERT INTO directores VALUES("pr", "Pedro Ramírez");
INSERT INTO directores VALUES("ag", "Antonio Gómez");

INSERT INTO proyectos VALUES("1", "Proyecto 1", "jl");
INSERT INTO proyectos VALUES("1b", "Proyecto 1 para Linux", "pr");

INSERT INTO proyectos VALUES("2", "Proyecto 2", NULL); -- !!!

SELECT directores.nombre, proyectos.nombre
FROM directores, proyectos
WHERE proyectos.codDir = directores.cod;

-- José López|proyecto 1
-- Pedro Ramírez|proyecto 1 para Linux

