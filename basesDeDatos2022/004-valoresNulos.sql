-- Bases de datos, ejemplo del video 004: Contacto con los valores nulos (NULL)
-- Por Nacho Cabanes. Video en: https://youtu.be/JzxwBlkNMrs

.open amistades

insert into amigos3 values("h", "Héctor", "", 0);
insert into amigos3 (codigo, nombre) values ("a", "Antonio");
insert into amigos3 (edad, nombre, codigo) values (26, "Vicente", "v");

select * from amigos3;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26

.mode column
.headers on
.nullvalue NULL
select * from amigos3;
-- codigo  nombre   email              edad
-- ------  -------  -----------------  ----
-- j       Juan     juan@sucorreo.com  27
-- h       Héctor                      0
-- a       Antonio  NULL               NULL
-- v       Vicente  NULL               26

insert into amigos3 values("a", "Ada", NULL, NULL);
-- Runtime error: UNIQUE constraint failed: amigos3.codigo (19)

insert into amigos3 values("d", "Ada", NULL, NULL);
select * from amigos3;
-- codigo  nombre   email              edad
-- ------  -------  -----------------  ----
-- j       Juan     juan@sucorreo.com  27
-- h       Héctor                      0
-- a       Antonio  NULL               NULL
-- v       Vicente  NULL               26
-- d       Ada      NULL               NULL
