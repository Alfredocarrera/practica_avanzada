DROP DATABASE IF EXISTS tienda_online;
CREATE DATABASE tienda_online;
USE tienda_online;

CREATE TABLE clientes (
cliente_id INT AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
telefono VARCHAR(20),
PRIMARY KEY (cliente_id)
);

CREATE TABLE categorias (
categoria_id INT AUTO_INCREMENT,
nombre_categoria VARCHAR(50) NOT NULL,
PRIMARY KEY (categoria_id)
);

CREATE TABLE productos (
producto_id INT AUTO_INCREMENT,
nombre_producto VARCHAR(100) NOT NULL,
precio DECIMAL(10, 2) NOT NULL CHECK (precio >= 0),
stock INT NOT NULL DEFAULT 0,
categoria_id INT,
PRIMARY KEY (producto_id),
CONSTRAINT fk_productos_categorias
FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
ON DELETE SET NULL
);

CREATE TABLE pedidos (
pedido_id INT AUTO_INCREMENT,
fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
estado VARCHAR(20) DEFAULT 'Pendiente',
cliente_id INT,
PRIMARY KEY (pedido_id),
CONSTRAINT fk_pedidos_clientes
FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
ON DELETE CASCADE
);

CREATE TABLE detalle_pedidos (
pedido_id INT,
producto_id INT,
cantidad INT NOT NULL CHECK (cantidad > 0),
precio_unitario DECIMAL(10, 2) NOT NULL,
PRIMARY KEY (pedido_id, producto_id),
CONSTRAINT fk_detalle_pedidosFOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
CONSTRAINT fk_detalle_productos
FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);