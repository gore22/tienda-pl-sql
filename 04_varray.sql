DECLARE
    -- Definimos arrays para alumnos y sus de notas
    type alumnosarray IS VARRAY(3) of VARCHAR2(20);
    type notasarray is VARRAY(3) of NUMBER(2);
    --Inicializamos los arrays con nombres y notas
    v_alumnos alumnosarray := alumnosarray('Fernando', 'Juan', 'Maria');
    v_notas notasarray := notasarray(7, 10, 5);
BEGIN
    --Recorremos los arrays
    FOR v_i in 1..v_alumnos.count LOOP
        DBMS_OUTPUT.PUT_LINE('Alumno ' || v_alumnos(v_i) || ' tiene una Nota de: ' || v_notas(v_i));
    end loop;
end;