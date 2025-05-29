DECLARE
    -- Guardan el código ingresado y todos los datos del producto
    v_codigo producto.codigo%type := &codigo;
    v_producto producto%rowtype;
BEGIN
    -- Obtiene todos los datos del producto según el código
    SELECT * into v_producto
    FROM producto
    WHERE codigo = v_codigo;
    
    --Muestra los datos del producto
    dbms_output.put_line('Detalles del producto con código ' || v_codigo);
    dbms_output.put_line('Nombre: ' || v_producto.nombre);
    dbms_output.put_line('Precio: ' || v_producto.precio);
    dbms_output.put_line('Fabricante: ' || v_producto.codigo_fabricante);
EXCEPTION
    -- Muestra error si el código ingresado no existe
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Producto con código ' || v_codigo || ' no existe.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error');
END;