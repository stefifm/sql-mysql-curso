CREATE DEFINER=`root`@`localhost` FUNCTION `f_numero_facturas`(fecha DATE) RETURNS int
BEGIN
DECLARE vretorno INT;
SELECT COUNT(*) INTO vretorno FROM facturas WHERE FECHA_VENTA = fecha;
RETURN vretorno;
END