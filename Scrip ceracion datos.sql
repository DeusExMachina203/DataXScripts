-- Cargar datos en TipoVia
INSERT INTO TipoVia (Tipo) VALUES
('Alameda'),('Avenida'),('Bajada'),('Boulevard'),('Carretera'),('Callej�n'),('Calle'),('Galeria'),('Jir�n'),('Malec�n'),('�valo'),('Pasaje'),('Plaza'),
('Parque'),('Prolongaci�n'),('Paseo'),('Plazuela'),('Camino'),('Sendero'),('Puente'),('Ruta'),('Autopista');

-- Cargar datos en Region
INSERT INTO Region (NombreRegion) VALUES
('Amazonas'),('�ncash'),('Apur�mac'),('Arequipa'),('Ayacucho'),('Cajamarca'),('Callao'),('Cusco'),('Huancavelica'),('Hu�nuco'),('Ica'),('Jun�n'),
('La Libertad'),('Lambayeque'),('Lima'),('Lima Provincia'),('Loreto'),('Madre de Dios'),('Moquegua'),('Pasco'),('Piura'),('Puno'),('San Mart�n'),('Tacna'),
('Tumbes'),('Ucayali');

-- Cargar datos en Provincia
INSERT INTO Provincia (NombreProvincia, IdRegion) VALUES
('Chachapoyas', 1),('Huaraz', 2),('Abancay', 3),('Arequipa', 4),('Huamanga', 5),('Cajamarca', 6),('Callao', 7),('Cusco', 8),('Huancavelica', 9),
('Hu�nuco', 10),('Ica', 11),('Huancayo', 12),('Trujillo', 13),('Chiclayo', 14),('Lima Metropolitana', 15),('Huacho', 16),('Iquitos', 17),('Puerto Maldonado', 18),
('Moquegua', 19),('Cerro de Pasco', 20),('Piura', 21),('Puno', 22),('Moyobamba', 23),('Tacna', 24),('Tumbes', 25),('Ucayali', 26);

-- Cargar datos en Distrito
INSERT INTO Distrito (NombreDistrito, IdProvincia) VALUES
('Huaraz', 2),('Cochabamba', 2),('Arequipa', 4),('Cochabamba', 4),('Cusco', 8),('San Jer�nimo', 8),
('Hu�nuco', 10),('Amarilis', 10),('Ica', 11),('La Tingui�a', 11),('Lima', 15),('Santiago de Surco', 15),
('Huacho', 16),('Santa Mar�a', 16),('Iquitos', 17),('San Juan Bautista', 17),('Piura', 21),('Castilla', 21),
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
('Jun�n', '909', 'I', '9', '90', 9, 9),
('Balta', '1010', 'J', '10', '100', 10, 10),
('Higuereta', '1111', 'K', '11', '110', 11, 11),
('Los Pinos', '1212', 'L', '12', '120', 12, 12),
('Mayor', '1313', 'M', '13', '130', 13, 13),
('Kennedy', '1414', 'N', '14', '140', 14, 14),
('Arenales', '1515', 'O', '15', '150', 15, 15),
('de la Rep�blica', '1616', 'P', '16', '160', 16, 16),
('San Blas', '1717', 'Q', '17', '170', 17, 17),
('Real', '1818', 'R', '18', '180', 18, 18),
('de los Andes', '1919', 'S', '19', '190', 19, 19),
('Nuevo', '2020', 'T', '20', '200', 20, 20),
('del Sol', '2121', 'U', '21', '210', 21, 21),
('Panamericana', '2222', 'V', '22', '220', 22, 22),
('de los H�roes', '2323', 'W', '23', '230', 1, 23),
('San Mart�n', '2424', 'X', '24', '240', 2, 24),
('del R�o', '2525', 'Y', '25', '250', 3, 25),
('Miraflores', '2626', 'Z', '26', '260', 4, 1),
('Austral', '2727', 'AA', '27', '270', 5, 2),
('de los Milagros', '2828', 'BB', '28', '280', 6, 3),
('Las Orqu�deas', '2929', 'CC', '29', '290', 7, 4),
('La Merced', '3030', 'DD', '30', '300', 8, 5),
('Bol�var', '3131', 'EE', '31', '310', 9, 6),
('Cisneros', '3232', 'FF', '32', '320', 10, 7),
('La Perla', '3333', 'GG', '33', '330', 11, 8),
('Los Eucaliptos', '3434', 'HH', '34', '340', 12, 9),
('San Miguel', '3535', 'II', '35', '350', 13, 10),
('Zonal', '3636', 'JJ', '36', '360', 14, 11),
('Grau', '3737', 'KK', '37', '370', 15, 12),
('Col�n', '3838', 'LL', '38', '380', 16, 13),
('Bel�n', '3939', 'MM', '39', '390', 17, 14),
('de los Incas', '4040', 'NN', '40', '400', 18, 15),
('del Sol', '4141', 'OO', '41', '410', 19, 16),
('Viejo', '4242', 'PP', '42', '420', 20, 17),
('Inka', '4343', 'QQ', '43', '430', 21, 18),
('del Norte', '4444', 'RR', '44', '440', 22, 19),
('Pardo', '4545', 'SS', '45', '450', 1, 20),
('del Ej�rcito', '4646', 'TT', '46', '460', 2, 21),
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
('de los H�roes', '6767', 'OOO', '67', '670', 17, 17),
('Santa Rosa', '6868', 'PPP', '68', '680', 18, 18),
('San Mart�n', '6969', 'QQQ', '69', '690', 19, 19),
('de los Suspiros', '7070', 'RRR', '70', '700', 20, 20),
('de la Rep�blica', '6161', 'XX', '1', '100', 3, 11),
('San Juan', '6262', 'YY', '2', '200', 4, 12),
('Los Pr�ceres', '6363', 'ZZ', '3', '300', 5, 13),
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
('Mar�timo', '8383', 'TT', '23', '2300', 3, 8),
('Central', '8484', 'UU', '24', '2400', 4, 9),
('Bol�var', '8585', 'VV', '25', '2500', 5, 10);

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
('T�ndem', 12),
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
('info@doolydoll.com', 'Correo principal de informaci�n', 2),
('ventas@instaclothes.com', 'Correo principal de ventas', 3),
('support@pantyvillage.com', 'Correo principal de soporte', 4),
('info@exquisitepanty.com', 'Correo principal de informaci�n', 5),
('contact@jump.com', 'Correo principal de contacto', 6),
('support@ontarget.com', 'Correo principal de soporte', 7),
('ventas@camisetasontarget.com', 'Correo principal de ventas', 8),
('info@impresionarcamisetas.com', 'Correo principal de informaci�n', 9),
('contacto@cinnamomoverdressed.com', 'Correo principal de contacto', 10),
('ventas@gafasnewvision.com', 'Correo principal de ventas', 11),
('info@tandem.com', 'Correo principal de informaci�n', 12),
('contact@technova.com', 'Correo principal de contacto', 13),
('info@ecogreenindustries.com', 'Correo principal de informaci�n', 14),
('support@stellarinno.com', 'Correo principal de soporte', 15),
('contacto@harmonyhealth.com', 'Correo principal de contacto', 16),
('info@nexusdynamics.com', 'Correo principal de informaci�n', 17),
('ventas@bluewaveenterprises.com', 'Correo principal de ventas', 18),
('contact@apexmanufacturing.com', 'Correo principal de contacto', 19),
('support@quantumleaptech.com', 'Correo principal de soporte', 20),
('info@megacorp.com', 'Correo principal de informaci�n', 21),
('ventas@techgiant.com', 'Correo principal de ventas', 22),
('contacto@innovativesolutions.com', 'Correo principal de contacto', 23),
('info@globaltraders.com', 'Correo principal de informaci�n', 24),
('support@retailhub.com', 'Correo principal de soporte', 25);

