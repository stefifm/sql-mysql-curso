USE ventas_jugos;
ALTER TABLE tb_venta RENAME tb_factura;

ALTER TABLE items_facturas RENAME tb_items_facturas;

ALTER TABLE facturas RENAME tb_facturas_gral;

ALTER TABLE clientes RENAME tb_clientes;