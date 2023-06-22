SELECT 
    ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM
    tabla_de_clientes GROUP BY ESTADO;
    
SELECT 
    ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM
    tabla_de_clientes GROUP BY ESTADO
HAVING LIMITE_TOTAL > 300000;

SELECT 
    ENVASE,
    MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
    MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM
    tabla_de_productos
GROUP BY ENVASE;

SELECT 
    ENVASE,
    MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
    MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM
    tabla_de_productos
GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) > 80;

SELECT 
    ENVASE,
    MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
    MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
    SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM
    tabla_de_productos
GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) > 80;

SELECT 
    ENVASE,
    MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
    MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
    SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM
    tabla_de_productos
GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) >= 80 AND PRECIO_MAXIMO >= 5;

SELECT * FROM facturas;

SELECT DNI, COUNT(*) FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
HAVING COUNT(*) > 2000;