<?php
require ('../../global.php');
session_start();
// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date ('d-M-Y h:i:s', time());
$accion = "Ha cerrado sesión";
$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
$resultado_log = $link->query($enviar_log);
// Log guardado en Base de datos
session_unset();
session_destroy(); 
setcookie("id_extreme","x",time()-3600,"/");
header("Location: ../../index.php?logout");
?>