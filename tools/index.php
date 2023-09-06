<?php
require_once('global.php');
if (!isset($_SESSION['session_name'])) {
    header('Location: login.php');
    exit();
} else {
    require_once('view/head.php');
    require_once('view/sidebar.php');
    require_once('templates/dash.php');
    require_once('view/footer.php');
}
?>