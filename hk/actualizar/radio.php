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
if("$rangouser" == "1"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "3"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "4"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "5"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "6"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}

$nombre_radio = $_POST['nombre_radio'];
$radio_op = $_POST['radio_op'];
$radio = $_POST['radio'];
$id = '1';

$consulta = "UPDATE config SET radio_op='".$radio_op."', radio='".$_POST[radio]."', nombre_radio='".$nombre_radio."' WHERE id='".$id."'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha editado la radio";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../radio.php");

?>