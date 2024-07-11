-- Insertar datos en Categoria
INSERT INTO Categoria (IdCategoria, Nombre, Descripcion) VALUES
('CAT001', 'Alimento', 'Productos alimenticios para mascotas'),
('CAT002', 'Medicamento', 'Medicamentos para mascotas'),
('CAT003', 'Insumos', 'Insumos variados'),
('CAT004', 'Servicio', 'Servicios ofrecidos');

SELECT *FROM Categoria

-- Insertar datos en Producto (20 productos distribuidos en todas las categorías)
INSERT INTO Producto (IdProducto, IdCategoria, Nombreprod, CostoUnitario) VALUES
-- Alimentos
('PROD001', 'CAT001', 'Croquetas', 20.00),
('PROD002', 'CAT001', 'Lata de Carne', 15.00),
('PROD003', 'CAT001', 'Galletas para Perros', 10.00),
('PROD004', 'CAT001', 'Comida Húmeda', 25.00),
('PROD005', 'CAT001', 'Sopa para Gatos', 18.00),
-- Medicamentos
('PROD006', 'CAT002', 'Antibiótico', 30.00),
('PROD007', 'CAT002', 'Desparasitante', 22.00),
('PROD008', 'CAT002', 'Analgésico', 28.00),
('PROD009', 'CAT002', 'Antiinflamatorio', 35.00),
('PROD010', 'CAT002', 'Antihistamínico', 25.00),
-- Insumos
('PROD011', 'CAT003', 'Guantes Quirúrgicos', 5.00),
('PROD012', 'CAT003', 'Jeringas', 3.00),
('PROD013', 'CAT003', 'Alcohol', 4.00),
('PROD014', 'CAT003', 'Gasas', 2.00),
('PROD015', 'CAT003', 'Vendajes', 6.00),
-- Servicios
('PROD016', 'CAT004', 'Consulta General', 40.00),
('PROD017', 'CAT004', 'Cirugía', 100.00),
('PROD018', 'CAT004', 'Radiografía', 50.00),
('PROD019', 'CAT004', 'Vacunación', 35.00),
('PROD020', 'CAT004', 'Hospitalización', 70.00);

SELECT *FROM Producto

-- Insertar datos en Clientes (20 clientes)
INSERT INTO Clientes (IdCliente, Apellido, CuentaBancaria, Direccion, TelefonoFijo, TelefonoCel, Email) VALUES
('CLI001', 'Gomez', '1234567890123456', 'Av. Siempre Viva 123', '1234567', '987654321', 'gomez@example.com'),
('CLI002', 'Perez', '2345678901234567', 'Calle Falsa 456', '2345678', '876543210', 'perez@example.com'),
('CLI003', 'Martinez', '3456789012345678', 'Calle de la Rosa 789', '3456789', '765432109', 'martinez@example.com'),
('CLI004', 'Rodriguez', '4567890123456789', 'Av. Libertad 101', '4567890', '654321098', 'rodriguez@example.com'),
('CLI005', 'Lopez', '5678901234567890', 'Calle Palma 202', '5678901', '543210987', 'lopez@example.com'),
('CLI006', 'Sanchez', '6789012345678901', 'Av. Central 303', '6789012', '432109876', 'sanchez@example.com'),
('CLI007', 'Garcia', '7890123456789012', 'Calle Luna 404', '7890123', '321098765', 'garcia@example.com'),
('CLI008', 'Fernandez', '8901234567890123', 'Av. Sol 505', '8901234', '210987654', 'fernandez@example.com'),
('CLI009', 'Gonzalez', '9012345678901234', 'Calle Estrella 606', '9012345', '109876543', 'gonzalez@example.com'),
('CLI010', 'Torres', '0123456789012345', 'Av. Luz 707', '0123456', '987654321', 'torres@example.com'),
('CLI011', 'Ramirez', '1123456789012346', 'Calle Rio 808', '1123457', '876543210', 'ramirez@example.com'),
('CLI012', 'Flores', '2123456789012347', 'Av. Mar 909', '2123458', '765432109', 'flores@example.com'),
('CLI013', 'Cruz', '3123456789012348', 'Calle Viento 1010', '3123459', '654321098', 'cruz@example.com'),
('CLI014', 'Morales', '4123456789012349', 'Av. Tierra 1111', '4123460', '543210987', 'morales@example.com'),
('CLI015', 'Ortiz', '5123456789012350', 'Calle Fuego 1212', '5123461', '432109876', 'ortiz@example.com'),
('CLI016', 'Mendoza', '6123456789012351', 'Av. Agua 1313', '6123462', '321098765', 'mendoza@example.com'),
('CLI017', 'Herrera', '7123456789012352', 'Calle Trueno 1414', '7123463', '210987654', 'herrera@example.com'),
('CLI018', 'Medina', '8123456789012353', 'Av. Relámpago 1515', '8123464', '109876543', 'medina@example.com'),
('CLI019', 'Rojas', '9123456789012354', 'Calle Neblina 1616', '9123465', '987654321', 'rojas@example.com'),
('CLI020', 'Castro', '0223456789012355', 'Av. Tormenta 1717', '0223466', '876543210', 'castro@example.com');

