<?php
require_once('sql.php');

$formularioEnviado = false;
$errorForm = null;

$cargar = SQL::conectar()->prepare('SELECT * FROM kekocity_respuestas  order by id DESC LIMIT');

?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>ADIVINANZA KEKOCITY</title>
<style type="text/css">
    body{
        text-align: center;
        padding: 0;
        margin: 0;
    }
</style>
</head>
<body>



</body>
</html>