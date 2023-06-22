SELECT DISTINCT BARRIO FROM tabla_de_clientes;
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- UNION

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- UNION ALL

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- mas ejemplos
SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE, DNI FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR, MATRICULA FROM tabla_de_vendedores;

-- la solución al full join

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, 
tabla_de_vendedores.NOMBRE, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;