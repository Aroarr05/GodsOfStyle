-------------------------------------------- PROCEDIMIENTO PRINTS --------------------------------------------

USE web;

DELIMITER $$
CREATE PROCEDURE mostrar_prints(
    IN nombre_prints VARCHAR(110),
    IN precio_prints  DECIMAL(10, 2),
    IN stock_prints INT,
	IN dimensiones_prints VARCHAR(50)
)
BEGIN
   
    IF nombre_prints = '' THEN
        SET nombre_prints = NULL;
    END IF;
    
 IF precio_prints = 0 THEN
        SET precio_prints = NULL;
    END IF;
    
    IF stock_prints = 0 THEN
        SET stock_prints = NULL;
    END IF;
    
     IF dimensiones_prints = '' THEN
        SET dimensiones_prints = NULL;
    END IF;
    

    SELECT * 
    FROM Prints
    WHERE (nombre LIKE CONCAT('%', nombre_prints, '%') OR nombre_prints IS NULL) 
      AND (precio = precio_prints OR precio_prints IS NULL)
      AND (stock = stock_prints OR stock_prints IS NULL)
      AND (dimensiones = dimensiones_prints OR dimensiones_prints IS NULL);

END$$

DELIMITER ;


-------------------------------------------- PROCEDIMIENTO DE LAS CAMISETAS --------------------------------------------

USE web;

DELIMITER $$

CREATE PROCEDURE mostrar_camisetas(
	IN nombre_camisetas VARCHAR(110),
    IN precio_camisetas  DECIMAL(10, 2),
    IN stock_camisetas INT,
	IN talla_camisetas VARCHAR(10),
    IN color_camisetas VARCHAR(50)
)
BEGIN
   
    IF nombre_camisetas = '' THEN
        SET nombre_camisetas = NULL;
    END IF;
    
 IF precio_camisetas = 0 THEN
        SET precio_camisetas = NULL;
    END IF;
    
    IF stock_camisetas = 0 THEN
        SET stock_camisetas = NULL;
    END IF;
    
    IF talla_camisetas = '' THEN
        SET talla_camisetas = NULL;
    END IF;
    IF color_camisetas = '' THEN
        SET color_camisetas = NULL;
    END IF;


    SELECT * 
    FROM Camisetas 
    WHERE (nombre LIKE CONCAT('%', nombre_camisetas, '%') OR nombre_camisetas IS NULL) 
      AND (precio = precio_camisetas OR precio_camisetas IS NULL)
      AND (stock = stock_camisetas OR stock_camisetas IS NULL)
      AND (talla = talla_camisetas OR talla_camisetas IS NULL)
      AND (color = stock_camisetas OR color_camisetas IS NULL);
   

END$$

DELIMITER ;

-------------------------------------------- PROCEDIMIENTO DE REGISTRO --------------------------------------------

USE web;

DELIMITER $$

CREATE PROCEDURE insertar_usuario(
    IN nombre_usuario VARCHAR(25),
    IN email_usuario VARCHAR(50),
    IN contraseña_usuario VARCHAR(8),
    IN telefono_usuario VARCHAR(15),
    IN fecha_registro_usuario DATE,
    IN resultado_usuario INT
)
BEGIN
    -- Manejar valores por defecto
    IF nombre_usuario = '' THEN
        SET nombre_usuario = NULL;
    END IF;
    
    IF email_usuario = '' THEN
        SET email_usuario = NULL;
    END IF;
    
    IF contraseña_usuario = '' THEN
        SET contraseña_usuario = NULL;
    END IF;
    
    IF telefono_usuario = '' THEN
        SET telefono_usuario = NULL;
    END IF;
    
    IF fecha_registro_usuario = '' THEN
        SET fecha_registro_usuario = NULL;
    END IF;
    
    IF resultado_usuario = 0 THEN
        SET resultado_usuario = NULL;
    END IF;

    -- Insertar los datos en la tabla Usuarios
    INSERT INTO Usuarios (nombre, email, contraseña, telefono, fecha_registro, resultado_usuario)
    VALUES (nombre_usuario, email_usuario, contraseña_usuario, telefono_usuario, current_date(), resultado_usuario);
