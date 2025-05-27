SELECT f.codigo, f.nombre 
FROM fabricante f
INNER JOIN producto p ON f.codigo = p.codigo_fabricante;