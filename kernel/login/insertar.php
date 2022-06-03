<?php
   require ('../../global.php');
   // Primero comprobamos que ning�n campo est� vac�o y que todos los campos existan.
   if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password']) && isset($_POST['captchaResult']) && !empty($_POST['captchaResult']) && isset($_POST['email']) && !empty($_POST['email']))
   {
       // Si entramos es que todo se ha realizado correctamente
       $captchaResult = $_POST["captchaResult"];
       $firstNumber = $_POST["firstNumber"];
       $secondNumber = $_POST["secondNumber"];
   
       $checkTotal = $firstNumber + $secondNumber;
   
       if ($captchaResult == $checkTotal)
       {
           echo '<h2 class="green">Captcha OK</h2>';
       }
       else
       {
           header("Location: ../../registro.php?errorproblem");
   ?>
<script type="text/javascript">
   location.href ="../../registro.php?errorproblem";
</script>
<?php
   exit;
   }
   
   $cifrado5 = md5($_POST['password']);
   $cifrado4 = sha1($cifrado5);
   $cifrado3 = md5($cifrado4);
   $cifrado2 = sha1($cifrado3);
   $cifrado1 = md5($cifrado2);
   $password = md5($cifrado1);
   
   $username = htmlentities($_POST['username']);
   $mail = htmlentities($_POST['email']);
   $fecha = date('d-M-Y h:i:s', time());
   
   $avatar = $username;
   
   $queEmp = "SELECT username FROM usuarios WHERE username='$username'";
   $resEmp = $link->query($queEmp) or die(mysqli_error());
   $totEmp = mysqli_num_rows($resEmp);
   if ($totEmp > 0)
   {
   header("Location: ../../registro.php?usererror");
   ?>
<script type="text/javascript">
   location.href ="../../registro.php?usererror";
</script>
<?php
   exit();
   }
   
   $queEmp = "SELECT email FROM usuarios WHERE email='$mail'";
   $resEmp = $link->query($queEmp) or die(mysqli_error());
   $totEmp = mysqli_num_rows($resEmp);
   if ($totEmp > 0)
   {
   header("Location: ../../registro.php?emailerror");
   ?>
<script type="text/javascript">
   location.href ="../../registro.php?emailerror";
</script>
<?php
   exit();
   }
   
   // Con esta sentencia SQL insertaremos los datos en la base de datos
   $link->query("INSERT INTO usuarios (username,password,email,fecha,avatar,ip)
   VALUES ('{$username}','{$password}','{$mail}','$fecha','./images/avatars/" . strtoupper(substr($avatar, 0, 1)) . ".png','$ip_actual')");
   
   // Guardar acción en Logs si se ha iniciado sesión
   $fecha_log = date('d-M-Y h:i:s', time());
   $accion = "Se ha registrado";
   $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
   $link->query($enviar_log);
   // Log guardado en Base de datos
   
   
   // Ahora comprobaremos que todo ha ido correctamente
   $my_error = mysqli_error($link);
   
   if (!empty($my_error))
   {
   
   header("Location: ../../registro.php?errordat");
   ?>
<script type="text/javascript">
   location.href ="../../registro.php?errordat";
</script>
<?php
   }
   else
   {
       header("Location: ../../login.php?sucess");
   ?>
<script type="text/javascript">
   location.href ="../../registro.php?sucess";
</script>
<?php
   }
   
   }
   else
   {
   
   header("Location: ../../registro.php?errordb");
   ?>
<script type="text/javascript">
   location.href ="../../registro.php?errordb";
</script>
<?php
   }
   
   ?>