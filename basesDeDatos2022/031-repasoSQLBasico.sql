-- Bases de datos, ejemplo del video 031: Repaso de SQL Básico
-- Por Nacho Cabanes. Video en: https://youtu.be/JDFov8kUYNw

create table amigos (
  codigo varchar(5) primary key,
  nombre varchar(50),
  email varchar(100),
  edad numeric(3)
);

insert into amigos 
values('j', 'Juan', 'juan@sucorreo.com', 27);

select * from amigos;
-- j|Juan|juan@sucorreo.com|27

select nombre, edad from amigos;
-- Juan|27

select nombre, edad*2 from amigos;


-- Contacto con los valores nulos (NULL)

insert into amigos values('h', 'Héctor', '', 0);
insert into amigos (codigo, nombre) values ('a', 'Antonio');
insert into amigos (edad, nombre, codigo) values (26, 'Vicente', 'v');

select * from amigos;
-- codigo  nombre   email              edad
-- ------  -------  -----------------  ----
-- j       Juan     juan@sucorreo.com  27
-- h       Héctor                      0
-- a       Antonio  NULL               NULL
-- v       Vicente  NULL               26

insert into amigos values('a', 'Ada', NULL, NULL);
-- Runtime error: UNIQUE constraint failed: amigos.codigo (19)

insert into amigos values('d', 'Ada', NULL, NULL);
select * from amigos;
-- codigo  nombre   email              edad
-- ------  -------  -----------------  ----
-- j       Juan     juan@sucorreo.com  27
-- h       Héctor                      0
-- a       Antonio  NULL               NULL
-- v       Vicente  NULL               26
-- d       Ada      NULL               NULL


-- Búsquedas sencillas en SQL

select nombre, edad from amigos;
-- Juan|27
-- Héctor|0
-- Antonio|
-- Vicente|26
-- Ada|

select * from amigos where nombre = 'Ada';
-- d|Ada||

select * from amigos where edad >= 26;
-- j|Juan|juan@sucorreo.com|27
-- v|Vicente||26

select * from amigos where edad <> 26;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0

select * from amigos where edad >= 25 and edad <= 28;
-- j|Juan|juan@sucorreo.com|27
-- v|Vicente||26

select * from amigos where edad between 25 and 28;
-- j|Juan|juan@sucorreo.com|27
-- v|Vicente||26

select * from amigos;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

select * from amigos where email is not null;
-- j|Juan|juan@sucorreo.com|27
-- h|Héctor||0

select * from amigos where email is null;
-- a|Antonio||
-- v|Vicente||26
-- d|Ada||

select * from amigos where nombre like '%ctor';
-- h|Héctor||0

select * from amigos where nombre like '%n%';
-- j|Juan|juan@sucorreo.com|27
-- a|Antonio||
-- v|Vicente||26

create table hobbies (
  codigo varchar(2) primary key,
  nombre varchar(20)
);

insert into hobbies values('c', 'Ciclismo');
insert into hobbies values('gt', 'Gran Turismo');

create table hobbiesAmigos (
  codigoHobby varchar(2),
  codigoAmigo varchar(5),
  nivel numeric(1),
  primary key (codigoHobby, codigoAmigo),
  foreign key(codigoHobby) references hobbies(codigo),
  foreign key(codigoAmigo) references amigos(codigo)
);

insert into hobbiesAmigos values('c', 'v', 3);
insert into hobbiesAmigos values('gt', 'h', 4);

select amigos.nombre, hobbies.nombre, nivel
from amigos, hobbies, hobbiesAmigos;

-- nombre   nombre        nivel
-- -------  ------------  -----
-- Juan     Ciclismo      3
-- Juan     Ciclismo      4
-- Juan     Gran Turismo  3
-- Juan     Gran Turismo  4
-- Héctor   Ciclismo      3
-- Héctor   Ciclismo      4
-- Héctor   Gran Turismo  3
-- Héctor   Gran Turismo  4
-- Antonio  Ciclismo      3
-- Antonio  Ciclismo      4
-- Antonio  Gran Turismo  3
-- Antonio  Gran Turismo  4
-- Vicente  Ciclismo      3
-- Vicente  Ciclismo      4
-- Vicente  Gran Turismo  3
-- Vicente  Gran Turismo  4
-- Ada      Ciclismo      3
-- Ada      Ciclismo      4
-- Ada      Gran Turismo  3
-- Ada      Gran Turismo  4

select amigos.nombre, hobbies.nombre, nivel
from amigos, hobbies, hobbiesAmigos
where hobbiesAmigos.codigoHobby = hobbies.codigo
and hobbiesAmigos.codigoAmigo = amigos.codigo;

-- nombre   nombre        nivel
-- -------  ------------  -----
-- Vicente  Ciclismo      3
-- Héctor   Gran Turismo  4
