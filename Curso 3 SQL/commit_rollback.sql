INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('256',
'Fernando Ruiz',
'Oblatos',
0.1,
'2015-06-14',
0);

SELECT * FROM tb_vendedor;

START TRANSACTION;

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('257',
'Fernando Alonso',
'Oblatos',
0.1,
'2015-06-14',
0);

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('258',
'David Ruiz',
'Del Valle',
0.15,
'2015-06-14',
0);

UPDATE tb_vendedor
SET COMISION = COMISION * 1.05;

ROLLBACK;

COMMIT;