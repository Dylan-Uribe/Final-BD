
--Eliminar Cliente
CREATE PROCEDURE sp_EliminarCliente
    @IdCliente CHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Clientes WHERE IdCliente = @IdCliente)
        BEGIN
            DELETE FROM Clientes WHERE IdCliente = @IdCliente;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdCliente no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Cliente
CREATE PROCEDURE sp_ActualizarCliente
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
        IF EXISTS (SELECT 1 FROM Clientes WHERE IdCliente = @IdCliente)
        BEGIN
            UPDATE Clientes
            SET 
                Apellido = @Apellido,
                CuentaBancaria = @CuentaBancaria,
                Direccion = @Direccion,
                TelefonoFijo = @TelefonoFijo,
                TelefonoCel = @TelefonoCel,
                Email = @Email
            WHERE IdCliente = @IdCliente;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdCliente no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO


--Eliminar Persona
CREATE PROCEDURE sp_EliminarPersona
    @CI CHAR(12),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Personas WHERE CI = @CI)
        BEGIN
            DELETE FROM Personas WHERE CI = @CI;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- CI no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Persona
CREATE PROCEDURE sp_ActualizarPersona
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
        IF EXISTS (SELECT 1 FROM Personas WHERE CI = @CI)
        BEGIN
            UPDATE Personas
            SET 
                Nombre = @Nombre,
                ApellidoP = @ApellidoP,
                ApellidoM = @ApellidoM,
                TelefonoCel = @TelefonoCel,
                Direccion = @Direccion,
                Email = @Email
            WHERE CI = @CI;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- CI no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar PersonaCliente
CREATE PROCEDURE sp_EliminarPersonaCliente
    @IdCliente CHAR(8),
    @CI CHAR(12),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM PersonaCliente WHERE IdCliente = @IdCliente AND CI = @CI)
        BEGIN
            DELETE FROM PersonaCliente
            WHERE IdCliente = @IdCliente AND CI = @CI;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar PersonaCliente
CREATE PROCEDURE sp_ActualizarPersonaCliente
    @IdCliente CHAR(8),
    @CI CHAR(12),
    @FechaAsociacion DATE,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM PersonaCliente WHERE IdCliente = @IdCliente AND CI = @CI)
        BEGIN
            UPDATE PersonaCliente
            SET 
                FechaAsociacion = @FechaAsociacion
            WHERE IdCliente = @IdCliente AND CI = @CI;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO



--Eliminar Mascota
CREATE PROCEDURE sp_EliminarMascota
    @IdMascota CHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Mascota WHERE IdMascota = @IdMascota)
        BEGIN
            DELETE FROM Mascota WHERE IdMascota = @IdMascota;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdMascota no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Mascota
CREATE PROCEDURE sp_ActualizarMascota
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
        IF EXISTS (SELECT 1 FROM Mascota WHERE IdMascota = @IdMascota)
        BEGIN
            UPDATE Mascota
            SET 
                Alias = @Alias,
                Especie = @Especie,
                Raza = @Raza,
                Color = @Color,
                FechaNacimiento = @FechaNacimiento,
                PesoActual = @PesoActual,
                EsPaciente = @EsPaciente,
                IdCliente = @IdCliente
            WHERE IdMascota = @IdMascota;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdMascota no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar HistoricoPeso
CREATE PROCEDURE sp_EliminarHistoricoPeso
    @IdMascota CHAR(8),
    @FechaVisita DATE,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM HistoricoPeso WHERE IdMascota = @IdMascota AND FechaVisita = @FechaVisita)
        BEGIN
            DELETE FROM HistoricoPeso WHERE IdMascota = @IdMascota AND FechaVisita = @FechaVisita;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar HistoricoPeso
CREATE PROCEDURE sp_ActualizarHistoricoPeso
    @IdMascota CHAR(8),
    @FechaVisita DATE,
    @Peso CHAR(10),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM HistoricoPeso WHERE IdMascota = @IdMascota AND FechaVisita = @FechaVisita)
        BEGIN
            UPDATE HistoricoPeso
            SET 
                Peso = @Peso
            WHERE IdMascota = @IdMascota AND FechaVisita = @FechaVisita;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar HistoClinica
CREATE PROCEDURE sp_EliminarHistoClinica
    @IdMascota CHAR(8),
    @FechaConsulta DATE,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM HistoClinica WHERE IdMascota = @IdMascota AND FechaConsulta = @FechaConsulta)
        BEGIN
            DELETE FROM HistoClinica WHERE IdMascota = @IdMascota AND FechaConsulta = @FechaConsulta;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar HistoClinica
CREATE PROCEDURE sp_ActualizarHistoClinica
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
        IF EXISTS (SELECT 1 FROM HistoClinica WHERE IdMascota = @IdMascota AND FechaConsulta = @FechaConsulta)
        BEGIN
            UPDATE HistoClinica
            SET 
                Sintomas = @Sintomas,
                Diagnostico = @Diagnostico,
                Tratamiento = @Tratamiento,
                Medicación = @Medicación,
                MontoPagado = @MontoPagado
            WHERE IdMascota = @IdMascota AND FechaConsulta = @FechaConsulta;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar Vacunas
CREATE PROCEDURE sp_EliminarVacunas
    @IdVacuna CHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Vacunas WHERE IdVacuna = @IdVacuna)
        BEGIN
            DELETE FROM Vacunas WHERE IdVacuna = @IdVacuna;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdVacuna no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Vacunas
