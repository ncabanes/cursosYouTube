-- Bases de datos, datos de partida del video 050: Diez ejercicios de repaso de PL/SQL
-- Por Nacho Cabanes. Video en: https://youtu.be/wInD0vzILPk

CREATE TABLE empleados (
  codigo VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(30),
  antiguedadMeses NUMBER(4),
  codPuesto VARCHAR(5)
);

CREATE TABLE puestos (
  codigo VARCHAR(5),
  descripcion VARCHAR(20)
);

INSERT INTO puestos VALUES('pj','Programador Junior');
INSERT INTO puestos VALUES('ps','Programador Senior');
INSERT INTO puestos VALUES('sm','Scrum master');
INSERT INTO puestos VALUES('ceo','CEO');
INSERT INTO puestos VALUES('cto','CTO');

INSERT INTO empleados VALUES('js1','John Smith', 35, 'ps');
INSERT INTO empleados VALUES('js2','James Smith', 3, 'pj');
INSERT INTO empleados VALUES('aj1','Albert Jameson', 33, 'ps');
INSERT INTO empleados VALUES('as1','Anthony Stark', 27, 'a');
INSERT INTO empleados VALUES('gp','Guillermo Puertas', 136, 'ceo');
INSERT INTO empleados VALUES('ls1','Linus Smithson', NULL, NULL);
