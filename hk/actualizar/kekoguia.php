<?php 

require ('../../global.php');
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
if("$rangouser" == "3"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "3"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}


$titulo = strip_tags($_POST['titulo']);
$resumen = strip_tags($_POST['resumen']);
$categoria = $_POST['categoria'];
$fecha = $_POST['fecha'];
$imagen = $_POST['imagen'];
$noticia = nl2br($_POST['noticia']);
$id = $_POST['id'];

$consulta = "UPDATE kekoguias SET titulo='$titulo', resumen='$resumen', categoria='$categoria', fecha='$fecha', imagen='$imagen', noticia='$noticia' WHERE id='$id'";
$resultado = $link->query($consulta);

// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha editado una guia";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$link->query($enviar_log);
// Log guardado en Base de datos

header("Location: ../kekoguias.php");

?>