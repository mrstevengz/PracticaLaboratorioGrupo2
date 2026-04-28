USE Farmacia;
GO

-- 1. Forzar el error de permisos (El usuario solo tiene lectura)
-- Suplantamos al usuario_lab para la prueba
EXECUTE AS USER = 'usuario_lab';
GO

-- Intentamos insertar un registro. ESTO DARÁ UN ERROR
INSERT INTO Productos (Nombre, Precio) 
VALUES ('Vitamina C', 45.00);
GO

-- Revertimos a nuestro usuario administrador original
REVERT;
GO

-- 2. Agregar db_datawriter para solucionar el problema
ALTER ROLE db_datawriter ADD MEMBER usuario_lab;
GO

-- 3. Verificar cambio de comportamiento
-- Suplantamos nuevamente al usuario_lab
EXECUTE AS USER = 'usuario_lab';
GO

-- Volvemos a intentar la inserción.
INSERT INTO Productos (Nombre, Precio) 
VALUES ('Vitamina C', 45.00);
GO

-- Comprobamos que el usuario puede ver su propia inserción
SELECT * FROM Productos WHERE Nombre = 'Vitamina C';
GO

-- Revertimos a nuestro usuario administrador original
REVERT;
GO