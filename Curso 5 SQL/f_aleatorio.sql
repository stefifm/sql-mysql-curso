CREATE DEFINER=`root`@`localhost` FUNCTION `f_aleatorio`(vmin INT, vmax INT) RETURNS int
BEGIN
DECLARE vresultado INT;
SELECT  floor((RAND() * (vmax-vmin+1)) + vmin) INTO vresultado;
RETURN vresultado;
END