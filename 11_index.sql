/*
Creamos un indice para optimizar el acceso a los datos más frecuentes, mejorando el 
rendimiento de las consultas al reducir el tiempo necesario.
*/
create index idx_nombre on producto(nombre);

// Realizamos una busquedad 
SELECT * FROM producto where LOWER(nombre) like '%full%';

