CREATE DATABASE retail_project;

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    edad INTEGER NOT NULL CHECK (edad >= 18)
);

CREATE TABLE productos (
id_producto SERIAL PRIMARY KEY,
precio DECIMAL(8,2) CHECK(precio>0),
categoria VARCHAR(50) NOT NULL,
stock INTEGER CHECK(stock>=0)
);

CREATE TABLE ventas (
    id_venta SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id)
        REFERENCES clientes(id_cliente) ON DELETE RESTRICT,
    CONSTRAINT fk_producto FOREIGN KEY (producto_id)
        REFERENCES productos(id_producto) ON DELETE RESTRICT
);




BEGIN;

INSERT INTO clientes (email, edad) VALUES
('jorge@retail.com', 34),
('carlos@retail.com', 27),
('lucia@retail.com', 19),
('martina@retail.com', 45),
('pedro@retail.com', 52);

INSERT INTO productos (categoria, precio, stock) VALUES
('Electrónica', 2000.00, 17),
('Electrónica', 5000.00, 23),
('Hogar', 1500.50, 40),
('Electrónica', 12000.00, 8),
('Hogar', 750.00, 100);

INSERT INTO ventas (cliente_id, producto_id) VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 3),
(5, 5);

COMMIT;


SELECT id_producto, precio FROM productos;

UPDATE productos
SET precio = precio * 1.10
WHERE categoria = 'Electrónica';



SELECT * FROM ventas WHERE id_venta = 5;
DELETE FROM ventas WHERE id_venta = 5;
