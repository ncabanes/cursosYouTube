-- Bases de datos, ejemplo del video 008: Relaciones "1 a muchos" (1:M)
-- Por Nacho Cabanes. Video en: https://youtu.be/hhpVkCt7bLc

.open cursos1m

create table profesores(
  codigo varchar(5) primary key,
  nombre varchar(60),
  especialidad varchar(30)
);

create table cursos(
  codigo varchar(5) primary key,
  nombre varchar(50),
  codprofesor varchar(5)
);

insert into profesores values("n", "Nacho", "Prog");
insert into profesores values("j", "Javier", "BBDD");

insert into cursos values("cs", "C#", "n");
insert into cursos values("pl", "PL/SQL", "j");

select * from cursos, profesores;
-- cs|C#|n|n|Nacho|Prog
-- cs|C#|n|j|Javier|BBDD
-- pl|PL/SQL|j|n|Nacho|Prog
-- pl|PL/SQL|j|j|Javier|BBDD

select * from cursos, profesores
where cursos.codprofesor = profesores.codigo;
-- cs|C#|n|n|Nacho|Prog
-- pl|PL/SQL|j|j|Javier|BBDD

select * from cursos c, profesores p
where c.codprofesor = p.codigo;
-- cs|C#|n|n|Nacho|Prog
-- pl|PL/SQL|j|j|Javier|BBDD

select nombre from cursos c, profesores p
where c.codprofesor = p.codigo;
-- Parse error: ambiguous column name: nombre
--   select nombre from cursos c, profesores p where c.codprofesor = p.codigo;
--          ^--- error here

select cursos.nombre, profesores.nombre from cursos, profesores
where cursos.codprofesor = profesores.codigo;
-- C#|Nacho
-- PL/SQL|Javier

select c.nombre, p.nombre from cursos c, profesores p
where c.codprofesor = p.codigo;
-- C#|Nacho
-- PL/SQL|Javier

.mode column
select c.nombre, p.nombre from cursos c, profesores p
where c.codprofesor = p.codigo;
-- nombre  nombre
-- ------  ------
-- C#      Nacho
-- PL/SQL  Javier

select c.nombre as nombreCurso, p.nombre as nombreProf from cursos c, profesores p
where c.codprofesor = p.codigo;
-- nombreCurso  nombreProf
-- -----------  ----------
-- C#           Nacho
-- PL/SQL       Javier
