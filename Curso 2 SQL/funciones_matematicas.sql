SELECT (34+346-67)/15 * 29 AS RESULTADO;

SELECT ceiling(23.1222);
SELECT floor(23.1222);
SELECT round(23.1222, 2);
SELECT ROUND(rand(),2);

SELECT * FROM tabla_de_clientes;


SELECT YEAR(FECHA_VENTA), FLOOR(SUM(IMPUESTO * (CANTIDAD * PRECIO))) 
AS RESULTADO
FROM facturas F
INNER JOIN items_facturas IFa ON F.NUMERO = IFa.NUMERO
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY YEAR(FECHA_VENTA);