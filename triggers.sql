--Se ejecuta antes de insertar, actualizar y borrar en la tabla producto
CREATE OR REPLACE TRIGGER estado_operacion_before
BEFORE insert OR UPDATE or DELETE on producto
BEGIN
    --Indica si se esta insertando
    if INSERTING THEN
        DBMS_OUTPUT.PUT_LINE('Insertando productos...');
    --Indica si se esta actualizando
    ELSIF UPDATING THEN 
        DBMS_OUTPUT.PUT_LINE('Actualizando productos...');
    --Indica si se esta eliminando
    ELSIF DELETING THEN 
        DBMS_OUTPUT.PUT_LINE('Eliminando productos...');
    end if;
end;
/
-- Se ejecuta despues de insetar, actualizar o borrar un producto
CREATE OR REPLACE TRIGGER estado_operacion_after
AFTER insert or UPDATE or DELETE on producto
BEGIN
    if INSERTING THEN
        --Indica si se inserto producto
        DBMS_OUTPUT.PUT_LINE('Se inserto producto/s');
    ELSIF UPDATING THEN 
        --Indica si se actualizo producto
        DBMS_OUTPUT.PUT_LINE('Se actualizo producto/s');
    ELSIF DELETING THEN 
        --Indica si se elimino producto
        DBMS_OUTPUT.PUT_LINE('Se elimino producto/s');
    end if;
end;
/
-- Se ejecuta la validación antes de insertar, actualizar o borrar en la tabla producto
-- Si salta una exception no completa la operación 
CREATE OR REPLACE TRIGGER validacion_producto
BEFORE INSERT or update on producto FOR EACH ROW
declare
    v_num_fabricantes NUMBER(4);
BEGIN
    --Validamos el precio sea positivo.
    if :new.precio < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El precio no puede ser negaivo');
    end if;
    
    --Cuenta el número de fabricantes
    SELECT count(*) into v_num_fabricantes 
    FROM producto
    where codigo = :new.codigo_fabricante;
    
    --Si no hay fabricante, lanza un error
    if v_num_fabricantes = 0 then
        RAISE_APPLICATION_ERROR(-20002, 'El fabricante no existe');
    end if;
    
end;
/

--Insertamos un nuevo producto
INSERT INTO producto(codigo, nombre, precio, codigo_fabricante)
values(12,'Nuevo producto', 100,1);

delete from producto