<?php
require('core/server.php');
?>
<?php
if (isset($_SESSION['logeado']) != "Si") {
    header("Location: login");
    exit();
} else {
    header("Location: dash");
}
?>