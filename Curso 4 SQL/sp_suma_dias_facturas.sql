CREATE DEFINER=`root`@`localhost` PROCEDURE `suma_dias_facturas`()
BEGIN
DECLARE fecha_inicial DATE DEFAULT '2017-01-01';
DECLARE fecha_final DATE DEFAULT '2017-01-10';
DECLARE n_facturas INT;

WHILE fecha_inicial <= fecha_final
DO 
SELECT COUNT(*) INTO n_facturas FROM facturas WHERE FECHA_VENTA = fecha_inicial;
SET fecha_inicial = ADDDATE(fecha_inicial, INTERVAL 1 DAY);
END WHILE;

SELECT n_facturas;

END