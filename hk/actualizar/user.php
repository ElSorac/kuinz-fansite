<?php 
require ('../../global.php');
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if("$rangouser" == "2"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "5"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}


$user_edit = strip_tags($_POST['username']);
$email = strip_tags($_POST['email']);
$nombre = strip_tags($_POST['nombre']);
$apellido = $_POST['apellido'];
$mostrar_email = $_POST['mostrar_email'];
$mostrar_nombre_apellido = $_POST['mostrar_nombre_apellido'];
$pais = $_POST['pais'];
$avatar = $_POST['avatar'];
$verificado = $_POST['verificado'];
$mostrar_pais = nl2br($_POST['mostrar_pais']);
$id = $_POST['id'];

$consulta = "UPDATE usuarios SET avatar='$avatar', email='$email', pais='$pais', nombre='$nombre', mostraremail='$mostrar_email', mostrarnombreapellido='$mostrar_nombre_apellido', mostrarpais='$mostrar_pais', verificado='$verificado', apellido='$apellido' WHERE username ='$user_edit'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha editado los datos del usuario: $user_edit";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../users.php");

?>