CREATE DEFINER=`root`@`localhost` FUNCTION `f_vendedor_aleatorio`() RETURNS varchar(5) CHARSET utf8mb4
BEGIN
DECLARE vresultado VARCHAR(5);
DECLARE vmax INT; -- esto es el valor máximo de registros de la tabla
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM vendedores;
SET valeatorio = f_aleatorio(1, vmax);
SET valeatorio = valeatorio - 1;
SELECT MATRICULA INTO vresultado FROM vendedores LIMIT valeatorio,1;
RETURN vresultado;

END