SELECT * FROM tabla_de_productos;

/*
PRECIO > 12 producto costoso
PRECIO > 7 PRECIO < 12 producto asequible
PRECIO < 7 producto barato
*/

SELECT PRECIO_DE_LISTA FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1000801';

CALL precio_producto('1000801');
CALL precio_producto('1004327');
CALL precio_producto('1002334');

-- CON CASE
CALL precio_producto_case('1000801');
CALL precio_producto_case('1004327');
CALL precio_producto_case('1002334');


SELECT SUM(B.CANTIDAD * B.PRECIO) AS TOTAL_VENTA FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = '20170301';

CALL comparacion_ventas('2017-03-01', '2017-03-05');

-- con case
CALL comparacion_ventas_case('2017-03-01', '2017-03-05');