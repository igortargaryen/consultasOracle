/*
FUNÇÕES DE STRING
*/

/*
LOWER
*/
SELECT NOME, LOWER(NOME) FROM TABELA_DE_CLIENTES;

/*
UPPER
*/
SELECT NOME, UPPER(NOME) FROM TABELA_DE_CLIENTES;

/*
INITCAP
*/
SELECT NOME, INITCAP(NOME) FROM TABELA_DE_CLIENTES;

/*
CONCAT
*/
SELECT ENDERECO_1, BAIRRO, CONCAT(CONCAT(ENDERECO_1, ' '), BAIRRO) FROM TABELA_DE_CLIENTES;

/*
LPAD
*/
SELECT NOME_DO_PRODUTO, LPAD(NOME_DO_PRODUTO, 70, '*') FROM TABELA_DE_PRODUTOS;

/*
RPAD
*/
SELECT NOME_DO_PRODUTO, RPAD(NOME_DO_PRODUTO, 70, '*') FROM TABELA_DE_PRODUTOS;

/*
SUBSTR
*/
SELECT NOME_DO_PRODUTO, SUBSTR(NOME_DO_PRODUTO,3,5) FROM TABELA_DE_PRODUTOS;

/*
INSTR
*/
SELECT NOME_DO_PRODUTO, INSTR(NOME_DO_PRODUTO,'Campo') FROM TABELA_DE_PRODUTOS;

/*
REPLACE
*/
SELECT NOME_DO_PRODUTO, REPLACE(NOME_DO_PRODUTO,'Litro','L') FROM TABELA_DE_PRODUTOS;