<?php
require('server/config.php');
// Eliminar todas las variables de sesión
$_SESSION = array();

// Eliminar cookies
setcookie("session_token", "", time()-3600, "/");

// Verificar si hay una sesión iniciada
if (isset($_SESSION['session_id'])) {
    $userID = $_SESSION['session_id'];
  
    // Eliminar el token de la base de datos
    $sql = "DELETE FROM session_panel WHERE user_id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':id' => $userID
    ]);
  
    // Destruir la sesión
    session_unset();
    session_destroy();
}

// Redirigir al usuario a la página de inicio de sesión o a otra página de tu elección
header("Location: login.php");
exit;

?>
