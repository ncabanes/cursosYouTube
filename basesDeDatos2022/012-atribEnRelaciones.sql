-- Bases de datos, ejemplo del video 012: Atributos en las relaciones
-- Por Nacho Cabanes. Video en: https://youtu.be/zEK5EeA6_zE


.open cursosMM2

create table profesores(
  codigo varchar(5) primary key,
  nombre varchar(60)
);

create table cursos(
  codigo numeric(3) primary key,
  nombre varchar(50)
);

create table impartir(
  codprofesor varchar(5),
  codcurso numeric(3),
  tema numeric(2),
  primary key (codprofesor, codcurso, tema),
  foreign key(codprofesor) references profesor(codigo),
  foreign key(codcurso) references curso(codigo)
);

insert into profesores values("n", "Nacho");
insert into profesores values("j", "Javier");

insert into cursos values(101, "C#");
insert into cursos values(201, "PL/SQL");

insert into impartir values("n", 101, 1);
insert into impartir values("n", 201, 1);
insert into impartir values("n", 201, 2);
insert into impartir values("j", 201, 3);

.mode column

select * from cursos, impartir, profesores
where impartir.codprofesor = profesores.codigo
and impartir.codcurso = cursos.codigo;

-- codigo  nombre  codprofesor  codcurso  tema  codigo  nombre
-- ------  ------  -----------  --------  ----  ------  ------
-- 101     C#      n            101       1     n       Nacho
-- 201     PL/SQL  n            201       1     n       Nacho
-- 201     PL/SQL  n            201       2     n       Nacho
-- 201     PL/SQL  j            201       3     j       Javier