END$$

DELIMITER ;

-------------------------------------------- Porcedimiento para comprobar que esta el usuario guardado --------------------------------------------

DELIMITER $$

CREATE PROCEDURE insertar_usuario_inicio(
    IN p_nombre VARCHAR(100),
    IN p_contrasena VARCHAR(100)
)
BEGIN
    DECLARE variable_usuario_id INT;
    
    -- Buscamos el ID del usuario basado en el nombre y la contraseña proporcionados
    SELECT usuario_id INTO variable_usuario_id
    FROM usuarios
    WHERE nombre = p_nombre AND contraseña = p_contrasena;
    
    -- Verificamos si se encontró un usuario con ese nombre y contraseña
    IF variable_usuario_id IS NOT NULL THEN
        -- Insertamos el ID del usuario en la tabla "inicio"
        INSERT INTO inicio (usuario_id) VALUES (variable_usuario_id);
        SELECT 'Registro exitoso';
    ELSE
        SELECT 'Usuario no encontrado';
    END IF;
END $$

DELIMITER ;

-------------------------------------------- PROCEDIMIENTO DEL FORMULARIO DIOSES --------------------------------------------
 
DELIMITER $$

CREATE PROCEDURE insertar_respuesta_quiz (
    IN p_nombre VARCHAR(255),
    IN p_q1 VARCHAR(50),
    IN p_q2 VARCHAR(50),
    IN p_q3 VARCHAR(50),
    IN p_reultado varchar(100)
)
BEGIN
    DECLARE last_id INT;
    Declare v_usuario_id int;
    
    -- Insertar en respuestas_quiz
    INSERT INTO respuestas_quiz (q1, q2, q3, resultado)
    VALUES (p_q1, p_q2, p_q3, p_reultado);
    
    -- Obtener el ID del último insertado
    SET last_id = LAST_INSERT_ID();
    select usuario_id into v_usuario_id from usuarios where nombre = p_nombre limit 1;
    
    -- Actualizar la tabla Usuarios con el resultado del quiz
    UPDATE Usuarios
    SET resultado_usuario = last_id
    WHERE usuario_id = v_usuario_id;
END $$

DELIMITER ;

-------------------------------------------- PROCEDIMIENTO PARA ELIMINAR LAS CAMISETAS --------------------------------------------

DELIMITER $$

CREATE PROCEDURE EliminarCamisetaPorNombre( 
IN p_nombre VARCHAR(50))
BEGIN
    DELETE FROM Camisetas
    WHERE nombre = p_nombre;
END$$

DELIMITER ;

-------------------------------------------- PROCEDIMIENTO PARA ELIMINAR LOS PRINTS --------------------------------------------

DELIMITER $$

CREATE PROCEDURE EliminarPrintsPorNombre( 
IN p_prints VARCHAR(50))
BEGIN
    DELETE FROM Prints
    WHERE nombre = p_prints;
END$$

DELIMITER ;

-------------------------------------------- PROCEDIMIENTO PARA ELIMINAR USUARIOS --------------------------------------------

DELIMITER $$

CREATE PROCEDURE EliminarUsuario(IN p_nombre VARCHAR(25), IN p_contraseña VARCHAR(8))
BEGIN
    DECLARE usuario_count INT;

    -- Verificar si el usuario con el nombre y la contraseña proporcionados existe
    SELECT COUNT(*) INTO usuario_count
    FROM Usuarios
    WHERE nombre = p_nombre AND contraseña = p_contraseña;

    -- Si el usuario existe, proceder con la eliminación
    IF usuario_count > 0 THEN
        DELETE FROM Usuarios
        WHERE nombre = p_nombre AND contraseña = p_contraseña;
    ELSE
        -- Manejar el caso en el que el usuario no existe o la contraseña es incorrecta
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El usuario no existe o la contraseña es incorrecta';
    END IF;
END$$

DELIMITER ;
