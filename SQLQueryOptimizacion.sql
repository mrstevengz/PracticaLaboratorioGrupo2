CREATE INDEX IDX_Productos_Nombre
ON Productos (Nombre);

ALTER TABLE Productos
ADD CONSTRAINT CHK_Precio_Positivo
CHECK (Precio > 0);

ALTER TABLE Productos
ADD CONSTRAINT CHK_Stock_NoNegativo
CHECK (Stock >= 0);

ALTER TABLE Productos
ADD CONSTRAINT UQ_Nombre_Producto
UNIQUE (Nombre);