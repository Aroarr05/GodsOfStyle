<?php
// Datos de conexión a la base de datos
$servername = "localhost:3309";
$username = "root";
$password = "";
$dbname = "web";

// Establecer conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("La conexión ha fallado: " . $conn->connect_error);
}

// Verificar si el formulario ha sido enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $nombre = $_POST['nombre'];
    $contraseña = $_POST['contraseña'];

    // Llamar al procedimiento almacenado
    $stmt = $conn->prepare("CALL insertar_usuario_inicio(?, ?)");
    $stmt->bind_param("ss", $nombre, $contraseña);

    if ($stmt->execute() === TRUE) {
        echo "Registro exitoso";
    } else {
        echo "Error al registrar: " . $stmt->error;
    }

    $stmt->close();
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
