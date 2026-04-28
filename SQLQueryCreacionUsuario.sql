-- 1. Nos ubicamos en la base de datos maestra para crear el Login
USE master;
GO

-- 2. Creación del Login (Autenticación a nivel de Servidor)
CREATE LOGIN usuario_lab WITH PASSWORD = 'PasswordSeguro123!', CHECK_POLICY = OFF;
GO

-- 3. Nos movemos a la base de datos que creó el Grupo 2
USE Farmacia;
GO

-- 4. Creación del Usuario asociado al Login (Autorización a nivel de Base de Datos)
CREATE USER usuario_lab FOR LOGIN usuario_lab;
GO

-- 5. Le damos permiso básico de lectura para que pueda ver los productos (Insumo para probar acceso)
ALTER ROLE db_datareader ADD MEMBER usuario_lab;
GO