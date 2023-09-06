<?php
require('core/server.php');
if (isset($_SESSION['logeado']) != "Si") {
    header("Location: login");
    exit();
} else {
?>

<?php
include('./templates/head.php');
include('./templates/header.php');
include('./templates/Body-Index.php');
include('./templates/footer.php');
?>
<?php } ?>