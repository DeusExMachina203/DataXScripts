-- Cargar datos en TipoVia
INSERT INTO TipoVia (Tipo) VALUES
('Alameda'),('Avenida'),('Bajada'),('Boulevard'),('Carretera'),('Callejón'),('Calle'),('Galeria'),('Jirón'),('Malecón'),('Óvalo'),('Pasaje'),('Plaza'),
('Parque'),('Prolongación'),('Paseo'),('Plazuela'),('Camino'),('Sendero'),('Puente'),('Ruta'),('Autopista');

-- Cargar datos en Region
INSERT INTO Region (NombreRegion) VALUES
('Amazonas'),('Áncash'),('Apurímac'),('Arequipa'),('Ayacucho'),('Cajamarca'),('Callao'),('Cusco'),('Huancavelica'),('Huánuco'),('Ica'),('Junín'),
('La Libertad'),('Lambayeque'),('Lima'),('Lima Provincia'),('Loreto'),('Madre de Dios'),('Moquegua'),('Pasco'),('Piura'),('Puno'),('San Martín'),('Tacna'),
('Tumbes'),('Ucayali');

-- Cargar datos en Provincia
INSERT INTO Provincia (NombreProvincia, IdRegion) VALUES
('Chachapoyas', 1),('Huaraz', 2),('Abancay', 3),('Arequipa', 4),('Ayacucho', 5),('Cajamarca', 6),('Callao', 7),('Cusco', 8),('Huancavelica', 9),
('Huánuco', 10),('Ica', 11),('Huancayo', 12),('Trujillo', 13),('Chiclayo', 14),('Lima Metropolitana', 15),('Huacho', 16),('Iquitos', 17),('Puerto Maldonado', 18),
('Moquegua', 19),('Cerro de Pasco', 20),('Piura', 21),('Puno', 22),('Moyobamba', 23),('Tacna', 24),('Tumbes', 25),('Ucayali', 26);

-- Cargar datos en Distrito
INSERT INTO Distrito (NombreDistrito, IdProvincia) VALUES
('Huaraz', 2),
('Cochabamba', 2),
r
('Independencia', 2),
('Tamburco', 3),
('Cayma', 4),
('San Juan Bautista', 5),
('Baños del Inca', 6),
('Bellavista', 7),
('Wanchaq', 8),
('Ascensión', 9),
('Amarilis', 10);

