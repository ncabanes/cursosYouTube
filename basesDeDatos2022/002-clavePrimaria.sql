-- Bases de datos, ejemplo del video 002: Contacto con las claves primarias
-- Por Nacho Cabanes. Video en: https://youtu.be/0W2ouRnxV7c

.open amistades

.tables
-- amigos

create table amigos2 (
	codigo varchar(5) primary key,
	nombre varchar(50),
	email varchar(100)
);

insert into amigos2 values ("j", "Juan", "juan@sucorreo.com");
select * from amigos2;
-- j|Juan|juan@sucorreo.com

insert into amigos2 values ("j", "Juan Carlos", "juancarlos@sucorreo.com");
-- Runtime error: UNIQUE constraint failed: amigos2.codigo (19)

insert into amigos values ("Juan", "juan@sucorreo.com");
select * from amigos;
-- Juan|juan@sucorreo.com
-- Jose|jose@sucorreo.com
-- Antonio|antonio@sucorreo.com
-- Juan|juan@sucorreo.com
