declare
    v_n1 NUMBER(2,0) := 3;
    v_n2 NUMBER(2,0) := 3;
    v_n3 NUMBER(2,0) := 2;
begin
    -- Si v_n1 es mayor a v_n2 y v_n3
    if v_n1 > v_n2 and v_n1 > v_n3 then
        dbms_output.put_line(v_n1 || ' es mayor que ' || v_n2 ||' y '|| v_n3);
    -- Si v_n2 es mayor a v_n3
    ELSIF v_n2 > v_n3 then
        dbms_output.put_line(v_n2 || ' es mayor que ' || v_n3);
    -- Si v_n3 es mayor a v_n1 y v_n2
    ELSE
        dbms_output.put_line(v_n3 || ' es mayor');
    end if;
end;