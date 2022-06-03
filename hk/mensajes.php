<?php
include "../Templates/Hk_Head.php";

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

include "../Templates/Hk_Nav.php";
?>
	  <div class="container">
      <!-- Main component for a primary marketing message or call to action -->
     <div class="row">

          <div class="panel panel-default">
                  <div class="panel-heading blue">
              <h3 class="panel-title"><?php echo $lang[20]; ?></h3>
            </div>
            <div class="panel-body">
					 <div style="border-bottom: #ddd solid 1px;padding: 0px 0px 10px 15px;"><a href="eliminar/mensajes.php"><button type="button" class="btn btn-sm btn-danger">Borrar Mensajes</button></a></div>
                    <div id="loader" style="text-aling:center;margin-left:50%;"> <img src="loader.gif"></div>
		<div class="outer_div"></div><!-- Datos ajax Final -->
<div class="col-md-4"></div>
			</div>
          </div>

		</div>
      </div> <!-- /container -->

        <?php
    $query = $link->query("SELECT * FROM usuarios_mensajes_privados order by id DESC");
    while($row = mysqli_fetch_array($query)) {
    ?>

       <!-- Modal -->
  <div class="modal fade" id="ver_mensaje_<?php echo "$row[id]"; ?>" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><?php echo $lang[153]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo "$row[user_enviado]"; ?>"><?php echo "$row[user_enviado]"; ?></a> <?php echo $lang[338]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo "$row[user_recibido]"; ?>"><?php echo "$row[user_recibido]"; ?></a></h4>
        </div>
        <div class="modal-body">
      
<form class="form-horizontal" action="ajustes.php?regalos" method="post" enctype="multipart/form-data">
  <fieldset>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[96]; ?>:</label>
      <div class="col-lg-10">
        <?php echo $row['asunto']; ?>
      </div>
    </div>
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[97]; ?>:</label>
      <div class="col-lg-10">
        <?php echo $row['mensaje']; ?>
        <span class="help-block"></span>
      </div>
    </div>
  </fieldset>
</form>
      
        </div>
      </div>
      
    </div>
  </div>

<?php 
}
include "../Templates/Footer.php";

?>

        <script>
  $(document).ready(function(){
    load(1);
  });

  function load(page){
    var parametros = {"action":"ajax","page":page};
    $("#loader").fadeIn('slow');
    $.ajax({
      url:'../kernel/ajax/Hk_mensajes_ajax.php',
      data: parametros,
       beforeSend: function(objeto){
      $("#loader").html("<img src='loader.gif'>");
      },
      success:function(data){
        $(".outer_div").html(data).fadeIn('slow');
        $("#loader").html("");
      }
    })
  }
  </script>