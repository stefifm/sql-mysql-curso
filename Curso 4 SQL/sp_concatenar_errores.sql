CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar_comentarios`()
BEGIN
/*Esto es un comentario*/
-- esto es otro comentario
SELECT concat('Hola mundo', ' ', 'Esto es un string') AS RESULTADO;
END