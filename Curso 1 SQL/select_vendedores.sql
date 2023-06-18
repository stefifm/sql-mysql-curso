USE jugos;
SELECT matricula, nombre FROM tbvendedores;

SELECT * FROM tbvendedores WHERE nombre = 'Claudia Morais';

SELECT * FROM tbvendedores WHERE comision > 0.10;

SELECT * FROM tbvendedores WHERE YEAR(fecha_admision) >= 2016;

SELECT * FROM tbvendedores;

SELECT * FROM tbvendedores WHERE de_vacaciones = 1 AND YEAR(fecha_admision) < 2016;

SELECT nombre, matricula FROM tbvendedores;