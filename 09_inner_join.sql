/* Obtiene el código y nombre del fabricante junto con el nombre del producto, 
    ordenado por el código del fabricante 
*/
SELECT f.codigo, f.nombre, p.nombre
FROM fabricante f
INNER JOIN producto p ON f.codigo = p.codigo_fabricante order by f.codigo;