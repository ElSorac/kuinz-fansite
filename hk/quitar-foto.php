<?php
   include "../Templates/Hk_Head.php";
   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
   while($row = mysqli_fetch_array($query))
   {
     $rangouser = $row['rank'];
   }
   if(in_array($rangouser, array(1,2))){
    header("Location: ".$_SERVER['HTTP_REFERER']);
    exit;
    }
   include "../Templates/Hk_Nav.php";
?>
   <!-- Main component for a primary marketing message or call to action -->
   <div class="form-section">
            <div class="form-new">
                <div class="form-head">
                    <i class="bi bi-file-image-fill"><font> Quitar foto usuario.</font></i>
                </div>
               <form action="" method="post" enctype="multipart/form-data">
                     <label>Usuario</label>
                     <input style="margin-bottom: 10px;width:200px;" type="text" required="" class="biginputkc" name="user" placeholder="Nombre de usuario" value="" />
                     <label>Tipo de foto</label>
                     <select name="tipo">
                        <option value="avatar">Perfil</option>
                        <option value="portada">Portada</option>
                     </select>
                     <button type="submit" class="form-btn f-right">Enviar</button>
               </form>

               <?php
                  if ($_POST['user'] && $_POST['tipo']) {
                  
                     $consulta1 = $link->query("SELECT ID FROM usuarios WHERE username = '".$_POST['user']."'");
                     $resultados = mysqli_fetch_row($consulta1);
                     $user_id = $resultados[0] ?? false;

                     $tipo = $_POST['tipo'];
                     $user = $_POST['user'];

                     if (!$user_id) {
                     
                       echo "<br><div class='alerta-no'>$lang[383]</div>";

                     }else{

                     if ($tipo == 'avatar') {
                        $img = './images/avatars/noavatar.png';
                     }
                     if ($tipo == 'portada') {
                        $img = './images/default_p.png';
                     }

                     $link->query("UPDATE usuarios SET $tipo='".$img."' WHERE ID=".$user_id.";");

                     $accion = "Le borro $tipo a ($user)";
        
                     $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
        
                     $link->query($enviar_log);

                     echo "<br><div class='alert contenidoal' style='top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button> Borraste ($tipo) de $user.</div>";
                     }

                     

                  }

               ?>     
            </div>
   </div>
   <!-- /container -->
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<?php 
   include "../Templates/Footer.php";
   
   
   
   ?>