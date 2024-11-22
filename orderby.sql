/*
ORDER BY
Ordenando os itens da consulta.
A segunda consulta apresenta na ordem descendente.
A terceira apresenta em ordem alfabética.
A quarta consulta apresenta um ordenamento dentro de outro ordenamento.
A quinta repete a quarta consulta, acrescantando que a ordenação é descendente em ambos.
*/
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA;
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY NOME_DO_PRODUTO;
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM, NOME_DO_PRODUTO;
SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO DESC;