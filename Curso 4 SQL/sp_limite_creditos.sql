CREATE DEFINER=`root`@`localhost` PROCEDURE `limite_creditos`()
BEGIN
DECLARE fin_c INT DEFAULT 0;
DECLARE limite_credito INT DEFAULT 0;
DECLARE limite_total INT DEFAULT 0;

DECLARE c CURSOR FOR SELECT LIMITE_DE_CREDITO FROM tabla_de_clientes;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET fin_c = 1;

OPEN c;
-- ciclo while para recorrer el cursor
WHILE fin_c = 0
DO
FETCH c INTO limite_credito;
-- un if para que no se repita los valores 
-- para el caso de que fin_c llegue a 1. 
IF fin_c = 0 THEN SET limite_total = limite_total + limite_credito;
-- cierre del if
END IF;
-- cierre del while
END WHILE;
-- cierre del cursor
SELECT limite_total;
CLOSE c;
END