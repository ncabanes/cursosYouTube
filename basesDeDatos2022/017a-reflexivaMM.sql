-- Bases de datos, ejemplo del video 017: Relaciones reflexivas
-- Por Nacho Cabanes. Video en: https://youtu.be/pheGbJLpM5o

--equipos(cod, nombre)
-- CP: cod

--jugar(codEquipo1, codEquipo2, fecha)
-- CP: (codEquipo1, codEquipo2, fecha)
-- CAj: codEquipo1 -> equipos
-- CAj: codEquipo2 -> equipos

.open equiposReflex

create table equipos(
    cod varchar(3) primary key,
    nombre varchar(40)
);

create table jugar(
    codEquipo1 varchar(3),
    codEquipo2 varchar(3),
    fecha varchar(10),
    primary key (codEquipo1, codEquipo2, fecha),
    foreign key (codEquipo1) REFERENCES equipos(cod),
    foreign key (codEquipo2) REFERENCES equipos(cod)
);

insert into equipos values("do", "Dortmund");
insert into equipos values("ba", "Bayern");
insert into equipos values("du", "Düsseldorf");

insert into jugar values("do", "du", "2022-09-20");
insert into jugar values("do", "ba", "2022-10-18");
insert into jugar values("do", "du", "2022-10-20");

select e1.nombre, e2.nombre, fecha
from equipos e1, equipos e2, jugar
where codEquipo1 = e1.cod 
and codEquipo2 = e2.cod;
