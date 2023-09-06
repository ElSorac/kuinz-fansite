<?php

$host = "localhost";
$username = "root";
$password = "";
$dbname = "fansite";

try {
  $dsn = "mysql:host=$host;dbname=$dbname;charset=utf8mb4";
  $options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
  ];
  $conn = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
  echo 'Error de conexión: ' . $e->getMessage();
  exit;
}

session_start();
?>