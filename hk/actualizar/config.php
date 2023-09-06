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

$nameweb = $_POST['nameweb'];
$url = $_POST['url'];
$pclaves = $_POST['pclaves'];
$descripcion = $_POST['descripcion'];
$logo = $_POST['logo'];
$facebook = $_POST['facebook'];
$facebookimg = nl2br($_POST['facebookimg']);
$equipo = nl2br($_POST['equipo']);
$puntos_img = $_POST['puntos'];
$fichas_img = $_POST['fichas'];
$tokens_img = $_POST['tokens'];

$id = '1';

$consulta = "UPDATE config SET nameweb='$nameweb', url='$url', pclaves='$pclaves', descripcion='$descripcion', logo='$logo', facebook='$facebook', facebookimg='$facebookimg', equipo='$equipo', puntos_img='$puntos_img', fichas_img='$fichas_img', tokens_img='$tokens_img' WHERE id='$id'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date ('d-M-Y h:i:s', time());
$accion = "Ha actualizado la configuración de la web";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../configuracion.php");

?>