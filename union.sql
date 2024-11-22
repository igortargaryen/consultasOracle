/*
UNION
*/

SELECT * FROM TABELA_DE_CLIENTES;
SELECT * FROM TABELA_DE_VENDEDORES;

/*
Foi criado uma constante que não existe nas tabelas "cliente e fornecedor" e atribuído
Origem ao cabeçalho da coluna.
*/
SELECT DISTINCT BAIRRO, 'CLIENTE' AS ORIGEM FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO, 'FORNECEDOR' AS ORIGEM FROM TABELA_DE_VENDEDORES;