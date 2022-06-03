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
if("$rangouser" == "5"){
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
              <h3 class="panel-title">Editar Placa</h3>
            </div>
            <div class="panel-body">

              <?php
$id = $_GET['id'];
$consulta =<<<SQL
SELECT *
FROM
secciones_furnis WHERE id = '$id'
LIMIT 1
SQL;
 $filas = $link->query($consulta);
  $columnas = mysqli_fetch_assoc($filas);
?>
<div class="formulariohk">
              <form method="post" action="../actualizar/catalogo-secciones.php">
			  <input type="hidden" name="id" value="<?php echo $columnas['id']; ?>"/>

              <label>Nombre</label>
             <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="nombre" placeholder="Nombre de la seccion" value="<?php echo $columnas['nombre']; ?>" />  <br>

              <label>Url de sección (Debe estar todo junto)</label>
              <input style="margin-bottom: 10px;" type="text" class="form-control" name="url" placeholder="Url asignada a seccion" required="" value="<?php echo $columnas['url_seccion']; ?>" />  <br>
					
                    <center><input class="btn btn-primary" type="submit" value="Guardar" style="width: 120px;" /></center>
                      </form>
</div></div>
			</div>
          </div>

		</div>
      </div><!-- /container -->
<?php 

include "../../Templates/Hk_Footer_2.php";

?>