-- Cargar datos en CodigoTelefonoPais
INSERT INTO CodigoTelefonoPais (Codigo, NombrePais) VALUES
('+51', 'Per�'),
('+1', 'Estados Unidos'),
('+44', 'Reino Unido'),
('+34', 'Espa�a'),
('+49', 'Alemania'),
('+33', 'Francia'),
('+81', 'Jap�n'),
('+86', 'China'),
('+61', 'Australia'),
('+55', 'Brasil');

--Cargar datos en TelefonoEmpresa
INSERT INTO TelefonoEmpresa (Telefono, Descripcion, IdEmpresa, IdCodigoPais) VALUES 
('900000001', 'Atenci�n al cliente', 1, 1),
('900000002', '', 2, 1),
('900000003', 'Ventas y consultas', 3, 1),
('900000004', 'Oficina principal', 4, 1),
('900000005', '', 5, 1),
('900000006', 'L�nea de pedidos', 6, 1),
('900000007', 'Recepci�n', 7, 1),
('900000008', '', 8, 1),
('900000009', 'L�nea directa gerencia', 9, 1),
('900000010', 'Atenci�n comercial', 10, 1),
('900000011', '', 11, 1),
('900000012', 'Central de emergencias', 12, 1),
('900000013', '', 13, 1),
('900000014', 'Servicio postventa', 14, 1),
('900000015', 'Atenci�n corporativa', 15, 1),
('900000016', 'Contacto de ventas', 16, 1),
('900000017', '', 17, 1),
('900000018', 'Soporte de productos', 18, 1),
('900000019', 'Atenci�n administrativa', 19, 1),
('900000020', 'L�nea de atenci�n t�cnica', 20, 1),
('900000021', 'Consultas y soporte', 21, 1),
('900000022', 'L�nea de servicio', 22, 1),
('900000023', '', 23, 1),
('900000024', 'Atenci�n de pedidos', 24, 1),
('900000025', 'L�nea de contacto', 25, 1);

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
('Froggy Toy', 'Juguete para ni�os de alta calidad', 'FF-001'),
('Froggy Backpack', 'Mochila resistente y duradera', 'FF-002'),
('Froggy Adventure Game', 'Juego de aventuras interactivo', 'FF-003'),
('Froggy Plushie', 'Peluche suave y adorable de Froggy', 'FF-004'),
('Froggy Coloring Book', 'Libro para colorear con ilustraciones de Froggy', 'FF-005'),

-- Dooly Doll
('Dooly Plushie', 'Peluche esponjoso y encantador de Dooly', 'DD-001'),
('Dooly Storybook', 'Libro de cuentos ilustrado con las aventuras de Dooly', 'DD-002'),
('Dooly Puzzle Set', 'Set de rompecabezas con im�genes de Dooly', 'DD-003'),
('Dooly Stationery Kit', 'Kit de papeler�a con dise�o de Dooly', 'DD-004'),
('Dooly Dollhouse', 'Casa de mu�ecas con accesorios de Dooly', 'DD-005'),

