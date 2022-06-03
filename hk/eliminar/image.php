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

if (isset ($_GET['id'])){
	
$id = $_GET['id'];

$consulta=<<<SQL
DELETE FROM images_helpers
WHERE id='$id'
LIMIT 1
SQL;

$link->query($consulta);

	
}
header("Location: " . $_SERVER['HTTP_REFERER']);


?>