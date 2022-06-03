<?php

include "../../Templates/Hk_Head_2.php";



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



$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');

while($row = mysqli_fetch_array($query))

{

  $rangouser = $row['rank'];

}

if("$rangouser" == "2"){

  header ("Location: ../../index");

  exit;

}

if("$rangouser" == "1"){

  header ("Location: ../../index");

  exit;

}



include "../../Templates/Hk_Nav.php";

?>



    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->

     <div class="row">

<div class="col-md-8">

          <div class="panel panel-default">

                  <div class="panel-heading ">

              <h3 class="panel-title"><?php echo $lang[428]; ?></h3>

            </div>

            <div class="panel-body">



<div class="formulariohk">

<form action="" method="post" enctype="multipart/form-data">

              <label>Code</label>

             <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="code" placeholder="Aquí el code de la placa ejemplo: WAR" value="" />  <br>



               <label>Precio</label>

             <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="precio" placeholder="El precio de la placa" value="" />  <br>



                    <label>Compra en:</label><br>

                    <select  required="" name="icono">

                    <option value="fichas">fichas</option>

                    <option value="puntos">puntos</option>

                    <option value="tokens">tokens</option>

                    </select><br><br>



              <label>Unidades</label>

             <input style="margin-bottom: 10px;" type="number" required="" class="form-control" name="unidades" placeholder="La cantidad de veces que se puede comprar" value="" />  <br>

          

                    <center><input class="btn btn-primary" name="guardar" type="submit" value="Subir" style="width: 120px;" /></center>

                      </form>

            

            <?php

if ($_POST['guardar'] && $_POST['code']) {

$enviar = "INSERT INTO tiendae (code_placa,precio,icono,unidades) values ('".strip_tags($_POST['code'])."','".strip_tags($_POST['precio'])."','".strip_tags($_POST['icono'])."','".strip_tags($_POST['unidades'])."')";



if (@$link->query($enviar)) {



// Guardar acción en Logs si se ha iniciado sesión



$fecha_log = date("Y-m-d");

$accion = "Ha Publicado una placa en la tienda Elite";

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

