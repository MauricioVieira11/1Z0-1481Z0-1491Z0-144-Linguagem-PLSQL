--Aula 10: Variavies
declare 
    v_texto pls_integer not null := 10.70; 
begin
    dbms_output.put_line('Vocês são '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto binary_float not null := 10.45; --binary_float e double: precisão maior
begin
    dbms_output.put_line('Vocês são '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto date := sysdate; --variável tipo date, pega a data atual
    v_texto2 date := sysdate;
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
    dbms_output.put_line('Hoje é dia: '||to_char(v_texto2, 'dd/mm/yyyy')); --tem várias opções de formatação
end;
-----------------------------------------------------
declare 
    v_texto timestamp := systimestamp; --armazena data servidor, hora, minuto segungo, e fração de segundo
    v_texto2 timestamp(3) := systimestamp; -- 3 precisão depois da vírgula
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
    dbms_output.put_line('Hoje é dia '||v_texto2);
end;
-----------------------------------------------------
declare 
    v_texto timestamp(3) with time zone := systimestamp; --
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto interval day(4) to second(2) := '24 02:00:00.012'; --intervalo de dias e segundos
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto interval year(3) to month := '122-11'; --intervalo entre ano e mês
begin
    dbms_output.put_line('Hoje é dia '||v_texto);
end;
-----------------------------------------------------
declare 
    v_texto boolean := true; --utilizado para verificações verdadeiro e falso(true or false). 
begin
    dbms_output.put_line('Hoje é dia '||v_texto); --não tem saída no putline com boolean. dá erro
end;