-- InstaClothes
('InstaTee', 'Camiseta b�sica de algod�n de alta calidad', 'IC-001'),
('InstaJeans', 'Jeans cl�sicos y c�modos para uso diario', 'IC-002'),
('InstaDress', 'Vestido elegante y vers�til para cualquier ocasi�n', 'IC-003'),
('InstaHoodie', 'Sudadera con capucha para un estilo casual', 'IC-004'),
('InstaJacket', 'Chaqueta ligera y moderna para todas las estaciones', 'IC-005'),

-- Panty Village
('Lace Panties', 'C�modos y elegantes calzones de encaje', 'PV-001'),
('Silk Panties', 'Seductores calzones de seda para ocasiones especiales', 'PV-002'),
('Cotton Briefs', 'Calzoncillos cl�sicos de algod�n para uso diario', 'PV-003'),
('Seamless Panties', 'Calzones sin costuras para una comodidad total', 'PV-004'),
('Thong Panties', 'Tangas sexys y atrevidas para sentirse segura', 'PV-005'),

-- Exquisite Panty
('Satin Robe', 'Bata de sat�n lujosa y suave para momentos de relajaci�n', 'EP-001'),
('Silk Chemise', 'Camis�n de seda con detalles elegantes y femeninos', 'EP-002'),
('Lace Babydoll', 'Babydoll de encaje para una noche especial', 'EP-003'),
('Sheer Teddy', 'Teddy transparente para una seducci�n sutil', 'EP-004'),
('Mesh Bodysuit', 'Bodysuit de malla para un look sensual', 'EP-005'),

-- Jump
('JumpStart Energy Drink', 'Bebida energ�tica para un impulso instant�neo', 'JU-001'),
('JumpRope Fitness Tracker', 'Dispositivo para contar saltos y rastrear el ejercicio', 'JU-002'),
('JumpPack Backpack', 'Mochila resistente y funcional para aventuras al aire libre', 'JU-003'),
('JumpBox Subscription', 'Suscripci�n mensual para recibir productos sorpresa', 'JU-004'),
('JumpFit Exercise Mat', 'Tapete de ejercicio acolchado para entrenamientos c�modos', 'JU-005'),

-- OnTarget
('OnTarget Smartwatch', 'Reloj inteligente con funciones avanzadas de seguimiento', 'OT-001'),
('OnTarget Fitness Band', 'Banda de fitness para monitorizar la actividad f�sica', 'OT-002'),
('OnTarget Wireless Earbuds', 'Auriculares inal�mbricos para una experiencia auditiva sin cables', 'OT-003'),
('OnTarget Portable Charger', 'Cargador port�til para mantener tus dispositivos siempre cargados', 'OT-004'),
('OnTarget Laptop Sleeve', 'Funda acolchada para proteger tu laptop mientras viajas', 'OT-005'),

-- Camisetas OnTarget
('Graphic Tee', 'Camiseta con estampado gr�fico llamativo', 'CT-001'),
('Vintage Tee', 'Camiseta de estilo vintage con un toque retro', 'CT-002'),
('Logo Tee', 'Camiseta con el logo ic�nico de la marca', 'CT-003'),
('Striped Tee', 'Camiseta a rayas para un look cl�sico y elegante', 'CT-004'),
('Pocket Tee', 'Camiseta con bolsillo frontal para un estilo casual', 'CT-005'),

-- Impresionar Camisetas
('Custom Print Tee', 'Camiseta personalizada con tu dise�o favorito', 'ICam-001'),
('Typography Tee', 'Camiseta con tipograf�a creativa y llamativa', 'ICam-002'),
('Artistic Tee', 'Camiseta con dise�o art�stico y original', 'ICam-003'),
('Photo Print Tee', 'Camiseta con impresi�n fotogr�fica de alta calidad', 'ICam-004'),
('Limited Edition Tee', 'Camiseta de edici�n limitada con dise�o exclusivo', 'ICam-005'),

-- Cinnamom Overdressed
('Cinnamon Dress', 'Vestido elegante con toques de canela y glamour', 'CO-001'),
('Spice Skirt', 'Falda picante con estampado de canela para un look �nico', 'CO-002'),
('Cinnamon Blouse', 'Blusa ligera y sofisticada con aroma a canela', 'CO-003'),
('Scented Scarf', 'Bufanda suave y perfumada con esencia de canela', 'CO-004'),
('Cinnamon Accessories Set', 'Conjunto de accesorios coordinados con aroma a canela', 'CO-005'),

-- Gafas New Vision
('Classic Aviators', 'Gafas de sol estilo aviador con montura cl�sica', 'GNV-001'),
('Retro Round Sunglasses', 'Gafas de sol redondas con un toque vintage', 'GNV-002'),
('Sporty Wraparound Shades', 'Gafas de sol envolventes para actividades deportivas', 'GNV-003'),
('Fashion Cat-Eye Glasses', 'Gafas de estilo gato para un look elegante y femenino', 'GNV-004'),
('Polarized Wayfarers', 'Gafas de sol wayfarer con lentes polarizadas para una visi�n clara', 'GNV-005'),

