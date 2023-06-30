CREATE DEFINER=`root`@`localhost` PROCEDURE `evaluacion_facturas`(vfecha DATE)
BEGIN
DECLARE n_facturas INTEGER;
DECLARE vresultado VARCHAR(50);
SELECT count(*) INTO n_facturas
FROM facturas WHERE FECHA_VENTA = vfecha;

IF
n_facturas > 70
THEN
SET vresultado = 'Muchas facturas';
ELSE 
SET vresultado = 'Pocas facturas';
END IF;
SELECT n_facturas, vresultado;
END