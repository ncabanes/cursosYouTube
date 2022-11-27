-- Bases de datos, ejemplo del video 005: Búsquedas sencillas en SQL
-- Por Nacho Cabanes. Video en: https://youtu.be/TPd_JMI-LyA


.open amistades

select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

.schema amigos3
-- CREATE TABLE amigos3 (
--   codigo varchar(5) primary key,
--   nombre varchar(50),
--   email varchar(100),
--   edad numeric(3)
-- );

select nombre, edad from amigos3;
-- Juan|27
-- Héctor|0
-- Antonio|
-- Vicente|26
-- Ada|

select * from amigos3 where nombre = "Ada";
-- d|Ada||

select * from amigos3 where edad >= 26;
-- j|Juan|juan@sucorreo.com|27
-- v|Vicente||26

select * from amigos3 where edad <> 26;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0

select * from amigos3 where edad >= 25 and edad <= 28;
-- j|Juan|juan@sucorreo.com|27
-- v|Vicente||26

select * from amigos3 where edad between 25 and 28;
-- j|Juan|juan@sucorreo.com|27
-- v|Vicente||26

select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

select * from amigos3 where email is not null;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0

select * from amigos3 where email is null;
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

select * from amigos3 where nombre like "%ctor";
-- h|Héctor||0

select * from amigos3 where nombre like "%n%";
-- j|Juan|juan@sucorreo.com|27
-- a|Antonio||
-- v|Vicente||26