-- T�ndem
('Tandem Adventure Backpack', 'Mochila resistente y vers�til para viajes de aventura', 'TD-001'),
('Tandem Camping Tent', 'Tienda de campa�a espaciosa y f�cil de montar para acampar al aire libre', 'TD-002'),
('Tandem Outdoor Grill', 'Parrilla port�til para asar alimentos al aire libre con amigos y familiares', 'TD-003'),
('Tandem Hiking Boots', 'Botas de senderismo duraderas y c�modas para explorar la naturaleza', 'TD-004'),
('Tandem Portable Hammock', 'Hamacas port�tiles y ligeras para relajarse en cualquier lugar', 'TD-005'),

-- TechNova Solutions
('TechNova Smart Home System', 'Sistema de dom�tica avanzado para controlar tu hogar desde tu tel�fono inteligente', 'TNS-001'),
('TechNova Virtual Reality Headset', 'Visor de realidad virtual para experimentar juegos y videos inmersivos', 'TNS-002'),
('TechNova Wireless Charging Pad', 'Almohadilla de carga inal�mbrica para cargar tus dispositivos de manera conveniente', 'TNS-003'),
('TechNova Bluetooth Speaker', 'Altavoz Bluetooth port�til con sonido de alta calidad para disfrutar de tu m�sica favorita', 'TNS-004'),
('TechNova Security Camera', 'C�mara de seguridad inteligente con detecci�n de movimiento y visi�n nocturna', 'TNS-005'),

-- EcoGreen Industries
('EcoGreen Organic Soap', 'Jab�n org�nico y biodegradable para una limpieza suave y respetuosa con el medio ambiente', 'EGI-001'),
('EcoGreen Bamboo Toothbrush', 'Cepillo de dientes de bamb� ecol�gico y sostenible para una higiene bucal consciente', 'EGI-002'),
('EcoGreen Reusable Water Bottle', 'Botella de agua reutilizable y libre de BPA para reducir el uso de pl�stico', 'EGI-003'),
('EcoGreen Recycled Paper Notebook', 'Cuaderno de papel reciclado ideal para tomar notas y dibujar de manera sostenible', 'EGI-004'),
('EcoGreen Eco-Friendly Tote Bag', 'Bolso ecol�gico y reutilizable para llevar tus compras de manera responsable', 'EGI-005'),

-- Stellar Innovations
('Stellar Wireless Earphones', 'Auriculares inal�mbricos con cancelaci�n de ruido para una experiencia auditiva inmersiva', 'SI-001'),
('Stellar Solar Power Bank', 'Bater�a port�til con panel solar para cargar tus dispositivos en cualquier lugar', 'SI-002'),
('Stellar Fitness Tracker', 'Monitor de actividad f�sica para llevar un seguimiento de tu salud y estado f�sico', 'SI-003'),
('Stellar Smart Watch', 'Reloj inteligente con pantalla t�ctil y funciones avanzadas para un estilo de vida conectado', 'SI-004'),
('Stellar Portable Speaker', 'Altavoz port�til resistente al agua y con sonido de alta fidelidad para disfrutar de la m�sica al aire libre', 'SI-005'),

-- Harmony Health Group
('Harmony Meditation App', 'Aplicaci�n de meditaci�n guiada para reducir el estr�s y mejorar el bienestar mental', 'HHG-001'),
('Harmony Yoga Mat', 'Tapete de yoga antideslizante y acolchado para pr�cticas c�modas y seguras', 'HHG-002'),
('Harmony Herbal Tea Set', 'Set de t� de hierbas org�nicas para relajarse y rejuvenecer el cuerpo y la mente', 'HHG-003'),
('Harmony Aromatherapy Diffuser', 'Difusor de aromaterapia con luz LED y diferentes modos de niebla para crear un ambiente tranquilo', 'HHG-004'),
('Harmony Wellness Journal', 'Diario de bienestar para llevar un registro de tus h�bitos y metas de salud', 'HHG-005'),

-- Nexus Dynamics
('Nexus Smart Glasses', 'Gafas inteligentes con realidad aumentada para mejorar la productividad y la eficiencia', 'ND-001'),
('Nexus Drone with Camera', 'Dron equipado con c�mara HD para capturar im�genes y videos desde el aire', 'ND-002'),
('Nexus Smart Lock System', 'Sistema de bloqueo inteligente para mejorar la seguridad y la accesibilidad en el hogar', 'ND-003'),
('Nexus Robotic Vacuum Cleaner', 'Aspiradora rob�tica con navegaci�n inteligente y funciones de limpieza programables', 'ND-004'),
('Nexus Smart Thermostat', 'Termostato inteligente para controlar la temperatura de tu hogar desde cualquier lugar', 'ND-005'),

-- BlueWave Enterprises
('BlueWave Wireless Router', 'Router inal�mbrico de alta velocidad para una conectividad confiable en el hogar u oficina', 'BWE-001'),
('BlueWave Portable Speaker', 'Altavoz port�til con sonido est�reo de calidad para disfrutar de la m�sica en cualquier lugar', 'BWE-002'),
('BlueWave External Hard Drive', 'Disco duro externo de gran capacidad para almacenar y respaldar tus datos importantes', 'BWE-003'),
('BlueWave Gaming Mouse', 'Mouse ergon�mico y preciso dise�ado para jugadores exigentes', 'BWE-004'),
('BlueWave Bluetooth Headphones', 'Auriculares inal�mbricos con cancelaci�n de ruido para una experiencia auditiva inmersiva', 'BWE-005'),

