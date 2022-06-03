	  <div class="container">
     <div class="row">
        <div class="col-md-8">

		<center><div class="login">
	<div class="panel panel-default">
            <div class="panel-heading red">
              <h3 class="panel-title" style="text-align: left;"><div class='contedor-badge'><div class='icon-login'></div></div> <?php echo $lang[214]; ?></h3>
            </div>
            <div class="panel-body">

			<div class="eventotext">

<?php
if(isset($_POST['button'])){
	if($_POST['mail']){
		$mail = $_POST['mail'];
		$queEmp = "SELECT * FROM usuarios WHERE email='$mail'";
		$resEmp = $link->query($queEmp) or die(mysqli_error());
		$totEmp = mysqli_num_rows($resEmp);
		if($totEmp == 0){
		echo $lang[220];
		exit();
		}		
		
		$row = mysqli_fetch_assoc($resEmp);
		$hash = md5(md5($row['username']).md5(sha1(md5(sha1(md5(md5($row['password'])))))));

		$headers .= "From:$lang[214] <info@".$nameweb.">\r\n";  
		$message = "$lang[215] $nameweb $lang[216]
		".$url."/pass.php?id=".$hash."&mail=".$mail."";
		
		if (mail($mail,$lang[214],$message,$headers)){
		$msg = $lang[217];
		}
	}
}
?>
<em></em>
<form id="form1" name="form1" method="post" action="recuperar.php">
  <h5><?php echo $lang[218]; ?></5><br /><br>
  <input type="email" placeholder="<?php echo $lang[219]; ?>" class="form-control" required="true" name="mail" id="mail" />
  <br />
  <br />
<input type="submit" name="button" class="btn btn-primary" id="button" value="<?php echo $lang[226]; ?>" />
</form>

			</div>

            </div>
          </div>
		 </div></center>

		</div>
        <div class="col-md-4">

<?php echo $redes_sociales; ?>

<?php echo $cartel_publicidad; ?>

		</div>
      </div>

    </div> <!-- /container -->