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
    $q1 = 'q1';
    $q2 = 'q2';
    $q3 = 'q3';
    $resultado = 'result';
    $usuario_id = 'nombre';

    // Llamar al procedimiento almacenado para insertar la respuesta y actualizar el usuario
    $stmt = $conn->prepare("CALL insertar_respuesta_quiz(?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss",$nombre, $q1, $q2, $q3, $resultado);

    // Ejecutar el procedimiento almacenado
    if ($stmt->execute() === TRUE) {
        echo "Respuesta insertada y usuario actualizado correctamente.";
    } else {
        echo "Error al insertar respuesta y actualizar usuario: " . $stmt->error;
    }

    $stmt->close();
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
