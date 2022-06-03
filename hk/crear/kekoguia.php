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

include "../../Templates/Hk_Nav.php";
?>

	  <div class="container">
      <!-- Main component for a primary marketing message or call to action -->
     <div class="row">
<div class="col-md-8">
          <div class="panel panel-default">
                  <div class="panel-heading blue">
              <h3 class="panel-title">Crear KekoGuia</h3>
            </div>
            <div class="panel-body">

<div class="formulariohk">
<form action="" method="post" enctype="multipart/form-data">
              <label><?php echo $lang[418]; ?></label>
                    <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="titulo" placeholder="Titulo de la Noticia" value="" />  <br>

                    <label>Tamaño</label>
                    <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="categoria" placeholder="Ejemplo: 400px" value="" />  <br>

                    <label><?php echo $lang[415]; ?></label>
                    <input style="margin-bottom: 10px; width:200px;" type="date" class="form-control" required="" name="fecha" placeholder="<?php echo $lang[415]; ?>" value="" />  <br>

                    <label>Imagen de tu keko</label>
                    <input style="margin-bottom: 10px;" type="text" class="form-control" required="" name="imagen" placeholder="<?php echo $lang[433]; ?>" value="" />  <br>

                     <label><?php echo $lang[416]; ?></label>
                    <textarea name="noticia" style="margin:10px;" cols="80" required="" rows="10" id='edit'></textarea>  <br>
                    <center><input class="btn btn-primary" name="guardar" type="submit" value="<?php echo $lang[192]; ?>" style="width: 120px;" /></center>
                      </form>
					  
					  <?php
if ($_POST['guardar'] && $_POST['titulo']) {
$enviar = "INSERT INTO kekoguias (autor,titulo,resumen,categoria,fecha,imagen,noticia) values ('".$username."','".strip_tags($_POST['titulo'])."','".strip_tags($_POST['resumen'])."','".$_POST['categoria']."','".$_POST['fecha']."','".$_POST['imagen']."','".$_POST['noticia']."')";

if (@$link->query($enviar)) { 
  
// Guardar acción en Logs si se ha iniciado sesión

$fecha_log = date("Y-m-d");
$accion = $lang[438];
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
