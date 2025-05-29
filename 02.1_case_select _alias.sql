-- Case con select y alias 
SELECT 
    codigo, 
    nombre, 
    precio,
    CASE when precio > 100 then 'Es mayor a 100€'
        else 'Es menor a 100€'
    end as "Precios de producto"
from producto;