SELECT *FROM Clientes

-- Insertar datos en Personas (20 personas)
INSERT INTO Personas (CI, Nombre, ApellidoP, ApellidoM, TelefonoCel, Direccion, Email) VALUES
('PER001', 'Juan', 'Perez', 'Lopez', '987654321', 'Av. Siempre Viva 123', 'juan.perez@example.com'),
('PER002', 'Ana', 'Garcia', 'Martinez', '876543210', 'Calle Falsa 456', 'ana.garcia@example.com'),
('PER003', 'Luis', 'Rodriguez', 'Gomez', '765432109', 'Calle de la Rosa 789', 'luis.rodriguez@example.com'),
('PER004', 'Maria', 'Lopez', 'Sanchez', '654321098', 'Av. Libertad 101', 'maria.lopez@example.com'),
('PER005', 'Carlos', 'Sanchez', 'Fernandez', '543210987', 'Calle Palma 202', 'carlos.sanchez@example.com'),
('PER006', 'Lucia', 'Ramirez', 'Garcia', '432109876', 'Av. Central 303', 'lucia.ramirez@example.com'),
('PER007', 'Jose', 'Martinez', 'Gonzalez', '321098765', 'Calle Luna 404', 'jose.martinez@example.com'),
('PER008', 'Sofia', 'Fernandez', 'Torres', '210987654', 'Av. Sol 505', 'sofia.fernandez@example.com'),
('PER009', 'Pedro', 'Gonzalez', 'Ramirez', '109876543', 'Calle Estrella 606', 'pedro.gonzalez@example.com'),
('PER010', 'Marta', 'Torres', 'Flores', '987654321', 'Av. Luz 707', 'marta.torres@example.com'),
('PER011', 'Diego', 'Flores', 'Cruz', '876543210', 'Calle Rio 808', 'diego.flores@example.com'),
('PER012', 'Elena', 'Cruz', 'Morales', '765432109', 'Av. Mar 909', 'elena.cruz@example.com'),
('PER013', 'Miguel', 'Morales', 'Ortiz', '654321098', 'Calle Viento 1010', 'miguel.morales@example.com'),
('PER014', 'Laura', 'Ortiz', 'Mendoza', '543210987', 'Av. Tierra 1111', 'laura.ortiz@example.com'),
('PER015', 'Francisco', 'Mendoza', 'Herrera', '432109876', 'Calle Fuego 1212', 'francisco.mendoza@example.com'),
('PER016', 'Patricia', 'Herrera', 'Medina', '321098765', 'Av. Agua 1313', 'patricia.herrera@example.com'),
('PER017', 'Manuel', 'Medina', 'Rojas', '210987654', 'Calle Trueno 1414', 'manuel.medina@example.com'),
('PER018', 'Isabel', 'Rojas', 'Castro', '109876543', 'Av. Relámpago 1515', 'isabel.rojas@example.com'),
('PER019', 'Antonio', 'Castro', 'Gomez', '987654321', 'Calle Neblina 1616', 'antonio.castro@example.com'),
('PER020', 'Carmen', 'Gomez', 'Perez', '876543210', 'Av. Tormenta 1717', 'carmen.gomez@example.com');


