<?php require('../../global.php');
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if(in_array($rangouser, array(1,2,3))){
  header("Location: ".$_SERVER['HTTP_REFERER']);
  exit;
}



$vaciar= "TRUNCATE TABLE app_helpers";

$link->query($vaciar);

// Guardar acci�n en Logs si se ha iniciado sesi�n

$fecha_log = date ('d-M-Y h:i:s', time());
$accion = "Ha eliminado por completo los post de los helpers.)";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos
	
header("Location: " . $_SERVER['HTTP_REFERER']);


?>