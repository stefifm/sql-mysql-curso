INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor, precio) 
VALUES ('544931', 'Verano', 'Lata', '350 ml', 'Limón', 2.46);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor, precio) 
VALUES ('290478', 'Vida del Campo', 'Lata', '350 ml', 'Sandía', 4.56);

SELECT * FROM tbproductos;

UPDATE tbproductos SET  sabor = 'Limón'
WHERE producto = '544931';

UPDATE tbproductos SET  sabor = 'Sandía'
WHERE producto = '290478';

UPDATE tbproductos SET  sabor = 'Frutilla/Limón'
WHERE producto = '826490';

SELECT * FROM tbproductos;

