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
('de los Suspiros', '7070', 'RRR', '70', '700', 20, 20),
('de la República', '6161', 'XX', '1', '100', 3, 11),
('San Juan', '6262', 'YY', '2', '200', 4, 12),
('Los Próceres', '6363', 'ZZ', '3', '300', 5, 13),
('Buenos Aires', '6464', 'AA', '4', '400', 6, 14),
('Real', '6565', 'BB', '5', '500', 7, 15),
('Sol', '6666', 'CC', '6', '600', 8, 16),
('Miraflores', '6767', 'DD', '7', '700', 9, 17),
('San Isidro', '6868', 'EE', '8', '800', 10, 18),
('La Merced', '6969', 'FF', '9', '900', 11, 19),
('de Armas', '7070', 'GG', '10', '1000', 12, 20),
('Central', '7171', 'HH', '11', '1100', 13, 21),
('Lima', '7272', 'II', '12', '1200', 14, 22),
('Central', '7373', 'JJ', '13', '1300', 15, 23),
('Arequipa', '7474', 'KK', '14', '1400', 16, 24),
('Colonial', '7575', 'LL', '15', '1500', 17, 25),
('Sur', '7676', 'MM', '16', '1600', 18, 1),
('del Inca', '7777', 'NN', '17', '1700', 19, 2),
('a la Costa', '7878', 'OO', '18', '1800', 20, 3),
('Viejo', '7979', 'PP', '19', '1900', 21, 4),
('Panamericana', '8080', 'QQ', '20', '2000', 22, 5),
('Norte', '8181', 'RR', '21', '2100', 1, 6),
('del Prado', '8282', 'SS', '22', '2200', 2, 7),
('Marítimo', '8383', 'TT', '23', '2300', 3, 8),
('Central', '8484', 'UU', '24', '2400', 4, 9),
('Bolívar', '8585', 'VV', '25', '2500', 5, 10);

--Cargas datos en empresa
INSERT INTO Empresa (NombreEmpresa, IdDireccionPrincipal) VALUES
('Freaky Frog', 1),
('Dooly Doll', 2),
('InstaClothes', 3),
('Panty Village', 4),
('Exquisite Panty', 5),
('Jump', 6),
('OnTarget', 7),
('Camisetas OnTarget', 8),
('Impresionar Camisetas', 9),
('Cinnamom Overdressed', 10),
('Gafas New Vision', 11),
('Tándem', 12),
('TechNova Solutions', 13),
('EcoGreen Industries', 14),
('Stellar Innovations', 15),
('Harmony Health Group', 16),
('Nexus Dynamics', 17),
('BlueWave Enterprises', 18),
('Apex Manufacturing', 19),
('QuantumLeap Technologies', 20),
('MegaCorp', 21),
('TechGiant', 22),
('Innovative Solutions', 23),
('Global Traders', 24),
('RetailHub', 25);

-- Cargar datos en CorreoEmpresa
INSERT INTO CorreoEmpresa (Correo, Descripcion, IdEmpresa) VALUES
('contacto@freakyfrog.com', 'Correo principal de contacto', 1),
('info@doolydoll.com', 'Correo principal de información', 2),
('ventas@instaclothes.com', 'Correo principal de ventas', 3),
('support@pantyvillage.com', 'Correo principal de soporte', 4),
('info@exquisitepanty.com', 'Correo principal de información', 5),
('contact@jump.com', 'Correo principal de contacto', 6),
('support@ontarget.com', 'Correo principal de soporte', 7),
('ventas@camisetasontarget.com', 'Correo principal de ventas', 8),
('info@impresionarcamisetas.com', 'Correo principal de información', 9),
('contacto@cinnamomoverdressed.com', 'Correo principal de contacto', 10),
('ventas@gafasnewvision.com', 'Correo principal de ventas', 11),
('info@tandem.com', 'Correo principal de información', 12),
('contact@technova.com', 'Correo principal de contacto', 13),
('info@ecogreenindustries.com', 'Correo principal de información', 14),
('support@stellarinno.com', 'Correo principal de soporte', 15),
('contacto@harmonyhealth.com', 'Correo principal de contacto', 16),
('info@nexusdynamics.com', 'Correo principal de información', 17),
('ventas@bluewaveenterprises.com', 'Correo principal de ventas', 18),
('contact@apexmanufacturing.com', 'Correo principal de contacto', 19),
('support@quantumleaptech.com', 'Correo principal de soporte', 20),
('info@megacorp.com', 'Correo principal de información', 21),
('ventas@techgiant.com', 'Correo principal de ventas', 22),
('contacto@innovativesolutions.com', 'Correo principal de contacto', 23),
('info@globaltraders.com', 'Correo principal de información', 24),
('support@retailhub.com', 'Correo principal de soporte', 25);

-- Cargar datos en CodigoTelefonoPais
INSERT INTO CodigoTelefonoPais (Codigo, NombrePais) VALUES
('+51', 'Perú'),
('+1', 'Estados Unidos'),
('+44', 'Reino Unido'),
('+34', 'España'),
('+49', 'Alemania'),
('+33', 'Francia'),
('+81', 'Japón'),
('+86', 'China'),
('+61', 'Australia'),
('+55', 'Brasil');

--Cargar datos en TelefonoEmpresa
INSERT INTO TelefonoEmpresa (Telefono, Descripcion, IdEmpresa, IdCodigoPais) VALUES 
('900000001', 'Atención al cliente', 1, 1),
('900000002', '', 2, 1),
('900000003', 'Ventas y consultas', 3, 1),
('900000004', 'Oficina principal', 4, 1),
('900000005', '', 5, 1),
('900000006', 'Línea de pedidos', 6, 1),
('900000007', 'Recepción', 7, 1),
('900000008', '', 8, 1),
('900000009', 'Línea directa gerencia', 9, 1),
('900000010', 'Atención comercial', 10, 1),
('900000011', '', 11, 1),
('900000012', 'Central de emergencias', 12, 1),
('900000013', '', 13, 1),
('900000014', 'Servicio postventa', 14, 1),
('900000015', 'Atención corporativa', 15, 1),
('900000016', 'Contacto de ventas', 16, 1),
('900000017', '', 17, 1),
('900000018', 'Soporte de productos', 18, 1),
('900000019', 'Atención administrativa', 19, 1),
('900000020', 'Línea de atención técnica', 20, 1),
('900000021', 'Consultas y soporte', 21, 1),
('900000022', 'Línea de servicio', 22, 1),
('900000023', '', 23, 1),
('900000024', 'Atención de pedidos', 24, 1),
('900000025', 'Línea de contacto', 25, 1);

