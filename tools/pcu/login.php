<?php
require('core/server.php');
if (isset($_SESSION['logeado']) == "Si") {
    header("Location: index");
    exit();
} else {
?>
<?php
include('./templates/head.php');
include('./templates/Body-Login.php');
include('./templates/footer.php');
?>
<?php } ?>