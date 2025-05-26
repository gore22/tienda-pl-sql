-- While
declare
    v_i NUMBER (2) := 1;
begin
    DBMS_OUTPUT.PUT_LINE('While');
    -- Recorremos el v_i del 1 al 10
    WHILE (v_i<=10)
    loop
    DBMS_OUTPUT.PUT_LINE(v_i);
    -- Aumenta el valor de v_i 
    v_i := v_i + 1;
    end loop;
end;
/
-- For
begin
    DBMS_OUTPUT.PUT_LINE('For');
    for v_i in 1..10
    loop
        DBMS_OUTPUT.PUT_LINE(v_i);
    end loop;
    
    DBMS_OUTPUT.PUT_LINE('Reverso');
    for v_i in reverse 1..10
    loop 
        DBMS_OUTPUT.PUT_LINE(v_i);
    end loop;   
end;
/
-- Loop
DECLARE
    v_i NUMBER(2) := 1;
begin
    DBMS_OUTPUT.PUT_LINE('Loop');
    LOOP
        -- Muestra el valor de v_i
        DBMS_OUTPUT.PUT_LINE(v_i);
        exit when v_i=10;
        -- Actualiza valor de v_i
        v_i := v_i+1;
    end loop;
end;