DECLARE
    -- Guardan el código ingresado y todos los datos del producto
    v_codigo producto.codigo%type := &codigo;
    v_producto producto%rowtype;
BEGIN
    -- Obtiene todo los datos del producto según el código 
    SELECT * into v_producto
    FROM producto
    WHERE codigo = v_codigo;
    
    -- Muesra los datos del producto
    dbms_output.put_line('Detalles del producto con codigo ' || v_codigo);
    dbms_output.put_line('Nombre: ' || v_producto.nombre);
    dbms_output.put_line('Prcio: ' || v_producto.precio);
    dbms_output.put_line('Prcio: ' || v_producto.codigo_fabricante);

END;