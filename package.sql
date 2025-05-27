DROP PROCEDURE infoProducto;
DROP FUNCTION obtenerProducto;

-- Crear paquete
CREATE OR REPLACE PACKAGE productos AS
    PROCEDURE infoProducto(p_codigo producto.codigo%TYPE);
    FUNCTION obtenerProducto(p_codigo producto.codigo%TYPE) RETURN producto%rowtype;
END;

-- Crear el cuerpo del paquete
CREATE OR REPLACE PACKAGE BODY productos as

    -- Creo el procedimiento
    PROCEDURE infoProducto(p_codigo producto.codigo%type)
    as
        v_producto producto%rowtype;
    begin
    
        select * into v_producto
        from producto
        where codigo = p_codigo;
        
        dbms_output.put_line('Informacion del producto con codigo ' || p_codigo); 
        dbms_output.put_line('Nombre: ' || v_producto.nombre); 
        dbms_output.put_line('Precio: ' || v_producto.precio); 
        dbms_output.put_line('Codigo fabricante: ' || v_producto.codigo_fabricante); 
        
    exception
        when no_data_found then
            dbms_output.put_line('No existe el producto ' || p_codigo);
        WHEN others THEN 
            dbms_output.put_line('Error'); 
    end;
    
    -- Creo la función
    FUNCTION obtenerProducto(p_codigo producto.codigo%type)
    RETURN producto%rowtype
    AS
        v_producto producto%rowtype;
    begin
    
        select * into v_producto
        from producto
        where codigo = p_codigo;
        
        return v_producto;
        
    exception
        when no_data_found then
            dbms_output.put_line('No existe el producto ' || p_codigo);
            return null;
        WHEN others THEN 
            dbms_output.put_line('Error'); 
            return null;
    end;
    
end;

DECLARE
    v_codigo producto.codigo%type := &codigo;
    v_producto producto%rowtype;
BEGIN

    -- Llamamos a infoProdcuto desde el paquete productos
    DBMS_OUTPUT.PUT_LINE('Procedimiento');
    productos.infoProducto(v_codigo);
    
    -- Llamamos a obtenerProducto desde el paquete productos
    DBMS_OUTPUT.PUT_LINE('Función');
     v_producto  := productos.obtenerProducto(v_codigo);
    
    if v_producto.codigo is not null then
        dbms_output.put_line('Informacion del producto con codigo ' || v_codigo); 
        dbms_output.put_line('Nombre: ' || v_producto.nombre); 
        dbms_output.put_line('Precio: ' || v_producto.precio); 
        dbms_output.put_line('Codigo fabricante: ' || v_producto.codigo_fabricante);
    end if;
end;