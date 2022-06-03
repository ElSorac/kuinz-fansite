<?php 



$usuarios = $link->query("SELECT * FROM usuarios");

$total_usuarios = mysqli_num_rows($usuarios);



 ?>

<div class="container">

	<div class="row">

		<div class="col-md-8">

			<div class="panel panel-default">

				<div class="panel-heading blue">

					<h3 class="panel-title"><div class='contedor-badge'><img src="./images/user.png"><div class='icon-users'></div></div> <?php echo $lang[47]; ?> [<?php echo $total_usuarios; ?>]</h3>

				</div>

				<div class="panel-body">

					<div id="loader" style="text-aling:center;margin-left:50%;">

						<img src="hk/loader.gif">

					</div>

					<div class="outer_div">

					</div>

					<!-- Datos ajax Final -->

				</div>

			</div>

		</div>

		<div class="col-md-4">

<?php echo $redes_sociales; ?>

			<?php echo $cartel_publicidad; ?>

		</div>

	</div>

	<script>

	$(document).ready(function(){

		load(1);

	});

	function load(page){

		var parametros = {"action":"ajax","page":page};

		$("#loader").fadeIn('slow');

		$.ajax({

			url:'kernel/ajax/Body_Usuarios_ajax.php',

			data: parametros,

			 beforeSend: function(objeto){

			$("#loader").html("<img src='hk/loader.gif'>");

			},

			success:function(data){

				$(".outer_div").html(data).fadeIn('slow');

				$("#loader").html("");

			}

		})

	}

	</script>

</div>

<!-- /container -->