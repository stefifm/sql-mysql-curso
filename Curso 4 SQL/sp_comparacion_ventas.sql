CREATE DEFINER=`root`@`localhost` PROCEDURE `comparacion_ventas`(vfecha1 DATE, vfecha2 DATE)
BEGIN
DECLARE variacion FLOAT;
DECLARE vresultado VARCHAR(40);
DECLARE vfacturacion_inicial INTEGER;
DECLARE vfacturacion_final INTEGER;

-- FECHA1
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO vfacturacion_inicial FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha1;

-- FECHA2
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO vfacturacion_final FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha2;
SET variacion = ((vfacturacion_inicial / vfacturacion_final) - 1) * 100;
-- if-then-esleif

IF variacion > 10
THEN SET vresultado = 'Verde';
ELSEIF variacion >= -10 AND variacion < 10
THEN SET vresultado = 'Amarillo';
ELSE SET vresultado = 'Rojo';
END IF;
SELECT vresultado;
END