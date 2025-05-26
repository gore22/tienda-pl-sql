declare
    v_dia number(1,0) := &dia;
begin
    case v_dia
        when 1 then dbms_output.put_line('Es lunes');
        when 2 then dbms_output.put_line('Es Martes');
        when 3 then dbms_output.put_line('Es Miercoles');
        when 4 then dbms_output.put_line('Es Jueves');
        when 5 then dbms_output.put_line('Es Viernes');
        when 6 then dbms_output.put_line('Es Sabado');
        when 7 then dbms_output.put_line('Es Domingo');
    end case;        
end;