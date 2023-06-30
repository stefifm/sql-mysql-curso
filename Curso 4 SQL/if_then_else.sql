SELECT * FROM tabla_de_clientes;
SELECT * FROM facturas;
SELECT FECHA_DE_NACIMIENTO FROM tabla_de_clientes
WHERE DNI = '1471156710';
CALL edad_clientes('50534475787');

CALL evaluacion_facturas('2017-04-20');