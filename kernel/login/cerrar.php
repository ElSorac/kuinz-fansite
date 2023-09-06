<?php
require_once '../../global.php';
session_start();

if (isset($_SESSION['username'])) {
  // Guardar acción en Logs si se ha iniciado sesión
  $fecha_log = date('d-M-Y h:i:s', time());
  $accion = "Ha cerrado sesión";
  $enviar_log = "INSERT INTO logs (usuario, accion, fecha) values (?, ?, ?)";
  $stmt = $link->prepare($enviar_log);
  $stmt->bind_param("sss", $_SESSION['username'], $accion, $fecha_log);
  $stmt->execute();
  // Log guardado en Base de datos

  // Eliminar la sesión actual
  session_unset();
  session_destroy(); 

  // Eliminar cookies
  setcookie("sessionID", "", time()-3600, "/");
  setcookie("logeado", "", time()-3600, "/");

  // Redirigir al usuario a la página de inicio
  header("Location: ../../index.php?logout");
  exit();
} else {
  // Si el usuario no ha iniciado sesión, redirigirlo a la página de inicio
  header("Location: ../../index.php");
  exit();
}
?>
