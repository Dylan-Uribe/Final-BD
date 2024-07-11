
--Stored Procedure Cliente
CREATE PROCEDURE sp_InsertarCliente
    @IdCliente CHAR(8),
    @Apellido VARCHAR(20),
    @CuentaBancaria VARCHAR(30),
    @Direccion VARCHAR(70),
    @TelefonoFijo VARCHAR(15),
    @TelefonoCel VARCHAR(15),
    @Email VARCHAR(50),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Clientes (IdCliente, Apellido, CuentaBancaria, Direccion, TelefonoFijo, TelefonoCel, Email)
        VALUES (@IdCliente, @Apellido, @CuentaBancaria, @Direccion, @TelefonoFijo, @TelefonoCel, @Email);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos Cliente
DECLARE @Resultado INT;	
EXEC sp_InsertarCliente 
    @IdCliente = 'CLI021',
    @Apellido = 'Mamani',
    @CuentaBancaria = '9876543210',
    @Direccion = 'Av. Las Flores 123',
    @TelefonoFijo = '2345678',
    @TelefonoCel = '876543210',
    @Email = 'ramirez@example.com',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;




--Stored Procedure Persona
CREATE PROCEDURE sp_InsertarPersona
    @CI CHAR(12),
    @Nombre VARCHAR(80),
    @ApellidoP VARCHAR(30),
    @ApellidoM VARCHAR(30),
    @TelefonoCel VARCHAR(15),
    @Direccion VARCHAR(70),
    @Email VARCHAR(50),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Personas (CI, Nombre, ApellidoP, ApellidoM, TelefonoCel, Direccion, Email)
        VALUES (@CI, @Nombre, @ApellidoP, @ApellidoM, @TelefonoCel, @Direccion, @Email);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos Persona
DECLARE @Resultado INT;
EXEC sp_InsertarPersona 
    @CI = 'PER021',
    @Nombre = 'Juan',
    @ApellidoP = 'Perez',
    @ApellidoM = 'Lopez',
    @TelefonoCel = '987654321',
    @Direccion = 'Calle Falsa 123',
    @Email = 'juan.perez@example.com',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM Personas

--Stored Procedure PersonaCliente
CREATE PROCEDURE sp_InsertarPersonaCliente
    @IdCliente CHAR(8),
    @CI CHAR(12),
    @FechaAsociacion DATE,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO PersonaCliente (IdCliente, CI, FechaAsociacion)
        VALUES (@IdCliente, @CI, @FechaAsociacion);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos PersonaCliente
DECLARE @Resultado INT;
EXEC sp_InsertarPersonaCliente 
    @IdCliente = 'CLI001',
    @CI = 'PER021',
    @FechaAsociacion = '2023-06-01',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM PersonaCliente

--Stored Procedure Mascota
CREATE PROCEDURE sp_InsertarMascota
    @IdMascota CHAR(8),
    @Alias VARCHAR(20),
    @Especie VARCHAR(20),
    @Raza VARCHAR(20),
    @Color VARCHAR(20),
    @FechaNacimiento DATE,
    @PesoActual CHAR(10),
    @EsPaciente BIT,
    @IdCliente CHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Verificar si el cliente existe
        IF EXISTS (SELECT 1 FROM Clientes WHERE IdCliente = @IdCliente)
        BEGIN
            -- Insertar datos en la tabla Mascota
            INSERT INTO Mascota (IdMascota, Alias, Especie, Raza, Color, FechaNacimiento, PesoActual, EsPaciente, IdCliente)
            VALUES (@IdMascota, @Alias, @Especie, @Raza, @Color, @FechaNacimiento, @PesoActual, @EsPaciente, @IdCliente);
            
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Cliente no existe
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos Mascota
DECLARE @Resultado INT;
EXEC sp_InsertarMascota
    @IdMascota = 'MAS021',
    @Alias = 'Firulais',
    @Especie = 'Perro',
    @Raza = 'Labrador',
    @Color = 'Negro',
    @FechaNacimiento = '2018-04-21',
    @PesoActual = '25kg',
    @EsPaciente = 1,
    @IdCliente = 'CLI002',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM Mascota

--Stored Procedure HistoPeso
CREATE PROCEDURE sp_InsertarHistoPeso
    @IdMascota CHAR(8),
    @FechaVisita DATE,
    @Peso CHAR(10),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Verificar si la mascota es paciente
        IF (SELECT EsPaciente FROM Mascota WHERE IdMascota = @IdMascota) = 1
        BEGIN
            INSERT INTO HistoricoPeso (IdMascota, FechaVisita, Peso)
            VALUES (@IdMascota, @FechaVisita, @Peso);

            SET @Resultado = 1; -- Éxito
            COMMIT TRANSACTION;
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- No es paciente
            ROLLBACK TRANSACTION;
        END
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos HistoPeso
DECLARE @Resultado INT;
EXEC sp_InsertarHistoPeso 
    @IdMascota = 'MAS001',
    @FechaVisita = '2023-06-25',
    @Peso = '32kg',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM HistoricoPeso

