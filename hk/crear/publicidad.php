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
<div class="col-md-12">
          <div class="panel panel-default">
                  <div class="panel-heading blue">
              <h3 class="panel-title">Subir Publicidad</h3>
            </div>
            <div class="panel-body">

<div class="formulariohk">
<form action="" method="post" enctype="multipart/form-data">

                 
                    <label>Insertar</label>
                    <input style="margin-bottom: 10px; width:200px;" type="date" class="form-control" required="" name="fecha" placeholder="<?php echo $lang[415]; ?>" value="" />  <br>


                     <label><?php echo $lang[416]; ?></label>
                    <textarea name="noticia" style="margin:10px;" cols="80" required="" rows="10" id='edit'></textarea>  <br>
                    <center><input class="btn btn-primary" name="guardar" type="submit" value="<?php echo $lang[192]; ?>" style="width: 120px;" /></center>
                      </form>
					  
					  <?php
if ($_POST['guardar'] && $_POST['guardar']) {
$enviar = "INSERT INTO publicidad (autor,titulo,resumen,categoria,fecha,imagen,noticia) values ('".$username."','".strip_tags($_POST['titulo'])."','".strip_tags($_POST['resumen'])."','".$_POST['categoria']."','".$_POST['fecha']."','".$_POST['imagen']."','".$_POST['noticia']."')";

if (@$link->query($enviar)) { 
  

  
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

    
     <!-- Main component for a primary marketing message or call to action -->

          <div class="panel panel-default">
                  <div class="panel-heading blue">
              <h3 class="panel-title"><div class='contedor-badge'><span class="glyphicon glyphicon-picture" style="color:#000;font-size:25px;"></span></div>Subir imagen <br><h6>-Sube tu imagen y luego copia la url e insertala arriba! <br>- El nombre de la imagen debe ser Publicidad. (OBLIGATORIO)</h6></h3>
            </div>
            <div class="panel-body">
		
       <iframe src="https://images-kuinz.online/es/" width="100%" height="400"></iframe>
			</div>
          </div>
    
      <!-- Main component for a primary marketing message or call to action -->

          <div class="panel panel-default">
                  <div class="panel-heading blue">
              <h3 class="panel-title">Publicidades subidas</h3>
            </div>
            <div class="panel-body">
		
        <div class="panel panel-default">
<table class="table table-striped table-hover ">
			  <thead>
				<tr>
                              <th>Imagen</th>
                             
				</tr>
			</thead>
			<tbody>
        <?PHP 
						$resultado = $link->query("SELECT * FROM publicidad ORDER BY id DESC limit 1000");
					while($row = mysqli_fetch_array($resultado)){
						?>
  	<tr>
                              <td><div class="datos-articulo" style="background-color:#DC5200;"><span>Publicado el <?php echo "$row[fecha]"; ?> por <?php echo "$row[autor]"; ?></span> <a href="../eliminar/publicidad.php?id=<?php echo "$row[id]"; ?>"><button type="button" class="btn btn-sm btn-danger"><span class="MPicon-cross"></button></div>  </a><br><br><br><br> <?php echo "$row[noticia]"; ?></td>
                       
        <?php
						}
						?>

                        </tbody>
                        </table>
			</div>
          </div>
      </div><!-- /container -->

</div>
<?php 

include "../../Templates/Hk_Footer_2.php";

?>
