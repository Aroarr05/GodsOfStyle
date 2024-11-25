<?php
// Datos de conexión a la base de datos
$servername = "localhost:3309";
$username = "root";
$password = "";
$dbname = "web";

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Verificar si el formulario ha sido enviado y si se proporcionó un correo electrónico
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['email'])) {

    // Obtener datos del formulario
    $nombre = $conn->real_escape_string($_POST['nombre']);
    $email = $conn->real_escape_string($_POST['email']);
    $contraseña = $conn->real_escape_string($_POST['contraseña']);
    $telefono = $conn->real_escape_string($_POST['telefono']);

    // Verificar si el correo electrónico ya existe en la base de datos
    $check_query = "SELECT COUNT(*) AS count FROM Usuarios WHERE email = '$email'";
    $check_result = $conn->query($check_query);
    $check_data = $check_result->fetch_assoc();
    if ($check_data['count'] > 0) {
        echo "El correo electrónico ya está registrado.";
        exit();
    }

    // Hashear la contraseña antes de almacenarla
    $contraseñaHasheada = password_hash($contraseña, PASSWORD_DEFAULT);

    // Preparar la llamada al procedimiento almacenado
    $sql = "CALL insertar_usuario('$nombre', '$email', '$contraseñaHasheada', '$telefono', NULL, NULL)";

    // Ejecutar la consulta SQL
    if ($conn->query($sql) === TRUE) {
        echo "Registro exitoso";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Cerrar la conexión
$conn->close();
?>
