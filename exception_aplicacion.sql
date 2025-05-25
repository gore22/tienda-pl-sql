DECLARE
    v_codigo producto.codigo%type := &codigo;
    v_producto producto%rowtype;
    limite_precio exception;
BEGIN
    SELECT * INTO v_producto 
    FROM producto
    WHERE codigo = v_codigo;
    
    if v_producto.precio >= 100 THEN
        RAISE_APPLICATION_ERROR(-20999, 'El producto vale más de 100');
    end if;
    
    dbms_output.put_line('Producto con código '|| v_codigo);
    dbms_output.put_line('Producto:'|| v_producto.nombre);
    dbms_output.put_line('Precio:'|| v_producto.precio);
    dbms_output.put_line('Código Fabricante:'|| v_producto.codigo_fabricante);

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Producto con código ' || v_codigo || ' no existe');
    WHEN OTHERS THEN
        dbms_output.put_line('Error inesperado: ' || SQLERRM);
END;