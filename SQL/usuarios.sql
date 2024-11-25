-------------------------------------------- USUARIO PARA INSERTAR Y BORRAR LOS DATOS --------------------------------------------

CREATE USER 'insertar_borrar'@'localhost' IDENTIFIED BY 'contraseña1';
GRANT INSERT, DELETE ON web.* TO 'insertar_borrar'@'localhost';

------------------------------------- USUARIO PARA CONSULTAR LA TABLA DE CAMISETAS Y PRINTS --------------------------------------

CREATE USER 'consultar'@'localhost' IDENTIFIED BY 'contraseña2';
GRANT SELECT ON web.Camisetas TO 'consultar'@'localhost';
GRANT SELECT ON web.Prints TO 'consultar'@'localhost';