-- Cargar datos en Almacen
INSERT INTO Almacen (IdDireccion, IdEmpresa) VALUES
(100, 1),
(102, 2),
(103, 3),
(104, 4),
(105, 5),
(106, 6),
(107, 7),
(108, 8),
(109, 9),
(110, 10),
(111,11),
(112,12),
(113,13),
(114,14),
(115,15),
(116,16),
(117,17),
(118,18),
(119,19),
(120,20),
(121,21),
(122,22),
(123,23),
(124,24),
(125,25);

-- Cargar datos en Producto
INSERT INTO Producto (NombreProducto, Descripcion, CodigoProducto) VALUES
-- Freaky Frog
('Froggy Toy', 'Juguete para niños de alta calidad', 'FF-001'),
('Froggy Backpack', 'Mochila resistente y duradera', 'FF-002'),
('Froggy Adventure Game', 'Juego de aventuras interactivo', 'FF-003'),
('Froggy Plushie', 'Peluche suave y adorable de Froggy', 'FF-004'),
('Froggy Coloring Book', 'Libro para colorear con ilustraciones de Froggy', 'FF-005'),

-- Dooly Doll
('Dooly Plushie', 'Peluche esponjoso y encantador de Dooly', 'DD-001'),
('Dooly Storybook', 'Libro de cuentos ilustrado con las aventuras de Dooly', 'DD-002'),
('Dooly Puzzle Set', 'Set de rompecabezas con imágenes de Dooly', 'DD-003'),
('Dooly Stationery Kit', 'Kit de papelería con diseño de Dooly', 'DD-004'),
('Dooly Dollhouse', 'Casa de muñecas con accesorios de Dooly', 'DD-005'),

-- InstaClothes
('InstaTee', 'Camiseta básica de algodón de alta calidad', 'IC-001'),
('InstaJeans', 'Jeans clásicos y cómodos para uso diario', 'IC-002'),
('InstaDress', 'Vestido elegante y versátil para cualquier ocasión', 'IC-003'),
('InstaHoodie', 'Sudadera con capucha para un estilo casual', 'IC-004'),
('InstaJacket', 'Chaqueta ligera y moderna para todas las estaciones', 'IC-005'),

-- Panty Village
('Lace Panties', 'Cómodos y elegantes calzones de encaje', 'PV-001'),
('Silk Panties', 'Seductores calzones de seda para ocasiones especiales', 'PV-002'),
('Cotton Briefs', 'Calzoncillos clásicos de algodón para uso diario', 'PV-003'),
('Seamless Panties', 'Calzones sin costuras para una comodidad total', 'PV-004'),
('Thong Panties', 'Tangas sexys y atrevidas para sentirse segura', 'PV-005'),

-- Exquisite Panty
('Satin Robe', 'Bata de satén lujosa y suave para momentos de relajación', 'EP-001'),
('Silk Chemise', 'Camisón de seda con detalles elegantes y femeninos', 'EP-002'),
('Lace Babydoll', 'Babydoll de encaje para una noche especial', 'EP-003'),
('Sheer Teddy', 'Teddy transparente para una seducción sutil', 'EP-004'),
('Mesh Bodysuit', 'Bodysuit de malla para un look sensual', 'EP-005'),

-- Jump
('JumpStart Energy Drink', 'Bebida energética para un impulso instantáneo', 'JU-001'),
('JumpRope Fitness Tracker', 'Dispositivo para contar saltos y rastrear el ejercicio', 'JU-002'),
('JumpPack Backpack', 'Mochila resistente y funcional para aventuras al aire libre', 'JU-003'),
('JumpBox Subscription', 'Suscripción mensual para recibir productos sorpresa', 'JU-004'),
('JumpFit Exercise Mat', 'Tapete de ejercicio acolchado para entrenamientos cómodos', 'JU-005'),

-- OnTarget
('OnTarget Smartwatch', 'Reloj inteligente con funciones avanzadas de seguimiento', 'OT-001'),
('OnTarget Fitness Band', 'Banda de fitness para monitorizar la actividad física', 'OT-002'),
('OnTarget Wireless Earbuds', 'Auriculares inalámbricos para una experiencia auditiva sin cables', 'OT-003'),
('OnTarget Portable Charger', 'Cargador portátil para mantener tus dispositivos siempre cargados', 'OT-004'),
('OnTarget Laptop Sleeve', 'Funda acolchada para proteger tu laptop mientras viajas', 'OT-005'),

-- Camisetas OnTarget
('Graphic Tee', 'Camiseta con estampado gráfico llamativo', 'CT-001'),
('Vintage Tee', 'Camiseta de estilo vintage con un toque retro', 'CT-002'),
('Logo Tee', 'Camiseta con el logo icónico de la marca', 'CT-003'),
('Striped Tee', 'Camiseta a rayas para un look clásico y elegante', 'CT-004'),
('Pocket Tee', 'Camiseta con bolsillo frontal para un estilo casual', 'CT-005'),

-- Impresionar Camisetas
('Custom Print Tee', 'Camiseta personalizada con tu diseño favorito', 'ICam-001'),
('Typography Tee', 'Camiseta con tipografía creativa y llamativa', 'ICam-002'),
('Artistic Tee', 'Camiseta con diseño artístico y original', 'ICam-003'),
('Photo Print Tee', 'Camiseta con impresión fotográfica de alta calidad', 'ICam-004'),
('Limited Edition Tee', 'Camiseta de edición limitada con diseño exclusivo', 'ICam-005'),

-- Cinnamom Overdressed
('Cinnamon Dress', 'Vestido elegante con toques de canela y glamour', 'CO-001'),
('Spice Skirt', 'Falda picante con estampado de canela para un look único', 'CO-002'),
('Cinnamon Blouse', 'Blusa ligera y sofisticada con aroma a canela', 'CO-003'),
('Scented Scarf', 'Bufanda suave y perfumada con esencia de canela', 'CO-004'),
('Cinnamon Accessories Set', 'Conjunto de accesorios coordinados con aroma a canela', 'CO-005'),

