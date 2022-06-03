<?php require('../../global.php');
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if("$rangouser" == "1"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "2"){
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



$vaciar= "TRUNCATE TABLE app_helpers";

$link->query($vaciar);

// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date ('d-M-Y h:i:s', time());
$accion = "Ha eliminado por completo los post de los helpers.)";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos
	
header("Location: " . $_SERVER['HTTP_REFERER']);


?>