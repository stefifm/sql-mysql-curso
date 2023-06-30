CREATE DEFINER=`root`@`localhost` PROCEDURE `incluir_producto_params`(vcodigo VARCHAR(20), 
vnombre VARCHAR(20), vsabor VARCHAR(20), vtamano VARCHAR(20), venvase VARCHAR(20), vprecio DECIMAL(4,2))
BEGIN
DECLARE mensaje VARCHAR(40);
-- inicio bloque de error
DECLARE EXIT HANDLER FOR 1062
BEGIN
	SET mensaje = 'Producto duplicado';
	SELECT mensaje;
END;
-- termina el bloque de error
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo,vnombre,vsabor,vtamano,venvase,vprecio);
     
SET mensaje = 'Producto incluido con éxito';
SELECT mensaje;
END