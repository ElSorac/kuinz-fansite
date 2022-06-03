<?php
include "../Templates/Hk_Head.php";

$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rangouser = $row['rank'];
}
if("$rangouser" == "2"){
  header ("Location: ../index");
  exit;
}
if("$rangouser" == "1"){
  header ("Location: ../index");
  exit;
}

include "../Templates/Hk_Nav.php";
?>
	  <div class="container">
      <!-- Main component for a primary marketing message or call to action -->
     <div class="row">
        <div class="col-md-8">

         <div class="panel panel-default">
      <div class="panel-heading red">
					<h3 class="panel-title"><div class="contedor-badge"><img src="https://kuinz-fansite.space/images/kekocity/iconapps.png"></div> <h3 class="panel-title">Hola <b><?php echo "$username"; ?></b>, bienvenido al panel administrativo de <?php echo "$nameweb"; ?></h3>
            </div>
            <div class="panel-body">
<div style="text-align: center;"> <h2 title="El que no acate las reglas sera dado baja del sitio web."><img src="https://kuinz-fansite.space/images/kekocity/b.png"><img src="https://kuinz-fansite.space/images/kekocity/helper.png"><img src="https://kuinz-fansite.space/images/kekocity/mod1.png"><img src="https://kuinz-fansite.space/images/kekocity/mod2.png"><img src="https://kuinz-fansite.space/images/kekocity/mod3.png"><img src="https://kuinz-fansite.space/images/kekocity/mod4.png"><img src="https://kuinz-fansite.space/images/kekocity/kuinz.png"><br>
<hr>REGLAS FUNDAMENTALES</h2><hr></div>
     <ul style="color: red; font-family: 'Verdana'; font-style: italic;">
    <li><b>1) No regalar fichas o puntos.</li>
    <li>2) No enviar fichas o puntos a ningun usuario con rango a partir de becario.</li>
    <li>3) No abusar del poder que se le otorga.</li>
    <li>4) No hacer trades de megas/rares de kekocity acambio de puntos o fichas.</li>
    <li>5) Ser responsable con el uso del panel administrativo.</li>
    <li>6) <b><?php echo "$username"; ?></b> No rompas ninguna de las reglas, de lo contrario tendras consecuencias.</li></b>
  </ul></font><br><br>
<div style="padding:10px;"><?php echo $lang[285]; ?> <?php echo "$nameweb"; ?> <?php echo $lang[286]; ?><br><br> <?php echo $lang[287]; ?><br><br> <?php echo $lang[288]; ?>
<br>
</div>

			<div class="eventotext">



			</div>

            </div>
          </div>

		</div>
        <div class="col-md-4">
        

<?php echo $cartel_publicidad; ?>

		</div>
      </div>

    </div> <!-- /container -->

<?php 

include "../Templates/Footer.php";

?>
