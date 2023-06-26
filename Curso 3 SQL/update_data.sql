SELECT * FROM tb_productos;

UPDATE tb_productos SET PRECIO_LISTA = 5 WHERE CODIGO = '1000889';
UPDATE tb_productos SET DESCRIPCION = 'Sabor de la Montaña' WHERE CODIGO = '1000889';
UPDATE tb_productos SET TAMANO = '1 litro', ENVASE = 'Botella PET' WHERE CODIGO = '1000889';

SELECT * FROM tb_clientes WHERE DNI = '5840119709';

-- actualizar todo el campo de volumen_compra

UPDATE tb_clientes SET VOLUMEN_COMPRA = VOLUMEN_COMPRA/10;

UPDATE tb_clientes SET
DIRECCION = 'Jorge Emilio 23', BARRIO = 'San Antonio',
CIUDAD = 'Guadalajara', ESTADO = 'JC', CP = '44700000'
WHERE DNI = '5840119709';

SELECT * FROM tb_clientes;