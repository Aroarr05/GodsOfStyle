use web;
-------------------------------------------- Insertar datos en la tabla de Camisetas --------------------------------------------

INSERT INTO Camisetas (nombre, descripcion, precio, stock, talla, color, imagen_url) VALUES
('Camiseta Eos', 'Camiseta 1', 20.00, 100, 'M', 'Azul', 'imagenes/fotos/productos/camisetas/IMG_1.webp'),
('Zodiaco Romano', 'Camiseta 2', 20.00, 150, 'L', 'Beige', 'imagenes/fotos/productos/camisetas/IMG_2.webp'),
('Minerva', 'Camiseta 3', 20.00, 200, 'S', 'Blanco', 'imagenes/fotos/productos/camisetas/IMG_3.jpg'),
('Print Dragón', 'Camiseta 4', 40.00, 120, 'XL', 'Beige', 'imagenes/fotos/productos/camisetas/IMG_4.webp'),
('Print Vasija Griega', 'Camiseta 5', 20.00, 80, 'M', 'Violeta', 'imagenes/fotos/productos/camisetas/IMG_5.jpg'),
('Perséfone', 'Camiseta 6', 20.00, 70, 'L', 'Amarillo', 'imagenes/fotos/productos/camisetas/IMG_6.webp'),
('Poker', 'Camiseta 7', 15.00, 60, 'S', 'Rosa', 'imagenes/fotos/productos/camisetas/IMG_7.jpg'),
('Brujería', 'Camiseta 8', 20.00, 90, 'XL', 'Negro', 'imagenes/fotos/productos/camisetas/IMG_8.jpg'),
('Pomona', 'Camiseta 9', 12.00, 110, 'M', 'Beige', 'imagenes/fotos/productos/camisetas/IMG_9.webp'),
('Seres Mitológicos Sudadera', 'Camiseta 10', 35.00, 130, 'L', 'Beige', 'imagenes/fotos/productos/camisetas/IMG_10.webp'),
('Eros', 'Camiseta 11', 18.00, 140, 'S', 'Blanco', 'imagenes/fotos/productos/camisetas/IMG_11.jpg'),
('Hades Y Perséfone', 'Camiseta 12', 18.00, 100, 'XL', 'Beige', 'imagenes/fotos/productos/camisetas/IMG_12.webp'),
('Medusa', 'Camiseta 13', 20.00, 90, 'M', 'Gris', 'imagenes/fotos/productos/camisetas/IMG_13.avif'),
('Dioses', 'Camiseta 14', 20.00, 80, 'L', 'Gris', 'imagenes/fotos/productos/camisetas/IMG_14.avif'),
('God Is Good', 'Camiseta 15', 18.00, 70, 'S', 'Blanco', 'imagenes/fotos/productos/camisetas/IMG_15.webp'),
('Aphrodite', 'Camiseta 16', 18.00, 60, 'XL', 'Rosa', 'imagenes/fotos/productos/camisetas/IMG_16.avif'),
('Poker Espalda', 'Camiseta 17', 16.00, 50, 'M', 'Rosa', 'imagenes/fotos/productos/camisetas/IMG_17.jpg'),
('Poseidón', ' Camiseta 18', 16.00, 40, 'L', 'Verde', 'imagenes/fotos/productos/camisetas/IMG_18.webp'),
('Athenas', 'Camiseta 19', 16.00, 30, 'S', 'Negro', 'imagenes/fotos/productos/camisetas/IMG_19.avif'),
('Angel', 'Camiseta 20', 12.00, 20, 'XL', 'Blanco', 'imagenes/fotos/productos/camisetas/IMG_20.avif');

-------------------------------------------- Insertar datos en la tabla de Prints --------------------------------------------

