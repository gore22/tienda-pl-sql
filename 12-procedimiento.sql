-- Creación deprocedimiento 
CREATE OR REPLACE PROCEDURE infoProducto(p_codigo producto.codigo%type)
as
    v_producto producto%rowtype;
begin
    -- Obtengo el producto
    select * into v_producto
    from producto
    WHERE codigo = p_codigo;
    
    -- Muestra los datos del producto 
    dbms_output.put_line('Código de producto: ' || p_codigo);
    dbms_output.put_line('Producto: '|| v_producto.codigo);
    dbms_output.put_line('Precio: '|| v_producto.precio);
    dbms_output.put_line('nombre: '|| v_producto.nombre);

-- Excepciones
exception 
    when no_data_found then 
        dbms_output.put_line('Producto con código '|| p_codigo||' no existe');
    when others then
        dbms_output.put_line('Error inesperado');
end;
/

-- Bloque anónimo para llamar al procedimiento
declare
    v_codigo producto.codigo%type := &codigo;
begin
    infoProducto(v_codigo);
end;
/
-- Consulta fuera de bloque anónimo

exec infoProducto(4);