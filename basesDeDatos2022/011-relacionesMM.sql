-- Bases de datos, ejemplo del video 011: Relaciones "muchos a muchos"
-- Por Nacho Cabanes. Video en: https://youtu.be/Ge8TpzoRtqk

.open cursosMM

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
  primary key (codprofesor, codcurso),
  foreign key(codprofesor) references profesor(codigo),
  foreign key(codcurso) references curso(codigo)
);

insert into profesores values("n", "Nacho");
insert into profesores values("j", "Javier");

insert into cursos values(1, "C#");
insert into cursos values(2, "PL/SQL");

insert into impartir values("n", 1);
insert into impartir values("n", 2);
insert into impartir values("j", 2);

select * from cursos, impartir, profesores;

-- 1|C#|n|1|n|Nacho
-- 1|C#|n|1|j|Javier
-- 1|C#|n|2|n|Nacho
-- 1|C#|n|2|j|Javier
-- 1|C#|j|2|n|Nacho
-- 1|C#|j|2|j|Javier
-- 2|PL/SQL|n|1|n|Nacho
-- 2|PL/SQL|n|1|j|Javier
-- 2|PL/SQL|n|2|n|Nacho
-- 2|PL/SQL|n|2|j|Javier
-- 2|PL/SQL|j|2|n|Nacho
-- 2|PL/SQL|j|2|j|Javier

select * from cursos, impartir, profesores
where impartir.codprofesor = profesores.codigo
and impartir.codcurso = cursos.codigo;

-- 1|C#|n|1|n|Nacho
-- 2|PL/SQL|n|2|n|Nacho
-- 2|PL/SQL|j|2|j|Javier
