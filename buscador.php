<?php
require ('global.php');

include "Templates/Head.php";
include "Templates/Alertas.php";
include "Templates/Nav.php"; 
$usuarios = $link->query("SELECT * FROM usuarios");

$total_usuarios = mysqli_num_rows($usuarios);


?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading blue">
					<h3 class="panel-title"><?php echo $lang[47]; ?> [<?php echo $total_usuarios; ?>]</h3>
				</div>
				<div class="panel-body">
					<div class="catalogo">
					<?php 
					$resultado = $link->query("SELECT * FROM usuarios WHERE username = '$username'");
					while($row = mysqli_fetch_array($resultado)){
						$username = $row['username'];
						}
					 ?>		
					<center>
					Buscar 
					<input type="text" id="bus" name="bus" placeholder="Buscar usuarios,furnis..." onkeyup="loadXMLDoc()" required />
					<div id="myDiv"></div>
					</center>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>

<?php
include "Templates/Footer.php"; 

?>
