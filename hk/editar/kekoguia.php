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
              <h3 class="panel-title">Editar KekoGuia</h3>
            </div>
            <div class="panel-body">

              <?php
$id = $_GET['noticia'];
$consulta =<<<SQL
SELECT *
FROM
kekoguias WHERE id = '$id'
LIMIT 1
SQL;
 $filas = $link->query($consulta);
  $columnas = mysqli_fetch_assoc($filas);
?>
<div class="formulariohk">
              <form method="post" action="../actualizar/kekoguia.php">
			  <input type="hidden" name="id" value="<?php echo $columnas['id']; ?>"/>

              <label>Titulo de Noticia</label>
                    <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="titulo" placeholder="Titulo de la Noticia" value="<?php echo $columnas['titulo']; ?>" />  <br>

                    
              <label>Tamaño</label>
                    <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="categoria" placeholder="Ejemplo: 400px" value="<?php echo $columnas['categoria']; ?>" />  <br>

                
            
                    <label>Fecha</label>
                    <input style="margin-bottom: 10px; width:200px;" type="date" required="" class="form-control" name="fecha" placeholder="Fecha" value="<?php echo $columnas['fecha']; ?>" />  <br>

                    <label>Imagen de tu keko</label>
                    <input style="margin-bottom: 10px;" type="text" required="" class="form-control" name="imagen" placeholder="imagen" value="<?php echo $columnas['imagen']; ?>" />  <br>

                     <label>Noticia</label>
                        <textarea name="noticia" style="margin:10px;" cols="80" required="" rows="10" id='edit'><?php echo $columnas['noticia']; ?></textarea>  <br>

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