<?php
require_once('sql.php');

$formularioEnviado = false;
$errorForm = null;

if(isset($_POST['send_respuesta'])){

	$keko_nombre = substr($_POST['nombrekeko'], 0, 300);
	$respuesta = substr($_POST['respuesta'], 0, 800);

	if(!$keko_nombre || !$respuesta){
		$errorForm = 'Por favor, introduce tu keko nombre y la respuesta.';
	}else{
		$kekoRegistrado = SQL::conectar()->prepare('SELECT id FROM kekocity_respuestas WHERE keko_nombre = :keko_nombre');
		$kekoRegistrado->execute( [ ':keko_nombre' => $keko_nombre ] );

		if($kekoRegistrado->fetch()){
			$errorForm = 'El nombre de keko que introduciste ya registró una respuesta.';
		}else{

			// Registrar respuesta
			$registrarRespuesta = SQL::conectar()->prepare('INSERT INTO kekocity_respuestas (keko_nombre, respuesta) VALUES (:keko_nombre, :respuesta)');
			$registrarRespuesta->execute([
				':keko_nombre' => $keko_nombre,
				':respuesta' => $respuesta
			]);

			$formularioEnviado = true;

		}
	}
}

?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Adivinanzas</title>
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<style type="text/css">
	body{
		text-align: center;
		padding: 0;
		margin: 0;
	}
</style>
</head>
<body>

<!-- AQUÍ ADIVINANZA -->

<div style="
background: linear-gradient(45deg, #006ae8, #00ffde);
width: 337px;
height: 491px;
border-radius: 16px;margin:auto;
">
<section style="
 background: #080f25;
 height: 457px;
 width: 299px;
 position: relative;
 left: 19px;
 top: 17px;
 border-radius: 15px;
 box-shadow: 0 0 14px 2px black;
">
 <h4 style="
 position: relative;
 color: white;
 font-size: 34px;
 font-family: sans-serif;
 font-weight: bolder;
 -webkit-text-stroke: 1px #13cccc;
 text-shadow: -1px 1px 7px #00ffa57a;
 top: 9px;
 ">ADIVINANZA</h4><hr style="
position: relative;
top: -30px;
"><h4 style="
 color: white;
 position: relative;
 top: -35px;
 font-weight: 300;
">Adivinanza</h4><hr style="
position: relative;
top: -38px;
"> <h4 style="
 color: white;
 font-size: 22px;
 font-weight: bolder;
 position: relative;
 top: -52px;
"> PREMIO: 7 FICHAS </h4> <hr style="
position: relative;
top: -66px;
"> 

<?php

	if($formularioEnviado){
	?>
	<div style="background:orange;color:#000;padding:10px;box-shadow: 0 0 0 2px rgba(0, 0, 0, .5) inset;">
	    ¡VIVA! Tu respuesta fue enviada.
	</div>
	<?php
	}else{

	if($errorForm){ 
	?>
	<div style="background:#c40e0e;color:#fff;padding:10px;box-shadow: 0 0 0 2px rgba(0, 0, 0, .5) inset;">
		<?=$errorForm?>
	</div>
	<?php
	}

	?>
	<h4 style="
	position: relative;
	color: white;
	top: -75px;
	"> RESPONDER ADIVINANZA </h4>
	<br>
	<form method="POST" style="
	position: relative;
	top: -98px;
	">
	<input type="text" name="nombrekeko" id="nombrekeko" required="" placeholder="Nombre de tu Keko" style="
	 border-radius: 6px;
	 color: white;
	 background: #000619;
	 border: 2px solid #ffffffb3;
	 box-shadow: 0 0 5px 1px #00ffff54;
	 height: 23px;
	 width: 137px;
	 text-align: center;
	">
	 <p></p><input type="text" name="respuesta" id="respuesta" required="" placeholder="Respuesta de la Adivinanza" style="
	 border-radius: 6px;
	 color: white;
	 background: #000619;
	 border: 2px solid #ffffffb3;
	 box-shadow: 0 0 5px 1px #00ffff54;
	 height: 82px;
	 width: 255px;
	 text-align: center;
	">
	 <p></p><input type="submit" name="send_respuesta" value="Enviar respuesta" style="
	 border-radius: 6px;
	 color: #929292;
	 background: #000619;
	 border: 2px solid #ffffffb3;
	 box-shadow: 0 0 5px 1px #00ffff54;
	 height: 29px;
	 width: 141px;
	 text-align: center;
	">
	<?php
	}

	?>
</form>
</section>
</div>

</body>
</html>