-- Gafas New Vision
('Classic Aviators', 'Gafas de sol estilo aviador con montura clásica', 'GNV-001'),
('Retro Round Sunglasses', 'Gafas de sol redondas con un toque vintage', 'GNV-002'),
('Sporty Wraparound Shades', 'Gafas de sol envolventes para actividades deportivas', 'GNV-003'),
('Fashion Cat-Eye Glasses', 'Gafas de estilo gato para un look elegante y femenino', 'GNV-004'),
('Polarized Wayfarers', 'Gafas de sol wayfarer con lentes polarizadas para una visión clara', 'GNV-005'),

-- Tándem
('Tandem Adventure Backpack', 'Mochila resistente y versátil para viajes de aventura', 'TD-001'),
('Tandem Camping Tent', 'Tienda de campaña espaciosa y fácil de montar para acampar al aire libre', 'TD-002'),
('Tandem Outdoor Grill', 'Parrilla portátil para asar alimentos al aire libre con amigos y familiares', 'TD-003'),
('Tandem Hiking Boots', 'Botas de senderismo duraderas y cómodas para explorar la naturaleza', 'TD-004'),
('Tandem Portable Hammock', 'Hamacas portátiles y ligeras para relajarse en cualquier lugar', 'TD-005'),

-- TechNova Solutions
('TechNova Smart Home System', 'Sistema de domótica avanzado para controlar tu hogar desde tu teléfono inteligente', 'TNS-001'),
('TechNova Virtual Reality Headset', 'Visor de realidad virtual para experimentar juegos y videos inmersivos', 'TNS-002'),
('TechNova Wireless Charging Pad', 'Almohadilla de carga inalámbrica para cargar tus dispositivos de manera conveniente', 'TNS-003'),
('TechNova Bluetooth Speaker', 'Altavoz Bluetooth portátil con sonido de alta calidad para disfrutar de tu música favorita', 'TNS-004'),
('TechNova Security Camera', 'Cámara de seguridad inteligente con detección de movimiento y visión nocturna', 'TNS-005'),

-- EcoGreen Industries
('EcoGreen Organic Soap', 'Jabón orgánico y biodegradable para una limpieza suave y respetuosa con el medio ambiente', 'EGI-001'),
('EcoGreen Bamboo Toothbrush', 'Cepillo de dientes de bambú ecológico y sostenible para una higiene bucal consciente', 'EGI-002'),
('EcoGreen Reusable Water Bottle', 'Botella de agua reutilizable y libre de BPA para reducir el uso de plástico', 'EGI-003'),
('EcoGreen Recycled Paper Notebook', 'Cuaderno de papel reciclado ideal para tomar notas y dibujar de manera sostenible', 'EGI-004'),
('EcoGreen Eco-Friendly Tote Bag', 'Bolso ecológico y reutilizable para llevar tus compras de manera responsable', 'EGI-005'),

-- Stellar Innovations
('Stellar Wireless Earphones', 'Auriculares inalámbricos con cancelación de ruido para una experiencia auditiva inmersiva', 'SI-001'),
('Stellar Solar Power Bank', 'Batería portátil con panel solar para cargar tus dispositivos en cualquier lugar', 'SI-002'),
('Stellar Fitness Tracker', 'Monitor de actividad física para llevar un seguimiento de tu salud y estado físico', 'SI-003'),
('Stellar Smart Watch', 'Reloj inteligente con pantalla táctil y funciones avanzadas para un estilo de vida conectado', 'SI-004'),
('Stellar Portable Speaker', 'Altavoz portátil resistente al agua y con sonido de alta fidelidad para disfrutar de la música al aire libre', 'SI-005'),

-- Harmony Health Group
('Harmony Meditation App', 'Aplicación de meditación guiada para reducir el estrés y mejorar el bienestar mental', 'HHG-001'),
('Harmony Yoga Mat', 'Tapete de yoga antideslizante y acolchado para prácticas cómodas y seguras', 'HHG-002'),
('Harmony Herbal Tea Set', 'Set de té de hierbas orgánicas para relajarse y rejuvenecer el cuerpo y la mente', 'HHG-003'),
('Harmony Aromatherapy Diffuser', 'Difusor de aromaterapia con luz LED y diferentes modos de niebla para crear un ambiente tranquilo', 'HHG-004'),
('Harmony Wellness Journal', 'Diario de bienestar para llevar un registro de tus hábitos y metas de salud', 'HHG-005'),

-- Nexus Dynamics
('Nexus Smart Glasses', 'Gafas inteligentes con realidad aumentada para mejorar la productividad y la eficiencia', 'ND-001'),
('Nexus Drone with Camera', 'Dron equipado con cámara HD para capturar imágenes y videos desde el aire', 'ND-002'),
('Nexus Smart Lock System', 'Sistema de bloqueo inteligente para mejorar la seguridad y la accesibilidad en el hogar', 'ND-003'),
('Nexus Robotic Vacuum Cleaner', 'Aspiradora robótica con navegación inteligente y funciones de limpieza programables', 'ND-004'),
('Nexus Smart Thermostat', 'Termostato inteligente para controlar la temperatura de tu hogar desde cualquier lugar', 'ND-005'),

-- BlueWave Enterprises
('BlueWave Wireless Router', 'Router inalámbrico de alta velocidad para una conectividad confiable en el hogar u oficina', 'BWE-001'),
('BlueWave Portable Speaker', 'Altavoz portátil con sonido estéreo de calidad para disfrutar de la música en cualquier lugar', 'BWE-002'),
('BlueWave External Hard Drive', 'Disco duro externo de gran capacidad para almacenar y respaldar tus datos importantes', 'BWE-003'),
('BlueWave Gaming Mouse', 'Mouse ergonómico y preciso diseñado para jugadores exigentes', 'BWE-004'),
('BlueWave Bluetooth Headphones', 'Auriculares inalámbricos con cancelación de ruido para una experiencia auditiva inmersiva', 'BWE-005'),

