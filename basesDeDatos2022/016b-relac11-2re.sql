-- Bases de datos, ejemplo del video 016: Relaciones "uno a uno" (1:1)
-- Por Nacho Cabanes. Video en: https://youtu.be/MnhXnyxawc4

-- .open proyectos11c

--DIRECTOR(codDir, nombreDir, codPro, nombrePro)
--CP: codDir
--CAlt: codPro

CREATE TABLE dirigir(
    codDir VARCHAR(15) PRIMARY KEY,
    nombreDir VARCHAR(30),
    codPro VARCHAR(10) UNIQUE NOT NULL,
    nombrePro VARCHAR(40)
);


INSERT INTO dirigir VALUES("jl", "José López", "1", "Proyecto 1");
INSERT INTO dirigir VALUES("pr", "Pedro Ramírez", "1b", "Proyecto 1 para Linux");

INSERT INTO dirigir VALUES("ag", "Antonio Gómez", "1", "Proyecto 1"); -- !!!
INSERT INTO dirigir VALUES("pr", "Pedro Ramírez", "2", "Proyecto 2"); -- !!!

SELECT dirigir.nombreDir, dirigir.nombrePro
FROM dirigir;

-- José López|proyecto 1
-- Pedro Ramírez|proyecto 1 para Linux

