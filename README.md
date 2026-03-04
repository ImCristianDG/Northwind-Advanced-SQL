# Northwind Advanced SQL Analytics

## Objetivo
Este repositorio tiene como fin documentar el aprendizaje de funciones avanzadas de SQL aplicadas a un entorno empresarial. Se utiliza la base de datos Northwind para resolver problemas de lógica que exceden las consultas básicas.

## Fase 1: Arquitectura y Modularización
Foco en el uso de **CTEs (Common Table Expressions)** para estructurar consultas complejas y limpieza de series temporales con funciones de fecha.

### Misión 1: Motor de Ventas Mensuales 

- Objetivo: Obtener la facturación total mes a mes de toda la historia de la empresa.
- Herramientas utilizadas: `CTE (WITH)` para modularizar la consulta.
    - `JOIN` para conectar órdenes con detalles de productos.
    - `strftime` para normalizar fechas al formato YYYY-MM.
    - `ROUND` para limpieza de datos financieros.
- Resultado: Una serie de tiempo limpia con 136 registros de ventas mensuales.

--

## Fase 2: Funciones de Ventana (Window Functions)
Aplicación de **LAG** y **LEAD** para análisis comparativo intermensual y **RANK** para la generación de ránkings de desempeño.

--

## Fase 3: Lógica de Negocio
Implementación de **CASE WHEN** para segmentación de datos y creación de **Vistas (Views)** para la simplificación de reportes finales.

---

## Estado del Proyecto
* **Fase 1:** En proceso.
* **Fase 2:** Pendiente.
* **Fase 3:** Pendiente.