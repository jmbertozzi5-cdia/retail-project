# retail-project
retail-project
# Retail Project – Pre-entrega SQL

Script de PostgreSQL que crea el esquema base de un proyecto retail
(tablas `clientes`, `productos` y `ventas`) con restricciones de integridad
y una carga inicial de datos.

## Contenido
- **DDL:** creación de tablas con PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL y CHECK.
- **DML:** inserción de 5 registros por tabla dentro de una transacción (BEGIN ... COMMIT),
  un UPDATE de precios por categoría y un DELETE de una venta específica.

## Cómo ejecutarlo

### Con psql
psql -U postgres -f retail_project.sql

### Con pgAdmin
1. Ejecutar `CREATE DATABASE retail_project;` desde cualquier base.
2. Abrir un Query Tool conectado a `retail_project`.
3. Ejecutar el resto del script.
