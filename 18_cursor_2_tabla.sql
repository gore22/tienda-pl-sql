-- Cursores permite recorrer y almacenar un conjunto de datos explícitos 
DECLARE
    -- Creo un curso
    CURSOR c_productos_fabricante is
    select 
        p.codigo,
        p.nombre,
        p.precio,
        f.nombre as nombre_fabricante
    from producto p
    JOIN fabricante f 
    ON p.codigo_fabricante = f.codigo
    ORDER by precio DESC;
        
BEGIN
    DBMS_OUTPUT.PUT_LINE('Cursos de productos_fabricante');
    --Recorremos el cursor    
    for registro in c_productos_fabricante
    loop
        --Muestra datos de los productos
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Información producto con código: '|| registro.codigo);
        DBMS_OUTPUT.PUT_LINE('Nombre: '|| registro.nombre);
        DBMS_OUTPUT.PUT_LINE('Precio: '|| registro.precio);
        DBMS_OUTPUT.PUT_LINE('Nombre de fabricante: '|| registro.nombre_fabricante);
    end loop;
end;