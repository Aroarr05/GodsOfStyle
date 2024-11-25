CREATE database web;
use web;

-- Tabla de Camisetas
CREATE TABLE Camisetas (
    camiseta_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    talla VARCHAR(10),
    color VARCHAR(50),
    imagen_url VARCHAR(255)
);

-- Tabla de Prints
CREATE TABLE Prints (
    print_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(110) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    dimensiones VARCHAR(50),
    imagen_url VARCHAR(260)
);

-- Tabla de Formulario
CREATE TABLE respuestas_quiz (
    formulario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    q1 VARCHAR(50) NOT NULL,
    q2 VARCHAR(50) NOT NULL,
    q3 VARCHAR(50) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Tabla de Usuarios
CREATE TABLE Usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    contraseña VARCHAR(8) NOT NULL,
    telefono VARCHAR(15),
    fecha_registro DATE,
    resultado_usuario int,
    FOREIGN KEY (resultado_usuario) REFERENCES Formulario(formulario_id)
);

-- Tabla de Empleados
CREATE TABLE Empleados (
    empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    contraseña VARCHAR(8) NOT NULL,
    telefono VARCHAR(15),
    puesto VARCHAR(50),
    fecha_contratacion DATE,
    resultado_empleado int,
    FOREIGN KEY (resultado_empleado) REFERENCES Formulario(formulario_id)
);

-- Tabla de Inicio
CREATE TABLE inicio (
    inicio_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);
