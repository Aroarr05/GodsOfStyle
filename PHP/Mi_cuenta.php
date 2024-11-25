
<?

// CONEXIÓN A LA BASE DE DATOS

$servername ="localhost:3309"; //Mysql@localhost
$username = "root";
$password = "";
$dbname = "web";

//CHEQUEAR LA CONNECION

$conexion = new mysqli ($servername,$username,$password,$dbname);
if(!$conexion){
    die ("Error al conectar la base de datos" .mysql_connect_error());
}
echo "Conectado coorectamente a la base de datos";

//RECUPERAR DATOS DEL FORMULARIO

$id_usuario = $_POST['id_usuario'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$fecha_nacimiento = $_POST['fecha_nacimiento'];
$id_estudieante = $_POST['id_estudieante'];
$genero = $_POST['genero'];

//PREPARAR LA CONSULTA SQL

$sql = "INSERT INTO `pc`(`id_usuario`,`nombre`,`apellido`,`fecha_nacimiento`,`id_estudieante`,`genero`)
VALUES ('$id_usuario','$nombre','$apellido ','$fecha_nacimiento','$id_estudieante','$genero')";
 
//eJECUTAR LA CONSULTA
 
if($conexion -> query($sql) === TRUE){
    echo "Datos guardados correctamente.";
}else{
    echo "Error al guardar los datos: " . $conexion->error;
}
$conexion->close();

?>
