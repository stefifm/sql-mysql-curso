SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 23.30 AND 27.52;

SELECT * FROM tbproducto WHERE ENVASE = 'Lata' OR ENVASE = 'Botella PET';

SELECT * FROM tbproducto WHERE PRECIO_LISTA >= 15 AND PRECIO_LISTA <= 27;

SELECT * FROM tbproducto WHERE (PRECIO_LISTA >= 15 AND PRECIO_LISTA <= 27) OR ( ENVASE = 'Lata' OR ENVASE = 'Botella PET');