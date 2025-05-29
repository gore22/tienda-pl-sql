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
    
    -- Si el precio del producto es mayor a 100, lanza la excepción personalizada
    if v_producto.precio >= 100 THEN
        RAISE limite_precio;
    end if;
    
    -- Muestra los datos del producto con precio menor a 100
    dbms_output.put_line('Producto con código '|| v_codigo);
    dbms_output.put_line('Producto:'|| v_producto.nombre);
    dbms_output.put_line('Precio:'|| v_producto.precio);
    dbms_output.put_line('Código Fabricante:'|| v_producto.codigo_fabricante);

EXCEPTION
    -- Captura la excepción cuando el codigo no existe 
    WHEN no_data_found THEN
        dbms_output.put_line('Producto con código ' || v_codigo || ' no existe');
    -- Captura la excepción personalizada si el producto es superior a 100
    WHEN limite_precio THEN
        dbms_output.put_line('Este producto tiene un precio superior a 100');
    -- Captura cualquier otra excepción no manejada previamente
    WHEN others THEN
        dbms_output.put_line('Error');

END;

--select * from producto;