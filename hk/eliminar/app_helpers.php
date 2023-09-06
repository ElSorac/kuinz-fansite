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


if (isset ($_GET['id'])){
	
$id = $_GET['id'];

$consulta=<<<SQL
DELETE FROM app_helpers
WHERE id='$id'
LIMIT 1
SQL;

$link->query($consulta);

// Guardar acci�n en Logs si se ha iniciado sesi�n

$fecha_log = date ('d-M-Y h:i:s', time());
$accion = "Elimino el post del app de un helper";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos
	
}
header("Location: " . $_SERVER['HTTP_REFERER']);


?>