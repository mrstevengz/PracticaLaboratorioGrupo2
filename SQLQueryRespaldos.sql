USE master;
GO

-- 1. Verificar modo de recuperación 
SELECT name AS BaseDeDatos, recovery_model_desc AS ModeloDeRecuperacion
FROM sys.databases
WHERE name = 'Farmacia';
GO

-- 2. Ejecutar respaldo físico en disco
BACKUP DATABASE Farmacia 
TO DISK = 'C:\Backup\Farmacia.bak'
GO