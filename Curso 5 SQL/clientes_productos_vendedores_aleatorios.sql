SELECT COUNT(*) AS MAX FROM clientes;

SELECT * FROM clientes LIMIT 5;

SELECT * FROM clientes LIMIT 5, 1;

SELECT * FROM clientes LIMIT 16, 1;

SELECT f_cliente_aleatorio();
SELECT f_producto_aleatorio();
SELECT f_vendedor_aleatorio();