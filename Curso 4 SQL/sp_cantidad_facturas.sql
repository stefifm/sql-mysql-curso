CREATE DEFINER=`root`@`localhost` PROCEDURE `cantidad_facturas`(vfecha DATE)
BEGIN
DECLARE n_facturas INTEGER;
SELECT count(*) INTO n_facturas
FROM facturas WHERE FECHA_VENTA = vfecha;
SELECT n_facturas;
END