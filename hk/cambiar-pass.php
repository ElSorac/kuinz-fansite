<?php
   include "../Templates/Hk_Head.php";
   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
   while($row = mysqli_fetch_array($query))
   {
     $rangouser = $row['rank'];
   }
   if(in_array($rangouser, array(1,2,3,4))){
    header("Location: ".$_SERVER['HTTP_REFERER']);
    exit;
    }
   include "../Templates/Hk_Nav.php";
?>
<div class="container">
   <!-- Main component for a primary marketing message or call to action -->
   <div class="row">
      <div style="width: 600px" class="panel panel-default">
         <div class="panel-heading green">
            <h3 class="panel-title">Cambiar contraseña</h3>
         </div>
         <div class="panel-body">
            <div class="container-fluid">
               <form action="" method="post" enctype="multipart/form-data">
                  <div style="float:left;">
                     <label>Usuario</label>
                     <input style="margin-bottom: 10px;width:200px;" type="text" required="" class="form-control" name="user" placeholder="Nombre de usuario" value="" />
                  </div>
                  <div style="float:left;margin-left:10px;">
                     <label>Nueva Contraseña</label>
                     <input style="margin-bottom: 10px;width:200px;" type="text" id="password" name="password" required="true" class="form-control" placeholder="<?php echo $lang[28]; ?>"/>
                  </div>
                  <input class="btn btn-primary" name="cambiar" type="submit" value="Cambiar contraseña" style="margin-top: 20px;" />

               </form>

               <?php
                  if ($_POST['user'] && $_POST['password'] && !empty($_POST['password'])) {
                  
                     $consulta1 = $link->query("SELECT ID FROM usuarios WHERE username = '".$_POST['user']."'");
                     $resultados = mysqli_fetch_row($consulta1);
                     $user_id = $resultados[0] ?? false;

                     if (!$user_id) {
                     
                       echo "<br><div class='alerta-no'>$lang[383]</div>";

                     }else{

                        $password = md5(sha1(md5($_POST['password']))); //Cifrado de contraseñas;

                     $link->query("UPDATE usuarios SET password='".$password."' WHERE ID=".$user_id.";");//Los 5 cifrado igual a registro, mira la variable cifrado1 no esta o si como en lo de inserta
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