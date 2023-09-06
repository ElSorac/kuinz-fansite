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
              <h3 class="panel-title"><?php echo $lang[425]; ?></h3>
            </div>
            <div class="panel-body">

<div class="formulariohk">
<form action="" method="post" enctype="multipart/form-data">
             <label><?php echo $lang[123]; ?></label>
             <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="nombre" placeholder="El nombre del Furni" value="" />  <br>

              <label>Imagen URL</label>
              <input style="margin-bottom: 10px;" type="text" class="form-control" name="imagen" placeholder="La imagen URL" required="" value="" />  <br>

                    <label>Icono de compra</label><br>
                    <select required="" name="icon">
                    <option value="https://v2.kekocity.com/uploads/02/8/a/f/2/b8af2c5071a22e891c22e601b5ee408c.png">Fichas</option>
                    </select><br><br>

                    <label>Seccion del Furni</label><br>
                    <select required="" name="seccion">
                    <?php 
                    $consulta = $link->query("SELECT * FROM secciones_furnis");
                    while ($row = mysqli_fetch_array($consulta)) {?>
                    <option value="<?php echo $row['id']; ?>"><?php echo $row['nombre']; ?></option>
                    <?php } ?>
                    </select><br><br>

                                         <label>Valor del furni</label>
              <input style="margin-bottom: 10px;width: 220px;" type="text" class="form-control" name="creditos" placeholder="El valor del furni" required="" value="" />  <br>
			
                    <center><input class="btn btn-primary" name="guardar" type="submit" value="Subir Furni" style="width: 120px;" /></center>
                      </form><?php
if ($_POST['guardar'] && $_POST['nombre']) {
$enviar = "INSERT INTO furnis (nombre,creditos,imagen,encima,icon,seccion) values ('".strip_tags($_POST['nombre'])."','".strip_tags($_POST['creditos'])."','".strip_tags($_POST['imagen'])."','".strip_tags($_POST['encima'])."','".strip_tags($_POST['icon'])."','".strip_tags($_POST['seccion'])."')";

if ($link->query($enviar)) {
// Guardar acción en Logs si se ha iniciado sesión
$fecha_log = date("Y-m-d");
$accion = "Ha subido un furni";
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
?></div></div>
			</div>
          </div>

		</div>
      </div><!-- /container -->

<?php 

include "../../Templates/Hk_Footer_2.php";

?>