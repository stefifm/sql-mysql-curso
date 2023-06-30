CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar`()
BEGIN
SELECT concat('Hola Mundo', ' ', '!!!!') AS RESULTADO;
END