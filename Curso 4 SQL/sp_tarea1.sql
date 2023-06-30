CREATE DEFINER=`root`@`localhost` PROCEDURE `tarea1`()
BEGIN
DECLARE cliente VARCHAR(10) DEFAULT 'Juan';
DECLARE edad INTEGER DEFAULT 10;
DECLARE fecha_nacimiento DATE DEFAULT '2007-01-10';
DECLARE costo FLOAT DEFAULT 10.23;

SELECT cliente, edad, fecha_nacimiento, costo;
END