-- Insertar datos en PersonaCliente (20 asociaciones)
INSERT INTO PersonaCliente (IdCliente, CI, FechaAsociacion) VALUES
('CLI001', 'PER001', '2024-01-01'),
('CLI002', 'PER002', '2024-01-02'),
('CLI003', 'PER003', '2024-01-03'),
('CLI004', 'PER004', '2024-01-04'),
('CLI005', 'PER005', '2024-01-05'),
('CLI006', 'PER006', '2024-01-06'),
('CLI007', 'PER007', '2024-01-07'),
('CLI008', 'PER008', '2024-01-08'),
('CLI009', 'PER009', '2024-01-09'),
('CLI010', 'PER010', '2024-01-10'),
('CLI011', 'PER011', '2024-01-11'),
('CLI012', 'PER012', '2024-01-12'),
('CLI013', 'PER013', '2024-01-13'),
('CLI014', 'PER014', '2024-01-14'),
('CLI015', 'PER015', '2024-01-15'),
('CLI016', 'PER016', '2024-01-16'),
('CLI017', 'PER017', '2024-01-17'),
('CLI018', 'PER018', '2024-01-18'),
('CLI019', 'PER019', '2024-01-19'),
('CLI020', 'PER020', '2024-01-20');

SELECT *FROM PersonaCliente

-- Insertar datos en Mascota (20 mascotas)
INSERT INTO Mascota (IdMascota, Alias, Especie, Raza, Color, FechaNacimiento, PesoActual, Espaciente, IdCliente) VALUES
('MAS001', 'Fido', 'Perro', 'Labrador', 'Marrón', '2020-05-05', '30kg', 1, 'CLI001'),
('MAS002', 'Michi', 'Gato', 'Siames', 'Blanco', '2019-03-10', '4kg', 1, 'CLI002'),
('MAS003', 'Max', 'Perro', 'Pastor Alemán', 'Negro', '2021-07-20', '35kg', 0, 'CLI003'),
('MAS004', 'Luna', 'Perro', 'Beagle', 'Tricolor', '2018-01-15', '20kg', 1, 'CLI004'),
('MAS005', 'Coco', 'Gato', 'Persa', 'Gris', '2022-12-12', '5kg', 0, 'CLI005'),
('MAS006', 'Rocky', 'Perro', 'Bulldog', 'Blanco', '2017-11-11', '25kg', 1, 'CLI006'),
('MAS007', 'Bella', 'Gato', 'Bengala', 'Dorado', '2021-09-09', '3kg', 0, 'CLI007'),
('MAS008', 'Simba', 'Perro', 'Golden Retriever', 'Dorado', '2020-08-08', '28kg', 1, 'CLI008'),
('MAS009', 'Chispa', 'Gato', 'Angora', 'Negro', '2019-07-07', '4kg', 1, 'CLI009'),
('MAS010', 'Nala', 'Perro', 'Cocker Spaniel', 'Marrón', '2022-06-06', '15kg', 0, 'CLI010'),
('MAS011', 'Toby', 'Perro', 'Poodle', 'Blanco', '2020-05-05', '10kg', 1, 'CLI011'),
('MAS012', 'Mia', 'Gato', 'Ragdoll', 'Beige', '2018-04-04', '5kg', 0, 'CLI012'),
('MAS013', 'Bruno', 'Perro', 'Boxer', 'Atigrado', '2021-03-03', '27kg', 1, 'CLI013'),
('MAS014', 'Lola', 'Gato', 'Himalayo', 'Blanco', '2020-02-02', '3kg', 1, 'CLI014'),
('MAS015', 'Charlie', 'Perro', 'Chihuahua', 'Marrón', '2019-01-01', '2kg', 0, 'CLI015'),
('MAS016', 'Kira', 'Gato', 'Siberiano', 'Gris', '2022-10-10', '6kg', 1, 'CLI016'),
('MAS017', 'Thor', 'Perro', 'Gran Danés', 'Negro', '2021-11-11', '70kg', 1, 'CLI017'),
('MAS018', 'Zoe', 'Gato', 'British Shorthair', 'Azul', '2020-09-09', '4kg', 0, 'CLI018'),
('MAS019', 'Bobby', 'Perro', 'Border Collie', 'Blanco y Negro', '2019-08-08', '20kg', 1, 'CLI019'),
('MAS020', 'Luna', 'Gato', 'Maine Coon', 'Naranja', '2018-07-07', '8kg', 0, 'CLI020');

