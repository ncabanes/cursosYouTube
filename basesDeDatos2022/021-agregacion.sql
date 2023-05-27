-- Bases de datos, ejemplo del video 021: Agregaciones
-- Por Nacho Cabanes. Video en: https://youtu.be/dXJ9wslMGZM

.open juzgados

create table hombres (codigo varchar(10), nombre varchar(50));
create table mujeres (codigo varchar(10), nombre varchar(50));
create table juzgados (codigo varchar(5), denominacion varchar(30));

create table casarse (
    codigoHombre varchar(10), 
    codigoMujer varchar(10), 
    codigoJuzgado varchar(5), 
    primary key (codigoHombre, codigoMujer), 
    foreign key (codigoHombre) references hombres(codigo), 
    foreign key (codigoMujer) references mujeres(codigo), 
    foreign key (codigoJuzgado) references juzgados(codigo)
);

insert into hombres values (1, "Juan Pérez");
insert into hombres values (2, "Jose López");

insert into mujeres values (1, "Irene Pérez");
insert into mujeres values (2, "María Sánchez");

insert into juzgados values ("J1", "Juzgado 1");
insert into juzgados values ("J2", "Juzgado 2");

insert into casarse values (1, 2, "J1");
insert into casarse values (2, 1, "J1");

insert into casarse values (2, 1, "J2"); -- !!

.mode column

select 
    hombres.nombre as marido, 
    mujeres.nombre as esposa, 
    juzgados.denominacion as juzgado
from hombres, mujeres, juzgados, casarse 
where casarse.codigoHombre = hombres.codigo 
    and casarse.codigoMujer = mujeres.codigo
    and casarse.codigoJuzgado = juzgados.codigo;

