CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping`()
BEGIN
-- variable para validar si hay mas datos en el cursor
DECLARE fin_c INT DEFAULT 0;
-- para el cursor
DECLARE vnombre VARCHAR(50);
DECLARE c CURSOR FOR SELECT NOMBRE FROM tabla_de_clientes;
-- para que fin_c tenga un valor para el caso de que no se haya encontrado
-- registros sobre el campo NOMBRE
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET fin_c = 1;
-- apertura del cursor
OPEN c;
-- ciclo while para recorrer el cursor
WHILE fin_c = 0
DO
FETCH c INTO vnombre;
-- un if para que no se repita los valores 
-- para el caso de que fin_c llegue a 1. 
IF fin_c = 0 THEN SELECT vnombre;
-- cierre del if
END IF;
-- cierre del while
END WHILE;
-- cierre del cursor
CLOSE c;
END