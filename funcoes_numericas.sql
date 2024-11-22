/*
FUNÇÕES NUMÉRICAS

*/


/*
ROUND
- Até 3.4 arredonda para 3, 3.5 para cima arredonda para 4.
*/
SELECT ROUND(3.3) FROM DUAL;
SELECT ROUND(3.5) FROM DUAL;
SELECT ROUND(3.9) FROM DUAL;
/*
TRUNC
- Não importa o decimal, puxa para baixo.
*/
SELECT TRUNC(3.3) FROM DUAL;
SELECT TRUNC(3.5) FROM DUAL;
SELECT TRUNC(3.9) FROM DUAL;
/*
CEIL
- Não importa o decimal, puxa para cima.
*/
SELECT CEIL(3.3) FROM DUAL;
SELECT CEIL(3.5) FROM DUAL;
SELECT CEIL(3.9) FROM DUAL;
/*
FLOOR
- Não importa o decimal, puxa para baixo.
*/
SELECT CEIL(3.3) FROM DUAL;
SELECT CEIL(3.5) FROM DUAL;
SELECT CEIL(3.9) FROM DUAL;
/*
POWER
- Um número elevado a outro.
EXP
- Exponencial;
*/
SELECT POWER(10,4) FROM DUAL;
SELECT EXP(10) FROM DUAL;
/*
SQRT
- Raiz quadrada.
*/
SELECT SQRT(10) FROM DUAL;
/*
ABS
- Retorna o valor absoluto de um número.
*/
SELECT ABS(-10) FROM DUAL;
/*
MOD
- Retorna o resto do valor.
*/
SELECT MOD(10, 6) FROM DUAL;