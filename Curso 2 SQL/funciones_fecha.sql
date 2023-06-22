SELECT curdate();
SELECT current_date();
SELECT current_timestamp();
SELECT year(current_timestamp());
SELECT month(current_timestamp());
SELECT day(current_timestamp());
SELECT monthname(current_timestamp());
SELECT dayname(current_timestamp());
SELECT datediff(current_timestamp(), '2023-01-01') AS DIFERENCIA_DIAS;
SELECT datediff(current_timestamp(), '1992-04-18') AS FECHA_NACIMIENTO;

SELECT current_timestamp() AS DIA_HOY, date_sub(current_timestamp(), INTERVAL 1 MONTH) AS RESULTADO;

SELECT DISTINCT FECHA_VENTA,
dayname(FECHA_VENTA) AS DIA, monthname(FECHA_VENTA) AS MES, year(FECHA_VENTA) AS AÑO
FROM facturas;

SELECT * FROM tabla_de_clientes;

SELECT DISTINCT NOMBRE, FECHA_DE_NACIMIENTO,
(year(curdate()) - year(FECHA_DE_NACIMIENTO)) AS EDAD_ACTUAL
FROM tabla_de_clientes;