SELECT current_timestamp() AS RESULTADO;

SELECT concat('La fecha y hora de hoy son: ', current_timestamp()) AS RESULTADO;

SELECT concat('La fecha y el horario son: ', DATE_FORMAT(current_timestamp(), '%Y')) AS RESULTADO;

SELECT concat('La fecha y el horario son: ', DATE_FORMAT(current_timestamp(), '%d/%m/%Y')) AS RESULTADO;

SELECT concat('La fecha y el horario son: ', DATE_FORMAT(current_timestamp(), '%Y')) AS RESULTADO;

SELECT concat('La fecha y el horario son: ', DATE_FORMAT(current_timestamp(), '%W %d/%m/%Y')) AS RESULTADO;

SELECT concat('La fecha y el horario son: ', DATE_FORMAT(current_timestamp(), '%W %d/%m/%Y a las %T')) AS RESULTADO;

SELECT CONVERT(23.45, CHAR) AS RESULTADO;

SELECT substring(CONVERT(23.45, CHAR), 3,1) AS RESULTADO;


SELECT @@sql_mode; SET sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SELECT CONCAT('El cliente ', TC.NOMBRE, ' facturó ', 
CONVERT(SUM(IFa.CANTIDAD * IFa.precio), CHAR(20))
 , ' en el año ', CONVERT(YEAR(F.FECHA_VENTA), CHAR(20))) AS FRASE FROM facturas F
INNER JOIN items_facturas IFa ON F.NUMERO = IFa.NUMERO
INNER JOIN tabla_de_clientes TC ON F.DNI = TC.DNI
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY TC.NOMBRE, YEAR(FECHA_VENTA);


SELECT concat( 'El cliente ', C.NOMBRE, ' facturó ',  CONVERT(SUM( (IFa.CANTIDAD * IFa.PRECIO)), CHAR(20))   , 'en el año ' , CONVERT(YEAR(FECHA_VENTA), CHAR(20))   ) AS FRASE
FROM facturas F
INNER JOIN items_facturas IFa ON F.NUMERO = IFa.NUMERO
INNER JOIN tabla_de_clientes C ON C.DNI = F.DNI
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY YEAR(FECHA_VENTA), C.NOMBRE;

