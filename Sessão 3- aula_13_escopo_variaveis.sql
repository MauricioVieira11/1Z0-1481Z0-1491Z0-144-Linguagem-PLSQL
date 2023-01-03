--Aula 13: Escopo de variáveis
-- LOCAL ONDE A VARIÁVEL CONSEGUE SER UTILIZADA

declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
    end;
end;
/
begin
    v_text := 'teste'; -- A VAEIÁVEL NÃO VAI SER ALCANÇADA, POR ESTAR FORA DO ESCOPO
end;

------------------------------------------------------------
declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    declare
        v_text2 varchar2(20) := 'Texto de dentro';
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
        dbms_output.put_line('Output de dentro 2: '||v_text2);
    end;
    --dbms_output.put_line('Output de fora 2: '||v_text2); --Gera erro, pois a variável v_text2 está foro do escopo
end;
------------------------------------------------------------
declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    declare
        v_text varchar2(20) := 'Texto de dentro'; --VARIÁVEL COM O MEMSO NOME
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
    end;
    dbms_output.put_line('Output de fora 2: '||v_text); -- ATENÇÃO! obs: DUAS VARIÁVEIS COM O MESMO NOME, MAS COM ESCOPO DIFERENTE
end;
------------------------------------------------------------

declare 
    v_text varchar2(20) := 'Texto de fora';
begin
    dbms_output.put_line('Output de fora: '||v_text);
    declare
        v_text varchar2(20) := 'Texto de dentro';
    begin
        dbms_output.put_line('Output de dentro: '||v_text);
    end;
    dbms_output.put_line('Output de fora 2: '||v_text);
end;
------------------------------------------------------------
--PODE SER COLOCADO UM NOME PARA O BLOCO(LABEL), ASSIM É MAIS ESPECÍFICO DE ACESSAR
begin <<fora>> --LABEL OU NOME PARA O BLOCO
    declare 
        v_text varchar2(20) := 'Texto de fora';
    begin
        dbms_output.put_line('Output de fora: '||v_text);
        declare
            v_text varchar2(20) := 'Texto de dentro';
        begin
            dbms_output.put_line('Output de dentro: '||v_text);
            dbms_output.put_line('Output de dentro 2: '||fora.v_text); --ATENÇÃO!!
            fora.v_text := 'Teste';
        end;
        dbms_output.put_line('Output de fora 2: '||v_text);
    end;
end fora; --FECHAR COM O NOME DO LABEL
