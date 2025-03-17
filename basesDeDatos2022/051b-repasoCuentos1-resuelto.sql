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

-- 1. Muestra todos los datos de los cuentos. 

SELECT * FROM cuentos;

-- 2. Títulos de los cuentos, ordenados.

SELECT titulo FROM cuentos ORDER BY titulo;

-- 3. Códigos de los autores, sin duplicados.

-- Previo: con duplicados

SELECT codigoAutor FROM cuentos;

-- Definitivo: sin duplicados

SELECT DISTINCT codigoAutor FROM cuentos;

-- 4. Títulos de los cuentos adecuados para 7 años o menos. 

SELECT titulo FROM cuentos WHERE edadRecomendada <= 7;

-- 5. Títulos de los cuentos cuya edad recomendada no conozcamos. 

SELECT titulo FROM cuentos WHERE edadRecomendada IS NULL;

-- 6. Títulos de cuentos en cuyo resumen aparezca la palabra “princesa”.

SELECT titulo 
FROM cuentos 
WHERE resumen LIKE '%princesa%';

SELECT titulo 
FROM cuentos 
WHERE INSTR(resumen, 'princesa') > 0;

-- 7. Títulos de los cuentos para niños entre 5 y 7 años.

SELECT titulo FROM cuentos 
WHERE edadRecomendada >= 5 AND edadRecomendada <= 7;

SELECT titulo FROM cuentos 
WHERE edadRecomendada BETWEEN 5 AND 7;

-- 8. Títulos de los cuentos de los autores de código RK, EAP o LC. 

SELECT titulo FROM cuentos 
WHERE codigoAutor = 'RK' 
	OR codigoAutor = 'EAP' OR codigoAutor = 'LC';

SELECT titulo FROM cuentos 
WHERE codigoAutor IN ('RK', 'EAP', 'LC');

-- 9. Edad media recomendada de los cuentos. 

SELECT AVG(edadRecomendada) FROM cuentos;

-- 10. Cantidad de cuentos, cantidad de autores y cantidad de autores distintos.

SELECT COUNT(*) AS cuentos, 
	COUNT(codigoAutor) AS autores, 
	COUNT(DISTINCT codigoAutor) AS autoresDistintos
FROM cuentos;

-- 11. Código de cada autor y cantidad de cuentos suyos.

SELECT codigoAutor, COUNT(*)
FROM cuentos
GROUP BY codigoAutor;

-- 12. Ídem, para aquellos de los que conocemos al menos 2 cuentos.

SELECT codigoAutor, COUNT(*)
FROM cuentos
GROUP BY codigoAutor
HAVING COUNT(*) >= 2;

-- 13. Títulos que comiencen por A.

SELECT titulo FROM cuentos
WHERE titulo LIKE 'A%';

SELECT titulo FROM cuentos
WHERE INSTR(titulo, 'A') = 1;

SELECT titulo FROM cuentos
WHERE SUBSTR(titulo, 1, 1) = 'A';

-- 14. Títulos que tengan una A en su segunda letra (quizá en minúscula).

SELECT titulo FROM cuentos
WHERE UPPER(titulo) LIKE '_A%';

SELECT titulo FROM cuentos
WHERE INSTR(UPPER(titulo), 'A', 2) = 2;

SELECT titulo FROM cuentos
WHERE SUBSTR(UPPER(titulo), 2, 1) = 'A';

-- 15. Edad media recomendada de los cuentos, redondeada a un decimal. 

SELECT ROUND(AVG(edadRecomendada), 1) FROM cuentos;

-- 16. Títulos, sin espacios iniciales ni finales y reemplazando los espacios intermedios por guiones.

SELECT REPLACE(TRIM(titulo), ' ', '-') FROM cuentos;

-- 17. Títulos, alineados a la derecha a una anchura de 25 caracteres.

-- No en SQLite

SELECT LPAD(titulo, 25) FROM cuentos;

-- 18. Títulos y edades recomendadas, o el texto “Edad desconocida” cuando no la sepamos.

-- Formato de SQLite

SELECT titulo, IFNULL(edadRecomendada, 'Edad desconocida') FROM cuentos;

-- Formato de Oracle

SELECT titulo, NVL(TO_CHAR(edadRecomendada), 'Edad desconocida') FROM cuentos;
