-- PRE-ENTREGA 5: CONSULTAS CON JOINS
-- Objetivo: combinar tablas para enriquecer el análisis de ventas.

USE Ventas_Tech_DB;

-- CONSULTA 1: VISTA BASE DEL PROYECTO (INNER JOIN)
-- Propósito: combinar ventas con clientes, productos y categorías.

SELECT
 v.fecha_venta,
    c.id_cliente,
    c.nombre,
    p.nombre_producto,
    cat.nombre_categoria,
    v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario AS total_venta

    FROM ventas AS v
    
    INNER JOIN clientes AS c
    ON v.id_cliente = c.id_cliente

    INNER JOIN productos AS p
    ON v.id_producto = p.id_producto

    INNER JOIN categorias AS cat
    ON p.id_categoria = cat.id_categoria;
-- Hallazgo: La categoría Computación concentra el 76,8 % de la facturación total ($ 4.950).
-- Esto evidencia que es la principal categoría generadora de ingresos del negocio.


-- CONSULTA 2: CLIENTES SIN VENTAS (LEFT JOIN)
-- Propósito: identificar clientes registrados que nunca realizaron compras.

SELECT
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes AS c
LEFT JOIN ventas AS v
    ON c.id_cliente = v.id_cliente
    WHERE v.id_venta IS NULL;
-- Hallazgo: No se encontraron clientes sin ventas (0 registros).
-- Los 5 clientes registrados realizaron al menos una compra.


-- CONSULTA 3: PRODUCTOS SIN VENTAS (LEFT JOIN)
-- Propósito: identificar productos del catálogo que no registran ventas.

SELECT
    p.nombre_producto,
    cat.nombre_categoria,
    p.precio
FROM productos AS p
INNER JOIN categorias AS cat
    ON p.id_categoria = cat.id_categoria
LEFT JOIN ventas AS v
    ON p.id_producto = v.id_producto
    WHERE v.id_venta IS NULL;
-- Hallazgo: No se encontraron productos sin ventas (0 registros).
-- Los 6 productos del catálogo registran al menos una venta en esta muestra.


-- CONSULTA 4: CONSOLIDADO POR CANAL (UNION ALL)
-- Propósito: combinar dos grupos de ventas mediante UNION ALL.
SELECT
    canal,
    SUM(total) AS total_canal
FROM (
SELECT
    fecha_venta,
    cantidad * precio_unitario AS total,
    'Primer período' AS canal
FROM ventas
WHERE fecha_venta <= '2024-03-10'

UNION ALL

SELECT
    fecha_venta,
    cantidad * precio_unitario AS total,
    'Segundo período' AS canal
FROM ventas
WHERE fecha_venta > '2024-03-10'
) AS consolidado
GROUP BY canal;
-- Hallazgo: El primer período registró una facturación de $3.620 y el segundo de $2.824.
-- El primer período generó $796 más de facturación que el segundo.