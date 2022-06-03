<?php require('../../global.php');

$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');

while($row = mysqli_fetch_array($query))

{

  $rangouser = $row['rank'];

}

if("$rangouser" == "2"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}

if("$rangouser" == "1"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}

if("$rangouser" == "3"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}

if("$rangouser" == "4"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}

if("$rangouser" == "4"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}

if("$rangouser" == "5"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}

if("$rangouser" == "6"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}





if (isset ($_GET['username'])){

	

$username = $_GET['username'];


$consulta =<<<SQL

UPDATE usuarios 

SET rank='1'

WHERE username = '$username'


LIMIT 1

SQL;

$link->query($consulta);

}

header("Location: " . $_SERVER['HTTP_REFERER']);





?>