<?php require('../../global.php');

$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if(in_array($rangouser, array(1,2))){
  header("Location: ".$_SERVER['HTTP_REFERER']);
  exit;
}
if (isset ($_GET['id'])){
	
$id = $_GET['id'];

$consulta=<<<SQL
DELETE FROM baneo
WHERE id='$id'
LIMIT 1
SQL;

$resultado = $link->query("SELECT * FROM baneo WHERE id = '$id'");
 while($row=mysqli_fetch_array($resultado))
{
	$user_correcto = $row['usuario'];
} 
$enviar = "UPDATE usuarios SET ban='0', ban_i='0', ban_f='0' WHERE username='$user_correcto'";

$link->query($consulta);
$link->query($enviar);

// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date ('d-M-Y h:i:s', time());
$accion = "Ha desbaneado a $user_correcto";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos
	
}
header("Location: " . $_SERVER['HTTP_REFERER']);


?>