-- Apex Manufacturing
('Apex Power Drill', 'Taladro eléctrico de alta potencia para perforaciones precisas en diferentes materiales', 'AM-001'),
('Apex Circular Saw', 'Sierra circular versátil y duradera para cortes limpios y precisos en madera y otros materiales', 'AM-002'),
('Apex Bench Grinder', 'Amoladora de banco resistente para afilar y pulir herramientas y piezas metálicas', 'AM-003'),
('Apex Air Compressor', 'Compresor de aire compacto y eficiente para inflar neumáticos y realizar trabajos de pintura', 'AM-004'),
('Apex Welding Machine', 'Máquina de soldar versátil y fácil de usar para proyectos de soldadura en casa o en el taller', 'AM-005'),

-- QuantumLeap Technologies
('QuantumLeap Quantum Computer', 'Computadora cuántica de vanguardia con capacidades de procesamiento avanzadas', 'QLT-001'),
('QuantumLeap Virtual Assistant', 'Asistente virtual inteligente con capacidades de aprendizaje automático y reconocimiento de voz', 'QLT-002'),
('QuantumLeap Neural Implant', 'Implante neural innovador para mejorar las capacidades cognitivas y la conectividad cerebral', 'QLT-003'),
('QuantumLeap Holographic Display', 'Display holográfico para proyecciones tridimensionales y experiencias visuales inmersivas', 'QLT-004'),
('QuantumLeap Quantum Sensor', 'Sensor cuántico de alta precisión para mediciones avanzadas en campos como la física y la medicina', 'QLT-005'),

-- MegaCorp
('MegaCorp MegaPhone', 'Teléfono inteligente de última generación con características innovadoras y rendimiento excepcional', 'MC-001'),
('MegaCorp MegaTablet', 'Tableta con pantalla grande y potente rendimiento para productividad y entretenimiento móvil', 'MC-002'),
('MegaCorp MegaWatch', 'Reloj inteligente elegante y funcional con aplicaciones útiles y seguimiento de la salud', 'MC-003'),
('MegaCorp MegaLaptop', 'Laptop ultradelgada y potente con diseño premium y larga duración de la batería', 'MC-004'),
('MegaCorp MegaTV', 'Televisor inteligente con resolución 4K y capacidades de transmisión en línea para una experiencia de visualización inmersiva', 'MC-005'),

-- TechGiant
('TechGiant VR Headset', 'Visor de realidad virtual con seguimiento de movimiento preciso para juegos y experiencias inmersivas', 'TG-001'),
('TechGiant Quantum Processor', 'Procesador cuántico de alta velocidad para aplicaciones de inteligencia artificial y análisis de datos avanzados', 'TG-002'),
('TechGiant AI Speaker', 'Altavoz inteligente con asistente virtual integrado para controlar dispositivos y obtener información mediante comandos de voz', 'TG-003'),
('TechGiant Smart Glasses', 'Gafas inteligentes con pantalla AR para aumentar la productividad y mejorar las experiencias de usuario', 'TG-004'),
('TechGiant Drone Delivery System', 'Sistema de entrega de drones autónomo para transporte rápido y eficiente de paquetes', 'TG-005'),

-- Innovative Solutions
('Innovative Solar Panel', 'Panel solar innovador con tecnología de células fotovoltaicas de última generación para una mayor eficiencia energética', 'IS-001'),
('Innovative Home Automation System', 'Sistema de automatización del hogar con tecnología IoT para controlar dispositivos desde tu teléfono inteligente', 'IS-002'),
('Innovative Self-Driving Car', 'Automóvil autónomo con capacidades de conducción automática y seguridad avanzada', 'IS-003'),
('Innovative Wearable Health Monitor', 'Monitor de salud portátil para seguimiento continuo de signos vitales y actividad física', 'IS-004'),
('Innovative 3D Printer', 'Impresora 3D de alta precisión y velocidad para prototipado rápido y fabricación personalizada', 'IS-005'),

-- Global Traders
('Global Traders Business Networking Platform', 'Plataforma de redes empresariales para conectar con socios comerciales internacionales', 'GT-004'),
('Global Traders Logistics Management Software', 'Software de gestión logística para optimizar el transporte y seguimiento de mercancías', 'GT-005'),
('Global Traders Export Compliance Tool', 'Herramienta de cumplimiento de exportación para asegurar el cumplimiento normativo en operaciones de comercio internacional', 'GT-006'),
('Global Traders Trade Finance Solution', 'Solución de financiamiento comercial para facilitar transacciones internacionales y mitigar riesgos financieros', 'GT-007'),
('Global Traders Supply Chain Analytics Platform', 'Plataforma de análisis de cadena de suministro para identificar oportunidades de mejora y reducir costos operativos', 'GT-008'),

-- RetailHub
('RetailHub E-commerce Platform', 'Plataforma de comercio electrónico todo en uno para lanzar y hacer crecer tu tienda en línea', 'RH-001'),
('RetailHub Point-of-Sale System', 'Sistema de punto de venta fácil de usar para gestionar transacciones y inventario en tiendas físicas', 'RH-002'),
('RetailHub Inventory Management Software', 'Software de gestión de inventario para controlar las existencias y optimizar la reposición de productos', 'RH-003'),
('RetailHub Customer Relationship Management (CRM) Tool', 'Herramienta de gestión de relaciones con los clientes para mejorar la atención al cliente y aumentar las ventas', 'RH-004'),
('RetailHub Retail Analytics Dashboard', 'Panel de análisis de datos para visualizar métricas clave y tomar decisiones comerciales informadas', 'RH-005');

-- Cargar datos en Inventario
INSERT INTO Inventario (Cantidad, IdAlmacen, CodigoProducto) VALUES

-- Freaky Frog
(100, 1, 'FF-001'),
(150, 1, 'FF-002'),
(200, 1, 'FF-003'),
(120, 1, 'FF-004'),
(180, 1, 'FF-005'),

-- Dooly Doll
(90, 2, 'DD-001'),
(100, 2, 'DD-002'),
(80, 2, 'DD-003'),
(110, 2, 'DD-004'),
(95, 2, 'DD-005'),

-- InstaClothes
(300, 3, 'IC-001'),
(250, 3, 'IC-002'),
(180, 3, 'IC-003'),
(200, 3, 'IC-004'),
(220, 3, 'IC-005'),

