CREATE DEFINER=`root`@`localhost` FUNCTION `f_define_sabor`(vsabor VARCHAR(40)) RETURNS varchar(40) CHARSET utf8mb4
BEGIN
DECLARE vretorno VARCHAR(40) DEFAULT '';
CASE vsabor
WHEN 'Maracuyá' THEN SET vretorno = 'Rico';
WHEN 'Limón' THEN SET vretorno = 'Rico';
WHEN 'Frutilla' THEN SET vretorno = 'Rico';
WHEN 'Uva' THEN SET vretorno = 'Rico';
WHEN 'Sandía' THEN SET vretorno = 'Normal';
WHEN 'Mango' THEN SET vretorno = 'Normal';
ELSE SET vretorno = 'Los demás son comunes';
END CASE;

RETURN vretorno;
END