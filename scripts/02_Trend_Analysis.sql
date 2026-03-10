-- ======================================================
-- FASE 2: ANÁLISIS DE TENDENCIAS (WINDOW FUNCTIONS)
-- MISIÓN 4: El "Time Travel" (LAG)
-- ======================================================

-- Consultamos la vista de la Fase 1 aplicando LAG
SELECT 
    Mes,
    Total_Facturado,
    LAG(Total_Facturado) OVER (ORDER BY Mes) AS Facturado_Mes_Anterior
FROM vw_Ventas_Mensuales;