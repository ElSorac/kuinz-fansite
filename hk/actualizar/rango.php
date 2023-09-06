<?php 
require ('../../global.php');
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if(in_array($rangouser, array(1,2,3,4))){
  header("Location: ".$_SERVER['HTTP_REFERER']);
  exit;
}

$nombre = strip_tags($_POST['nombre']);
$mision = strip_tags($_POST['mision']);
$color = nl2br($_POST['color']);
$id = $_POST['id'];

$consulta = "UPDATE rangos SET nombre='$nombre', mision='$mision', color='$color' WHERE id='$id'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha editado un rango";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../rangos.php");

?>