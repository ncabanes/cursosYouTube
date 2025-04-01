CREATE TABLE paises (
    codigo VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR(40)
);

INSERT INTO paises VALUES ('DE', 'Alemania');
INSERT INTO paises VALUES ('DK', 'Dinamarca');
INSERT INTO paises VALUES ('FR', 'Francia');
INSERT INTO paises VALUES ('GB', 'Reino Unido');
INSERT INTO paises VALUES ('IE', 'Irlanda');
INSERT INTO paises VALUES ('IT', 'Italia');
INSERT INTO paises VALUES ('US', 'Estados Unidos de América');


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

INSERT INTO cuentos VALUES (19, 'Dinamarca', NULL, NULL, NULL);

-- 43. Modifica el cuento de código 18, para indicar que el código de su autor es el que corresponde al autor llamado "Edgar Allan Poe".

UPDATE cuentos SET codigoAutor = 
(SELECT codigo FROM autores WHERE nombre = 'Edgar Allan Poe')
WHERE codigo = 18;

SELECT * FROM cuentos WHERE codigo = 18;

-- 44. Modifica la tabla de autores para añadir la comprobación de que el año sea posterior a 1200.

ALTER TABLE autores
ADD CONSTRAINT chk_autores_anyo CHECK (anyoNacimiento > 1200);

-- 45. Crea una vista v_cuentos que muestre el título de cada libro, la edad recomendada y (si se conoce) el nombre del autor.

CREATE VIEW v_cuentos AS
	SELECT titulo, edadRecomendada, a.nombre AS autor
	FROM cuentos c LEFT JOIN autores a 
	ON c.codigoAutor = a.codigo;

SELECT * FROM v_cuentos;

-- 46. Usando esa vista, muestra la cantidad de libros que tenemos sin autor. Usa el alias "cantidad".

SELECT COUNT(*) AS cantidad 
FROM v_cuentos 
WHERE autor IS NULL;

-- 47. Añade un índice a la tabla de cuentos, para que la búsqueda por título sea más rápida.

CREATE INDEX idx_cuentos_titulo ON cuentos(titulo);

-- 48. Crea una tabla "relatos", en la que anotaremos otros relatos de misterio o de temáticas menos adecuadas para niños. De cada relato querremos un código alfanumérico, que actuará como clave primaria (de exactamente 5 letras), un título (hasta 50 letras, único), una cantidad de páginas (de no más de 4 cifras) y un código de autor (no nulo y que actuará como clave ajena a la tabla de autores). Usa sintaxis de Oracle (incluyendo "constraints" con nombre).

CREATE TABLE relatos (
    codigo CHAR(5),
    titulo VARCHAR2(50),
    paginas NUMBER(4),
    codigoAutor VARCHAR2(8) NOT NULL,
    CONSTRAINT pk_relatos PRIMARY KEY (codigo),
    CONSTRAINT uk_relatos_titulo UNIQUE (titulo),
    CONSTRAINT fk_relatos_autores FOREIGN KEY (codigoAutor) 
		REFERENCES autores(codigo)
);

-- 49. Añade a la tabla "relatos" el llamado "Los crímenes de la calle Morgue" (código "LCCM"), de Edgar Allan Poe (código de autor "EAP"), y cuya cantidad de páginas no conocemos. No debes usar NULL al introducir el dato. Añade otro segundo relato, inventado por ti, sin detallar los nombres de los campos.

INSERT INTO relatos (codigo, titulo, codigoAutor)
VALUES ('LCCM', 'Los crímenes de la calle Morgue', 'EAP');

INSERT INTO relatos
VALUES ('ZZZ1', 'Relato Inventado', NULL, 'EAP');

-- 50. Modifica el relato de código LCCM para indicar que tiene 40 páginas.

UPDATE relatos SET paginas = 40 WHERE codigo = 'LCCM';

-- 51. Borra el relato inventado por ti, a partir de su título.

DELETE FROM relatos WHERE codigo = 'ZZZ1';

-- 52. Vuelca el título de cada relato y su autor a una nueva tabla llamada "relatosYautores".

CREATE TABLE relatosYautores AS
    SELECT r.titulo, a.nombre AS autor
    FROM relatos r
    JOIN autores a ON r.codigoAutor = a.codigo;

SELECT * FROM relatosYautores;

-- 53. Añade a la tabla "relatosYautores" un nuevo campo, una valoración numérica, que irá de 0.0 a 10.0 (con una cifra decimal). Añade otro campo de tipo fecha, que sea la fecha de publicación.

ALTER TABLE relatosYautores
ADD valoracion NUMBER(3, 1);

ALTER TABLE relatosYautores
ADD fecha_publicacion DATE;

-- 54. Modifica esa tabla para que tenga la restricción de que la valoración debe ser menor o igual que 10.

ALTER TABLE relatosYautores
ADD CONSTRAINT chk_valoracion CHECK (valoracion <= 10.0);

-- 55. Borra ese campo de fecha de publicación de la tabla "relatosYautores".

ALTER TABLE relatosYautores
DROP (fecha_publicacion);

-- 56. Vacía el contenido de la tabla "relatosYautores", conservando su estructura.

TRUNCATE TABLE relatosYautores;

-- 57. Elimina por completo la tabla "relatosYautores".

DROP TABLE relatosYautores;

-- 58. Modifica todas las edades recomendadas de los cuentos, para incrementar todas ellas en una unidad.

UPDATE cuentos SET edadRecomendada = edadRecomendada + 1;