SELECT *FROM Mascota

-- Insertar datos en HistoricoPeso (20 registros)
INSERT INTO HistoricoPeso (IdMascota, FechaVisita, Peso) VALUES
('MAS001', '2024-06-01', '31kg'),
('MAS002', '2024-06-02', '4.2kg'),
('MAS004', '2024-06-04', '20.5kg'),
('MAS006', '2024-06-06', '25.5kg'),
('MAS008', '2024-06-08', '28.5kg'),
('MAS009', '2024-06-09', '4.3kg'),
('MAS011', '2024-06-11', '10.2kg'),
('MAS013', '2024-06-13', '27.5kg'),
('MAS014', '2024-06-14', '3.2kg'),
('MAS016', '2024-06-16', '6.1kg'),
('MAS017', '2024-06-17', '70.5kg'),
('MAS019', '2024-06-19', '20.5kg');

SELECT *FROM HistoricoPeso

-- Insertar datos en HistoClinica (20 registros)
INSERT INTO HistoClinica (IdMascota, FechaConsulta, Sintomas, Diagnostico, Tratamiento, Medicación, MontoPagado) VALUES
('MAS001', '2024-06-01', 'Cansancio', 'Anemia', 'Transfusión', 'Vitamina B12', 100.00),
('MAS002', '2024-06-02', 'Tos', 'Resfriado', 'Reposo', 'Jarabe', 50.00),
('MAS004', '2024-06-04', 'Cojea', 'Fractura', 'Yeso', 'Analgésico', 120.00),
('MAS006', '2024-06-06', 'Pérdida de pelo', 'Alergia', 'Antihistamínico', 'Loratadina', 70.00),
('MAS008', '2024-06-08', 'Llagas', 'Dermatitis', 'Crema', 'Betametasona', 40.00),
('MAS009', '2024-06-09', 'Tos', 'Bronquitis', 'Inhalador', 'Salbutamol', 55.00),
('MAS011', '2024-06-11', 'Dificultad para respirar', 'Asma', 'Inhalador', 'Fluticasona', 75.00),
('MAS013', '2024-06-13', 'Cojea', 'Luxación', 'Reposo', 'Analgésico', 95.00),
('MAS014', '2024-06-14', 'Diarrea', 'Colitis', 'Dieta', 'Prebióticos', 105.00),
('MAS016', '2024-06-16', 'Pérdida de pelo', 'Hongos', 'Antifúngico', 'Ketoconazol', 125.00),
('MAS017', '2024-06-17', 'Llagas', 'Heridas', 'Curación', 'Antiséptico', 135.00),
('MAS019', '2024-06-19', 'Fiebre', 'Virosis', 'Reposo', 'Paracetamol', 155.00);

SELECT *FROM HistoClinica

-- Insertar datos en Vacunas (20 vacunas)
INSERT INTO Vacunas (IdVacuna, NombreVacuna, Laboratorio, EnfermedadPrev) VALUES
('VAC001', 'Rabia', 'BioVet', 'Rabia'),
('VAC002', 'Moquillo', 'VetPharm', 'Moquillo'),
('VAC003', 'Parvovirus', 'CanVet', 'Parvovirus'),
('VAC004', 'Hepatitis', 'VetLab', 'Hepatitis'),
('VAC005', 'Leptospirosis', 'PetMed', 'Leptospirosis'),
('VAC006', 'Parainfluenza', 'VetBiotech', 'Parainfluenza'),
('VAC007', 'Coronavirus', 'AniHealth', 'Coronavirus'),
('VAC008', 'Adenovirus', 'BioVet', 'Adenovirus'),
('VAC009', 'Bordetella', 'VetPharm', 'Bordetella'),
('VAC010', 'Lyme', 'CanVet', 'Lyme'),
('VAC011', 'Leishmaniasis', 'VetLab', 'Leishmaniasis'),
('VAC012', 'Gripe Canina', 'PetMed', 'Gripe Canina'),
('VAC013', 'Coccidiosis', 'VetBiotech', 'Coccidiosis'),
('VAC014', 'Panleucopenia', 'AniHealth', 'Panleucopenia'),
('VAC015', 'Calicivirus', 'BioVet', 'Calicivirus'),
('VAC016', 'Rinotraqueitis', 'VetPharm', 'Rinotraqueitis'),
('VAC017', 'Clamidiasis', 'CanVet', 'Clamidiasis'),
('VAC018', 'Giardiasis', 'VetLab', 'Giardiasis'),
('VAC019', 'Tetano', 'PetMed', 'Tetano'),
('VAC020', 'Anemia Infecciosa', 'VetBiotech', 'Anemia Infecciosa');

