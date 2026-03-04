-- ======================================================
-- PROYECTO: Northwind Advanced SQL
-- FASE 1: Arquitectura y Modularización
-- ======================================================

-- MISIÓN 1: Motor de Ventas Mensuales
-- Objetivo: Extraer el total de ventas mensual normalizado por fecha.
-- Se utiliza un CTE para separar el cálculo del subtotal de la agrupación final.

WITH Ventas_Detalladas AS (
    SELECT
        strftime('%Y-%m', o.OrderDate) AS Mes,
        od.UnitPrice * od.Quantity * (1 - od.Discount) AS Monto_Neto
    FROM [Order Details] AS od
    INNER JOIN Orders AS o ON o.OrderID = od.OrderID
)
-- Consulta final: Agrupa por mes y redondea el resultado a 2 decimales.

SELECT
    Mes,
    ROUND(SUM(Monto_Neto), 2) AS Total_Facturado
FROM Ventas_Detalladas
GROUP BY Mes
ORDER BY Mes ASC;