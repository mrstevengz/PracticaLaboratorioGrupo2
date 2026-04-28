USE Farmacia;
GO

-- 1. Revisar accesos y documentar permisos existentes del usuario
-- Utilizar el procedimiento almacenado del sistema recomendado
EXEC sp_helpuser 'usuario_lab';
GO