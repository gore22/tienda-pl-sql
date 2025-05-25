DECLARE
 v_codigo producto.codigo%type := &codigo;
 v_producto producto%rowtype;
BEGIN
    SELECT * into v_producto
    FROM producto
    WHERE codigo = v_codigo;
    
    dbms_output.put_line('Detalles del producto con codigo ' || v_codigo);
    dbms_output.put_line('Nombre: ' || v_producto.nombre);
    dbms_output.put_line('Prcio: ' || v_producto.precio);
    dbms_output.put_line('Prcio: ' || v_producto.codigo_fabricante);

END;