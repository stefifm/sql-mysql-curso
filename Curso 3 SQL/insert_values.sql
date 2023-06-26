INSERT INTO tb_productos
(
CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA
)
VALUES
(
'1040107', 'Light', 'Sandía', '350 ml', 'Lata', 4.56
);

INSERT INTO tb_productos
(
CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA
)
VALUES
(
'1040108', 'Light', 'Guanábana', '350 ml', 'Lata', 4.00
);

SELECT * FROM tb_productos;

INSERT INTO tb_productos
VALUES
('1040109', 'Light', 'Asaí', '350 ml', 'Lata', 5.60),
('1040110', 'Light', 'Manzana', '350 ml', 'Lata', 6.00),
('1040111', 'Light', 'Mango', '350 ml', 'Lata', 3.50);

INSERT INTO tb_clientes
VALUES 
('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1),
('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-01-25', 29, 'M', 70000, 160000, 1),
('5576228758', 'Patricia Olivera', 'Pachuca 75','Condesa', 'Ciudad de México','EM', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);

SELECT * FROM tb_clientes;