<?php
if ($_SESSION["logeado"] == "SI") {
   echo "<script>window.location.href='../index?sessionerror';</script>";
   exit();
}
$resultado = $link->query("SELECT * FROM config WHERE id = 1");

while ($row = mysqli_fetch_array($resultado)) {
    $registro_op = $row["registro"];
}

if ("$registro_op" == "0") {
    header("Location: $url/index.php?registrobloqueado");
}
?>
<script src="https://www.google.com/recaptcha/api.js?hl=es" async defer></script>
<div class="container">
   <div class="row">
      <div class="col-md-8">
         <center>
            <div class="registro page">
               <div class="panel panel-default">
                  <div class="panel-heading green">
                     <h3 class="panel-title" style="text-align: left;">
                        <div class='contedor-badge'>
                           <div class='icon-users-new'></div>
                        </div>
                        <?php echo $lang[48]; ?>
                     </h3>
                  </div>
                  <div class="panel-body">
                     <div class="eventotext">
                        <form class="form form-signup" method="post">
                           <h5 class="colr bold mp" style="text-align: left;"><?php echo $lang[27]; ?></h5>
                           <div class="form-group">
                              <div class="input-group">
                                 <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                 <input type="text" maxlength="12" class="form-control" required="true" name="username" id="username" placeholder="<?php echo $lang[49]; ?>"/>
                              </div>
                           </div>
                           <h5 class="colr bold mp" style="text-align: left;"><?php echo $lang[50]; ?></h5>
                           <div class="form-group">
                              <div class="input-group">
                                 <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                 </span>
                                 <input name="email" type="email" id="email" required="true" class="form-control" placeholder="<?php echo $lang[51]; ?>"/>
                              </div>
                           </div>
                           <h5 class="colr bold mp" style="text-align: left;"><?php echo $lang[28]; ?></h5>
                           <div class="form-group">
                              <div class="input-group">
                                 <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                 <input type="password" id="password" name="password" required="true" class="form-control" placeholder="<?php echo $lang[28]; ?>"/>
                              </div>
                           </div>
                           <div class="g-recaptcha" data-sitekey="<?php echo RECAPTCHA_SITE_KEY; ?>"></div>
                           <input type="submit" name="Submit" value="<?php echo $lang[53]; ?>" class="btn btn-sm btn-primary btn-block loginbuttom">
                     </div>
                     </form>
                     <?php
                     $usuario =  $_POST['username'];
                     $password = $_POST['password'];
                     $email = $_POST['email'];

                        if (isset($usuario) && isset($password) && isset($email)) {
                           if (!empty($usuario) && !empty($password) && !empty($email)) {
                              //Datos
                              $password = md5(sha1(md5($_POST['password']))); //Cifrado de contraseñas
                              $username = htmlentities($_POST['username']);
                              $mail = htmlentities($_POST['email']);
                              $fecha = date('d-M-Y h:i:s', time());
      
                              $queEmp = "SELECT username FROM usuarios WHERE username='$username'";
                              $resEmp = $link->query($queEmp) or die(mysqli_error());
                              $totEmp = mysqli_num_rows($resEmp);
      
                              if ($totEmp > 0){
                                 echo 'Error usuario existe';
                              } else {
                                 $ip_cf = $_SERVER["HTTP_CF_CONNECTING_IP"];

                                 $sql = "INSERT INTO usuarios (username,`password`,email,ip) VALUES ('".$username."','".$password."','".$mail."','".$ip_cf."')";
                                 $link->query($sql);
                                 //echo mysqli_error($link);
                                 
                                 #Guardar log
                                 $fecha_log = date('d-M-Y h:i:s', time());
                                 $accion = "Se ha registrado";
                                 $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
                                 $link->query($enviar_log);

                                 echo "<script>window.location.href='../login?success';</script>";
                                
                              }
                              
                           } else {
                              echo '<h2 class="red">Ocurrio un error...</h2>';
                              exit();
                           }
                        } else {
                           echo  'Registra una cuenta con nosotros :)';
                        }
                     ?>
                  </div>
               </div>
            </div>
         </center>
      </div>
      <div class="col-md-4">
         <?php echo $redes_sociales; ?>
         <?php echo $cartel_publicidad; ?>
      </div>
   </div>
</div>
<!-- /container -->