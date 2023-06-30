CREATE DEFINER=`root`@`localhost` PROCEDURE `reajuste_comision`(vporcentaje DECIMAL(4, 2))
BEGIN
UPDATE tabla_de_vendedores
SET PORCENTAJE_COMISION = vporcentaje;
END