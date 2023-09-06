<?php

include "../../Templates/Hk_Head_2.php";



$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');

while($row = mysqli_fetch_array($query))

{

  $rangouser = $row['rank'];

}

if(in_array($rangouser, array(1,2))){
  header("Location: ".$_SERVER['HTTP_REFERER']);
  exit;
}




include "../../Templates/Hk_Nav.php";

?>



	  <div class="container">

      <!-- Main component for a primary marketing message or call to action -->

     <div class="row">

<div class="col-md-8">

          <div class="panel panel-default">

                  <div class="panel-heading blue">

              <h3 class="panel-title">Crear Mision</h3>

            </div>

            <div class="panel-body">



<div class="formulariohk">

<form action="" method="post" enctype="multipart/form-data">

              <label><?php echo $lang[418]; ?></label>

                    <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="titulo" placeholder="Titulo de la mision" value="" />  <br>



                    <label><?php echo $lang[415]; ?></label>

                    <input style="margin-bottom: 10px; width:200px;" type="date" class="form-control" required="" name="fecha" placeholder="<?php echo $lang[415]; ?>" value="" />  <br>



                     <label>Evento</label>

                    <textarea name="evento" style="margin:10px;" cols="80" required="" rows="20" id='edit'></textarea>  <br>

                    <center><input class="btn btn-primary" name="guardar" type="submit" value="Guardar" style="width: 120px;" /></center>

                      </form>

					  

					  <?php

if ($_POST['guardar'] && $_POST['titulo']) {

$enviar = "INSERT INTO misiones (autor,titulo,fecha,texto) values ('".$username."','".strip_tags($_POST['titulo'])."','".$_POST['fecha']."','".$_POST['evento']."')";



if (@$link->query($enviar)) {

  

  // Guardar acción en Logs si se ha iniciado sesión



$fecha_log = date("Y-m-d");

$accion = "Ha creado una nueva mision";

$enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";

$link->query($enviar_log);

// Log guardado en Base de datos



?>

<script type="text/javascript">

  location.href ="<?php echo $_SERVER['HTTP_REFERER']; ?>";

</script>

<?php

}

}

?>

					  

</div></div>

			</div>

          </div>



		</div>

      </div><!-- /container -->



<?php 



include "../../Templates/Hk_Footer_2.php";



?>

