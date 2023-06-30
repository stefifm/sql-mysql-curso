SELECT * FROM tabla_de_productos;
CALL mostrar_sabor('1000889');

SELECT count(*) AS CANTIDAD_FACTURAS FROM facturas WHERE FECHA_VENTA = '2017-01-01';

CALL cantidad_facturas('2017-01-01');