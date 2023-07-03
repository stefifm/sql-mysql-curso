-- Algoritmo para generar un número aleatorio
-- MIN = 20 , MAX = 250
-- (RAND() * (MAX-MIN+1)) + MIN
SET GLOBAL log_bin_trust_function_creators = 1;

SELECT  (RAND() * (250-20+1)) + 20 AS RESULTADO;

SELECT  floor((RAND() * (250-20+1)) + 20) AS RESULTADO;

SELECT f_aleatorio(1, 10);