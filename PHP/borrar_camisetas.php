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

    // Llamar al procedimiento almacenado
    $stmt = $conn->prepare("CALL EliminarCamisetaPorNombre(?)");
    $stmt->bind_param("s", $nombre);

    if ($stmt->execute()) {
        echo "Camiseta eliminada exitosamente.";
    } else {
        echo "Error al eliminar la camiseta: " . $stmt->error;
    }

    // Cerrar la declaración y la conexión
    $stmt->close();
    $conn->close();
}
?>
