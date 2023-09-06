<?php
require('core/server.php');
if (isset($_SESSION['logeado']) != "Si") {
    header("Location: ../login");
    exit();
} else {
?>
<?php
require('./dash/dataUsuario.php');
include('./dash/head.php');
include('./dash/navbar.php');
include('./dash/header.php');
include('./dash/Body-Recargas.php');
include('./dash/footer.php');
?>
<?php } ?>