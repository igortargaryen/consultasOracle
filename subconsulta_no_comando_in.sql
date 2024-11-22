/*
SUB CONSULTA NO COMANDO IN
- Uma consulta dentro da consulta. Quero saber quais são os clientes que moram
em bairros que vendedores residem.
*/

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO IN
(SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);