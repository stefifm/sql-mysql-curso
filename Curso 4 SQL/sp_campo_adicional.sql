CREATE DEFINER=`root`@`localhost` PROCEDURE `campo_adicional`()
BEGIN
-- para el fin del cursor
DECLARE fin_c INT DEFAULT 0;

-- para el cursor
DECLARE vcantidad INT DEFAULT 0;
DECLARE vprecio FLOAT DEFAULT 0;
DECLARE vfacturacion FLOAT DEFAULT 0;

-- EL CURSOR
DECLARE c CURSOR FOR SELECT IFa.CANTIDAD, IFa.PRECIO FROM items_facturas IFa
INNER JOIN facturas  F ON F.NUMERO = IFa.NUMERO
WHERE MONTH(F.FECHA_VENTA) = 1 AND YEAR(F.FECHA_VENTA) = 2017;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET fin_c = 1;

OPEN c;
-- ciclo while para recorrer el cursor
WHILE fin_c = 0
DO
FETCH c INTO vcantidad, vprecio;
IF fin_c = 0 THEN SET vfacturacion = vfacturacion + (vcantidad*vprecio);
-- cierre del if
END IF;
-- cierre del while
END WHILE;
-- cierre del cursor
SELECT vfacturacion;
CLOSE c;
END