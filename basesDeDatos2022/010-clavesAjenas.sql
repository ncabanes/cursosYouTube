-- Bases de datos, ejemplo del video 010: Claves ajenas
-- Por Nacho Cabanes. Video en: https://youtu.be/S3ud5qfYMgs

.open cursos1mFk

create table profesores(
  codigo varchar(5) primary key,
  nombre varchar(60),
  especialidad varchar(30)
);

create table cursos(
  codigo varchar(5),
  nombre varchar(50),
  codprofesor varchar(5),
  primary key (codigo),
  foreign key(codprofesor) references profesor(codigo)
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
