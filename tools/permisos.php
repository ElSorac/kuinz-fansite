<?php
require_once('global.php');
if (!isset($_SESSION['session_name'])) {
    header('Location: login.php');
    exit();
} elseif($autorizado) {
    require_once('view/head.php');
    require_once('view/sidebar.php');
    require_once('templates/body-permisos.php');
    require_once('view/footer.php');
} else {
    header('Location: index.php');
    exit();
}
?>