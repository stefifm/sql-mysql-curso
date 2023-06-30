CREATE DEFINER=`root`@`localhost` PROCEDURE `precio_producto_case`(vcodigo VARCHAR(20))
BEGIN
-- declarando variables
DECLARE vresultado VARCHAR(40);
DECLARE vprecio FLOAT;

-- operaciones
SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO =vcodigo;

-- con case

CASE 
WHEN vprecio >= 12 THEN SET vresultado = 'Producto costoso';
WHEN vprecio >= 7 AND vprecio < 12 THEN SET vresultado = 'Producto asequible';
WHEN vprecio < 7 THEN SET vresultado = 'Producto barato';

END CASE

-- if-then-elseif
/* IF vprecio >= 12
THEN SET vresultado = 'Producto costoso';
ELSEIF vprecio >= 7 AND vprecio < 12
THEN SET vresultado = 'Producto asequible';
ELSE
SET vresultado = 'Producto barato';
END IF;
*/;
-- mostrar resultado
SELECT vresultado;
END