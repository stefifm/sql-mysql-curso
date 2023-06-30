CREATE DEFINER=`root`@`localhost` PROCEDURE `define_sabor`(vcodigo VARCHAR(20))
BEGIN
DECLARE vsabor VARCHAR(20);
DECLARE vresultado VARCHAR(30);

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
ELSE SET vresultado = 'Los demás son comunes';
END CASE;

SELECT vresultado;

END