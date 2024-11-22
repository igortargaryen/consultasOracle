/*
TIPOS DE JOIN
INNER JOIN - Retorna apenas as linhas que possuem corespondência nas duas tabelas.
LEFT OUTER JOIN - Para encontrar todos os registro da tabela da esquerca, mesmo que não existam correpondências na da direita;
RIGHT OUTER JOIN - O inverso de Left.
FULL OUTER JOIN - Para encontrar todos os registros de ambas as tabelas independente de correspondência.
SELF JOIN - Para comparar dados de uma mesma tabela.
CROSS JOIN - Raramente utilizado. Combina cada linha de uma tabela com cada linha de outra tabela. (Produto cartesiano) 
*/

SELECT DISTINCT
TV.NOME


FROM
TABELA_DE_CLIENTES TC 
INNER JOIN
TABELA_DE_VENDEDORES TV