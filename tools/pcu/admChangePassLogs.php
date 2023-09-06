<?php
require('core/server.php');

if (isset($_SESSION['logeado']) != "Si") {
    header("Location: ../login");
    exit();
} else {

    #Validacion de rangos
   $mi_id    = $_SESSION['id'];
   $consulta = $conn->query('SELECT Admin FROM usuarios WHERE ID = "' . $mi_id . '"');
   while ($datos = $consulta->fetch()) {
       $rangouser = $datos['Admin'];
   }
   if ($rangouser == 0 || $rangouser == 1 || $rangouser == 2 || $rangouser == 3 || $rangouser == 4 || $rangouser == 5 || $rangouser == 6) {
       header("Location: dash");
       exit;
   }
?>
<?php
require('./dash/dataUsuario.php');
include('./dash/head.php');
include('./dash/navbar.php');
include('./dash/header.php');
include('./dash/Body-admChangePass.php');
include('./dash/footer.php');
?>
<?php } ?>