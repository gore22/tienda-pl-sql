DECLARE
    v_total NUMBER(8);
    v_sumar_precio NUMBER(8,2);
BEGIN
    select count(*), sum(precio) INTO v_total, v_sumar_precio
    from PRODUCTO;
    dbms_output.put_line('Numeros de productos: ' || v_total);
    dbms_output.put_line('Precio total: ' || v_sumar_precio);
END;