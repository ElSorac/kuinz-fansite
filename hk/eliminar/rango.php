<?php require('../../global.php');
if (isset ($_GET['id'])){
	
$id = $_GET['id'];

$consulta=<<<SQL
DELETE FROM rangos
WHERE id='$id'
LIMIT 1
SQL;

$link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date("Y-m-d");
$accion = "Ha eliminado un rango";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos
	
}

header("Location: " . $_SERVER['HTTP_REFERER']);


?>