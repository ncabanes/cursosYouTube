-- Bases de datos, ejemplo del video 019: Más sobre relaciones ternarias
-- Por Nacho Cabanes. Video en: https://youtu.be/mvmCL9bl8mE

-- proyectos(id,nombre)
-- CP:id
--
-- directores(id,nombre)
-- CP:id 
-- 
-- empresas(id,nombre)
-- CP:id
--
-- dirigir(id_proyecto,id_director,id_empresa)
-- CP:id_proyecto,id_director,id_empresa
-- CAlt:id_proyecto,id_director,id_empresa
-- CAlt:id_proyecto,id_director,id_empresa
-- CAj:id_proyecto->proyectos
-- CAj:id_director->directores
-- CAj:id_empresa->empresas

.open proyectoDirectorEmpresa111

CREATE TABLE proyectos(
	id NUMERIC(3) PRIMARY KEY, 
	nombre VARCHAR(50)
);

CREATE TABLE directores(
	id NUMERIC(3) PRIMARY KEY, 
	nombre VARCHAR(60)
);

CREATE TABLE empresas(
	id NUMERIC(3) PRIMARY KEY, 
	nombre VARCHAR(60)
);

CREATE TABLE dirigir(
	id_proyecto NUMERIC(3), 
	id_director NUMERIC(3), 
	id_empresa NUMERIC(3),
	PRIMARY KEY(id_proyecto,id_empresa), 
	UNIQUE(id_proyecto,id_director), 
	UNIQUE(id_director,id_empresa), 
	FOREIGN KEY(id_proyecto) REFERENCES proyectos(id), 
	FOREIGN KEY(id_director) REFERENCES directores(id), 
	FOREIGN KEY(id_empresa) REFERENCES empresas(id)
);

INSERT INTO proyectos VALUES(111,"Proy 1");
INSERT INTO proyectos VALUES(112,"Proy 2");
INSERT INTO proyectos VALUES(113,"Proy 3");

INSERT INTO empresas VALUES(501,"Empre 1");
INSERT INTO empresas VALUES(502,"Empre 2");
INSERT INTO empresas VALUES(503,"Empre 3");

INSERT INTO directores VALUES(1,"Director 1");
INSERT INTO directores VALUES(2,"Director 2");
INSERT INTO directores VALUES(3,"Director 3");

INSERT INTO dirigir VALUES(111, 1, 501);
INSERT INTO dirigir VALUES(112, 2, 502);

INSERT INTO dirigir VALUES(111, 1, 503); -- !!!
INSERT INTO dirigir VALUES(111, 3, 501); -- !!!
INSERT INTO dirigir VALUES(113, 1, 501); -- !!!

SELECT proyectos.nombre, directores.nombre, empresas.nombre
FROM proyectos, directores, empresas, dirigir
WHERE proyectos.id = id_proyecto 
AND directores.id = id_director
AND empresas.id = id_empresa;
