<?php require('../../global.php');
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

if (isset ($_GET['id'])){
	
$id = $_GET['id'];

$consulta=<<<SQL
DELETE FROM comentarios
WHERE id='$id'
LIMIT 1
SQL;

$link->query($consulta);
	
// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date("Y-m-d");
$accion = "Ha eliminado un comentario";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos
}
header("Location: " . $_SERVER['HTTP_REFERER']);


?>