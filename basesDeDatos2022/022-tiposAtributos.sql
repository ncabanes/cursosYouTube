-- Bases de datos, ejemplo del video 022: Tipos de atributos
-- Por Nacho Cabanes. Video en: https://youtu.be/Up0f_4r1A5w

CREATE TABLE personas(
  codigo VARCHAR(5) PRIMARY KEY,
  nombre VARCHAR(60) NOT NULL,
  calle  VARCHAR(40),
  numero NUMERIC(4),
  ciudad VARCHAR(30)
);

CREATE TABLE telefonos (
  codPersona VARCHAR(5),
  numero VARCHAR(15),
  PRIMARY KEY (codPersona , numero ),
  FOREIGN KEY (codPersona) REFERENCES personas(codigo)
);

INSERT INTO personas VALUES("1", "Manuel", "Su calle", 20, "Madrid");
INSERT INTO personas VALUES("2", "María", "Otra calle", 31, "Lima");

INSERT INTO telefonos VALUES("1", "111 22 33");
INSERT INTO telefonos VALUES("2", "111 22 44");
INSERT INTO telefonos VALUES("2", "111 22 55");

SELECT nombre, ciudad, telefonos.numero
FROM personas, telefonos
WHERE telefonos.codPersona = personas.codigo; 
