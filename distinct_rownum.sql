/*
Realizando uma consulta simples que retorna todos os itens, sem distinção.
*/
SELECT EMBALAGEM FROM TABELA_DE_PRODUTOS;

/*
Agora, realizo uma cosnulta que distingue os produtos,
e não traz itens repetidos.
*/
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;
SELECT DISTINCT EMBALAGEM, SABOR FROM TABELA_DE_PRODUTOS;

/*
Agora além da distinção aplicada, filtro pelo sabor.
*/
SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Maca';

/*
Os códigos abaixo geram uma coluna com a contagem de 1 para frente.
Uma diferença é que o alias TP foi utilizado ao fim da Tabela de produtos
para diminuir o código.
*/
SELECT ROWNUM, TABELA_DE_PRODUTOS.* FROM TABELA_DE_PRODUTOS;
SELECT ROWNUM, TP.* FROM TABELA_DE_PRODUTOS TP;

/*
Limitando o resultado em 5 linhas apenas. Abaixo, duas formas de fazer.
*/
SELECT ROWNUM, TP.* FROM TABELA_DE_PRODUTOS TP WHERE ROWNUM <= 5;
SELECT TP.* FROM TABELA_DE_PRODUTOS TP WHERE ROWNUM <= 5;