--Stored Procedure HistoClinica
CREATE PROCEDURE sp_InsertarHistoClinica
    @IdMascota CHAR(8),
    @FechaConsulta DATE,
    @Sintomas VARCHAR(50),
    @Diagnostico VARCHAR(60),
    @Tratamiento VARCHAR(50),
    @Medicación VARCHAR(80),
    @MontoPagado MONEY,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Verificar si la mascota es paciente
        IF (SELECT EsPaciente FROM Mascota WHERE IdMascota = @IdMascota) = 1
        BEGIN
            INSERT INTO HistoClinica (IdMascota, FechaConsulta, Sintomas, Diagnostico, Tratamiento, Medicación, MontoPagado)
            VALUES (@IdMascota, @FechaConsulta, @Sintomas, @Diagnostico, @Tratamiento, @Medicación, @MontoPagado);

            SET @Resultado = 1; -- Éxito
            COMMIT TRANSACTION;
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- No es paciente
            ROLLBACK TRANSACTION;
        END
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos HistoClinica
DECLARE @Resultado INT;
EXEC sp_InsertarHistoClinica 
    @IdMascota = 'MAS001',
    @FechaConsulta = '2023-06-29',
    @Sintomas = 'Tos y fiebre',
    @Diagnostico = 'Infección respiratoria',
    @Tratamiento = 'Antibióticos',
    @Medicación = 'Amoxicilina 500mg',
    @MontoPagado = 200.0,
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM HistoClinica

--Stored Procedure Vacunas
CREATE PROCEDURE sp_InsertarVacuna
    @IdVacuna CHAR(8),
    @NombreVacuna VARCHAR(30),
    @Laboratorio VARCHAR(30),
    @EnfermedadPrev VARCHAR(50),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Vacunas (IdVacuna, NombreVacuna, Laboratorio, EnfermedadPrev)
        VALUES (@IdVacuna, @NombreVacuna, @Laboratorio, @EnfermedadPrev);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos Vacuna
DECLARE @Resultado INT;
EXEC sp_InsertarVacuna 
    @IdVacuna = 'VAC021',
    @NombreVacuna = 'Rabia',
    @Laboratorio = 'VeterLab',
    @EnfermedadPrev = 'Rabia',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM Vacunas

--Stored Procedure CalenVacuna
CREATE PROCEDURE sp_InsertarCalenVacuna
    @IdMascota CHAR(8),
    @IdVacuna CHAR(8),
    @Fechaprevista DATE,
    @Fechaaplicacion DATE,
    @Dosis VARCHAR(20),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Verificar si la mascota es paciente
        IF (SELECT EsPaciente FROM Mascota WHERE IdMascota = @IdMascota) = 1
        BEGIN
            INSERT INTO CalenVacuna (IdMascota, IdVacuna, Fechaprevista, Fechaaplicacion, Dosis)
            VALUES (@IdMascota, @IdVacuna, @Fechaprevista, @Fechaaplicacion, @Dosis);

            SET @Resultado = 1; -- Éxito
            COMMIT TRANSACTION;
        END
        ELSE
        BEGIN
            SET @Resultado = 2; -- No es paciente
            ROLLBACK TRANSACTION;
        END
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Datos CalenVacuna
DECLARE @Resultado INT;
EXEC sp_InsertarCalenVacuna 
    @IdMascota = 'MAS001',
    @IdVacuna = 'VAC002',
    @Fechaprevista = '2023-06-30',
    @Fechaaplicacion = '2023-07-01',
    @Dosis = '1ml',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM CalenVacuna

--Stored Procedure Huesped
CREATE PROCEDURE sp_InsertarHuesped
    @IdHuesped CHAR(8),
    @IdMascota CHAR(8),
    @FechaIngreso DATE,
    @FechaSalida DATE,
    @NecesidadesEspeciales VARCHAR(200),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Verificar si IdMascota existe
        IF NOT EXISTS (SELECT 1 FROM Mascota WHERE IdMascota = @IdMascota)
        BEGIN
            SET @Resultado = -1; -- IdMascota no existe
            ROLLBACK TRANSACTION;
            RETURN;
        END

        INSERT INTO Huesped (IdHuesped, IdMascota, FechaIngreso, FechaSalida, NecesidadesEspeciales)
        VALUES (@IdHuesped, @IdMascota, @FechaIngreso, @FechaSalida, @NecesidadesEspeciales);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;

--Insertar Huesped
DECLARE @Resultado INT;
EXEC sp_InsertarHuesped 
    @IdHuesped = 'HUE021',
    @IdMascota = 'MAS001',
    @FechaIngreso = '2024-06-10',
    @FechaSalida = '2024-06-20',
    @NecesidadesEspeciales = 'Dieta especial 2',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM Huesped

