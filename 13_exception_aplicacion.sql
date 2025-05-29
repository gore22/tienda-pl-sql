DECLARE
    -- Guardan el código ingresado y todos los datos del producto
    v_codigo producto.codigo%type := &codigo;
    v_producto producto%rowtype;
    -- Se declara la excepción personalizada para controlar los precios > 100
    limite_precio exception;
BEGIN
    -- Obtenemos todos los datos del producto según el código
    SELECT * INTO v_producto 
    FROM producto
    WHERE codigo = v_codigo;
    
    -- Verifica si el precio del producto es mayor o igual a 100
    if v_producto.precio >= 100 THEN
    -- Lanza un error personalizado con el código -20999 y un mensaje explicativo
        RAISE_APPLICATION_ERROR(-20999, 'El producto vale más de 100');
    end if;
    
    -- Muestra los datos del producto con precio menor a 100
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