DECLARE
 v_codigo producto.codigo%type := &codigo;
 v_nombre producto.nombre%type;
BEGIN
 SELECT nombre INTO v_nombre
 FROM producto 
 WHERE codigo = v_codigo;
 
 dbms_output.put_line('El nombre del producto con codigo ' || v_codigo || ' es: '|| v_nombre);
END;