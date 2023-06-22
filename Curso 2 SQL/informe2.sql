-- INFORME DE VENTAS POR SABOR
-- necesitamos hacer un inner join de tres tablas:
-- productos, facturas e items facuras

SELECT P.SABOR, IFa.CANTIDAD, F.FECHA_VENTA FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO;

-- vamos a obtener el año de la fecha de venta 
-- y la suma total de las cantidades
-- del año 2016
-- cantidad vendida por sabor
SELECT P.SABOR, sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY P.SABOR, year(F.FECHA_VENTA)
ORDER BY sum(IFa.CANTIDAD) DESC;

-- cantidad total vendida
SELECT sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY year(F.FECHA_VENTA)
ORDER BY sum(IFa.CANTIDAD) DESC;

-- unir la cantidad total por año con cantidad total por sabor

-- cantidad vendida por sabor

SELECT * FROM (

SELECT P.SABOR, sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY P.SABOR, year(F.FECHA_VENTA)
ORDER BY sum(IFa.CANTIDAD) DESC) VENTAS_SABOR

INNER JOIN (
-- cantidad total vendida
SELECT sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY year(F.FECHA_VENTA)
ORDER BY year(F.FECHA_VENTA)) VENTA_TOTAL
ON VENTA_TOTAL.AÑO = VENTAS_SABOR.AÑO;

-- CALCULAR EL PORCENTAJE CON LA QUERY ANTERIOR

SELECT VENTAS_SABOR.SABOR, VENTAS_SABOR.AÑO, VENTAS_SABOR.CANTIDAD_TOTAL ,
ROUND((VENTAS_SABOR.CANTIDAD_TOTAL/VENTA_TOTAL.CANTIDAD_TOTAL)*100, 2)
AS PORCENTAJE
FROM (

SELECT P.SABOR, sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY P.SABOR, year(F.FECHA_VENTA)
ORDER BY sum(IFa.CANTIDAD) DESC) VENTAS_SABOR

INNER JOIN (
-- cantidad total vendida
SELECT sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY year(F.FECHA_VENTA)
ORDER BY year(F.FECHA_VENTA)) VENTA_TOTAL
ON VENTA_TOTAL.AÑO = VENTAS_SABOR.AÑO
ORDER BY VENTAS_SABOR.CANTIDAD_TOTAL DESC;

-- ranking de ventas por tamaño

SELECT VENTAS_TAMANO.TAMANO, VENTAS_TAMANO.AÑO, VENTAS_TAMANO.CANTIDAD_TOTAL ,
ROUND((VENTAS_TAMANO.CANTIDAD_TOTAL/VENTA_TOTAL.CANTIDAD_TOTAL)*100, 2)
AS PORCENTAJE
FROM (

SELECT P.TAMANO, sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY P.TAMANO, year(F.FECHA_VENTA)
ORDER BY sum(IFa.CANTIDAD) DESC) VENTAS_TAMANO

INNER JOIN (
-- cantidad total vendida
SELECT sum(IFa.CANTIDAD) AS CANTIDAD_TOTAL, year(F.FECHA_VENTA) AS AÑO FROM 
tabla_de_productos P
INNER JOIN
items_facturas IFa
ON P.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
INNER JOIN facturas F
ON F.NUMERO = IFa.NUMERO
WHERE  year(F.FECHA_VENTA) = 2016
GROUP BY year(F.FECHA_VENTA)
ORDER BY year(F.FECHA_VENTA)) VENTA_TOTAL
ON VENTA_TOTAL.AÑO = VENTAS_TAMANO.AÑO
ORDER BY VENTAS_TAMANO.CANTIDAD_TOTAL DESC;

