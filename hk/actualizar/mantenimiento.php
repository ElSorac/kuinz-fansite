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

$mantenimiento = $_POST['mantenimiento'];
$iniciar_sesion = $_POST['iniciar_sesion'];
$registro = $_POST['registro'];
$publicidad = $_POST['publicidad'];
$codigo = $_POST['codigo'];
$id = '1';

$consulta = "UPDATE config SET mantenimiento='$mantenimiento', iniciar_sesion='$iniciar_sesion', registro='$registro', publicidad='$publicidad', codigo='$codigo' WHERE id='$id'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha actualizado la configuracion de mantenimiento de la web";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../mantenimiento.php");

?>