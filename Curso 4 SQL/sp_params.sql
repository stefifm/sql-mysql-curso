CALL incluir_producto_params(
'1000800',
'Sabor del Mar',
'700 ml',
'Naranja',
'Botella de Vidrio',
2.25);

SELECT * FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL reajuste_comision(0.90);

SELECT PORCENTAJE_COMISION FROM tabla_de_vendedores;