CALL cursor_looping();

SELECT SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes;

CALL limite_creditos();