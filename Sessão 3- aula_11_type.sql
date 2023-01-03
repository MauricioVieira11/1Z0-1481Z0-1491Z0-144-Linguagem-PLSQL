--Aula 11: atributo %TYPE
    --é dinâmico
    -- vai ser usado para passar tipo e tamanho da coluna que foi usado como referência
--Criação da tabela empregado que utilizaremos como base
create table empregados(
    id_emp number,
    nome_emp varchar2(50),
    cargo varchar2(20) NOT NULL
);

ALTER TABLE EMPREGADOS MODIFY CARGO VARCHAR(100);

--Bloco anonimo utilizando %TYPE
declare
    v_cargo empregados.cargo%TYPE; --%TYPE: assume o valor tipo e tamanho da tabela empregados
    v_cargo2 v_cargo%TYPE;
    v_cargo3 empregados.cargo%TYPE;
begin
    v_cargo := 'Gerente TI';
    v_cargo2 := 'Gerente de Tecnologia em Análise e desenvolvimento de sistemas'; --vai dar Erro
    v_cargo3 := null; --NOT NULL não vem junto com o %TYPE
    dbms_output.put_line('Cargo: '||v_cargo);
    dbms_output.put_line('Cargo2: '||v_cargo2);
    dbms_output.put_line('Cargo3: '||v_cargo3);
end;