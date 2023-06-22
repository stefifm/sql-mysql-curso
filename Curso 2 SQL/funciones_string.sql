SELECT LTRIM('      MySQL es fácil');
SELECT RTRIM('MySQL es fácil        ');
SELECT TRIM('      MySQL es fácil     ');

SELECT CONCAT('MySQL es fácil ', ' No lo crees?');
SELECT UPPER('mysql es una base de datos interesante');
SELECT LOWER('MYSQL ES FACIL');

SELECT SUBSTRING('mysql es una base de datos interesante', 14, 4);

SELECT CONCAT(NOMBRE, ' ', DNI) FROM tabla_de_clientes;

SELECT * FROM tabla_de_clientes;

SELECT CONCAT(NOMBRE, ', ', DIRECCION_1, ', ', BARRIO, ', ', CIUDAD, ', ', ESTADO) FROM tabla_de_clientes;