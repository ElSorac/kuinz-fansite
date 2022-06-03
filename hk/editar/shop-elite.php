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
              <h3 class="panel-title">Editar Contenido de Tienda Elite</h3>
            </div>
            <div class="panel-body">

              <?php
$id = $_GET['id'];
$consulta =<<<SQL
SELECT *
FROM
tiendae WHERE id = '$id'
LIMIT 1
SQL;
 $filas = $link->query($consulta);
  $columnas = mysqli_fetch_assoc($filas);
?>
<div class="formulariohk">
              <form method="post" action="../actualizar/shop-elite.php">
        <input type="hidden" name="id" value="<?php echo $columnas['id']; ?>"/>

              <label>Code</label>
             <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="code" placeholder="Aquí el code de la placa ejemplo: WAR" value="<?php echo $columnas['code_placa']; ?>" />  <br>

               <label>Precio</label>
             <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="precio" placeholder="El precio de la placa" value="<?php echo $columnas['precio']; ?>" />  <br>

                    <label>Compra en:</label><br>
                    <select  required="" name="icono">
                    <option value="<?php echo $columnas['icono']; ?>" selected><?php echo $columnas['icono']; ?></option>
                    <option value="<?php echo $columnas['icono']; ?>"></option>
                    <option value="fichas">fichas</option>
                    <option value="puntos">puntos</option>
                    </select><br><br>

              <label>Unidades</label>
             <input style="margin-bottom: 10px;" type="number" required="" class="form-control" name="unidades" placeholder="La cantidad de veces que se puede comprar" value="<?php echo $columnas['unidades']; ?>" />  <br>
          
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