-- Apex Manufacturing
('Apex Power Drill', 'Taladro el�ctrico de alta potencia para perforaciones precisas en diferentes materiales', 'AM-001'),
('Apex Circular Saw', 'Sierra circular vers�til y duradera para cortes limpios y precisos en madera y otros materiales', 'AM-002'),
('Apex Bench Grinder', 'Amoladora de banco resistente para afilar y pulir herramientas y piezas met�licas', 'AM-003'),
('Apex Air Compressor', 'Compresor de aire compacto y eficiente para inflar neum�ticos y realizar trabajos de pintura', 'AM-004'),
('Apex Welding Machine', 'M�quina de soldar vers�til y f�cil de usar para proyectos de soldadura en casa o en el taller', 'AM-005'),

-- QuantumLeap Technologies
('QuantumLeap Quantum Computer', 'Computadora cu�ntica de vanguardia con capacidades de procesamiento avanzadas', 'QLT-001'),
('QuantumLeap Virtual Assistant', 'Asistente virtual inteligente con capacidades de aprendizaje autom�tico y reconocimiento de voz', 'QLT-002'),
('QuantumLeap Neural Implant', 'Implante neural innovador para mejorar las capacidades cognitivas y la conectividad cerebral', 'QLT-003'),
('QuantumLeap Holographic Display', 'Display hologr�fico para proyecciones tridimensionales y experiencias visuales inmersivas', 'QLT-004'),
('QuantumLeap Quantum Sensor', 'Sensor cu�ntico de alta precisi�n para mediciones avanzadas en campos como la f�sica y la medicina', 'QLT-005'),

-- MegaCorp
('MegaCorp MegaPhone', 'Tel�fono inteligente de �ltima generaci�n con caracter�sticas innovadoras y rendimiento excepcional', 'MC-001'),
('MegaCorp MegaTablet', 'Tableta con pantalla grande y potente rendimiento para productividad y entretenimiento m�vil', 'MC-002'),
('MegaCorp MegaWatch', 'Reloj inteligente elegante y funcional con aplicaciones �tiles y seguimiento de la salud', 'MC-003'),
('MegaCorp MegaLaptop', 'Laptop ultradelgada y potente con dise�o premium y larga duraci�n de la bater�a', 'MC-004'),
('MegaCorp MegaTV', 'Televisor inteligente con resoluci�n 4K y capacidades de transmisi�n en l�nea para una experiencia de visualizaci�n inmersiva', 'MC-005'),

-- TechGiant
('TechGiant VR Headset', 'Visor de realidad virtual con seguimiento de movimiento preciso para juegos y experiencias inmersivas', 'TG-001'),
('TechGiant Quantum Processor', 'Procesador cu�ntico de alta velocidad para aplicaciones de inteligencia artificial y an�lisis de datos avanzados', 'TG-002'),
('TechGiant AI Speaker', 'Altavoz inteligente con asistente virtual integrado para controlar dispositivos y obtener informaci�n mediante comandos de voz', 'TG-003'),
('TechGiant Smart Glasses', 'Gafas inteligentes con pantalla AR para aumentar la productividad y mejorar las experiencias de usuario', 'TG-004'),
('TechGiant Drone Delivery System', 'Sistema de entrega de drones aut�nomo para transporte r�pido y eficiente de paquetes', 'TG-005'),

-- Innovative Solutions
('Innovative Solar Panel', 'Panel solar innovador con tecnolog�a de c�lulas fotovoltaicas de �ltima generaci�n para una mayor eficiencia energ�tica', 'IS-001'),
('Innovative Home Automation System', 'Sistema de automatizaci�n del hogar con tecnolog�a IoT para controlar dispositivos desde tu tel�fono inteligente', 'IS-002'),
('Innovative Self-Driving Car', 'Autom�vil aut�nomo con capacidades de conducci�n autom�tica y seguridad avanzada', 'IS-003'),
('Innovative Wearable Health Monitor', 'Monitor de salud port�til para seguimiento continuo de signos vitales y actividad f�sica', 'IS-004'),
('Innovative 3D Printer', 'Impresora 3D de alta precisi�n y velocidad para prototipado r�pido y fabricaci�n personalizada', 'IS-005'),

-- Global Traders
('Global Traders Business Networking Platform', 'Plataforma de redes empresariales para conectar con socios comerciales internacionales', 'GT-004'),
('Global Traders Logistics Management Software', 'Software de gesti�n log�stica para optimizar el transporte y seguimiento de mercanc�as', 'GT-005'),
('Global Traders Export Compliance Tool', 'Herramienta de cumplimiento de exportaci�n para asegurar el cumplimiento normativo en operaciones de comercio internacional', 'GT-006'),
('Global Traders Trade Finance Solution', 'Soluci�n de financiamiento comercial para facilitar transacciones internacionales y mitigar riesgos financieros', 'GT-007'),
('Global Traders Supply Chain Analytics Platform', 'Plataforma de an�lisis de cadena de suministro para identificar oportunidades de mejora y reducir costos operativos', 'GT-008'),

-- RetailHub
('RetailHub E-commerce Platform', 'Plataforma de comercio electr�nico todo en uno para lanzar y hacer crecer tu tienda en l�nea', 'RH-001'),
('RetailHub Point-of-Sale System', 'Sistema de punto de venta f�cil de usar para gestionar transacciones y inventario en tiendas f�sicas', 'RH-002'),
('RetailHub Inventory Management Software', 'Software de gesti�n de inventario para controlar las existencias y optimizar la reposici�n de productos', 'RH-003'),
('RetailHub Customer Relationship Management (CRM) Tool', 'Herramienta de gesti�n de relaciones con los clientes para mejorar la atenci�n al cliente y aumentar las ventas', 'RH-004'),
('RetailHub Retail Analytics Dashboard', 'Panel de an�lisis de datos para visualizar m�tricas clave y tomar decisiones comerciales informadas', 'RH-005');

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

