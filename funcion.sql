CREATE OR REPLACE FUNCTION obtenerProducto(f_codigo producto.codigo%TYPE) 
RETURN producto%rowtype
AS
    v_producto producto%rowtype;
begin
    -- Obtengo el producto
    select * into v_producto
    from producto
    WHERE codigo = f_codigo;
    
    RETURN v_producto;

-- Excepciones
exception 
    when no_data_found then 
        dbms_output.put_line('Producto con código '|| f_codigo||' no existe');
        RETURN null;
    when others then
        dbms_output.put_line('Error inesperado');
        RETURN null;
end;
/
declare
    v_codigo producto.codigo%type := &codigo;
    v_producto producto%rowtype;
BEGIN
    v_producto := obtenerProducto(v_codigo);
    
    -- Muestra los datos del producto
    if v_producto.codigo is not NULL then 
    dbms_output.put_line('Código de producto: ' || v_codigo);
    dbms_output.put_line('Producto: '|| v_producto.codigo);
    dbms_output.put_line('Precio: '|| v_producto.precio);
    dbms_output.put_line('nombre: '|| v_producto.nombre);
    end if;
end;

