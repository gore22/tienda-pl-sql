/*
Una view es una consulta guardada como un objeto en la base de datos que permite
ver datos de una o más tablas como si fuera una tabla virtual.
*/

--Creamos una vista que obtiene los productos con precio superior a 100
create or replace view produc_superior_100 as
SELECT nombre, precio
FROM producto
where precio >= 100;

select count(*) from producto where precio >=100; 
