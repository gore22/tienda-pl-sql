DECLARE
    v_codigo producto.codigo%type := &codigo;
    v_producto producto%rowtype;
    limite_precio exception;
BEGIN
    SELECT * INTO v_producto 
    FROM producto
    WHERE codigo = v_codigo;
    
    if v_producto.precio >= 100 THEN
        RAISE limite_precio;
    end if;
    
    dbms_output.put_line('Producto con código '|| v_codigo);
    dbms_output.put_line('Producto:'|| v_producto.nombre);
    dbms_output.put_line('Precio:'|| v_producto.precio);
    dbms_output.put_line('Código Fabricante:'|| v_producto.codigo_fabricante);

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Producto con código ' || v_codigo || ' no existe');
    WHEN limite_precio THEN
        dbms_output.put_line('Este producto tiene un precio superior a 1000');
    WHEN others THEN
        dbms_output.put_line('Error');

END;