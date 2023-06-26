-- para crear la base de datos sea con
-- DATABASE O SCHEMA
CREATE DATABASE ventas_jugos;

CREATE SCHEMA ventas_jugos2;

-- creando base de datos con if not exists
CREATE SCHEMA IF NOT EXISTS ventas_jugos2;

-- eliminar base de datos
DROP DATABASE ventas_jugos2;

-- creando base de datos con especificaciones
CREATE SCHEMA IF NOT EXISTS ventas_jugos2 DEFAULT
CHARSET utf32;