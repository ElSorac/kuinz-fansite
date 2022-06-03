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
   
   if("$rangouser" == "4"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }
   if("$rangouser" == "5"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }

   if("$rangouser" == "7"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }
   
   
   include "../Templates/Hk_Nav.php";
   
   ?>
<div class="container">
   <!-- Main component for a primary marketing message or call to action -->
   <div class="row">
      <div style="width: 600px" class="panel panel-default">
         <div class="panel-heading green">
            <h3 class="panel-title">Cambiar Nombre de Usuario</h3>
         </div>
         <div class="panel-body">
            <div class="container-fluid">
               <form action="" method="post" enctype="multipart/form-data">
                  <div style="float:left;">
                     <label>Usuario</label>
                     <input style="margin-bottom: 10px;width:200px;" type="text" required="" class="form-control" name="currentusername" placeholder="Nombre de usuario" value="" />
                  </div>
                  <div style="float:left;margin-left:10px;">
                     <label>Nuevo username</label>
                     <input style="margin-bottom: 10px;width:200px;" type="text" id="username" name="newusername" required="true" class="form-control" placeholder="Nuevo username"/>
                  </div>
                  <input class="btn btn-primary" name="cambiar" type="submit" value="Ejecutar" style="margin-top: 20px;" />

               </form>

               <?php
                  if ($_POST['currentusername'] && $_POST['newusername'] && !empty($_POST['newusername'])) { 
                  	
                  
                     $consulta1 = $link->query("SELECT ID FROM usuarios WHERE username = '".$link->real_escape_string($_POST['currentusername'])."'");
                     
                     $resultados = mysqli_fetch_row($consulta1);
                     $user_id = $resultados[0] ?? false;


                     $consulta2 = $link->query("SELECT username FROM usuarios WHERE username = '".$link->real_escape_string($_POST['newusername'])."'"); 
                     $resultados2 = mysqli_fetch_row($consulta2);
                     $username = $resultados2[0] ?? false; 

                     if (!$user_id) {
                     
                       echo "<br><div class='alerta-no'>$lang[383]</div>";

                     }elseif ($username) {
                     	echo "<br><div class='alerta-no'>Este nombre ya esta registrado</div>";
                     } else{

                     $link->query("UPDATE usuarios SET username='".$link->real_escape_string($_POST['newusername'])."' WHERE ID=".$user_id.";");
                     }

                     

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