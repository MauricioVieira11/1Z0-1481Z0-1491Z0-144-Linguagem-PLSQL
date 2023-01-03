--Aula 14: Variáveis bind: CRIADAS FORA DOS BLOCOS, MULTIBLOCO, PODE UTILIZAR EM VÁRIOS BLOCOS. 
        --MELHORIA A PERFOMANCE EM VÁRIOS CASOS
        --CRIADA AMBIENTE HOST(PAI)
        -- SEU ESCOPO É TODO O WORKSHEET
        
variable b_text varchar2(50); --CRIADA FORA

begin
    :b_text := 'Teste PL/SQL'; --PODE USAR AQUI NO BLOCO. O PRIMEIRO DOIS PONTO RECONHECE A VARIÁVEL NO HOST CRIADO ANTERIORMENTE
end;
-------------------------------------
SET SERVEROUTPUT ON;
declare 
    v_text varchar2(20);
begin
    :b_text := 'Teste PL/SQL';
    v_text := :b_text;
    dbms_output.put_line('Bind: '||:b_text);
    dbms_output.put_line('Variável: '||v_text);
end;
------------------------------------
--set outprint on - esse comando irá printar todas as variáveis bind existentes
variable b_date date; --gera erro, pois não são todos os datatypes que são suportados por variáveis do tipo bind
-------------------------------------
begin
    dbms_output.put_line('Bind: '||:b_text);
end;