<?php require('../../global.php');
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if(in_array($rangouser, array(1,2,3,4))){
  header("Location: ".$_SERVER['HTTP_REFERER']);
  exit;
}


$vaciar= "TRUNCATE TABLE logs_sospechosos";

$link->query($vaciar);

// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date("Y-m-d");
$accion = "Ha reiniciado los Logs sospechosos";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos
	
header("Location: " . $_SERVER['HTTP_REFERER']);


?>