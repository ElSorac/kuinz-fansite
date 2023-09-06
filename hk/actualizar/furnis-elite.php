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




$code = strip_tags($_POST['code']);

$imagen = nl2br($_POST['imagen']);

$id = $_POST['id'];



$consulta = "UPDATE placase SET code='$code', imagen='$imagen' WHERE id='$id'";

$resultado = $link->query($consulta);



// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date("Y-m-d");

$accion = "Ha editado un furni Elite";

$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";

$link->query($enviar_log);

// Log guardado en Base de datos



header("Location: ../furnis-elite.php");



?>