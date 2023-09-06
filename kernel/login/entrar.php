<?php
if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
    // Configura los datos de tu cuenta
    require('../../global.php');
    
    if ($_POST['username']) {
        //Comprobacion del envio del nombre de usuario y password
        $username = htmlentities($_POST['username']);
        $password = md5(sha1(md5($_POST['password']))); //Cifrado de contraseñas
        if ($password == NULL) {
            header("Location: ../../index.php?nopass");   
            exit();
        } else {
            $query = $link->query("SELECT username,password FROM usuarios WHERE username = '$username'") or die(mysqli_error());
            $data = mysqli_fetch_array($query);

            if ($data['password'] != $password) {

                //echo "No a introducido una contrasenia correcta";
                header("Location: ../../index.php?errorpass");

                exit();
            } else {
                $query = $link->query("SELECT * FROM usuarios WHERE username = '$username'") or die(mysqli_error());
                $row                  = mysqli_fetch_array($query);
                $username2            = $row['username'];
                $idUser = $row['ID'];
                $_SESSION["username"] = $row['username'];
                $_SESSION["ID"] = $row['ID'];
                $_SESSION["logeado"]  = "SI";
                
                /* Si aceptamos recordar los datos
                if ($_POST['recordar']) {
                    
                    // Obtener la dirección IP
                    if (isset($_SERVER['HTTP_CF_CONNECTING_IP'])) {
                        // Si estamos detrás de Cloudflare, obtén la dirección IP de Cloudflare
                        $ip = $_SERVER['HTTP_CF_CONNECTING_IP'];
                    } else {
                        // De lo contrario, utiliza la dirección IP remota
                        $ip = $_SERVER['REMOTE_ADDR'];
                    }

                    $id_extreme  = md5(uniqid(rand(), true));
                    $id_extreme2 = $username2 . "%" . $id_extreme . "%" . $ip;
                    $fecha       = date("d/m/y");
                    setcookie('id_extreme', $id_extreme2, time() + 7776000, '/');
                    $query = $link->query("UPDATE usuarios SET fecha='" . $fecha . "', id_extreme='" . $id_extreme . "' WHERE username='" . $username2 . "'") or die(mysqli_error());
                    
                } */

                if ($username2) {
                    // Verificar si el usuario ha seleccionado la opción "Recordar sesión"
                    if ($_POST['recordar']) {
                      // Crear una cookie persistente que expire en 30 días
                      $cookie_name = "sessionID";
                      $cookie_value = sha1($idUser+28);
                      $cookie_expiration = time() + (30 * 24 * 60 * 60); // 30 días
                      setcookie($cookie_name, $cookie_value, $cookie_expiration, "/");
                    }
                    // Realizar las acciones necesarias para mantener la sesión del usuario abierta
                  }

                  if ($username2) {
                    // Verificar si el usuario ha seleccionado la opción "Recordar sesión"
                    if ($_POST['recordar']) {
                      // Crear una cookie persistente que expire en 30 días y establecer su valor a "SI"
                      $cookie_name = "logeado";
                      $cookie_value = "SI";
                      $cookie_expiration = time() + (30 * 24 * 60 * 60); // 30 días
                      setcookie($cookie_name, $cookie_value, $cookie_expiration, "/");
                    }
                    // Establecer la variable de sesión $_SESSION["logeado"] a "SI"
                    $_SESSION["logeado"] = "SI";
                    // Realizar las acciones necesarias para mantener la sesión del usuario abierta
                  }
                
                // Guardar acción en Logs si se ha iniciado sesión
                $fecha_log     = date('d-M-Y h:i:s', time());
                $accion        = "Ha iniciado sesión";
                $enviar_log    = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
                $resultado_log = $link->query($enviar_log);

                //LOG DEL LOGIN
                $f_login = date('d-M-Y');
                $f_hora  = date('h:i:s', time());
                
                $resultado = $link->query("SELECT * FROM usuarios WHERE username = '$username'");
                while ($row = mysqli_fetch_array($resultado)) {
                    $u_id   = $row['ID'];
                    $u_name = $row['username'];
                    $u_rank = $row['rank'];
                }
                

                $rango_name = $link->query("SELECT * FROM rangos WHERE id = '" . $u_rank . "'");
                
                while ($row = mysqli_fetch_array($rango_name)) {
                    
                    $u_rango = $row['nombre'];
                    
                }
                
                $send_login = "INSERT INTO log_login (user_id,username,rango,last_ip,f_login,f_hora) values ('" . $u_id . "','" . $u_name . "','" . $u_rango . "(". $u_rank .")','". $ip_actual ."','" . $f_login . "','" . $f_hora . "')";
                $r_lastlogin = $link->query($send_login);
                
                
                // Guardar acción en Logs si se ha iniciado sesión
                $fecha_log     = date('d-M-Y h:i:s', time());
                $accion        = "Ha iniciado sesión";
                $enviar_log    = "INSERT INTO logeado (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
                $resultado_log = $link->query($enviar_log);
                // Log guardado en Base de datos
                
                
                // ultima vez
                $fecha_ultimavez = date('d-M-Y h:i:s', time());
                
                $enviar_ultimavez    = "UPDATE usuarios SET ultimavez = '$fecha_ultimavez' WHERE username like'" . $username . "'";
                $resultado_ultimavez = $link->query($enviar_ultimavez);
                
                
                $resultado = $link->query("SELECT * FROM usuarios WHERE username = '$username'");
                while ($row = mysqli_fetch_array($resultado)) {
                    $ip_original = $row['ip'];
                }
                
                if ($ip_actual == $ip_original) {
                    echo '';
                } else {
                    // Guardar acción en Logs si se ha iniciado sesión
                    $fecha_log     = date("Y-m-d");
                    $accion        = "Ha iniciado sesión con otra ip (La cuenta No a sido bloqueada)";
                    $enviar_log    = "INSERT INTO logs_sospechosos (user_logeado,ip,accion,fecha) values ('" . $username . "','" . $ip_actual . "','" . $accion . "','" . $fecha_log . "')";
                    $resultado_log = $link->query($enviar_log);
                    // Log guardado en Base de datos
                }
                
                header('Location: ../../index.php?iniciado');
            }
        }
    }
} else {
    header("Location: ../../index.php?no-completado");
    exit();
}
?>

</body>