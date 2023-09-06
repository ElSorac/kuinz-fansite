<?php 
require ('../../global.php');
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if(in_array($rangouser, array(1,2))){
  header("Location: ".$_SERVER['HTTP_REFERER']);
  exit;
}
$titulo = strip_tags($_POST['titulo']);
$texto = $_POST['evento'];
$fecha = strip_tags($_POST['fecha']);
$id = $_POST['id'];

$consulta = "UPDATE eventos SET titulo='$titulo', texto='$texto', fecha='$fecha' WHERE id='$id'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha editado un evento";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../eventos.php");

?>