SELECT * FROM tb_vendedor;

SELECT * FROM jugos_ventas.tabla_de_vendedores;

SELECT * FROM tb_vendedor A
INNER JOIN 
jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = substr(B.MATRICULA, 3, 3);

UPDATE tb_vendedor A 
INNER JOIN 
jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = substr(B.MATRICULA, 3, 3)
SET A.DE_VACACIONES = B.VACACIONES;

SELECT A.DNI, A.NOMBRE, A.VOLUMEN_COMPRA ,B.NOMBRE, B.BARRIO, B.COMISION FROM tb_clientes A
INNER JOIN tb_vendedor B
ON A.BARRIO = B.BARRIO;

UPDATE tb_clientes A
INNER JOIN tb_vendedor B
ON A.BARRIO = B.BARRIO
SET A.VOLUMEN_COMPRA = A.VOLUMEN_COMPRA * 1.3;

SELECT * FROM tb_clientes;