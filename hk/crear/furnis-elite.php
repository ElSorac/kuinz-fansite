<?php

include "../../Templates/Hk_Head_2.php";



$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');

while($row = mysqli_fetch_array($query))

{

  $rangouser = $row['rank'];

}
if(in_array($rangouser, array(1,2,3))){
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

              <h3 class="panel-title"><?php echo $lang[429]; ?></h3>

            </div>

            <div class="panel-body">



<div class="formulariohk">

<form action="" method="post" enctype="multipart/form-data">

              <label>Code</label>

                    <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="code" placeholder="Code ejemplo: WAR" value="" />  <br>



                     <label>Imagen - URL</label>

                    <input style="margin-bottom: 10px;" type="text" class="form-control" name="imagen" required="" placeholder="Insertar la dirección URL de la imagen" required="" value="" />  <br>

					

                    <center><input class="btn btn-primary" name="guardar" type="submit" value="Subir" style="width: 120px;" /></center>

                      </form>

					  

					  <?php

if ($_POST['guardar'] && $_POST['code']) {

$enviar = "INSERT INTO placase (code,imagen) values ('".strip_tags($_POST['code'])."','".strip_tags($_POST['imagen'])."')";



if (@$link->query($enviar)) {



// Guardar acción en Logs si se ha iniciado sesión



$fecha_log = date("Y-m-d");

$accion = "Ha subido un furni Elite";

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

