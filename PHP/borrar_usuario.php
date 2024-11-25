<?php
// Datos de conexión a la base de datos
$servername = "localhost:3309";
$username = "root";
$password = "";
$dbname = "web";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("La conexión ha fallado: " . $conn->connect_error);
}

// Verificar si se envió el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST["nombre"];
    $contraseña = $_POST["contraseña"];

    // Llamar al procedimiento almacenado
    $stmt = $conn->prepare("CALL EliminarUsuario(?, ?)");
    $stmt->bind_param("ss", $nombre, $contraseña);

    try {
        if ($stmt->execute()) {
            echo "Usuario eliminado exitosamente.";
        } else {
            echo "Error al eliminar el usuario: " . $stmt->error;
        }
    } catch (mysqli_sql_exception $e) {
        echo "Error: " . $e->getMessage();
    }

    // Cerrar la declaración y la conexión
    $stmt->close();
    $conn->close();
}
?>
