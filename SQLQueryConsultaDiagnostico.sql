-- 1. Información de los modelos de recuperación de las BD
SELECT name AS 'Base de Datos', recovery_model_desc AS 'Modelo de Recuperación', state_desc AS 'Estado'
FROM sys.databases;

-- 2. Versión del servidor (Dato extra muy útil para el diagnóstico)
SELECT @@VERSION AS 'Versión de SQL Server';