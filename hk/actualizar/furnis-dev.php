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

if("$rangouser" == "4"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}





$code = strip_tags($_POST['code']);

$imagen = nl2br($_POST['imagen']);

$id = $_POST['id'];



$consulta = "UPDATE placasdev SET code='$code', imagen='$imagen' WHERE id='$id'";

$resultado = $link->query($consulta);



// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date("Y-m-d");

$accion = "Ha editado un furni Dev";

$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";

$link->query($enviar_log);

// Log guardado en Base de datos



header("Location: ../furnis-dev.php");



?>