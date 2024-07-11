CREATE PROCEDURE sp_ReporteHuespedesAtendidos
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    -- Crear una tabla temporal para almacenar el reporte
    CREATE TABLE #Reporte (
        IdHuesped CHAR(8),
        IdMascota CHAR(8),
        Alias VARCHAR(20),
        Especie VARCHAR(20),
        Raza VARCHAR(20),
        Color VARCHAR(20),
        FechaNacimiento DATE,
        PesoActual CHAR(10),
        IdCliente CHAR(8),
        ClienteApellido VARCHAR(20),
        ClienteDireccion VARCHAR(70),
        ClienteTelefonoFijo VARCHAR(15),
        ClienteTelefonoCel VARCHAR(15),
        ClienteEmail VARCHAR(50),
        FechaIngreso DATE,
        FechaSalida DATE,
        NecesidadesEspeciales VARCHAR(200),
        IdProducto VARCHAR(8),
        NombreProducto VARCHAR(20),
        Cantidad INT,
        CostoUnitario MONEY,
        CostoTotalProducto MONEY
    );

    -- Insertar datos iniciales en la tabla temporal
    INSERT INTO #Reporte (IdHuesped, IdMascota, Alias, Especie, Raza, Color, FechaNacimiento, PesoActual, IdCliente, ClienteApellido, ClienteDireccion, ClienteTelefonoFijo, ClienteTelefonoCel, ClienteEmail, FechaIngreso, FechaSalida, NecesidadesEspeciales)
    SELECT 
        h.IdHuesped,
        m.IdMascota,
        m.Alias,
        m.Especie,
        m.Raza,
        m.Color,
        m.FechaNacimiento,
        m.PesoActual,
        c.IdCliente,
        c.Apellido,
        c.Direccion,
        c.TelefonoFijo,
        c.TelefonoCel,
        c.Email,
        h.FechaIngreso,
        h.FechaSalida,
        h.NecesidadesEspeciales
    FROM Huesped h
    JOIN Mascota m ON h.IdMascota = m.IdMascota
    JOIN Clientes c ON m.IdCliente = c.IdCliente
    WHERE (h.FechaIngreso BETWEEN @FechaInicio AND @FechaFin) OR (h.FechaSalida IS NULL OR h.FechaSalida > @FechaFin);

    -- Actualizar con datos de productos usados por los huéspedes
    UPDATE #Reporte
    SET
        IdProducto = p.IdProducto,
        NombreProducto = p.Nombreprod,
        Cantidad = d.Cantidad,
        CostoUnitario = p.CostoUnitario,
        CostoTotalProducto = d.Cantidad * p.CostoUnitario
    FROM Detalle d
    JOIN Producto p ON d.IdProducto = p.IdProducto
    WHERE #Reporte.IdHuesped = d.IdHuesped;

    -- Seleccionar los resultados finales
    SELECT *
    FROM #Reporte;

    -- Eliminar la tabla temporal
    DROP TABLE #Reporte;
END;

EXEC sp_ReporteHuespedesAtendidos @FechaInicio = '2024-01-01', @FechaFin = '2024-06-01';


SELECT *FROM Detalle

