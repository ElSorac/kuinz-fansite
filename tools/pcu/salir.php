<?php
require('./core/server.php');

session_unset();
session_destroy(); 
header("Location: login");
?>