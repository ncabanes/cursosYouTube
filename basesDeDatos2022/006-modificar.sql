-- Bases de datos, ejemplo del video 006: Modificación de datos con SQL (UPDATE)
-- Por Nacho Cabanes. Video en: https://youtu.be/GBWS2bFAkbU


.open amistades
.tables
-- amigos   amigos2  amigos3

select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

update amigos3 set edad = 24 where codigo = "h";
select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||24
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

update amigos3 set edad = 23, email = "hector@sucorreo.com" where codigo = "h";
select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor|hector@sucorreo.com|23
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||
