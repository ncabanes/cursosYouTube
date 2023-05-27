-- Bases de datos, ejemplo del video 023: Más de una relación entre dos entidades
-- Por Nacho Cabanes. Video en: https://youtu.be/xHBBUVLV3Hs

-- Autor(codigo, nombre)
-- CP: codigo

-- Libro(codigo, titulo, codigoRevisor)
-- CP: codigo
-- CAj: codigoRevisor --> Autor

-- Escribir(codigoAutor, codigoLibro)
-- CP: (codigoAutor, codigoLibro)
-- CAj: codigoAutor --> Autor
-- CAj: codigoLibro --> Libro

CREATE TABLE autores(
	codigo VARCHAR(12) PRIMARY KEY,  
	nombre VARCHAR(30)
);

CREATE TABLE libros(
	codigo NUMERIC(6) PRIMARY KEY,  
	titulo VARCHAR(50),
	codigoRevisor VARCHAR(12),
	FOREIGN KEY(codigoRevisor) REFERENCES autores(codigo)
);

CREATE TABLE escribir(
	codigoAutor VARCHAR(12),
	codigoLibro NUMERIC(6),
	PRIMARY KEY (codigoAutor, codigoLibro),
	FOREIGN KEY(codigoAutor) REFERENCES autores(codigo),
	FOREIGN KEY(codigoLibro) REFERENCES libros(codigo)
);

INSERT INTO autores VALUES ("a", "Andrés");
INSERT INTO autores VALUES ("b", "Bartolo");

INSERT INTO libros VALUES (1, "Libro 1", "a");
INSERT INTO libros VALUES (2, "Libro 2", "b");

INSERT INTO escribir VALUES ("a", 1);
INSERT INTO escribir VALUES ("b", 1);
INSERT INTO escribir VALUES ("a", 2);

.mode column

-- libros y revisores

SELECT libros.titulo, autores.nombre as revisor
FROM autores, libros
WHERE libros.codigoRevisor = autores.codigo;

-- libros y autores

SELECT autores.nombre as autor, libros.titulo 
FROM autores, libros, escribir
WHERE libros.codigo = escribir.codigoLibro
  AND autores.codigo = escribir.codigoAutor;

-- libros, autores y revisores

SELECT autor.nombre as nombreAutor, 
  revisor.nombre as nombrerevisor, 
  titulo
FROM autores autor, autores revisor, libros, escribir
WHERE escribir.codigoLibro = libros.codigo
  AND escribir.codigoAutor = autor.codigo
  AND libros.codigoRevisor = revisor.codigo;
