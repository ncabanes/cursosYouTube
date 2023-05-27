-- Bases de datos, ejemplo del video 033: GROUP BY
-- Por Nacho Cabanes. Video en: https://youtu.be/zIhaR2_hDJE

create table notasAlumnos (
  codAlumno varchar(12),
  examen varchar(10),
  nota numeric(4, 2),
  primary key(codAlumno, examen)
);

insert into notasAlumnos values('1', 'Tema 1', 9.5);
insert into notasAlumnos values('1', 'Tema 2', 8.75);
insert into notasAlumnos values('2', 'Tema 1', 6);

SELECT codAlumno, AVG(nota) FROM notasAlumnos GROUP BY codAlumno;

SELECT codAlumno, COUNT(*) FROM notasAlumnos GROUP BY codAlumno;
SELECT examen, COUNT(*) FROM notasAlumnos GROUP BY examen;

SELECT codAlumno, AVG(nota) FROM notasAlumnos GROUP BY codAlumno HAVING AVG(nota) < 8;
SELECT examen, COUNT(*) FROM notasAlumnos GROUP BY examen HAVING COUNT(*) > 1; 

SELECT codAlumno, AVG(nota) 
FROM notasAlumnos 
GROUP BY codAlumno 
HAVING COUNT(*) > 1;
