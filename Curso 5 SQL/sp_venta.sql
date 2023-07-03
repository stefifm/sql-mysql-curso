CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta`(vfecha DATE, maxitems INT, maxcant INT )
BEGIN
DECLARE vcliente VARCHAR(11);
DECLARE vproducto VARCHAR(10);
DECLARE vvendedor VARCHAR(5);
DECLARE vprecio FLOAT;
DECLARE vcantidad INT;
DECLARE vitems INT;
DECLARE vnfactura INT;
DECLARE vcontador INT DEFAULT 1;
DECLARE vnumitems INT;

SELECT MAX(NUMERO)  + 1 INTO vnfactura FROM facturas;

SET vcliente = f_cliente_aleatorio();
SET vvendedor = f_vendedor_aleatorio();
INSERT INTO facturas (NUMERO, FECHA, DNI, MATRICULA, IMPUESTO) 
VALUES (
vnfactura,
vfecha,
vcliente,
vvendedor, 
0.16 
);
SET vitems = f_aleatorio(1,maxitems);

WHILE vcontador <= vitems
DO
SET vproducto = f_producto_aleatorio();

-- PARA EVITAR QUE SE DUPLIQUEN LOS PRODUCTOS
SELECT COUNT(*) INTO vnumitems FROM items
WHERE CODIGO = vproducto AND NUMERO = vnfactura;
IF vnumitems = 0 THEN
	SET vcantidad = f_aleatorio(1, maxcant);
	SELECT PRECIO INTO vprecio FROM productos
	WHERE CODIGO = vproducto;
	INSERT INTO items(NUMERO, CODIGO, CANTIDAD, PRECIO)
	VALUES 
	(vnfactura, vproducto, vcantidad, vprecio);
END IF;
SET vcontador = vcontador + 1;

END WHILE;

END