-- Bases de datos, ejemplo del video 017: Relaciones reflexivas
-- Por Nacho Cabanes. Video en: https://youtu.be/pheGbJLpM5o

-- personas(codigo, nombre, codigoJefe)
-- CP: codigo
-- CAj: codigoJefe -> personas


.open personasJefesReflex1M

create table personas(
    codigo varchar(3) primary key,
    nombre varchar(40),
    codigoJefe varchar(3),
    foreign key (codigoJefe) REFERENCES personas(codigo)
);

insert into personas values("ev", "Erik Vázquez", NULL);
insert into personas values("pm", "Pablo Martínez", "ev");

select trabajador.nombre, jefe.nombre
from personas trabajador, personas jefe
where trabajador.codigoJefe = jefe.codigo;

