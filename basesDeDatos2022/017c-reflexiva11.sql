-- Bases de datos, ejemplo del video 017: Relaciones reflexivas
-- Por Nacho Cabanes. Video en: https://youtu.be/pheGbJLpM5o

--Persona(DNI, Nombre, DNIconyuge)
-- CP: DNI
-- CAj: DNIconyuge --> Persona

--Casar(Dni1, Dni2)
-- CP: Dni1
-- CP: Dni2
-- CAj: Dni1 --> Persona
-- CAj: Dni2 --> Persona


.open matrimonio11nre;

create table personas(
	dni varchar(9) primary key,
	nombre varchar(50)
);

create table casar(
	dni1 varchar(9) primary key,
	dni2 varchar(9) unique not null,
	foreign key (dni1) references personas (dni)
	foreign key (dni2) references personas (dni)
);

insert into personas values("1", "Alvaro");
insert into personas values("2", "Irene");
insert into personas values("3", "Ramiro");

insert into casar values("2", "3");

insert into casar values("2", "1"); -- Código duplicado
insert into casar values("1", "3"); -- Cónyuge duplicado
insert into casar values("1", NULL); -- No debe ser NULL

select p1.nombre, p2.nombre
from personas p1, personas p2, casar
where casar.dni1 = p1.dni and casar.dni2 = p2.dni;

-- Irene|Ramiro
