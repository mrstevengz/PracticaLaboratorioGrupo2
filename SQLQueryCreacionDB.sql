-- 1. Creación de la base de datos
CREATE DATABASE Farmacia;
GO

-- 2. Seleccionar la base de datos recién creada
USE Farmacia;
GO

-- 3. Crear tabla con exactamente TRES campos y su Llave Primaria
CREATE TABLE Productos (
    ProductoID INT IDENTITY(1,1) PRIMARY KEY -- Campo 1 (Llave Primaria)
    , Nombre NVARCHAR(100) NOT NULL            -- Campo 2
    , Precio DECIMAL(10,2) NOT NULL             -- Campo 3
);
GO

-- 4. Insertar exactamente TRES registros
INSERT INTO Productos (Nombre, Precio)
VALUES 
('Paracetamol 500mg', 15.50)
, ('Ibuprofeno 400mg', 22.00)
, ('Amoxicilina 500mg', 85.00);
GO

-- 5. Ejecutar consulta básica para verificar la inserción
SELECT * FROM Productos;
GO