SELECT *FROM Vacunas

-- Insertar datos en CalenVacuna (20 registros)
INSERT INTO CalenVacuna (IdMascota, IdVacuna, Fechaprevista, Fechaaplicacion, Dosis) VALUES
('MAS001', 'VAC001', '2024-06-01', '2024-06-02', '1ml'),
('MAS002', 'VAC002', '2024-06-03', '2024-06-04', '1.5ml'),
('MAS004', 'VAC004', '2024-06-07', '2024-06-08', '2ml'),
('MAS006', 'VAC006', '2024-06-11', '2024-06-12', '2.5ml'),
('MAS008', 'VAC008', '2024-06-15', '2024-06-16', '3ml'),
('MAS009', 'VAC009', '2024-06-17', '2024-06-18', '1.5ml'),
('MAS011', 'VAC011', '2024-06-21', '2024-06-22', '1ml'),
('MAS013', 'VAC013', '2024-06-25', '2024-06-26', '1ml'),
('MAS014', 'VAC014', '2024-06-27', '2024-06-28', '2ml'),
('MAS016', 'VAC016', '2024-07-01', '2024-07-02', '2.5ml'),
('MAS017', 'VAC017', '2024-07-03', '2024-07-04', '1ml'),
('MAS019', 'VAC019', '2024-07-07', '2024-07-08', '1.5ml');

SELECT *FROM CalenVacuna

-- Insertar datos en Huesped (20 registros)
INSERT INTO Huesped (IdHuesped, IdMascota, FechaIngreso, FechaSalida, NecesidadesEspeciales) VALUES
('HUE001', 'MAS001', '2024-05-01', '2024-05-10', 'Ninguna'),
('HUE002', 'MAS002', '2024-05-02', '2024-05-12', 'Medicación diaria'),
('HUE003', 'MAS003', '2024-05-03', '2024-05-13', 'Dieta especial'),
('HUE004', 'MAS004', '2024-05-04', '2024-05-14', 'Ejercicio diario'),
('HUE005', 'MAS005', '2024-05-05', '2024-05-15', 'Aseo diario'),
('HUE006', 'MAS006', '2024-05-06', '2024-05-16', 'Medicación diaria'),
('HUE007', 'MAS007', '2024-05-07', '2024-05-17', 'Ninguna'),
('HUE008', 'MAS008', '2024-05-08', '2024-05-18', 'Ejercicio diario'),
('HUE009', 'MAS009', '2024-05-09', '2024-05-19', 'Dieta especial'),
('HUE010', 'MAS010', '2024-05-10', '2024-05-20', 'Medicación diaria'),
('HUE011', 'MAS011', '2024-05-11', '2024-05-21', 'Ninguna'),
('HUE012', 'MAS012', '2024-05-12', '2024-05-22', 'Aseo diario'),
('HUE013', 'MAS013', '2024-05-13', '2024-05-23', 'Dieta especial'),
('HUE014', 'MAS014', '2024-05-14', '2024-05-24', 'Medicación diaria'),
('HUE015', 'MAS015', '2024-05-15', '2024-05-25', 'Ejercicio diario'),
('HUE016', 'MAS016', '2024-05-16', '2024-05-26', 'Aseo diario'),
('HUE017', 'MAS017', '2024-05-17', '2024-05-27', 'Ninguna'),
('HUE018', 'MAS018', '2024-05-18', '2024-05-28', 'Medicación diaria'),
('HUE019', 'MAS019', '2024-05-19', '2024-05-29', 'Dieta especial'),
('HUE020', 'MAS020', '2024-05-20', '2024-05-30', 'Ejercicio diario');

