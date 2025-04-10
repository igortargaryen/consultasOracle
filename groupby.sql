/*
GROUP BY
Usado para visualizar dentro de determinado critério de agregação.
*/
SELECT CIDADE, SUM(IDADE) FROM TABELA_DE_CLIENTES GROUP BY CIDADE ORDER BY CIDADE;

-- SOMANDO O CRITÉRIO DE AGREGAÇÃO EM DOIS CAMPOS
SELECT CIDADE, SUM(LIMITE_DE_CREDITO), SUM(IDADE) FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

-- CONSULTAR O PRODUTO MAIS CARO DE CADA EMBALAGEM.
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM;

--- CONTANDO A QUANTIDADE DE PRODUTOS ORDENADOS POR EMBALAGEM
SELECT EMBALAGEM, COUNT(*) FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM ORDER BY EMBALAGEM;

--- AGORA INCLUÍNDO O SABOR
SELECT EMBALAGEM, COUNT(*) FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Laranja'
GROUP BY EMBALAGEM ORDER BY EMBALAGEM;

--- USANDO ALIAS PARA A COLUNA FICAR MAIS AMIGÁVEL
SELECT EMBALAGEM, COUNT(*) AS NUMERO_DE_PRODUTOS FROM TABELA_DE_PRODUTOS
WHERE SABOR = 'Laranja'
GROUP BY EMBALAGEM ORDER BY EMBALAGEM;

--- APRESENTANDO GRUPOS DE EMBALAGEM
SELECT EMBALAGEM,
MAX(PRECO_DE_LISTA) AS MAIOR_PRECO,
MIN(PRECO_DE_LISTA) AS MENOR_PREÇO
FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM;

--- APRESENTANDO PRODUTOS QUE CUSTEM MAIS DO QUE 10 REAIS
SELECT EMBALAGEM,
MAX(PRECO_DE_LISTA) AS MAIOR_PRECO,
MIN(PRECO_DE_LISTA) AS MENOR_PREÇO
FROM TABELA_DE_PRODUTOS
WHERE PRECO_DE_LISTA >= 10
GROUP BY EMBALAGEM;

