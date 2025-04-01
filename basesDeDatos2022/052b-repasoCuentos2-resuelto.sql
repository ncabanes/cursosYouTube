CREATE TABLE autores (
    codigo VARCHAR(8) PRIMARY KEY,
    nombre VARCHAR(60),
    anyoNacimiento NUMERIC(4),
    codigoPais VARCHAR(5)
);

INSERT INTO autores VALUES
('HG', 'Hermanos Grimm', 1785, 'DE'),
('HCA', 'Hans Christian Andersen', 1805, 'DK'),
('CP', 'Charles Perrault', 1628, 'FR'),
('JJ', 'Joseph Jacobs', 1854, 'GB'),
('OW', 'Oscar Wilde', 1854, 'IE'),
('RK', 'Rudyard Kipling', 1865, 'GB'),
('LC', 'Lewis Carroll', 1832, 'GB'),
('HHM', 'Héctor Hugh Munro', NULL, NULL),
('EAP', 'Edgar Allan Poe', 1809, 'US');

CREATE TABLE cuentos (    
    codigo NUMERIC(4) PRIMARY KEY,    
    titulo VARCHAR(100),    
    codigoAutor VARCHAR(8),
    edadRecomendada NUMERIC(3),    
    resumen VARCHAR(200)
);

INSERT INTO cuentos VALUES
(1, 'Blancanieves', 'HG', 6, 'Una princesa huye de su malvada madrastra y encuentra refugio con siete enanitos.'),
(2, 'Cenicienta', 'HG', 6, 'Una joven maltratada por su madrastra y hermanastras recibe la ayuda de su hada madrina y asiste al baile real.'),
(3, 'Hansel y Gretel', 'HG', 6, 'Dos hermanos son abandonados en el bosque y descubren una casa de jengibre habitada por una bruja malvada.'),
(4, 'La Bella Durmiente', 'HG', 6, 'Una princesa cae en un sueño profundo debido a una maldición y sólo puede despertar con el beso de un príncipe.'),
(5, 'El Gato con Botas', 'HG', 6, 'Un gato astuto y con botas ayuda a su amo a ganar fortuna y el amor de una princesa.'),
(6, 'El Patito Feo', 'HCA', 5, 'Un patito marginado por ser diferente finalmente se convierte en un hermoso cisne.'),
(7, 'La Sirenita', 'HCA', 7, 'Una sirena sacrifica su voz para volverse humana y estar con el príncipe que ama.'),
(8, 'El Soldadito de Plomo', 'HCA', 6, 'Un soldado de plomo con una sola pierna se embarca en una aventura para estar con una bailarina de papel.'),
(9, 'La Reina de las Nieves', 'HCA', 8, 'Una niña valiente emprende un viaje para rescatar a su amigo de la malvada Reina de las Nieves.'),
(10, 'El Traje Nuevo del Emperador', 'HCA', 6, 'Unos estafadores convencen a un emperador de que le han hecho un traje invisible para los tontos.'),
(11, 'La Cenicienta', 'CP', 6, 'Una joven maltratada por su madrastra y hermanastras recibe la ayuda de su hada madrina y asiste al baile real.'),
(12, 'Jack y las Habichuelas Mágicas', 'JJ', 6, 'Un niño intercambia una vaca por unas habichuelas mágicas que crecen hasta el cielo, llevándolo a un castillo habitado por un gigante.'),
(13, 'El Gigante Egoísta', 'OW', 6, 'Un gigante egoísta aprende la importancia de compartir cuando su jardín se convierte en un lugar de alegría para los niños.'),
(14, 'Rikki-Tikki-Tavi', 'RK', 7, 'Un valiente mangosta defiende a su familia humana de las cobras en un jardín en la India.'),
(15, 'Alicia en el País de las Maravillas', 'LC', 7, 'Una niña llamada Alicia cae por un agujero de conejo y entra en un mundo mágico lleno de personajes extraños y maravillosos.'),
(16, 'El Libro de la Selva', 'RK', 7, 'Un niño llamado Mowgli es criado por lobos en la selva y se enfrenta a varios desafíos mientras aprende a vivir entre los animales.'),
(17, 'Cómo se escribió la primera carta', 'RK', NULL, 'Un cuento sobre cómo los seres humanos descubrieron el arte de la escritura, contado de manera humorística y encantadora.'),
(18, 'El Corazón Delator', NULL, 12, 'Un hombre relata cómo cometió un asesinato, llevado por la obsesión con el ojo de su víctima, y su posterior confesión debido a su culpa y el constante latido del corazón de la víctima.');