SELECT *FROM Huesped

-- Insertar datos en Detalle (20 detalles distribuidos en todas las categorías)
INSERT INTO Detalle (IdHuesped, IdProducto, Fecha, Cantidad) VALUES
-- Alimentos
('HUE001', 'PROD001', '2024-06-08', 3),
('HUE001', 'PROD002', '2024-06-09', 2),
('HUE002', 'PROD003', '2024-06-10', 1),
('HUE002', 'PROD004', '2024-06-11', 5),
('HUE003', 'PROD005', '2024-06-12', 4),
-- Medicamentos
('HUE001', 'PROD006', '2024-06-08', 1),
('HUE002', 'PROD007', '2024-06-09', 2),
('HUE003', 'PROD008', '2024-06-10', 3),
('HUE001', 'PROD009', '2024-06-11', 1),
('HUE002', 'PROD010', '2024-06-12', 2),
-- Insumos
('HUE003', 'PROD011', '2024-06-08', 10),
('HUE001', 'PROD012', '2024-06-09', 15),
('HUE002', 'PROD013', '2024-06-10', 8),
('HUE003', 'PROD014', '2024-06-11', 12),
('HUE001', 'PROD015', '2024-06-12', 7),
-- Servicios
('HUE002', 'PROD016', '2024-06-08', 1),
('HUE003', 'PROD017', '2024-06-09', 1),
('HUE001', 'PROD018', '2024-06-10', 1),
('HUE002', 'PROD019', '2024-06-11', 1),
('HUE003', 'PROD020', '2024-06-12', 1),

('HUE004', 'PROD001', '2024-05-10', 3),
('HUE004', 'PROD007', '2024-05-15', 1),
('HUE005', 'PROD014', '2024-05-05', 2),
('HUE005', 'PROD003', '2024-05-22', 4),
('HUE006', 'PROD012', '2024-05-12', 2),
('HUE006', 'PROD009', '2024-05-18', 3),
('HUE007', 'PROD006', '2024-05-11', 1),
('HUE007', 'PROD002', '2024-05-20', 5),
('HUE008', 'PROD018', '2024-05-17', 2),
('HUE008', 'PROD016', '2024-05-09', 4),
('HUE009', 'PROD013', '2024-05-23', 1),
('HUE009', 'PROD020', '2024-05-14', 3),
('HUE010', 'PROD015', '2024-05-21', 4),
('HUE010', 'PROD004', '2024-05-07', 2),
('HUE011', 'PROD011', '2024-05-25', 1),
('HUE011', 'PROD008', '2024-05-16', 3),
('HUE012', 'PROD019', '2024-05-13', 5),
('HUE012', 'PROD017', '2024-05-24', 2),
('HUE013', 'PROD010', '2024-05-06', 4),
('HUE013', 'PROD005', '2024-05-19', 1),
('HUE014', 'PROD003', '2024-05-22', 3),
('HUE014', 'PROD014', '2024-05-10', 2),
('HUE015', 'PROD007', '2024-05-15', 4),
('HUE015', 'PROD001', '2024-05-18', 1),
('HUE016', 'PROD009', '2024-05-12', 5),
('HUE016', 'PROD012', '2024-05-11', 3),
('HUE017', 'PROD006', '2024-05-20', 2),
('HUE017', 'PROD002', '2024-05-17', 4),
('HUE018', 'PROD016', '2024-05-14', 1),
('HUE018', 'PROD018', '2024-05-07', 3),
('HUE019', 'PROD020', '2024-05-09', 5),
('HUE019', 'PROD013', '2024-05-23', 2),
('HUE020', 'PROD004', '2024-05-05', 4),
('HUE020', 'PROD015', '2024-05-21', 1);

SELECT *FROM Detalle

--SELECT FROM DE TODAS LAS TABLAS
SELECT *FROM CalenVacuna
SELECT *FROM Categoria
SELECT *FROM Clientes
SELECT *FROM Detalle
SELECT *FROM HistoClinica
SELECT *FROM HistoricoPeso
SELECT *FROM Huesped
SELECT *FROM Mascota
SELECT *FROM PersonaCliente
SELECT *FROM Personas
SELECT *FROM Producto
SELECT *FROM Vacunas

