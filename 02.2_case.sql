--Caso case 
declare
    v_dia NUMBER(1) := &teclado;
BEGIN
    CASE v_dia
        when 1 then DBMS_OUTPUT.PUT_LINE('Es lunes');
        when 2 then DBMS_OUTPUT.PUT_LINE('Es Martes');
        when 3 then DBMS_OUTPUT.PUT_LINE('Es Miercoles');
        when 4 then DBMS_OUTPUT.PUT_LINE('Es Jueves');
        when 5 then DBMS_OUTPUT.PUT_LINE('Es Viernes');
        when 6 then DBMS_OUTPUT.PUT_LINE('Es Sabado');
        when 7 then DBMS_OUTPUT.PUT_LINE('Es Domingo');
        else DBMS_OUTPUT.PUT_LINE('Debe ser del 1 al 7');
    end case;
        
end;