INSERT INTO Prints (nombre, descripcion, precio, stock, dimensiones, imagen_url) VALUES
('Pack Poster Romano', 'Print 1', 20.00, 100, '841x1189cm', 'imagenes/fotos/productos/prints/prints_1.webp'),
('Poster Zodiaco Romano', 'Print 2', 12.00, 150, '841x1189cm', 'imagenes/fotos/productos/prints/prints_2.webp'),
('Poster Templos', 'Print 3', 12.00, 200, '841x1189cm', 'imagenes/fotos/productos/prints/prints_3.webp'),
('Postal Zodiaco Romano', 'Print 4', 3.00, 120, '420x594cm', 'imagenes/fotos/productos/prints/prints_4.webp'),
('Print Zodiaco Romano', 'Print 5', 6.00, 80, '841x1189cm', 'imagenes/fotos/productos/prints/prints_5.webp'),
('Print Templos', 'Print 6', 6.00, 70, '841x1189cm', 'imagenes/fotos/productos/prints/prints_6.webp'),
('Pack Templos Y Zodiaco', 'Print 7', 10.00, 60, '841x1189cm', 'imagenes/fotos/productos/prints/prints_7.webp'),
('Sticker Templos', 'Print 8', 6.00, 90, '841x1189cm', 'imagenes/fotos/productos/prints/prints_8.webp'),
('Sticker Libris Circe', 'Print 9', 2.00, 110, '841x1189cm', 'imagenes/fotos/productos/prints/prints_9.jpg'),
('Print Perséfone', 'Print 10', 6.00, 130, '841x1189cm', 'imagenes/fotos/productos/prints/prints_10.webp'),
('Pack Hades Y Perséfone', 'Print 11', 10.00, 140, '841x1189cm', 'imagenes/fotos/productos/prints/prints_11.webp'),
('Print Pomona', 'Print 12', 6.00, 100, '841x1189cm', 'imagenes/fotos/productos/prints/prints_12.webp'),
('Print Cítricos', 'Print 13', 2.00 , 90, '841x1189cm', 'imagenes/fotos/productos/prints/prints_13.webp'),
('Pack Pomona Y Cítricos', 'Print 14', 6.00 , 80, '841x1189cm', 'imagenes/fotos/productos/prints/prints_14.webp'),
('Print Dragón', 'Print 15', 10.00, 70, '841x1189cm', 'imagenes/fotos/productos/prints/prints_15.webp'),
('Pack Medievales Y Dragón', 'Print 16', 20.00, 60, '841x1189cm', 'imagenes/fotos/productos/prints/prints_16.webp'),
('Print Eos', 'Print 17', 6.00, 50, '841x1189cm', 'imagenes/fotos/productos/prints/prints_17.webp'),
('Print Helios Y Selene', 'Print 18', 6.00, 40, '841x1189cm', 'imagenes/fotos/productos/prints/prints_18.webp'),
('Pack Helios, Selene y Eos', 'Print 19', 20.00, 30, '841x1189cm', 'imagenes/fotos/productos/prints/prints_19.webp'),
('Print DAMA LAGO', 'Print 20', 6.00, 20, '841x1189cm', 'imagenes/fotos/productos/prints/prints_20.jpg');

-------------------------------------------- Insertar datos en la tabla de Formulario --------------------------------------------

INSERT INTO respuestas_quiz (q1, q2, q3, resultado) VALUES
-- Combinaciones que llevan a resultados específicos
('fuego', 'pelear', 'verano', 'Ares, el dios de la guerra.'),
('agua', 'navegar', 'invierno', 'Poseidón, el dios del mar.'),
('tierra', 'cultivar', 'primavera', 'Deméter, la diosa de la agricultura.'),
('aire', 'viajar', 'otoño', 'Hermes, el dios mensajero.'),
('fuego', 'pelear', 'verano', 'Ares, el dios de la guerra.'),
('agua', 'navegar', 'invierno', 'Poseidón, el dios del mar.'),
('tierra', 'cultivar', 'primavera', 'Deméter, la diosa de la agricultura.'),
('aire', 'viajar', 'otoño', 'Hermes, el dios mensajero.'),
('fuego', 'pelear', 'verano', 'Ares, el dios de la guerra.'),
('agua', 'navegar', 'invierno', 'Poseidón, el dios del mar.'),

-- Combinaciones que resultan en "una combinación única de varios dioses."
('fuego', 'navegar', 'verano', 'una combinación única de varios dioses.'),
('aire', 'pelear', 'invierno', 'una combinación única de varios dioses.'),
('tierra', 'viajar', 'otoño', 'una combinación única de varios dioses.'),
('agua', 'cultivar', 'primavera', 'una combinación única de varios dioses.'),
('fuego', 'viajar', 'invierno', 'una combinación única de varios dioses.'),
('aire', 'navegar', 'primavera', 'una combinación única de varios dioses.'),
('tierra', 'pelear', 'otoño', 'una combinación única de varios dioses.'),
('agua', 'viajar', 'verano', 'una combinación única de varios de varios dioses.'),
('fuego', 'cultivar', 'primavera', 'una combinación única de varios dioses.'),
('aire', 'pelear', 'otoño', 'una combinación única de varios dioses.');


-------------------------------------------- Insertar datos en la tabla de Usuarios --------------------------------------------

