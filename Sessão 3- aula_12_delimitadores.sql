--Aula 12: Delimitadores e comentários
-- +,-,*,/,=,@,;,<>,!=,||,:=, /* */ , --

declare
    v_text varchar2(20) := 'PL/SQL';
begin
--Esse é um comentário de uma única linha
    dbms_output.put_line(v_text || ' é uma boa linguagem');
/*Este é um comenário 
de várias
linhas */
end;