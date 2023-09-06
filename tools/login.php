<?php
require_once('global.php');
if (!isset($_SESSION['session_name'])) {
    require('view/head.php');
    require('templates/body-login.php');
    require('view/footer.php');
} else {
    header('Location: index.php');
    exit();
}
?>