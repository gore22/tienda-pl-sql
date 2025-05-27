-- Cursor con parametros
declare
    --Declaración del cursor
    CURSOR c_productos_fabricante (p_cod_fab NUMBER) is
    SELECT * 
    from producto
    WHERE codigo_fabricante = p_cod_fab
    ORDER by precio;
    
    v_producto producto%rowtype;
    v_codigo_fabricante fabricante.codigo%type := &codigo;
    -- Contador para saber si se encontraron productos
    v_count INTEGER := 0;
    
BEGIN
    --Abrimos el cursor pasando el código del fabricante 
    OPEN c_productos_fabricante(v_codigo_fabricante);
    --Recorremos las filas del cursor
    LOOP
        fetch c_productos_fabricante into v_producto;
        --Salimos del bucle si no hay más registros
        exit when c_productos_fabricante%notfound;
        --Contamos cuántos productos se encontraron 
        v_count := v_count+1;
        --Mostramos la información del producto
        DBMS_OUTPUT.PUT_LINE('Información del producto con código '|| v_producto.codigo);
        DBMS_OUTPUT.PUT_LINE('Nombre: '|| v_producto.nombre);
        DBMS_OUTPUT.PUT_LINE('Precio: '|| v_producto.precio);
        DBMS_OUTPUT.PUT_LINE('');
    end loop;
    --Cerramos el cursor 
    close c_productos_fabricante;
    --Si no se encontró ningún producto mostramos mensaje 
    if v_count = 0 then 
        DBMS_OUTPUT.PUT_LINE('No se encontro producto con el codigo '|| v_codigo_fabricante);
    end if;
EXCEPTION
    when others then
        DBMS_OUTPUT.PUT_LINE('Error');
end; 