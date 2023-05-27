-- Bases de datos, ejemplo del video 032: Funciones de agregación
-- Por Nacho Cabanes. Video en: https://youtu.be/JXJ6r_C0Lzg

create table ventas (
  codigoVendedor varchar(5) primary key,
  nombreVendedor varchar(50),
  total numeric(6, 2)
);

insert into ventas values('j', 'Javier', 27.5);
insert into ventas values('a', 'Anselmo', 24);
insert into ventas values('b', 'Basilio', NULL);
insert into ventas values('m', 'Mario', 32);
insert into ventas values('c', 'César', 24);

select sum(total) from ventas;

select max(total) from ventas;

select min(total) from ventas;

select min(total) from ventas 
where nombreVendedor like "%i%";

select count(total) from ventas;

select count(distinct total) from ventas;

select count(*) from ventas;

select avg(total) from ventas;
