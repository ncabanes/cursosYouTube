-- Bases de datos, ejemplo del video 014: Restricción de identificador
-- Por Nacho Cabanes. Video en: https://youtu.be/uHb86cSZ2qM

.open FacturasV1

--Facturas(num, cliente, fecha)
--CP: num
--Lineas(numFactura, numLinea, concepto, cantidad, precio)
--CP: numFactura, numLinea
--CAj: numFactura -> Facturas

CREATE TABLE Facturas(
    num NUMERIC(5) primary key,
    cliente VARCHAR(30),
    fecha VARCHAR(10)
);

CREATE TABLE Lineas(
    numFactura NUMERIC(5),
    numLinea NUMERIC(5),
    concepto VARCHAR(30),
    cantidad NUMERIC(6,2),
    precio NUMERIC(6,2),
    PRIMARY KEY (numFactura, numLinea),
    FOREIGN KEY (numFactura) REFERENCES Facturas(num)
);

INSERT INTO Facturas VALUES(1, "Enrique Catedrales", "2022-10-16");
INSERT INTO Facturas VALUES(2, "Selena Martínez", "2022-10-17");

INSERT INTO Lineas VALUES(1, 1, "Artículo 101", 1, 19.99);
INSERT INTO Lineas VALUES(1, 2, "Artículo 105", 2, 5);
INSERT INTO Lineas VALUES(1, 3, "Artículo 107", 2, 4);
INSERT INTO Lineas VALUES(2, 1, "Artículo 105", 1, 30);
INSERT INTO Lineas VALUES(2, 2, "Artículo 112", 1, 20);

.mode column

SELECT f.num, cliente, fecha, 
    cantidad, precio, cantidad * precio AS total
FROM Facturas f, Lineas l
WHERE f.num = l.numFactura;

-- num  cliente          fecha        cantidad  precio   total
-- ---  -----------------  ----------  ---------  -----  -----
-- 1    Enrique Rodriguez  2022-10-16  1          19.99  19.99
-- 1    Enrique Rodriguez  2022-10-16  2          5      10
-- 1    Enrique Rodriguez  2022-10-16  2          4      8
-- 2    Selena Torres      2022-10-17  1          30     30
-- 2    Selena Torres      2022-10-17  1          20     20
