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





$code = strip_tags($_POST['code']);

$precio = strip_tags($_POST['precio']);

$icono = strip_tags($_POST['icono']);

$unidades = strip_tags($_POST['unidades']);

$id = $_POST['id'];



$consulta = "UPDATE tiendadev SET code_placa='$code', precio='$precio', icono='$icono', unidades='$unidades' WHERE id='$id'";

$resultado = $link->query($consulta);



// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date("Y-m-d");

$accion = "Ha editado un furni de la Tienda Dev";

$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";

$link->query($enviar_log);

// Log guardado en Base de datos



header("Location: ../tienda-dev.php");



?>