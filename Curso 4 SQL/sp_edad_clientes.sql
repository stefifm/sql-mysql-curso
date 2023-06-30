CREATE DEFINER=`root`@`localhost` PROCEDURE `edad_clientes`(vdni VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(50);
DECLARE vfecha DATE;
SELECT FECHA_DE_NACIMIENTO INTO vfecha FROM tabla_de_clientes
WHERE DNI = vdni;
IF 
vfecha <  DATE('1995-01-01')
THEN
SET vresultado = 'Cliente viejo';
ELSE
SET vresultado = 'Cliente joven';
END IF;
SELECT vresultado;
END