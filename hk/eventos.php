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
if("$rangouser" == "3"){
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
              <h3 class="panel-title"><?php echo $lang[3]; ?></h3>
            </div>
            <div class="panel-body">
<div style="border-bottom: #ddd solid 1px;padding: 0px 0px 10px 15px;"><a href="crear/evento.php"><button type="button" class="btn btn-sm btn-primary"><?php echo $lang[351]; ?></button></a> <a href="../eventos.php"><button type="button" class="btn btn-sm btn-success"><?php echo $lang[352]; ?></button></a></div>
					<div id="loader" style="text-aling:center;margin-left:50%;"> <img src="loader.gif"></div>
		<div class="outer_div"></div><!-- Datos ajax Final -->

			</div>
          </div>

		</div>
      </div><!-- /container -->

  <?php 

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
			url:'../kernel/ajax/Hk_eventos_ajax.php',
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