-- Panty Village
(150, 4, 'PV-001'),
(120, 4, 'PV-002'),
(180, 4, 'PV-003'),
(200, 4, 'PV-004'),
(160, 4, 'PV-005'),

-- Exquisite Panty
(90, 5, 'EP-001'),
(110, 5, 'EP-002'),
(85, 5, 'EP-003'),
(95, 5, 'EP-004'),
(100, 5, 'EP-005'),

-- Jump
(400, 6, 'JU-001'),
(180, 6, 'JU-002'),
(220, 6, 'JU-003'),
(300, 6, 'JU-004'),
(250, 6, 'JU-005'),

-- OnTarget
(150, 7, 'OT-001'),
(180, 7, 'OT-002'),
(200, 7, 'OT-003'),
(220, 7, 'OT-004'),
(190, 7, 'OT-005'),

-- Camisetas OnTarget
(200, 8, 'CT-001'),
(180, 8, 'CT-002'),
(220, 8, 'CT-003'),
(190, 8, 'CT-004'),
(210, 8, 'CT-005'),

-- Impresionar Camisetas
(150, 9, 'ICam-001'),
(170, 9, 'ICam-002'),
(200, 9, 'ICam-003'),
(190, 9, 'ICam-004'),
(180, 9, 'ICam-005'),

-- Cinnamom Overdressed
(120, 10, 'CO-001'),
(140, 10, 'CO-002'),
(130, 10, 'CO-003'),
(110, 10, 'CO-004'),
(125, 10, 'CO-005'),

-- Gafas New Vision
(180, 11, 'GNV-001'),
(200, 11, 'GNV-002'),
(220, 11, 'GNV-003'),
(190, 11, 'GNV-004'),
(210, 11, 'GNV-005'),

-- Tándem
(100, 12, 'TD-001'),
(90, 12, 'TD-002'),
(80, 12, 'TD-003'),
(110, 12, 'TD-004'),
(120, 12, 'TD-005'),

-- TechNova Solutions
(150, 13, 'TNS-001'),
(180, 13, 'TNS-002'),
(200, 13, 'TNS-003'),
(220, 13, 'TNS-004'),
(190, 13, 'TNS-005'),

-- EcoGreen Industries
(120, 14, 'EGI-001'),
(140, 14, 'EGI-002'),
(130, 14, 'EGI-003'),
(110, 14, 'EGI-004'),
(125, 14, 'EGI-005'),

-- Stellar Innovations
(160, 15, 'SI-001'),
(180, 15, 'SI-002'),
(190, 15, 'SI-003'),
(200, 15, 'SI-004'),
(175, 15, 'SI-005'),

-- Harmony Health Group
(100, 16, 'HHG-001'),
(90, 16, 'HHG-002'),
(80, 16, 'HHG-003'),
(110, 16, 'HHG-004'),
(120, 16, 'HHG-005'),

-- Nexus Dynamics
(150, 17, 'ND-001'),
(120, 17, 'ND-002'),
(180, 17, 'ND-003'),
(200, 17, 'ND-004'),
(160, 17, 'ND-005'),

-- BlueWave Enterprises
(170, 18, 'BWE-001'),
(190, 18, 'BWE-002'),
(200, 18, 'BWE-003'),
(220, 18, 'BWE-004'),
(185, 18, 'BWE-005'),

-- Apex Manufacturing
(200, 19, 'AM-001'),
(220, 19, 'AM-002'),
(250, 19, 'AM-003'),
(180, 19, 'AM-004'),
(210, 19, 'AM-005'),

-- QuantumLeap Technologies
(100, 20, 'QLT-001'),
(120, 20, 'QLT-002'),
(90, 20, 'QLT-003'),
(110, 20, 'QLT-004'),
(130, 20, 'QLT-005'),

-- MegaCorp
(200, 21, 'MC-001'),
(180, 21, 'MC-002'),
(220, 21, 'MC-003'),
(190, 21, 'MC-004'),
(210, 21, 'MC-005'),

-- TechGiant
(150, 22, 'TG-001'),
(180, 22, 'TG-002'),
(200, 22, 'TG-003'),
(220, 22, 'TG-004'),
(190, 22, 'TG-005'),

-- Innovative Solutions
(120, 23, 'IS-001'),
(140, 23, 'IS-002'),
(130, 23, 'IS-003'),
(110, 23, 'IS-004'),
(125, 23, 'IS-005'),

-- Global Traders
(160, 24, 'GT-004'),
(180, 24, 'GT-005'),
(200, 24, 'GT-006'),
(220, 24, 'GT-007'),
(185, 24, 'GT-008'),

-- RetailHub
(200, 25, 'RH-001'),
(180, 25, 'RH-002'),
(220, 25, 'RH-003'),
(190, 25, 'RH-004'),
(210, 25, 'RH-005');

-- Cargar datos en Cliente
INSERT INTO Cliente (NombreCliente, RUC, IdDireccionOficial) VALUES 
('InnoSol LLC', '20603187233', 26),
('STI Ltd.', '20548198292', 27),
('Global Solutions Ltd.', '20473263814', 28),
('Future Invest Ltd.', '20394257101', 29),
('Integro Logistics Inc.', '20513482049', 30),
('FinAd Co. Ltd.', '20457093628', 31),
('InnoPeru Ltd.', '20389657142', 32),
('North Food Inc.', '20402731948', 33),
('SouthStrat Ltd.', '20514978236', 34),
('Central Con Ltd.', '20382765918', 35),
('AdvTech Ltd.', '20570214831', 36),
('Essential Prod Co.', '20501483729', 37),
('InnoBiz Ltd.', '20432159682', 38),
('North Peru Food Ltd.', '20578204938', 39),
('StratConsult Inc.', '20634791825', 40),
('Urban ConDev Inc.', '20482716359', 41),
('Real Estate Trade Ltd.', '20389547123', 42),
('SouthStrat Inc.', '20503471928', 43),
('PeruLog Ltd.', '20347182596', 44),
('South Food Inc.', '20481394725', 45),
('TechServ Ltd.', '20563419872', 46),
('North BusServ Ltd.', '20394857132', 47),
('TechInno Peru Ltd.', '20489175632', 48),
('Future Prod Ltd.', '20347192856', 49),
('South Food Ltd.', '20471836529', 50),
('FinServ Co. Ltd.', '20612389472', 51),
('North StratInvest Inc.', '20479361285', 52),
('IntegroTech Ltd.', '20398214678', 53),
('NatProd Trade Ltd.', '20582763419', 54),
('InnoBiz Peru Ltd.', '20495738126', 55),
('South CentCon Ltd.', '20371498256', 56),
('BusConsult Inc.', '20638215947', 57),
('Urban ConDev Peru Ltd.', '20478391562', 58),
('North Real Estate Trade Co.', '20514798321', 59),
('TechInno South Peru Ltd.', '20493571628', 60),
('Future Prod Ltd.', '20628749135', 61),
('North Food Inc.', '20478192653', 62),
('TechServ Co. Ltd.', '20549187236', 63),
('South StratInvest Ltd.', '20476281395', 64),
('PeruLog Ltd.', '20398214765', 65),
('South Food Trade Co. Ltd.', '20571863429', 66),
('InnoBiz North Peru Ltd.', '20451793826', 67),
('CentCon Ltd.', '20648719325', 68),
('South BusConsult Inc.', '20378512946', 69),
('Urban ConDev North Peru Ltd.', '20471836592', 70),
('South Real Estate Trade Co.', '20563917248', 71),
('North TechInno Ltd.', '20457139268', 72),
('Future Prod Peru Ltd.', '20671359284', 73),
('CentFood Inc.', '20497285136', 74),
('South TechServ Ltd.', '20371958264', 75);


