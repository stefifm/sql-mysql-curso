INSERT INTO tb_productos (CODIGO,DESCRIPCION,SABOR,TAMANO,ENVASE,PRECIO_LISTA)
     VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50),
         ('1001000','Sabor Alpino','Mel�n','700 ml','Botella',7.50),
         ('1001002','Sabor Alpino','Guan�bana','700 ml','Botella',7.50),
         ('1001003','Sabor Alpino','Mandarina','700 ml','Botella',7.50),
         ('1001004','Sabor Alpino','Banana','700 ml','Botella',7.50),
         ('1001005','Sabor Alpino','Asa�','700 ml','Botella',7.50),
         ('1001006','Sabor Alpino','Mango','1 Litro','Botella',7.50),
         ('1001007','Sabor Alpino','Mel�n','1 Litro','Botella',7.50),
         ('1001008','Sabor Alpino','Guan�bana','1 Litro','Botella',7.50),
         ('1001009','Sabor Alpino','Mandarina','1 Litro','Botella',7.50),
         ('1001010','Sabor Alpino','Banana','1 Litro','Botella',7.50),
         ('1001011','Sabor Alpino','Asa�','1 Litro','Botella',7.50);
         
SELECT * FROM tb_productos;

UPDATE tb_productos
SET SABOR = 'Melón'
WHERE CODIGO = '1001000';

UPDATE tb_productos
SET SABOR = 'Guanábana'
WHERE CODIGO = '1001002';

UPDATE tb_productos
SET SABOR = 'Asaí'
WHERE CODIGO = '1001005';

UPDATE tb_productos
SET SABOR = 'Melón'
WHERE CODIGO = '1001007';

UPDATE tb_productos
SET SABOR = 'Guanábana'
WHERE CODIGO = '1001008';

UPDATE tb_productos
SET SABOR = 'Asaí'
WHERE CODIGO = '1001011';

SELECT * FROM tb_productos WHERE DESCRIPCION = 'Sabor Alpino';

DELETE FROM tb_productos WHERE CODIGO = '1001000';

DELETE FROM tb_productos WHERE TAMANO = '1 Litro';

SELECT CODIGO_DEL_PRODUCTO FROM jugos_ventas.tabla_de_productos;

SELECT CODIGO FROM tb_productos
WHERE CODIGO NOT IN (SELECT CODIGO_DEL_PRODUCTO FROM jugos_ventas.tabla_de_productos);

DELETE FROM tb_productos
WHERE CODIGO NOT IN (SELECT CODIGO_DEL_PRODUCTO 
FROM jugos_ventas.tabla_de_productos);

SELECT * FROM tb_productos;

DELETE A FROM tb_factura A
INNER JOIN 
tb_clientes B 
ON A.DNI = B.DNI
WHERE B.EDAD < 18;



