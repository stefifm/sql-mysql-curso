CREATE DEFINER=`root`@`localhost` FUNCTION `f_producto_aleatorio`() RETURNS varchar(10) CHARSET utf8mb4
BEGIN
DECLARE vresultado VARCHAR(10);
DECLARE vmax INT; -- esto es el valor máximo de registros de la tabla
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM productos;
SET valeatorio = f_aleatorio(1, vmax);
SET valeatorio = valeatorio - 1;
SELECT CODIGO INTO vresultado FROM productos LIMIT valeatorio,1;
RETURN vresultado;
END