INSERT INTO Usuarios ( nombre, email, contraseña, telefono, fecha_registro, resultado_usuario) VALUES
('Juan Pérez', 'juan.perez@example.com', 'a1B2c3D4', '5551234567', '2023-01-01', 1),
('María Gómez', 'maria.gomez@example.com', 'e5F6g7H8', '5551234568', '2023-01-02', 2),
('Carlos López', 'carlos.lopez@example.com', 'i9J0k1L2', '5551234569', '2023-01-03', 3),
('Ana Martínez', 'ana.martinez@example.com', 'm3N4o5P6', '5551234570', '2023-01-04', 4),
('Luis Rodríguez', 'luis.rodriguez@example.com', 'q7R8s9T0', '5551234571', '2023-01-05', 5),
('Laura Fernández', 'laura.fernandez@example.com', 'u1V2w3X4', '5551234572', '2023-01-06', 6),
('Jorge Sánchez', 'jorge.sanchez@example.com', 'y5Z6a7B8', '5551234573', '2023-01-07', 7),
('Elena Ruiz', 'elena.ruiz@example.com', 'c9D0e1F2', '5551234574', '2023-01-08', 8),
('Ricardo Díaz', 'ricardo.diaz@example.com', 'g3H4i5J6', '5551234575', '2023-01-09', 9),
('Marta Hernández', 'marta.hernandez@example.com', 'k7L8m9N0', '5551234576', '2023-01-10', 10),
('Sergio Romero', 'sergio.romero@example.com', 'o1P2q3R4', '5551234577', '2023-01-11', 11),
('Patricia Vázquez', 'patricia.vazquez@example.com', 's5T6u7V8', '5551234578', '2023-01-12', 12),
('Daniel Torres', 'daniel.torres@example.com', 'w9X0y1Z2', '5551234579', '2023-01-13', 13),
('Sara Jiménez', 'sara.jimenez@example.com', 'a3B4c5D6', '5551234580', '2023-01-14', 14),
('Andrés Navarro', 'andres.navarro@example.com', 'e7F8g9H0', '5551234581', '2023-01-15', 15),
('Paula Morales', 'paula.morales@example.com', 'i1J2k3L4', '5551234582', '2023-01-16', 16),
('Héctor Ortiz', 'hector.ortiz@example.com', 'm5N6o7P8', '5551234583', '2023-01-17', 17),
('Silvia Castillo', 'silvia.castillo@example.com', 'q9R0s1T2', '5551234584', '2023-01-18', 18),
('Alberto Ramos', 'alberto.ramos@example.com', 'u3V4w5X6', '5551234585', '2023-01-19', 19),
('Natalia Reyes', 'natalia.reyes@example.com', 'y7Z8a9B0', '5551234586', '2023-01-20', 20);

-------------------------------------------- Insertar datos en la tabla de Empleados --------------------------------------------

INSERT INTO Empleados (nombre, email, contraseña, telefono, puesto, fecha_contratacion, resultado_empleado) VALUES
('Francisco García', 'francisco.garcia@example.com', 'c1D2e3F4', '5552234567', 'Gerente de Ventas', '2023-02-01', 1),
('Isabel Martínez', 'isabel.martinez@example.com', 'g5H6i7J8', '5552234568', 'Asistente Administrativo', '2023-02-02', 2),
('Roberto Muñoz', 'roberto.munoz@example.com', 'k9L0m1N2', '5552234569', 'Desarrollador Web', '2023-02-03', 3),
('Gloria Rivas', 'gloria.rivas@example.com', 'o3P4q5R6', '5552234570', 'Contadora', '2023-02-04', 4),
('Mario Castro', 'mario.castro@example.com', 's7T8u9V0', '5552234571', 'Diseñador Gráfico', '2023-02-05', 5),
('Beatriz Soto', 'beatriz.soto@example.com', 'w1X2y3Z4', '5552234572', 'Gerente de Marketing', '2023-02-06', 6),
('Pedro Ramos', 'pedro.ramos@example.com', 'a5B6c7D8', '5552234573', 'Atención al Cliente', '2023-02-07', 7),
('Lucía Vega', 'lucia.vega@example.com', 'e9F0g1H2', '5552234574', 'Especialista en SEO', '2023-02-08', 8),
('Antonio Molina', 'antonio.molina@example.com', 'i3J4k5L6', '5552234575', 'Analista de Datos', '2023-02-09', 9),
('Carmen Herrera', 'carmen.herrera@example.com', 'm7N8o9P0', '5552234576', 'Coordinadora de Proyectos', '2023-02-10', 10),
('Fernando Silva', 'fernando.silva@example.com', 'q1R2s3T4', '5552234577', 'Jefe de Producción', '2023-02-11', 11),
('Eva Ruiz', 'eva.ruiz@example.com', 'u5V6w7X8', '5552234578', 'Consultora de RRHH', '2023-02-12', 12),
('José Vargas', 'jose.vargas@example.com', 'y9Z0a1B2', '5552234579', 'Director Financiero', '2023-02-13', 13),
('Mónica Romero', 'monica.romero@example.com', 'c3D4e5F6', '5552234580', 'Especialista en Logística', '2023-02-14', 14),
('Raúl Paredes', 'raul.paredes@example.com', 'g7H8i9J0', '5552234581', 'Administrador de Sistemas', '2023-02-15', 15),
('Julia Cortés', 'julia.cortes@example.com', 'k1L2m3N4', '5552234582', 'Directora de Operaciones', '2023-02-16', 16),
('Álvaro Mendoza', 'alvaro.mendoza@example.com', 'o5P6q7R8', '5552234583', 'Analista de Seguridad', '2023-02-17', 17),
('Cristina Lara', 'cristina.lara@example.com', 's9T0u1V2', '5552234584', 'Diseñadora de UX/UI', '2023-02-18', 18),
('David Gil', 'david.gil@example.com', 'w3X4y5Z6', '5552234585', 'Ejecutivo de Ventas', '2023-02-19', 19),
('Rosa Díaz', 'rosa.diaz@example.com', 'a7B8c9D0', '5552234586', 'Asistente de Marketing', '2023-02-20', 20);

