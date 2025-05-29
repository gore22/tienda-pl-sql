
declare
    -- Creo cursor de 1 tabla
    cursor c_productos is 
    select * from producto
    order by precio;
    
    --Guarda todos los datos de la table
    v_producto producto%rowtype;
begin
    DBMS_OUTPUT.PUT_LINE('Cursor de 1 tabla');
    
    --Abrimos el cursor
    open c_productos;
    
    --Recorremos el cursor 
    loop
        --Obtenemos una fila y la guardamos en v_producto
        fetch c_productos into v_producto;
        --Salimos cuando haya guardado los datos
        exit when c_productos%notfound;
        
        --Mostrar información del producto
        DBMS_OUTPUT.PUT_LINE('Información del producto con código ' || v_producto.codigo);
        DBMS_OUTPUT.PUT_LINE('Nombre: '|| v_producto.nombre);
        DBMS_OUTPUT.PUT_LINE('Precio: '|| v_producto.precio);
        DBMS_OUTPUT.PUT_LINE('Código de fabricante: '|| v_producto.codigo_fabricante);
    end loop;
    -- Cerrar el cursor
    close c_productos;
end;
    
    
    