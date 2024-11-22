/*
Esta consulta apresenta um modelo bem eficaz
de uso da função CASE WHEN. Válido para criar
grupos de classificação.
*/
CREATE VIEW modelo_casewhen AS
SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
(CASE WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO'
END) AS CLASSIFICACAO
FROM TABELA_DE_PRODUTOS;
