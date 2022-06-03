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
   if("$rangouser" == "5"){
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
            <h3 class="panel-title"><?php echo $lang[404]; ?></h3>
         </div>
         <div class="panel-body">
            <div id="loader" style="text-aling:center;margin-left:50%;"> <img src="loader.gif"></div>
            <div class="outer_div"></div>
            <!-- Datos ajax Final -->
         </div>
      </div>
      <div style="width: 70%" class="panel panel-default">
         <div class="panel-heading green">
            <h3 class="panel-title"><?php echo $lang[405]; ?></h3>
         </div>
         <div class="panel-body">
            <div style="float:left;margin:10px;height: 110px;display: block;">
               <form action="" method="post" enctype="multipart/form-data">
                  <div style="float:left;margin-left:10px;">
                     <label><?php echo $lang[175]; ?></label>
                     <input style="margin-bottom: 10px;width:200px;" type="text" required="" class="form-control" name="user" placeholder="<?php echo $lang[175]; ?>" value="" />
                  </div>
                  <div style="float:left;margin-left:10px;">
                     <label><?php echo $lang[307]; ?></label>
                     <input style="margin-bottom: 10px;width:300px;" type="text" required="" class="form-control" name="razon" placeholder="<?php echo $lang[406]; ?>" value="" />
                  </div>
                  <div style="float:left;margin-left:10px;">
                     <label><?php echo $lang[308]; ?></label>
                     <input style="margin-bottom: 10px;width:auto;" type="date" required="" class="form-control" name="ban_f" placeholder="<?php echo $lang[407]; ?>" value="" />
                  </div>
                  <br>
                  <div style="margin-right: 10%;margin-left: 10px;">
                     <input class="btn btn-primary" name="guardar" type="submit" value="<?php echo $lang[325]; ?>" style="width: 120px;margin-top: 10px;" />
                  </div>
               </form>
               <?php
                  if ($_POST['guardar'] && $_POST['user']) {
                  $user = $_POST['user'];
                  $razon = $_POST['razon'];
                  $ban = '1';
                  $ban_i = date ('d-M-Y h:i:s', time());
                  $ban_f = nl2br($_POST['ban_f']);
                  
                  $resultado = $link->query("SELECT * FROM usuarios WHERE username = '$user'");
                   while($row=mysqli_fetch_array($resultado))
                  {
                  	$user_correcto = $row['username'];
                  } 
                  
                  $resultado = $link->query("SELECT * FROM baneo WHERE usuario = '$user_correcto'");
                   while($row=mysqli_fetch_array($resultado))
                  {
                  	$user_existente = $row['usuario'];
                  } 
                  
                  if ("$user_correcto" == "$user_existente") {
                  header ("Location: ban.php?usuario_existente"); 
                  } else {	
                  $consulta = "UPDATE usuarios SET ban='1', ban_i='$ban_i', ban_f='$ban_f' WHERE username='$user_correcto'";
                  $resultado = $link->query($consulta);
                  $enviar = "INSERT INTO baneo (usuario,razon,ban_i,ban_f) values ('".$user_correcto."','".$razon."','".$ban_i."','".$ban_f."')";
                  }
                  if (@$link->query($enviar)) { 	header ("Location: ban.php?guardado");  }
                  }
                  ?>
            </div>
         </div>
      </div>
   </div>
   <!-- /container -->
</div>
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
   		url:'../kernel/ajax/Hk_ban_ajax.php',
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