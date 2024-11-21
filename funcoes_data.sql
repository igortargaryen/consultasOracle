/*
DATA
- O oracle trata como um número com inteiro e decimal.
Exemplo: 19/09/2024 14:30:22 = 20240919,143022
FORMATOS
- D(dia da Semana), DD(dia do mês), DDD(Número do dia no ano), DAY(Dia por extenso)
- MM(mês do ano),  MON(mês abreviado), MONTH(mês por extenso)
- YYYY(ano com 4 digitos), YY(ano com dois dígitos)
- Símbolo separador da data: - / * ; ou um texto, como "de"
- HH(hora com dois dígitos), HH12(hora de 0 a 12), HH24(hora de 0 a 24)
- MI(minuto)
- SS(segund0)
*/

/*
TO CHAR
*/
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY HH:MI:SS') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS') FROM DUAL;
SELECT NOME, TO_CHAR(DATA_DE_NASCIMENTO, 'DD "DE" MONTH "DE" YYYY, DAY') FROM TABELA_DE_CLIENTES;
/*
TO DATE
*/

/*
SYSDATE
- Hora e dia do sistema (computador local). Usado para saber a hora do servidor no banco
- Dual usado para uma tabela que não existe.
*/
SELECT SYSDATE FROM DUAL;
SELECT SYSDATE + 130 FROM DUAL;
SELECT (SYSDATE - DATA_DE_NASCIMENTO)/365 FROM TABELA_DE_CLIENTES;
/*
MONTHS_BETWEEN
- Retorna o n~umero de meses entre as datas date1 and date2
*/
SELECT NOME, IDADE, MONTHS_BETWEEN(SYSDATE, DATA_DE_NASCIMENTO)/12 FROM TABELA_DE_CLIENTES;

/*
ADD_MONTHS
- Para adicionar meses aquela data. Número positivo ou negativo.
- Calcular vencimento de fatura e etc.
*/
SELECT ADD_MONTHS(SYSDATE, 10) FROM DUAL;
/*
NEXT_DAY
- Retorna a data da primeira semana. (Indico uma sexta-feira e ele me aponta a próxima sexta)
*/
SELECT NEXT_DAY(SYSDATE, 'FRIDAY') FROM DUAL;
/*
lAST_DAY
- Retorna o último dia do mês da data. Coloquei 10/01/2000 ele retorna 31/01/2000.
*/
SELECT LAST_DAY(SYSDATE) FROM DUAL;
/*
TRUNC
- Pega uma data com hora e tudo, e deixa apenas a data.
*/
SELECT SYSDATE, TRUNC(SYSDATE, 'YEAR') FROM DUAL;
SELECT SYSDATE, TRUNC(SYSDATE, 'MONTH') FROM DUAL;
/*
ROUND
- Arredonda a data. Antes do dia 15, ele pega o primeiro dia do mês, depois do dia 15, o último.
*/
SELECT ROUND(SYSDATE, 'YEAR') FROM DUAL;
SELECT ROUND(SYSDATE, 'MONTH') FROM DUAL;
SELECT ROUND(SYSDATE, 'DAY') FROM DUAL;
