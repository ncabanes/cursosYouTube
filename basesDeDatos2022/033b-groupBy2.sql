-- Bases de datos, ejemplo del video 033: GROUP BY
-- Por Nacho Cabanes. Video en: https://youtu.be/zIhaR2_hDJE

create table ventasZonas (
  codigoVendedor varchar(5) primary key,
  nombreVendedor varchar(50),
  zona varchar(10),
  total numeric(6, 2)
);

insert into ventasZonas values('j', 'Javier', 'Barcelona', 27.5);
insert into ventasZonas values('a', 'Anselmo', 'Madrid', 24);
insert into ventasZonas values('b', 'Basilio', 'Lima', NULL);
insert into ventasZonas values('m', 'Mario', 'Caracas', 32);
insert into ventasZonas values('c', 'César', 'Lima', 24);
insert into ventasZonas values('n', 'Nuria', 'Caracas', 32);
insert into ventasZonas values('p', 'Patricia', 'Lima', 32);

select zona, count(*) from ventasZonas
group by zona;

select zona, sum(total) from ventasZonas
group by zona;

select zona, max(total) from ventasZonas
group by zona;

select zona, count(*) from ventasZonas
where total > 30
group by zona;


select zona, sum(total) from ventasZonas
group by zona
having sum(total) > 50;

select zona, sum(total) from ventasZonas
group by zona
having zona like '%i%';

select zona, count(*) from ventasZonas
group by zona
having count(*) > 1;

select zona, count(*) from ventasZonas
where nombreVendedor <> 'César'
group by zona
having count(*) > 1;
