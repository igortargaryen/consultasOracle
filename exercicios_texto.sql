--01: Seleção de nomes
SELECT NOME FROM TABELA_DE_CLIENTES;
--02: Seleção de nomes em caixa baixa
SELECT NOME AS NOME_NORMAL, LOWER(NOME) AS NOME_MINUSCULO FROM TABELA_DE_CLIENTES;
--03: Seleção de nomes em caixa alta
SELECT NOME AS NOME_NORMAL, UPPER(NOME) AS NOME_MAIUSCULO FROM TABELA_DE_CLIENTES;
--04: Seleção com iniciais maiúsculas
SELECT NOME_DO_PRODUTO AS ESCRITA_NORMAL, INITCAP(NOME_DO_PRODUTO) AS INICIAIS_MAIUSCULAS
FROM TABELA_DE_PRODUTOS;
--05: Selecionar rua e bairro de cada registro
SELECT ENDERECO_1, BAIRRO FROM TABELA_DE_CLIENTES;
--06: Concatenar endereço e bairro
SELECT ENDERECO_1, BAIRRO, CONCAT(CONCAT(ENDERECO_1, ' '), BAIRRO) AS CONTATENADO FROM TABELA_DE_CLIENTES;
--07: Concatenar vários campos e mostrar o endereço completo
SELECT ENDERECO_1 || ' ' || BAIRRO || ' ' || CIDADE || ESTADO || ' - ' || CEP AS ENDERECO_COMPLETO FROM TABELA_DE_CLIENTES;
--08: Use o comando LPAD para preencher espaços
SELECT NOME_DO_PRODUTO, LPAD(NOME_DO_PRODUTO,70,'*') FROM TABELA_DE_PRODUTOS;
--09: O comand RPAD coloca os asteristicos do lado direito
SELECT NOME_DO_PRODUTO, RPAD(NOME_DO_PRODUTO,70,'*') FROM TABELA_DE_PRODUTOS;
--10: O comando SBUSTR mostra o subtexto de uma string
SELECT NOME_DO_PRODUTO, SUBSTR(NOME_DO_PRODUTO,3,5) FROM TABELA_DE_PRODUTOS;
--11: Para mostrar quais registros possuem campo com o comando INSTR
SELECT NOME_DO_PRODUTO, INSTR(NOME_DO_PRODUTO, 'Campo') FROM TABELA_DE_PRODUTOS;
--12: Mostre quais registros possuem a palavra Mattos
SELECT NOME, INSTR(NOME,'Mattos') FROM TABELA_DE_CLIENTES;
--13: Use filtros pra ostrar os nomes com Mattos
SELECT NOME FROM TABELA_DE_CLIENTES WHERE INSTR(NOME, 'Mattos') <>0;
--14: O LTRIM é usado para remover os caracteres de esoaço da extremidade esquerda da palavra
SELECT '      VICTORINO      ' AS X, LTRIM('      VICTORINO      ') AS Y FROM DUAL;
--15: Usando o RTRIM e TRIM
SELECT '      VICTORINO      ' AS X, LTRIM('      VICTORINO      ') AS Y, RTRIM('      VICTORINO      ') AS Z
, TRIM('      VICTORINO      ') AS W FROM DUAL;
--16: O comando REPLACE substitui strings quando mostra os resultados
SELECT NOME_DO_PRODUTO, REPLACE(REPLACE(NOME_DO_PRODUTO, 'Litro', 'L'), 'Ls', 'L') FROM TABELA_DE_PRODUTOS;
--17: Crie um novo script e mostre a data do computador
SELECT SYSDATE FROM DUAL;
--18: Use a função TO_CHAR para mudar o formato da data
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY HH:MI:SS') FROM DUAL;
--19: Mostre o nome e a data de nascimento
SELECT NOME, DATA_DE_NASCIMENTO FROM TABELA_DE_CLIENTES;
--20: Use TO_CHAR para mudar o formato da data
SELECT NOME, TO_CHAR(DATA_DE_NASCIMENTO, 'DD MONTH YYYY, DAY') FROM TABELA_DE_CLIENTES;
--21: Para adicionar números a uma data, use a função SYSDATE
SELECT SYSDATE + 127 FROM DUAL;
--22: Operações entre datas
SELECT NOME, IDADE, TO_CHAR(DATA_DE_NASCIMENTO, 'DD MONTH YYYY, DAY') FROM TABELA_DE_CLIENTES;
--23: Mostrar idade a partir de uma data de nascimento
SELECT NOME, IDADE, (SYSDATE - DATA_DE_NASCIMENTO)/365 FROM TABELA_DE_CLIENTES;
--24: Usar o número de anos com MONTHS_BETWEEN
SELECT NOME, IDADE, MONTHS_BETWEEN(SYSDATE, DATA_DE_NASCIMENTO)/12 FROM TABELA_DE_CLIENTES;
--25: Calcular vencimento das faturas
SELECT ADD_MONTHS(SYSDATE, 10) FROM DUAL;
--26: Comando NEXT_DAY
SELECT SYSDATE, NEXT_DAY(SYSDATE, 'FRIDAY') FROM DUAL;
--27: Mostrar último dia
SELECT SYSDATE, LAST_DAY(SYSDATE) FROM DUAL;
--28: Trunc, mostra o primeiro dia do mês
SELECT SYSDATE + 200, TRUNC(SYSDATE + 200, 'MONTH') FROM DUAL;
--29: Comando ROUND com YEAR para ostrar o primeiro dia do próximo ano
SELECT SYSDATE, ROUND(SYSDATE, 'YEAR') FROM DUAL;
--30: Cria um novo script e use o comando FROM DUAL
SELECT 3.4 FROM DUAL;
--31: Arredondamento com ROUND
SELECT ROUND(3.4) FROM DUAL;
SELECT ROUND(3.5) FROM DUAL;
SELECT ROUND(3.6) FROM DUAL;
--32: Comando CEIL usado para retornar o menor inteiro maior que o número.
SELECT CEIL(3.4) FROM DUAL;
SELECT CEIL(3.5) FROM DUAL;
SELECT CEIL(3.6) FROM DUAL;
--33: Comando POWER eleva o primeiro número pelo segundo.
SELECT POWER(10,4) FROM DUAL;
SELECT POWER(34,4) FROM DUAL;
--34: EXP faz o exponencial do número
SELECT EXP(4) FROM DUAL;
--35: Raiz quadrada SQRT
SELECT SQRT(144) FROM DUAL;
SELECT SQRT(10) FROM DUAL;
--36: ABS retorna o valor absoluto
SELECT ABS(10) FROM DUAL;
SELECT ABS(-10) FROM DUAL;
--37: MOD exibe o resto da divisão de um valor por outro.
SELECT MOD(10,6) FROM DUAL;
--38: Convertendo datas com EXTRACT
SELECT EXTRACT(MONTH FROM TO_DATE('12/11/2019','DD/MM/YYYY')) FROM DUAL;
--39: Converter o caracter 10 para número 10 use o TO_NUMBER
SELECT TO_NUMBER('10') + 10 FROM DUAL;
--40: Converter número para caractere use o TO_CHAR
SELECT TO_CHAR(1234.123, '9999') FROM DUAL;
SELECT TO_CHAR(1234.123, '9999,999') FROM DUAL;
--41: Use o comando NVL para substituir o valor NULL por outro valor
SELECT NVL(10,0) FROM DUAL;
SELECT NVL(NULL,0) FROM DUAL;
--42: Use NVL com comandos FULL JOIN
SELECT
NVL(TV.NOME, 'NÃO ENCONTRADO') AS NOME_VENDEDOR,
NVL(TV.BAIRRO, 'NÃO ENCONTRADO') AS NOME_BAIRRO_VENDEDOR,
NVL(TC.NOME, 'NÃO ENCONTRADO') AS NOME_CLIENTE,
NVL(TC.BAIRRO, 'NÃO ENCONTRADO') AS NOME_BAIRRO_CLIENTE
FROM
TABELA_DE_VENDEDORES TV
FULL JOIN
TABELA_DE_CLIENTES TC
ON TV.BAIRRO = TC.BAIRRO;
