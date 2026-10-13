INSERT INTO categorias (nombre_categoria) VALUES
('Electrónica'),
('Ropa'),
('Hogar'),
('Jardín');

INSERT INTO productos (nombre_producto, precio, stock, categoria_id) VALUES
('Laptop Gamer', 1200.00, 10, 1),
('Smartphone', 800.00, 15, 1),
('Camiseta Algodón', 25.00, 50, 2),
('Lámpara de Mesa', 45.00, 20, 3),
('Mouse Inalámbrico', 30.00, 5, NULL);


INSERT INTO clientes (nombre, apellido, email, telefono) VALUES('Carlos', 'Mendoza', 'carlos@email.com', '555-0101'),
('Ana', 'García', 'ana@email.com', '555-0102'),
('Luis', 'Torres', 'luis@email.com', '555-0103'),
('María', 'Reyes', 'maria@email.com', '555-0104');


INSERT INTO pedidos (cliente_id, estado) VALUES
(1, 'Completado'),
(1, 'En Proceso'),
(2, 'Pendiente');


INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario)
VALUES
(1, 1, 1, 1200.00),
(1, 3, 2, 25.00),
(2, 2, 1, 800.00),
(3, 4, 1, 45.00);


