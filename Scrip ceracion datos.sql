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
('Chachapoyas', 1),('Huaraz', 2),('Abancay', 3),('Arequipa', 4),('Huamanga', 5),('Cajamarca', 6),('Callao', 7),('Cusco', 8),('Huancavelica', 9),
('Huánuco', 10),('Ica', 11),('Huancayo', 12),('Trujillo', 13),('Chiclayo', 14),('Lima Metropolitana', 15),('Huacho', 16),('Iquitos', 17),('Puerto Maldonado', 18),
('Moquegua', 19),('Cerro de Pasco', 20),('Piura', 21),('Puno', 22),('Moyobamba', 23),('Tacna', 24),('Tumbes', 25),('Ucayali', 26);

-- Cargar datos en Distrito
INSERT INTO Distrito (NombreDistrito, IdProvincia) VALUES
('Huaraz', 2),('Cochabamba', 2),('Arequipa', 4),('Cochabamba', 4),('Cusco', 8),('San Jerónimo', 8),
('Huánuco', 10),('Amarilis', 10),('Ica', 11),('La Tinguiña', 11),('Lima', 15),('Santiago de Surco', 15),
('Huacho', 16),('Santa María', 16),('Iquitos', 17),('San Juan Bautista', 17),('Piura', 21),('Castilla', 21),
('Moyobamba', 23),('Soritor', 23);

-- Cargar datos en Direccion
INSERT INTO Direccion (NombreVia, Numero, Manzana, Unidad, Lote, IdTipoVia, IdDistrito) VALUES
('Los Incas', '101', 'A', '1', '10', 1, 1),
('Grau', '202', 'B', '2', '20', 2, 2),
('Balta', '303', 'C', '3', '30', 3, 3),
('de la Cultura', '404', 'D', '4', '40', 4, 4),
('Central', '505', 'E', '5', '50', 5, 5),
('de los Reyes', '606', 'F', '6', '60', 6, 6),
('Las Flores', '707', 'G', '7', '70', 7, 7),
('Santa Rosa', '808', 'H', '8', '80', 8, 8),
('Junín', '909', 'I', '9', '90', 9, 9),
('Balta', '1010', 'J', '10', '100', 10, 10),
('Higuereta', '1111', 'K', '11', '110', 11, 11),
('Los Pinos', '1212', 'L', '12', '120', 12, 12),
('Mayor', '1313', 'M', '13', '130', 13, 13),
('Kennedy', '1414', 'N', '14', '140', 14, 14),
('Arenales', '1515', 'O', '15', '150', 15, 15),
('de la República', '1616', 'P', '16', '160', 16, 16),
('San Blas', '1717', 'Q', '17', '170', 17, 17),
('Real', '1818', 'R', '18', '180', 18, 18),
('de los Andes', '1919', 'S', '19', '190', 19, 19),
('Nuevo', '2020', 'T', '20', '200', 20, 20),
('del Sol', '2121', 'U', '21', '210', 21, 21),
('Panamericana', '2222', 'V', '22', '220', 22, 22),
('de los Héroes', '2323', 'W', '23', '230', 1, 23),
('San Martín', '2424', 'X', '24', '240', 2, 24),
('del Río', '2525', 'Y', '25', '250', 3, 25),
('Miraflores', '2626', 'Z', '26', '260', 4, 1),
('Austral', '2727', 'AA', '27', '270', 5, 2),
('de los Milagros', '2828', 'BB', '28', '280', 6, 3),
('Las Orquídeas', '2929', 'CC', '29', '290', 7, 4),
('La Merced', '3030', 'DD', '30', '300', 8, 5),
('Bolívar', '3131', 'EE', '31', '310', 9, 6),
('Cisneros', '3232', 'FF', '32', '320', 10, 7),
('La Perla', '3333', 'GG', '33', '330', 11, 8),
('Los Eucaliptos', '3434', 'HH', '34', '340', 12, 9),
('San Miguel', '3535', 'II', '35', '350', 13, 10),
('Zonal', '3636', 'JJ', '36', '360', 14, 11),
('Grau', '3737', 'KK', '37', '370', 15, 12),
('Colón', '3838', 'LL', '38', '380', 16, 13),
('Belén', '3939', 'MM', '39', '390', 17, 14),
('de los Incas', '4040', 'NN', '40', '400', 18, 15),
('del Sol', '4141', 'OO', '41', '410', 19, 16),
('Viejo', '4242', 'PP', '42', '420', 20, 17),
('Inka', '4343', 'QQ', '43', '430', 21, 18),
('del Norte', '4444', 'RR', '44', '440', 22, 19),
('Pardo', '4545', 'SS', '45', '450', 1, 20),
('del Ejército', '4646', 'TT', '46', '460', 2, 21),
('Castilla', '4747', 'UU', '47', '470', 3, 22),
('Tacna', '4848', 'VV', '48', '480', 4, 23),
('Sur', '4949', 'WW', '49', '490', 5, 24),
('Grau', '5050', 'XX', '50', '500', 6, 25),
('Los Laureles', '5151', 'YY', '51', '510', 1, 1),
('La Marina', '5252', 'ZZ', '52', '520', 2, 2),
('La Alameda', '5353', 'AAA', '53', '530', 3, 3),
('Los Olivos', '5454', 'BBB', '54', '540', 4, 4),
('Lima', '5555', 'CCC', '55', '550', 5, 5),
('San Jorge', '5656', 'DDD', '56', '560', 6, 6),
('Los Cedros', '5757', 'EEE', '57', '570', 7, 7),
('del Sol', '5858', 'FFF', '58', '580', 8, 8),
('Ayacucho', '5959', 'GGG', '59', '590', 9, 9),
('Miraflores', '6060', 'HHH', '60', '600', 10, 10),
('Arica', '6161', 'III', '61', '610', 11, 11),
('Tupac Amaru', '6262', 'JJJ', '62', '620', 12, 12),
('San Pedro', '6363', 'KKK', '63', '630', 13, 13),
('de los Recuerdos', '6464', 'LLL', '64', '640', 14, 14),
('Benavides', '6565', 'MMM', '65', '650', 15, 15),
('Colmena', '6666', 'NNN', '66', '660', 16, 16),
('de los Héroes', '6767', 'OOO', '67', '670', 17, 17),
('Santa Rosa', '6868', 'PPP', '68', '680', 18, 18),
('San Martín', '6969', 'QQQ', '69', '690', 19, 19),
('de los Suspiros', '7070', 'RRR', '70', '700', 20, 20);