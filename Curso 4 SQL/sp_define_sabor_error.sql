CREATE DEFINER=`root`@`localhost` PROCEDURE `define_sabor_error`(vcodigo VARCHAR(20))
BEGIN
DECLARE vsabor VARCHAR(20);
DECLARE vresultado VARCHAR(30);

DECLARE mensaje_error VARCHAR(60);
DECLARE CONTINUE HANDLER FOR 1339
SET mensaje_error = 'Sabor no definido en ningún caso';

SELECT SABOR INTO vsabor FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = vcodigo;

-- CASE END CASE

CASE vsabor
WHEN 'Maracuyá' THEN SET vresultado = 'Rico';
WHEN 'Limón' THEN SET vresultado = 'Rico';
WHEN 'Frutilla' THEN SET vresultado = 'Rico';
WHEN 'Uva' THEN SET vresultado = 'Rico';
WHEN 'Sandía' THEN SET vresultado = 'Normal';
WHEN 'Mango' THEN SET vresultado = 'Normal';

END CASE;

SELECT vresultado;
SELECT mensaje_error;
END