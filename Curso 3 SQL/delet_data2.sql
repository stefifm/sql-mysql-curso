SELECT * FROM tb_facturas_gral;
SELECT * FROM jugos_ventas.facturas;

SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO  FROM jugos_ventas.facturas;

INSERT INTO tb_facturas_gral
SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, 
IMPUESTO  FROM jugos_ventas.facturas
WHERE NUMERO NOT IN (SELECT NUMERO FROM tb_facturas_gral);

UPDATE tb_facturas_gral
SET IMPUESTO = 0.21;

-- Borrar la tabla

DELETE FROM tb_facturas_gral;
