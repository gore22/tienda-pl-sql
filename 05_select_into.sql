DECLARE
    -- Variables para contar productos y sumar precios
    v_total NUMBER(8);
    v_sumar_precio NUMBER(8,2);
BEGIN
    --Almaceno el total de la cantidad de productos y el total del precio en variables.
    select count(*), sum(precio) 
    INTO v_total, v_sumar_precio
    from PRODUCTO;
    
    --Muestro números de producto y precio 
    dbms_output.put_line('Números de productos: ' || v_total);
    dbms_output.put_line('Precio total: ' || v_sumar_precio);
END;