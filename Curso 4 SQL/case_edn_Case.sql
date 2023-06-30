SELECT DISTINCT * FROM tabla_de_productos;

/*
PARA EL CASE END CASE 
Maracuyá Rico
Limón Rico
Frutilla Rico
Uva Rico
Sandía Normal
Mango Normal
Los demás son Comunes
*/

SELECT SABOR FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1000889';

CALL define_sabor('1000889');
CALL define_sabor('1000800');
CALL define_sabor('1078680');