CREATE PROCEDURE sp_ActualizarVacunas
    @IdVacuna CHAR(8),
    @NombreVacuna VARCHAR(30),
    @Laboratorio VARCHAR(30),
    @EnfermedadPrev VARCHAR(50),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Vacunas WHERE IdVacuna = @IdVacuna)
        BEGIN
            UPDATE Vacunas
            SET 
                NombreVacuna = @NombreVacuna,
                Laboratorio = @Laboratorio,
                EnfermedadPrev = @EnfermedadPrev
            WHERE IdVacuna = @IdVacuna;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdVacuna no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar CalenVacuna
CREATE PROCEDURE sp_EliminarCalenVacuna
    @IdMascota CHAR(8),
    @IdVacuna CHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM CalenVacuna WHERE IdMascota = @IdMascota AND IdVacuna = @IdVacuna)
        BEGIN
            DELETE FROM CalenVacuna WHERE IdMascota = @IdMascota AND IdVacuna = @IdVacuna;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar CalenVacunas
CREATE PROCEDURE sp_ActualizarCalenVacuna
    @IdMascota CHAR(8),
    @IdVacuna CHAR(8),
    @FechaPrevista DATE,
    @FechaAplicacion DATE,
    @Dosis VARCHAR(20),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM CalenVacuna WHERE IdMascota = @IdMascota AND IdVacuna = @IdVacuna)
        BEGIN
            UPDATE CalenVacuna
            SET 
                FechaPrevista = @FechaPrevista,
                FechaAplicacion = @FechaAplicacion,
                Dosis = @Dosis
            WHERE IdMascota = @IdMascota AND IdVacuna = @IdVacuna;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar Huesped
CREATE PROCEDURE sp_EliminarHuesped
    @IdHuesped CHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Huesped WHERE IdHuesped = @IdHuesped)
        BEGIN
            DELETE FROM Huesped WHERE IdHuesped = @IdHuesped;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdHuesped no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Huesped
CREATE PROCEDURE sp_ActualizarHuesped
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
        IF EXISTS (SELECT 1 FROM Huesped WHERE IdHuesped = @IdHuesped)
        BEGIN
            UPDATE Huesped
            SET 
                IdMascota = @IdMascota,
                FechaIngreso = @FechaIngreso,
                FechaSalida = @FechaSalida,
                NecesidadesEspeciales = @NecesidadesEspeciales
            WHERE IdHuesped = @IdHuesped;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdHuesped no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar Categoria
CREATE PROCEDURE sp_EliminarCategoria
    @IdCategoria VARCHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Categoria WHERE IdCategoria = @IdCategoria)
        BEGIN
            DELETE FROM Categoria WHERE IdCategoria = @IdCategoria;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdCategoria no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Categoria
CREATE PROCEDURE sp_ActualizarCategoria
    @IdCategoria VARCHAR(8),
    @Nombre VARCHAR(20),
    @Descripcion VARCHAR(100),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Categoria WHERE IdCategoria = @IdCategoria)
        BEGIN
            UPDATE Categoria
            SET 
                Nombre = @Nombre,
                Descripcion = @Descripcion
            WHERE IdCategoria = @IdCategoria;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdCategoria no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Eliminar Producto
CREATE PROCEDURE sp_EliminarProducto
    @IdProducto VARCHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Producto WHERE IdProducto = @IdProducto)
        BEGIN
            DELETE FROM Producto WHERE IdProducto = @IdProducto;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdProducto no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Producto
CREATE PROCEDURE sp_ActualizarProducto
    @IdProducto VARCHAR(8),
    @IdCategoria VARCHAR(8),
    @NombreProd VARCHAR(20),
    @CostoUnitario MONEY,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Producto WHERE IdProducto = @IdProducto)
        BEGIN
            UPDATE Producto
            SET 
                IdCategoria = @IdCategoria,
                NombreProd = @NombreProd,
                CostoUnitario = @CostoUnitario
            WHERE IdProducto = @IdProducto;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- IdProducto no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO


--Eliminar Detalle
CREATE PROCEDURE sp_EliminarDetalle
    @IdHuesped CHAR(8),
    @IdProducto VARCHAR(8),
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Detalle WHERE IdHuesped = @IdHuesped AND IdProducto = @IdProducto)
        BEGIN
            DELETE FROM Detalle WHERE IdHuesped = @IdHuesped AND IdProducto = @IdProducto;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO

--Actualizar Detalle
CREATE PROCEDURE sp_ActualizarDetalle
    @IdHuesped CHAR(8),
    @IdProducto VARCHAR(8),
    @Fecha DATE,
    @Cantidad INT,
    @Resultado INT OUTPUT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Detalle WHERE IdHuesped = @IdHuesped AND IdProducto = @IdProducto)
        BEGIN
            UPDATE Detalle
            SET 
                Fecha = @Fecha,
                Cantidad = @Cantidad
            WHERE IdHuesped = @IdHuesped AND IdProducto = @IdProducto;
            SET @Resultado = 1; -- Éxito
        END
        ELSE
        BEGIN
            SET @Resultado = -1; -- Registro no encontrado
        END
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        SET @Resultado = 0; -- Error
        ROLLBACK TRANSACTION;
    END CATCH
END;
GO


--