INSERT INTO Negociador (Nombre, Cargo, Descripcion, ApellidoPaterno, ApellidoMaterno, IdCliente)
VALUES
('Juan', 'Gerente de ventas', 'Responsable de supervisar las ventas y el rendimiento del equipo de ventas', 'González', 'Martínez', 1),
('María', 'Especialista en Marketing', 'Encargada de diseñar y ejecutar estrategias de marketing', 'Rodríguez', 'Sánchez', 2),
('Pedro', 'Analista de datos', 'Encargado de analizar los datos del mercado para tomar decisiones informadas', 'Fernández', 'López', 3),
('Laura', 'Ejecutivo de cuentas', 'Responsable de gestionar las cuentas de los clientes y mantener relaciones comerciales', 'García', 'Pérez', 4),
('Carlos', 'Desarrollador de negocios', 'Encargado de identificar oportunidades de negocio y desarrollar relaciones con los clientes', 'Díaz', 'Gómez', 5),
('Ana', 'Especialista en comunicaciones', 'Encargada de gestionar la comunicación interna y externa de la empresa', 'Martínez', 'González', 6),
('Luis', 'Coordinador de ventas', 'Responsable de coordinar las actividades del equipo de ventas y alcanzar los objetivos establecidos', 'Sánchez', 'Rodríguez', 7),
('Sofía', 'Analista de mercado', 'Encargada de analizar tendencias de mercado y proporcionar información relevante para la toma de decisiones', 'López', 'Fernández', 8),
('Diego', 'Especialista en desarrollo de negocios', 'Encargado de desarrollar nuevas oportunidades de negocio y establecer relaciones comerciales', 'Pérez', 'García', 9),
('Elena', 'Gerente de marketing', 'Responsable de planificar y ejecutar estrategias de marketing para alcanzar los objetivos de la empresa', 'Gómez', 'Díaz', 10),
('Andrés', 'Analista financiero', 'Encargado de analizar datos financieros y elaborar informes para apoyar la toma de decisiones empresariales', 'González', 'Martínez', 11),
('Valeria', 'Especialista en desarrollo de productos', 'Encargada de investigar, desarrollar y lanzar nuevos productos al mercado', 'Rodríguez', 'Sánchez', 12),
('Javier', 'Gerente de cuentas', 'Responsable de gestionar y mantener relaciones con los clientes clave de la empresa', 'Fernández', 'López', 13),
('Carolina', 'Analista de marketing digital', 'Encargada de analizar y optimizar estrategias de marketing en medios digitales', 'García', 'Pérez', 14),
('Ricardo', 'Ejecutivo de ventas', 'Responsable de cerrar acuerdos de venta y alcanzar los objetivos de ventas establecidos', 'Díaz', 'Gómez', 15),
('Paula', 'Especialista en relaciones públicas', 'Encargada de gestionar la imagen pública de la empresa y mantener relaciones con los medios de comunicación', 'Martínez', 'González', 16),
('Martín', 'Coordinador de marketing', 'Responsable de coordinar las actividades del equipo de marketing y ejecutar campañas publicitarias', 'Sánchez', 'Rodríguez', 17),
('Camila', 'Analista de negocio', 'Encargada de analizar el mercado y proponer estrategias para mejorar el rendimiento empresarial', 'López', 'Fernández', 18),
('Alejandro', 'Gerente de desarrollo de negocios', 'Responsable de liderar el desarrollo e implementación de nuevas oportunidades de negocio', 'Pérez', 'García', 19),
('Lucía', 'Especialista en marketing de contenidos', 'Encargada de crear contenido relevante para atraer y retener clientes', 'Gómez', 'Díaz', 20),
('Mateo', 'Analista de riesgos financieros', 'Encargado de identificar y evaluar los riesgos financieros para la empresa', 'González', 'Martínez', 21),
('Natalia', 'Especialista en investigación de mercado', 'Encargada de realizar estudios de mercado para identificar oportunidades y amenazas', 'Rodríguez', 'Sánchez', 22),
('Felipe', 'Ejecutivo de cuentas clave', 'Responsable de gestionar las cuentas clave de la empresa y mantener relaciones comerciales sólidas', 'Fernández', 'López', 23),
('Juliana', 'Analista de redes sociales', 'Encargada de gestionar y optimizar la presencia de la empresa en las redes sociales', 'García', 'Pérez', 24),
('Sebastián', 'Gerente de ventas regionales', 'Responsable de supervisar y liderar las actividades de ventas en una región específica', 'Díaz', 'Gómez', 25),
('Isabella', 'Especialista en branding', 'Encargada de desarrollar estrategias para mejorar la percepción de la marca en el mercado', 'Martínez', 'González', 26),
('Gabriel', 'Analista de investigación de mercado', 'Encargado de recopilar, analizar y presentar datos para respaldar las decisiones de marketing', 'Sánchez', 'Rodríguez', 27),
('Ana María', 'Coordinadora de marketing digital', 'Responsable de coordinar las actividades de marketing en medios digitales', 'López', 'Fernández', 28),
('Juan José', 'Especialista en desarrollo de negocios internacionales', 'Encargado de identificar oportunidades de negocio en mercados internacionales', 'Pérez', 'García', 29),
('Carla', 'Especialista en recursos humanos', 'Encargada de reclutar, seleccionar y desarrollar al talento humano de la empresa', 'Martínez', 'González', 30),
('Daniel', 'Analista de ventas', 'Encargado de analizar datos de ventas para identificar oportunidades de mejora', 'Rodríguez', 'Sánchez', 31),
('Valentina', 'Gerente de marketing digital', 'Responsable de planificar y ejecutar estrategias de marketing en entornos digitales', 'Fernández', 'López', 32),
('Ignacio', 'Especialista en desarrollo de negocio', 'Encargado de identificar y desarrollar nuevas oportunidades de negocio', 'García', 'Pérez', 33),
('Florencia', 'Analista de datos financieros', 'Encargada de analizar información financiera para apoyar la toma de decisiones empresariales', 'Díaz', 'Gómez', 34),
('Simón', 'Coordinador de ventas', 'Responsable de coordinar las actividades de ventas y alcanzar los objetivos establecidos', 'Martínez', 'González', 35),
('Amanda', 'Especialista en marketing de contenido', 'Encargada de crear y gestionar contenido para atraer y retener clientes', 'Rodríguez', 'Sánchez', 36),
('Tomás', 'Analista de estrategias de negocio', 'Encargado de analizar estrategias empresariales y proponer mejoras', 'Fernández', 'López', 37),
('Martina', 'Gerente de cuentas', 'Responsable de gestionar cuentas clave y mantener relaciones comerciales', 'García', 'Pérez', 38),
('Lucas', 'Especialista en marketing de redes sociales', 'Encargado de gestionar la presencia de la empresa en las redes sociales', 'Díaz', 'Gómez', 39),
('Isabel', 'Analista de investigación de mercado', 'Encargada de realizar estudios de mercado para identificar oportunidades', 'Martínez', 'González', 40),
('Emilio', 'Especialista en desarrollo de producto', 'Encargado de desarrollar y mejorar productos para el mercado', 'Rodríguez', 'Sánchez', 41),
('Renata', 'Gerente de ventas', 'Responsable de liderar el equipo de ventas y alcanzar objetivos', 'Fernández', 'López', 42),
('Matías', 'Analista de marketing digital', 'Encargado de analizar y optimizar estrategias de marketing en línea', 'García', 'Pérez', 43),
('Renzo', 'Ejecutivo de cuentas', 'Responsable de gestionar cuentas y mantener relaciones comerciales', 'Díaz', 'Gómez', 44),
('Luna', 'Especialista en relaciones públicas', 'Encargada de gestionar la imagen pública de la empresa', 'Martínez', 'González', 45),
('Maximiliano', 'Analista de negocios', 'Encargado de analizar y mejorar procesos empresariales', 'Rodríguez', 'Sánchez', 46),
('Julieta', 'Gerente de marketing', 'Responsable de planificar y ejecutar estrategias de marketing', 'Fernández', 'López', 47),
('Dante', 'Analista de ventas', 'Encargado de analizar datos de ventas para mejorar resultados', 'García', 'Pérez', 48),
('Valeria', 'Especialista en marketing digital', 'Encargada de desarrollar estrategias de marketing en línea', 'Díaz', 'Gómez', 49),
('Santiago', 'Coordinador de ventas', 'Responsable de coordinar actividades de ventas', 'Martínez', 'González', 50)
('Lucía', 'Ejecutivo de ventas', 'Encargada de cerrar acuerdos comerciales', 'García', 'Pérez', 1),
('Sebastián', 'Analista de Marketing', 'Encargado de desarrollar estrategias de marketing', 'Martínez', 'López', 2),
('Valentina', 'Gerente de Cuentas', 'Responsable de mantener la relación con los clientes', 'Rodríguez', 'Gómez', 3),
('Mateo', 'Especialista en Finanzas', 'Encargado de analizar los estados financieros', 'Díaz', 'Hernández', 4),
('Isabella', 'Analista de Datos', 'Responsable de interpretar datos para la toma de decisiones', 'Sánchez', 'Fernández', 5),
('Juan', 'Coordinador de Ventas', 'Encargado de coordinar el equipo de ventas', 'López', 'García', 6),
('Camila', 'Ejecutivo de Cuentas', 'Encargada de gestionar relaciones con clientes clave', 'Pérez', 'Martínez', 7),
('Lucas', 'Especialista en Marketing Digital', 'Responsable de estrategias de marketing online', 'Gómez', 'Rodríguez', 8),
('Valeria', 'Analista de Negocios', 'Encargada de analizar oportunidades de mercado', 'Fernández', 'Díaz', 9),
('Tomás', 'Gerente de Ventas', 'Responsable de la estrategia de ventas', 'Hernández', 'Sánchez', 10),
('María', 'Analista de Marketing', 'Encargada de estudios de mercado', 'García', 'Pérez', 11),
('Diego', 'Especialista en Finanzas', 'Encargado de análisis financiero', 'Martínez', 'López', 12),
('Laura', 'Gerente de Cuentas', 'Responsable de relaciones con clientes corporativos', 'Rodríguez', 'Gómez', 13),
('Alejandro', 'Coordinador de Ventas', 'Encargado de la coordinación del equipo de ventas', 'Díaz', 'Hernández', 14),
('Carolina', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en línea', 'Sánchez', 'Fernández', 15),
('Emilio', 'Ejecutivo de Cuentas', 'Encargado de atender clientes corporativos', 'López', 'García', 16),
('Julia', 'Especialista en Finanzas', 'Encargada de análisis financiero y presupuestos', 'Pérez', 'Martínez', 17),
('Luciana', 'Analista de Datos', 'Encargada de análisis estadístico', 'Gómez', 'Rodríguez', 18),
('Santiago', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'Fernández', 'Díaz', 19),
('Isabel', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'Hernández', 'Sánchez', 20),
('Martín', 'Especialista en Finanzas', 'Encargado de análisis de riesgos financieros', 'García', 'Pérez', 21),
('Valentino', 'Coordinador de Ventas', 'Encargado de coordinar acciones comerciales', 'Martínez', 'López', 22),
('Natalia', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing online', 'Rodríguez', 'Gómez', 23),
('Bruno', 'Ejecutivo de Cuentas', 'Encargado de gestionar cuentas corporativas', 'Díaz', 'Hernández', 24),
('Antonella', 'Especialista en Finanzas', 'Encargada de análisis y planificación financiera', 'Sánchez', 'Fernández', 25),
('Matías', 'Analista de Datos', 'Encargado de análisis de datos para la toma de decisiones', 'López', 'García', 26),
('Victoria', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'Pérez', 'Martínez', 27),
('Emilia', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'Gómez', 'Rodríguez', 28),
('Iván', 'Especialista en Finanzas', 'Encargado de análisis de inversión y riesgos', 'Fernández', 'Díaz', 29),
('Mariana', 'Coordinador de Ventas', 'Encargada de coordinar acciones comerciales', 'Hernández', 'Sánchez', 30),
('Lautaro', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en línea', 'García', 'Pérez', 31),
('Amparo', 'Ejecutivo de Cuentas', 'Encargada de gestionar cuentas corporativas', 'Martínez', 'López', 32),
('Emilio', 'Especialista en Finanzas', 'Encargado de análisis y planificación financiera', 'Rodríguez', 'Gómez', 33),
('Natalia', 'Analista de Datos', 'Encargada de análisis de datos para la toma de decisiones', 'Díaz', 'Hernández', 34),
('Sebastián', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'Sánchez', 'Fernández', 35),
('Valentina', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'López', 'García', 36),
('Diego', 'Especialista en Finanzas', 'Encargado de análisis de inversión y riesgos', 'Pérez', 'Martínez', 37),
('Lucía', 'Coordinador de Ventas', 'Encargada de coordinar acciones comerciales', 'Gómez', 'Rodríguez', 38),
('Santiago', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en línea', 'Fernández', 'Díaz', 39),
('Carolina', 'Especialista en Finanzas', 'Encargada de análisis y planificación financiera', 'Hernández', 'Sánchez', 40),
('Emilio', 'Analista de Datos', 'Encargado de análisis de datos para la toma de decisiones', 'Martínez', 'López', 41),
('Julia', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'Rodríguez', 'Gómez', 42),
('Luciana', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'Díaz', 'Hernández', 43),
('Santiago', 'Especialista en Finanzas', 'Encargado de análisis de inversión y riesgos', 'Sánchez', 'Fernández', 44),
('Isabel', 'Coordinador de Ventas', 'Encargada de coordinar acciones comerciales', 'Fernández', 'Díaz', 45),
('Martín', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en línea', 'Hernández', 'Sánchez', 46),
('Valentino', 'Ejecutivo de Cuentas', 'Encargado de gestionar cuentas corporativas', 'García', 'Pérez', 47),
('Natalia', 'Especialista en Finanzas', 'Encargada de análisis y planificación financiera', 'Martínez', 'López', 48),
('Bruno', 'Analista de Datos', 'Encargado de análisis de datos para la toma de decisiones', 'Rodríguez', 'Gómez', 49),
('Antonella', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'Díaz', 'Hernández', 50);

-- Cargar datos en TarjetaCredito
INSERT INTO TarjetaCredito (Numero, FechaVencimiento, CodigoSeguridad, IdCliente) VALUES
('1234567093755678', '2025-12-01', '123', 1),
('2345678929476789', '2025-11-01', '456', 2),
('9037789034567890', '2027-10-01', '789', 3),
('9837890309470901', '2026-09-01', '012', 4),
('5678901256789012', '2026-08-01', '345', 5),
('4389012367890123', '2025-07-01', '678', 6),
('7890123478901234', '2024-06-01', '901', 7),
('5901234589012345', '2028-03-01', '234', 8),
('5612345690123456', '2022-04-01', '567', 9),
('1423456701234567', '2027-03-01', '890', 10),
('1234123412341234', '2028-12-01', '156', 11),
('6445234298402345', '2025-11-01', '267', 12),
('3452789057839456', '2026-10-01', '388', 13),
('2847456395814567', '2025-09-01', '138', 14),
('5678567856785678', '2029-08-01', '738', 15),
('6789678967896789', '2025-07-01', '683', 16),
('7890789078907890', '2026-06-01', '751', 17),
('8901890189018901', '2027-05-01', '882', 18),
('9012901785439012', '2028-04-01', '962', 19),
('0123012301230123', '2028-03-01', '223', 20),
('1149812233334444', '2026-12-01', '156', 21),
('1278333344442485', '2024-11-01', '262', 22),
('3333444421756666', '2025-10-01', '375', 23),
('4424555428667847', '2026-09-01', '446', 24),
('2695666677778048', '2027-08-01', '584', 25);

-- Cargar datos en TipoMembresia
INSERT INTO TipoMembresia (NombreTipoMembresia, Descuento) VALUES
('Bronze', 0.03),
('Silver', 0.05),
('Gold', 0.1),
('Platinum', 0.15);

-- Cargar datos en Membresia
INSERT INTO Membresia (FechaInicio, FechaFinal, IdCliente, IdTipoMembresia) VALUES
('2023-12-31', '2024-12-31', 1, 1),  
('2024-03-16', '2024-11-16', 2, 2),  
('2024-03-28', '2025-03-28', 3, 3),  
('2024-04-10', '2024-05-10', 4, 4),  
('2024-05-01', '2025-08-01', 5, 1), 
('2023-06-01', '2024-06-01', 6, 2),  
('2024-02-19', '2025-02-19', 7, 3),  
('2022-08-29', '2023-08-29', 8, 4), 
('2024-02-13', '2024-09-13', 9, 1),  
('2024-01-15', '2025-01-15', 10, 2),
('2022-11-14', '2024-11-14', 11, 3), 
('2024-04-31', '2024-12-31', 12, 4), 
('2023-12-14', '2024-01-14', 13, 1), 
('2024-02-25', '2024-05-25', 14, 2),
('2022-10-31', '2023-10-31', 15, 3);