-- T�ndem
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
('Juan', 'Gerente de ventas', 'Responsable de supervisar las ventas y el rendimiento del equipo de ventas', 'Gonz�lez', 'Mart�nez', 1),
('Mar�a', 'Especialista en Marketing', 'Encargada de dise�ar y ejecutar estrategias de marketing', 'Rodr�guez', 'S�nchez', 2),
('Pedro', 'Analista de datos', 'Encargado de analizar los datos del mercado para tomar decisiones informadas', 'Fern�ndez', 'L�pez', 3),
('Laura', 'Ejecutivo de cuentas', 'Responsable de gestionar las cuentas de los clientes y mantener relaciones comerciales', 'Garc�a', 'P�rez', 4),
('Carlos', 'Desarrollador de negocios', 'Encargado de identificar oportunidades de negocio y desarrollar relaciones con los clientes', 'D�az', 'G�mez', 5),
('Ana', 'Especialista en comunicaciones', 'Encargada de gestionar la comunicaci�n interna y externa de la empresa', 'Mart�nez', 'Gonz�lez', 6),
('Luis', 'Coordinador de ventas', 'Responsable de coordinar las actividades del equipo de ventas y alcanzar los objetivos establecidos', 'S�nchez', 'Rodr�guez', 7),
('Sof�a', 'Analista de mercado', 'Encargada de analizar tendencias de mercado y proporcionar informaci�n relevante para la toma de decisiones', 'L�pez', 'Fern�ndez', 8),
('Diego', 'Especialista en desarrollo de negocios', 'Encargado de desarrollar nuevas oportunidades de negocio y establecer relaciones comerciales', 'P�rez', 'Garc�a', 9),
('Elena', 'Gerente de marketing', 'Responsable de planificar y ejecutar estrategias de marketing para alcanzar los objetivos de la empresa', 'G�mez', 'D�az', 10),
('Andr�s', 'Analista financiero', 'Encargado de analizar datos financieros y elaborar informes para apoyar la toma de decisiones empresariales', 'Gonz�lez', 'Mart�nez', 11),
('Valeria', 'Especialista en desarrollo de productos', 'Encargada de investigar, desarrollar y lanzar nuevos productos al mercado', 'Rodr�guez', 'S�nchez', 12),
('Javier', 'Gerente de cuentas', 'Responsable de gestionar y mantener relaciones con los clientes clave de la empresa', 'Fern�ndez', 'L�pez', 13),
('Carolina', 'Analista de marketing digital', 'Encargada de analizar y optimizar estrategias de marketing en medios digitales', 'Garc�a', 'P�rez', 14),
('Ricardo', 'Ejecutivo de ventas', 'Responsable de cerrar acuerdos de venta y alcanzar los objetivos de ventas establecidos', 'D�az', 'G�mez', 15),
('Paula', 'Especialista en relaciones p�blicas', 'Encargada de gestionar la imagen p�blica de la empresa y mantener relaciones con los medios de comunicaci�n', 'Mart�nez', 'Gonz�lez', 16),
('Mart�n', 'Coordinador de marketing', 'Responsable de coordinar las actividades del equipo de marketing y ejecutar campa�as publicitarias', 'S�nchez', 'Rodr�guez', 17),
('Camila', 'Analista de negocio', 'Encargada de analizar el mercado y proponer estrategias para mejorar el rendimiento empresarial', 'L�pez', 'Fern�ndez', 18),
('Alejandro', 'Gerente de desarrollo de negocios', 'Responsable de liderar el desarrollo e implementaci�n de nuevas oportunidades de negocio', 'P�rez', 'Garc�a', 19),
('Luc�a', 'Especialista en marketing de contenidos', 'Encargada de crear contenido relevante para atraer y retener clientes', 'G�mez', 'D�az', 20),
('Mateo', 'Analista de riesgos financieros', 'Encargado de identificar y evaluar los riesgos financieros para la empresa', 'Gonz�lez', 'Mart�nez', 21),
('Natalia', 'Especialista en investigaci�n de mercado', 'Encargada de realizar estudios de mercado para identificar oportunidades y amenazas', 'Rodr�guez', 'S�nchez', 22),
('Felipe', 'Ejecutivo de cuentas clave', 'Responsable de gestionar las cuentas clave de la empresa y mantener relaciones comerciales s�lidas', 'Fern�ndez', 'L�pez', 23),
('Juliana', 'Analista de redes sociales', 'Encargada de gestionar y optimizar la presencia de la empresa en las redes sociales', 'Garc�a', 'P�rez', 24),
('Sebasti�n', 'Gerente de ventas regionales', 'Responsable de supervisar y liderar las actividades de ventas en una regi�n espec�fica', 'D�az', 'G�mez', 25),
('Isabella', 'Especialista en branding', 'Encargada de desarrollar estrategias para mejorar la percepci�n de la marca en el mercado', 'Mart�nez', 'Gonz�lez', 26),
('Gabriel', 'Analista de investigaci�n de mercado', 'Encargado de recopilar, analizar y presentar datos para respaldar las decisiones de marketing', 'S�nchez', 'Rodr�guez', 27),
('Ana Mar�a', 'Coordinadora de marketing digital', 'Responsable de coordinar las actividades de marketing en medios digitales', 'L�pez', 'Fern�ndez', 28),
('Juan Jos�', 'Especialista en desarrollo de negocios internacionales', 'Encargado de identificar oportunidades de negocio en mercados internacionales', 'P�rez', 'Garc�a', 29),
('Carla', 'Especialista en recursos humanos', 'Encargada de reclutar, seleccionar y desarrollar al talento humano de la empresa', 'Mart�nez', 'Gonz�lez', 30),
('Daniel', 'Analista de ventas', 'Encargado de analizar datos de ventas para identificar oportunidades de mejora', 'Rodr�guez', 'S�nchez', 31),
('Valentina', 'Gerente de marketing digital', 'Responsable de planificar y ejecutar estrategias de marketing en entornos digitales', 'Fern�ndez', 'L�pez', 32),
('Ignacio', 'Especialista en desarrollo de negocio', 'Encargado de identificar y desarrollar nuevas oportunidades de negocio', 'Garc�a', 'P�rez', 33),
('Florencia', 'Analista de datos financieros', 'Encargada de analizar informaci�n financiera para apoyar la toma de decisiones empresariales', 'D�az', 'G�mez', 34),
('Sim�n', 'Coordinador de ventas', 'Responsable de coordinar las actividades de ventas y alcanzar los objetivos establecidos', 'Mart�nez', 'Gonz�lez', 35),
('Amanda', 'Especialista en marketing de contenido', 'Encargada de crear y gestionar contenido para atraer y retener clientes', 'Rodr�guez', 'S�nchez', 36),
('Tom�s', 'Analista de estrategias de negocio', 'Encargado de analizar estrategias empresariales y proponer mejoras', 'Fern�ndez', 'L�pez', 37),
('Martina', 'Gerente de cuentas', 'Responsable de gestionar cuentas clave y mantener relaciones comerciales', 'Garc�a', 'P�rez', 38),
('Lucas', 'Especialista en marketing de redes sociales', 'Encargado de gestionar la presencia de la empresa en las redes sociales', 'D�az', 'G�mez', 39),
('Isabel', 'Analista de investigaci�n de mercado', 'Encargada de realizar estudios de mercado para identificar oportunidades', 'Mart�nez', 'Gonz�lez', 40),
('Emilio', 'Especialista en desarrollo de producto', 'Encargado de desarrollar y mejorar productos para el mercado', 'Rodr�guez', 'S�nchez', 41),
('Renata', 'Gerente de ventas', 'Responsable de liderar el equipo de ventas y alcanzar objetivos', 'Fern�ndez', 'L�pez', 42),
('Mat�as', 'Analista de marketing digital', 'Encargado de analizar y optimizar estrategias de marketing en l�nea', 'Garc�a', 'P�rez', 43),
('Renzo', 'Ejecutivo de cuentas', 'Responsable de gestionar cuentas y mantener relaciones comerciales', 'D�az', 'G�mez', 44),
('Luna', 'Especialista en relaciones p�blicas', 'Encargada de gestionar la imagen p�blica de la empresa', 'Mart�nez', 'Gonz�lez', 45),
('Maximiliano', 'Analista de negocios', 'Encargado de analizar y mejorar procesos empresariales', 'Rodr�guez', 'S�nchez', 46),
('Julieta', 'Gerente de marketing', 'Responsable de planificar y ejecutar estrategias de marketing', 'Fern�ndez', 'L�pez', 47),
('Dante', 'Analista de ventas', 'Encargado de analizar datos de ventas para mejorar resultados', 'Garc�a', 'P�rez', 48),
('Valeria', 'Especialista en marketing digital', 'Encargada de desarrollar estrategias de marketing en l�nea', 'D�az', 'G�mez', 49),
('Santiago', 'Coordinador de ventas', 'Responsable de coordinar actividades de ventas', 'Mart�nez', 'Gonz�lez', 50)
('Luc�a', 'Ejecutivo de ventas', 'Encargada de cerrar acuerdos comerciales', 'Garc�a', 'P�rez', 1),
('Sebasti�n', 'Analista de Marketing', 'Encargado de desarrollar estrategias de marketing', 'Mart�nez', 'L�pez', 2),
('Valentina', 'Gerente de Cuentas', 'Responsable de mantener la relaci�n con los clientes', 'Rodr�guez', 'G�mez', 3),
('Mateo', 'Especialista en Finanzas', 'Encargado de analizar los estados financieros', 'D�az', 'Hern�ndez', 4),
('Isabella', 'Analista de Datos', 'Responsable de interpretar datos para la toma de decisiones', 'S�nchez', 'Fern�ndez', 5),
('Juan', 'Coordinador de Ventas', 'Encargado de coordinar el equipo de ventas', 'L�pez', 'Garc�a', 6),
('Camila', 'Ejecutivo de Cuentas', 'Encargada de gestionar relaciones con clientes clave', 'P�rez', 'Mart�nez', 7),
('Lucas', 'Especialista en Marketing Digital', 'Responsable de estrategias de marketing online', 'G�mez', 'Rodr�guez', 8),
('Valeria', 'Analista de Negocios', 'Encargada de analizar oportunidades de mercado', 'Fern�ndez', 'D�az', 9),
('Tom�s', 'Gerente de Ventas', 'Responsable de la estrategia de ventas', 'Hern�ndez', 'S�nchez', 10),
('Mar�a', 'Analista de Marketing', 'Encargada de estudios de mercado', 'Garc�a', 'P�rez', 11),
('Diego', 'Especialista en Finanzas', 'Encargado de an�lisis financiero', 'Mart�nez', 'L�pez', 12),
('Laura', 'Gerente de Cuentas', 'Responsable de relaciones con clientes corporativos', 'Rodr�guez', 'G�mez', 13),
('Alejandro', 'Coordinador de Ventas', 'Encargado de la coordinaci�n del equipo de ventas', 'D�az', 'Hern�ndez', 14),
('Carolina', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en l�nea', 'S�nchez', 'Fern�ndez', 15),
('Emilio', 'Ejecutivo de Cuentas', 'Encargado de atender clientes corporativos', 'L�pez', 'Garc�a', 16),
('Julia', 'Especialista en Finanzas', 'Encargada de an�lisis financiero y presupuestos', 'P�rez', 'Mart�nez', 17),
('Luciana', 'Analista de Datos', 'Encargada de an�lisis estad�stico', 'G�mez', 'Rodr�guez', 18),
('Santiago', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'Fern�ndez', 'D�az', 19),
('Isabel', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'Hern�ndez', 'S�nchez', 20),
('Mart�n', 'Especialista en Finanzas', 'Encargado de an�lisis de riesgos financieros', 'Garc�a', 'P�rez', 21),
('Valentino', 'Coordinador de Ventas', 'Encargado de coordinar acciones comerciales', 'Mart�nez', 'L�pez', 22),
('Natalia', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing online', 'Rodr�guez', 'G�mez', 23),
('Bruno', 'Ejecutivo de Cuentas', 'Encargado de gestionar cuentas corporativas', 'D�az', 'Hern�ndez', 24),
('Antonella', 'Especialista en Finanzas', 'Encargada de an�lisis y planificaci�n financiera', 'S�nchez', 'Fern�ndez', 25),
('Mat�as', 'Analista de Datos', 'Encargado de an�lisis de datos para la toma de decisiones', 'L�pez', 'Garc�a', 26),
('Victoria', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'P�rez', 'Mart�nez', 27),
('Emilia', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'G�mez', 'Rodr�guez', 28),
('Iv�n', 'Especialista en Finanzas', 'Encargado de an�lisis de inversi�n y riesgos', 'Fern�ndez', 'D�az', 29),
('Mariana', 'Coordinador de Ventas', 'Encargada de coordinar acciones comerciales', 'Hern�ndez', 'S�nchez', 30),
('Lautaro', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en l�nea', 'Garc�a', 'P�rez', 31),
('Amparo', 'Ejecutivo de Cuentas', 'Encargada de gestionar cuentas corporativas', 'Mart�nez', 'L�pez', 32),
('Emilio', 'Especialista en Finanzas', 'Encargado de an�lisis y planificaci�n financiera', 'Rodr�guez', 'G�mez', 33),
('Natalia', 'Analista de Datos', 'Encargada de an�lisis de datos para la toma de decisiones', 'D�az', 'Hern�ndez', 34),
('Sebasti�n', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'S�nchez', 'Fern�ndez', 35),
('Valentina', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'L�pez', 'Garc�a', 36),
('Diego', 'Especialista en Finanzas', 'Encargado de an�lisis de inversi�n y riesgos', 'P�rez', 'Mart�nez', 37),
('Luc�a', 'Coordinador de Ventas', 'Encargada de coordinar acciones comerciales', 'G�mez', 'Rodr�guez', 38),
('Santiago', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en l�nea', 'Fern�ndez', 'D�az', 39),
('Carolina', 'Especialista en Finanzas', 'Encargada de an�lisis y planificaci�n financiera', 'Hern�ndez', 'S�nchez', 40),
('Emilio', 'Analista de Datos', 'Encargado de an�lisis de datos para la toma de decisiones', 'Mart�nez', 'L�pez', 41),
('Julia', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'Rodr�guez', 'G�mez', 42),
('Luciana', 'Analista de Marketing', 'Encargada de estudios de mercado y tendencias', 'D�az', 'Hern�ndez', 43),
('Santiago', 'Especialista en Finanzas', 'Encargado de an�lisis de inversi�n y riesgos', 'S�nchez', 'Fern�ndez', 44),
('Isabel', 'Coordinador de Ventas', 'Encargada de coordinar acciones comerciales', 'Fern�ndez', 'D�az', 45),
('Mart�n', 'Analista de Marketing Digital', 'Responsable de estrategias de marketing en l�nea', 'Hern�ndez', 'S�nchez', 46),
('Valentino', 'Ejecutivo de Cuentas', 'Encargado de gestionar cuentas corporativas', 'Garc�a', 'P�rez', 47),
('Natalia', 'Especialista en Finanzas', 'Encargada de an�lisis y planificaci�n financiera', 'Mart�nez', 'L�pez', 48),
('Bruno', 'Analista de Datos', 'Encargado de an�lisis de datos para la toma de decisiones', 'Rodr�guez', 'G�mez', 49),
('Antonella', 'Gerente de Ventas', 'Responsable del equipo de ventas y estrategias comerciales', 'D�az', 'Hern�ndez', 50);

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