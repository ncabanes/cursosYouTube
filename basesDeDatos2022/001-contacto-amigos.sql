-- Bases de datos, ejemplo del video 001: Contacto con las bases de datos
-- Por Nacho Cabanes. Video en: https://youtu.be/wD5J-urSU7M

.open amistades

create table amigos( nombre varchar(50), email varchar(100) );

insert into amigos values ("Juan", "juan@sucorreo.com");
insert into amigos values ("Jose", "jose@sucorreo.com");
insert into amigos values ("Antonio", "antonio@sucorreo.com");

select * from amigos;

-- Juan|juan@sucorreo.com
-- Jose|jose@sucorreo.com
-- Antonio|antonio@sucorreo.com
