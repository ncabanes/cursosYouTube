-- Bases de datos, ejemplo del video 003: Datos numéricos
-- Por Nacho Cabanes. Video en: https://youtu.be/BwY9zFfJ1Zc

.open amistades
.tables
-- amigos   amigos2
create table amigos3 (
  codigo varchar(5) primary key,
  nombre varchar(50),
  email varchar(100),
  edad numeric(3)
);

insert into amigos3 
values("j", "Juan", "juan@sucorreo.com", 27);

select * from amigos3;
-- j|Juan|juan@sucorreo.com|27

select nombre, edad from amigos3;
-- Juan|27

select nombre, edad*2 from amigos3;
-- Juan|54
