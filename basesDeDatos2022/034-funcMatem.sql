-- Bases de datos, ejemplo del video 034: Funciones matemáticas
-- Por Nacho Cabanes. Video en: https://youtu.be/t47C5dSG-B

create table ventasZonas (
  codigoVendedor varchar(5) primary key,
  nombreVendedor varchar(50),
  zona varchar(10),
  total numeric(6, 2)
);

insert into ventasZonas values('j', 'Javier', 'Barcelona', 27.5);
insert into ventasZonas values('a', 'Anselmo', 'Madrid', 24);
insert into ventasZonas values('b', 'Basilio', 'Lima', NULL);
insert into ventasZonas values('m', 'Mario', 'Caracas', 32);
insert into ventasZonas values('c', 'César', 'Lima', 24);
insert into ventasZonas values('n', 'Nuria', 'Caracas', 32);
insert into ventasZonas values('p', 'Patricia', 'Lima', 32);

select total, total+10, total-10, total*10, total/10  
from ventasZonas;

select total, mod(total, 3), sqrt(total), power(total, 2), abs(total * -2)
from ventasZonas;

select total, round(total, 1), round(total, 0), round(total, -1)
from ventasZonas;

select total, trunc(total, 1), trunc(total, 0), trunc(total, -1)
from ventasZonas;

select total, trunc(total) from ventasZonas;
