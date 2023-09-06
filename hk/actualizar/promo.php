<?php 

require ('../../global.php');
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if(in_array($rangouser, array(1,2,3))){
  header("Location: ".$_SERVER['HTTP_REFERER']);
  exit;
}


$titulo = strip_tags($_POST['titulo']);
$texto = strip_tags($_POST['texto']);
$imagen = strip_tags($_POST['imagen']);
$url_promo = strip_tags($_POST['url_promo']);
$principal = nl2br($_POST['principal']);
$id = $_POST['id'];

$consulta = "UPDATE banner SET titulo='$titulo', texto='$texto', imagen='$imagen', principal='$principal', url_promo='$url_promo' WHERE id='$id'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha editado una promo";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../promos.php");

?>