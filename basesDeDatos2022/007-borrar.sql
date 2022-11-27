-- Bases de datos, ejemplo del video 007: Borrado de datos con SQL (DELETE)
-- Por Nacho Cabanes. Video en: https://youtu.be/hYqjjzmMo1s


.open amistades
.tables
-- amigos   amigos2  amigos3

.schema amigos3
-- CREATE TABLE amigos3 (
--   codigo varchar(5) primary key,
--   nombre varchar(50),
--   email varchar(100),
--   edad numeric(3)
-- );

select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

insert into amigos3 (codigo, nombre) values ("p", "prueba");
select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||
-- p|prueba||

delete from amigos3 where codigo="p";
select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

delete from amigos3 where codigo="pqr";
select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||
