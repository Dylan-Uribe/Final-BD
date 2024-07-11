
USE Veterinariafinal

--Alter Clientes
ALTER TABLE Clientes
ALTER COLUMN Apellido VARCHAR(50) NOT NULL,
ALTER COLUMN CuentaBancaria VARCHAR(50) NOT NULL,
ALTER COLUMN Direccion VARCHAR(100) NOT NULL,
ALTER COLUMN TelefonoFijo VARCHAR(20) NOT NULL,
ALTER COLUMN TelefonoCel VARCHAR(20) NOT NULL,
ALTER COLUMN Email VARCHAR(100) NOT NULL;

--Alter Personas
ALTER TABLE Personas
ALTER COLUMN Nombre VARCHAR(100) NOT NULL,
ALTER COLUMN ApellidoP VARCHAR(50) NOT NULL,
ALTER COLUMN ApellidoM VARCHAR(50) NOT NULL,
ALTER COLUMN TelefonoCel VARCHAR(20) NOT NULL,
ALTER COLUMN Direccion VARCHAR(100) NOT NULL,
ALTER COLUMN Email VARCHAR(100) NOT NULL;

--Alter Mascota
ALTER TABLE Mascota
ALTER COLUMN Alias VARCHAR(30) NOT NULL,
ALTER COLUMN Especie VARCHAR(30) NOT NULL,
ALTER COLUMN Raza VARCHAR(30) NOT NULL,
ALTER COLUMN Color VARCHAR(30) NOT NULL,
ALTER COLUMN PesoActual CHAR(15) NOT NULL;

--Alter HistoClinica
ALTER TABLE HistoClinica
ALTER COLUMN Sintomas VARCHAR(100) NOT NULL,
ALTER COLUMN Diagnostico VARCHAR(100) NOT NULL,
ALTER COLUMN Tratamiento VARCHAR(80) NOT NULL,
ALTER COLUMN Medicaci�n VARCHAR(100) NOT NULL;

--Alter Vacunas
ALTER TABLE Vacunas
ALTER COLUMN NombreVacuna VARCHAR(50) NOT NULL,
ALTER COLUMN Laboratorio VARCHAR(50) NOT NULL,
ALTER COLUMN EnfermedadPrev VARCHAR(100) NOT NULL;

--Alter Huesped
ALTER TABLE Huesped
ALTER COLUMN NecesidadesEspeciales VARCHAR(300) NOT NULL;

--Alter Categoria
ALTER TABLE Categoria
ALTER COLUMN Nombre VARCHAR(30) NOT NULL,
ALTER COLUMN Descripcion VARCHAR(50) NOT NULL;

--Alter Producto
ALTER TABLE Producto
ALTER COLUMN Nombreprod VARCHAR(50) NOT NULL;