-- 19. Muestra los títulos de los cuentos junto al nombre de su autor, enlazando las tablas con WHERE. 

SELECT titulo, nombre
FROM cuentos, autores
WHERE cuentos.codigoAutor = autores.codigo;

-- 20. Muestra los títulos de los cuentos junto al nombre de su autor, enlazando las tablas con JOIN. 

SELECT cuentos.titulo, autores.nombre
FROM cuentos INNER JOIN autores
ON cuentos.codigoAutor = autores.codigo;

-- 21. Muestra el nombre de cada autor, junto con la cantidad de cuentos que tenemos suyos, sólo para aquellos de los que tenemos cuentos.

SELECT autores.nombre, COUNT(*)
FROM cuentos INNER JOIN autores
ON cuentos.codigoAutor = autores.codigo
GROUP BY autores.nombre;

-- 22. Muestra el nombre de cada autor, junto con la cantidad de cuentos que tenemos suyos, incluyendo los autores de los que no tenemos cuentos.

-- Aproximación incorrecta

SELECT autores.nombre, COUNT(*)
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor
GROUP BY autores.nombre;

-- Ver nombres y títulos

SELECT autores.nombre, cuentos.titulo
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor;

-- Versión correcta

SELECT autores.nombre, COUNT(cuentos.codigo)
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor
GROUP BY autores.nombre;

-- 23. Muestra los títulos de los libros y los nombres de los autores. Deben aparecer todos los libros, incluso si no conocemos el autor.

SELECT cuentos.titulo, autores.nombre
FROM cuentos LEFT JOIN autores
ON cuentos.codigoAutor = autores.codigo;

-- 24. Muestra los títulos de los libros y los nombres de los autores. Deben aparecer todos los autores, incluso si no conocemos ningún libro suyo.

SELECT cuentos.titulo, autores.nombre
FROM cuentos RIGHT JOIN autores
ON cuentos.codigoAutor = autores.codigo;

SELECT cuentos.titulo, autores.nombre
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor;

-- 25. Muestra los títulos de los libros y los nombres de los autores. Deben aparecer todos los autores y todos los libros.

SELECT cuentos.titulo, autores.nombre
FROM cuentos FULL JOIN autores
ON cuentos.codigoAutor = autores.codigo;

-- 26. Título y edad recomendada de los cuentos de autores cuyo nombre empieza por H. 

SELECT titulo, edadRecomendada
FROM cuentos INNER JOIN autores
ON cuentos.codigoAutor = autores.codigo
WHERE UPPER(nombre) LIKE 'H%';

-- 27. Nombre de cada autor y cantidad de libros suyos, para los autores de los que tenemos 2 libros o más.

SELECT autores.nombre, COUNT(cuentos.codigo)
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor
GROUP BY autores.nombre
HAVING COUNT(cuentos.codigo) >= 2;

-- 28. Nombre de cada autor y cantidad de libros suyos cuya edad recomendada sea inferior a 10 años, para los autores de los que tenemos 2 libros o más en esas condiciones.

SELECT autores.nombre, COUNT(cuentos.codigo)
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor
WHERE edadRecomendada < 10
GROUP BY autores.nombre
HAVING COUNT(cuentos.codigo) >= 2;

-- 29. Nombre los autores de los que no tenemos libros, usando JOIN y COUNT.

SELECT autores.nombre
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor
GROUP BY autores.nombre
HAVING COUNT(cuentos.codigo) = 0;

-- 30. Nombre los autores de los que no tenemos libros, usando NULL.

SELECT autores.nombre
FROM autores LEFT JOIN cuentos
ON autores.codigo = cuentos.codigoAutor
WHERE cuentos.codigo IS NULL;


