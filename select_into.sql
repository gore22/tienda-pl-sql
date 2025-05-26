DECLARE
    v_num_productos NUMBER(4) := 0;
    v_precio_producto NUMBER(7,2) := 0;
BEGIN
    SELECT count(*), sum(precio) INTO v_num_productos, v_precio_producto
    FROM producto;
    
    DBMS_OUTPUT.PUT_LINE('Numeros de productos son: '|| v_num_productos);
    DBMS_OUTPUT.PUT_LINE('Total de precio: ' || v_precio_producto);
end;