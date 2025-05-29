DECLARE
    --Guardan el código ingresado y el nombre del producto según su tipo
    v_codigo producto.codigo%type := &codigo;
    v_nombre producto.nombre%type;
BEGIN
    -- Obtiene el nombre del producto según el código ingresado
    SELECT nombre INTO v_nombre
    FROM producto 
    WHERE codigo = v_codigo;
 
    -- Muestra el código y nombre del producto
    dbms_output.put_line('El nombre del producto con codigo ' || v_codigo || ' es: '|| v_nombre);
END;