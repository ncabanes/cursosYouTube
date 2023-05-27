-- Bases de datos, ejemplo del video 016: Relaciones "uno a uno" (1:1)
-- Por Nacho Cabanes. Video en: https://youtu.be/MnhXnyxawc4

-- .open proyectos11a

--DIRECTOR(cod, nombre)
--CP: cod

--PROYECTO(cod, nombre)
--CP: cod

--DIRIGIR(codDir, codPro)
--CP: codDir
--CAlt: codPro
--CAj: codDir -> Director
--CAj: codPro -> Proyecto

CREATE TABLE directores(
    cod VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(30)
);

CREATE TABLE proyectos(
    cod VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(40)
);

CREATE TABLE dirigir(
    codDir VARCHAR(15) PRIMARY KEY,
    codPro VARCHAR(10) UNIQUE NOT NULL,
    FOREIGN KEY (codDir) REFERENCES directores(cod),
    FOREIGN KEY (codPro) REFERENCES proyectos(cod)
);

INSERT INTO directores VALUES("jl", "José López");
INSERT INTO directores VALUES("pr", "Pedro Ramírez");
INSERT INTO directores VALUES("ag", "Antonio Gómez");

INSERT INTO proyectos VALUES("1", "Proyecto 1");
INSERT INTO proyectos VALUES("1b", "Proyecto 1 para Linux");
INSERT INTO proyectos VALUES("2", "Proyecto 2");

INSERT INTO dirigir VALUES("jl", "1");
INSERT INTO dirigir VALUES("pr", "1b");

INSERT INTO dirigir VALUES("jl", "2"); -- !!!
INSERT INTO dirigir VALUES("ag", "1"); -- !!!

SELECT directores.nombre, proyectos.nombre
FROM directores, proyectos, dirigir
WHERE dirigir.codDir = directores.cod
AND dirigir.codPro = proyectos.cod;

-- José López|proyecto 1
-- Pedro Ramírez|proyecto 1 para Linux

