-- VERSION v2

USE Farmacia;
GO

ALTER TABLE Productos
ADD Stock INT NOT NULL DEFAULT 0;
GO

-- VERSION v3
-- Seguridad y permisos

USE Farmacia;
GO

CREATE LOGIN UsuarioFarmacia 
WITH PASSWORD = 'Farmacia123';

CREATE USER UsuarioFarmacia 
FOR LOGIN UsuarioFarmacia;

GRANT SELECT, INSERT 
ON Productos 
TO UsuarioFarmacia;
GO