--Stored Procedure Categoria
CREATE PROCEDURE sp_InsertarCategoria
    @Idcategoria VARCHAR(8),
    @Nombre VARCHAR(20),
    @Descripcion VARCHAR(30),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Categoria (Idcategoria, Nombre, Descripcion)
        VALUES (@Idcategoria, @Nombre, @Descripcion);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;


--Insertar Datos Categoria
DECLARE @Resultado INT;
EXEC sp_InsertarCategoria 
    @IdCategoria = 'CAT021',
    @Nombre = 'Juguetes',
    @Descripcion = 'Juguetes para mascotas',
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM Categoria

--Stored Procedure Producto
CREATE PROCEDURE sp_InsertarProducto
    @IdProducto VARCHAR(8),
    @IdCategoria VARCHAR(8),
    @Nombreprod VARCHAR(20),
    @CostoUnitario MONEY,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Verificar si IdCategoria existe
        IF NOT EXISTS (SELECT 1 FROM Categoria WHERE Idcategoria = @IdCategoria)
        BEGIN
            SET @Resultado = -1; -- IdCategoria no existe
            ROLLBACK TRANSACTION;
            RETURN;
        END

        INSERT INTO Producto (IdProducto, IdCategoria, Nombreprod, CostoUnitario)
        VALUES (@IdProducto, @IdCategoria, @Nombreprod, @CostoUnitario);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;


--Insertar Datos Producto
DECLARE @Resultado INT;
EXEC sp_InsertarProducto 
    @IdProducto = 'PROD021',
    @IdCategoria = 'CAT021',
    @Nombreprod = 'Pelota de goma',
    @CostoUnitario = 10.0,
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM Producto

--Stored Procedure Detalle
CREATE PROCEDURE sp_InsertarDetalle
    @IdHuesped CHAR(8),
    @IdProducto VARCHAR(8),
    @Fecha DATE,
    @Cantidad INT,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Verificar si IdHuesped existe
        IF NOT EXISTS (SELECT 1 FROM Huesped WHERE IdHuesped = @IdHuesped)
        BEGIN
            SET @Resultado = -1; -- IdHuesped no existe
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Verificar si IdProducto existe
        IF NOT EXISTS (SELECT 1 FROM Producto WHERE IdProducto = @IdProducto)
        BEGIN
            SET @Resultado = -1; -- IdProducto no existe
            ROLLBACK TRANSACTION;
            RETURN;
        END

        INSERT INTO Detalle (IdHuesped, IdProducto, Fecha, Cantidad)
        VALUES (@IdHuesped, @IdProducto, @Fecha, @Cantidad);
        
        SET @Resultado = 1; -- Éxito
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;


--Insertar Datos Detalle
DECLARE @Resultado INT;
EXEC sp_InsertarDetalle 
    @IdHuesped = 'HUE021',
    @IdProducto = 'PROD021',
    @Fecha = '2024-06-15',
    @Cantidad = 2,
    @Resultado = @Resultado OUTPUT;
SELECT @Resultado AS Resultado;

SELECT *FROM Detalle

CREATE PROCEDURE sp_GenerarNotaCobranza
    @IdHuesped CHAR(8)
AS
BEGIN
    -- Declarar variables para almacenar el total general
    DECLARE @CostoTotal MONEY;
    SET @CostoTotal = 0;

    -- Crear una tabla temporal para almacenar los resultados
    CREATE TABLE #NotaCobranza (
        IdProducto VARCHAR(8),
        NombreProducto VARCHAR(20),
        Cantidad INT,
        CostoUnitario MONEY,
        CostoTotalProducto MONEY
    );

    -- Insertar los detalles del huesped en la tabla temporal
    INSERT INTO #NotaCobranza (IdProducto, NombreProducto, Cantidad, CostoUnitario, CostoTotalProducto)
    SELECT 
        p.IdProducto,
        p.Nombreprod,
        d.Cantidad,
        p.CostoUnitario,
        d.Cantidad * p.CostoUnitario AS CostoTotalProducto
    FROM 
        Detalle d
    INNER JOIN 
        Producto p ON d.IdProducto = p.IdProducto
    WHERE 
        d.IdHuesped = @IdHuesped;

    -- Calcular el costo total general
    SELECT @CostoTotal = SUM(CostoTotalProducto) FROM #NotaCobranza;

    -- Seleccionar los resultados finales
    SELECT 
        @IdHuesped AS IdHuesped,
        hc.FechaIngreso,
        hc.FechaSalida,
        hc.NecesidadesEspeciales,
        nc.IdProducto,
        nc.NombreProducto,
        nc.Cantidad,
        nc.CostoUnitario,
        nc.CostoTotalProducto
    FROM 
        Huesped hc
    INNER JOIN 
        #NotaCobranza nc ON hc.IdHuesped = @IdHuesped;

    -- Mostrar el costo total general al final
    SELECT @CostoTotal AS CostoTotalGeneral;

    -- Eliminar la tabla temporal
    DROP TABLE #NotaCobranza;
END;

EXEC sp_GenerarNotaCobranza 'HUE001';

