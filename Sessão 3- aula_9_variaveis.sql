--Aula 9: Variavies

declare --declarar todas as variáveis do bloco plsql
    v_texto varchar2(50) not null default 'Oi';
begin
    v_texto := 'Curso '||'PL/SQL'; -- substitui a variável v_texto anteriormente
    dbms_output.put_line(v_texto);
end; 
-----------------------------------------------------

declare 
    v_texto varchar2(50) not null := 'Curso '||'PL/SQL'; -- concatenação d strings
begin
    dbms_output.put_line(v_texto);
end;
-----------------------------------------------------
declare 
    v_texto number(4,2) := 10.123; --duas casas decimais
begin
    dbms_output.put_line('Vocês são '||v_texto);
end;