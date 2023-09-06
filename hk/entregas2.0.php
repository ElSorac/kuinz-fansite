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
<section class="form-section" style="margin-bottom: 80px;">
   <div class="form-new">
        <div class="form-head">
            <i class="bi bi-gift-fill"><font>Enviar premio al keko ganador. (FORMULARIO DE STAFF)</font></i>
        </div>
        <form method="post">
            <label for="username"><i class="bi bi-person"></i> Nombre de usuario</label>
            <input type="text" name="username" placeholder="Keko ganador">
            <label for="tipomoneda"><i class="bi bi-coin"></i> Tipo de entrega</label>
            <select name="tipomoneda">
                <option value="fichas">Fichas</option>
                <option value="puntos">Puntos</option>
                <option value="tokens">Tokens</option>
            </select>
            <label for="motivo"><i class="bi bi-chat-quote"></i> Motivo de la entrega</label>
            <input type="text" name="motivo" placeholder="Nombre del evento">
            <label for="organizador"><i class="bi bi-person-gear"></i> Organizador</label>
            <input type="text" name="organizador" placeholder="Nombre del keko">
            <label for="cantidad"><i class="bi bi-box-seam"></i> Cantidad <b>(Para quitar ejemplo: -10)</b></label>
            <input type="number" name="cantidad" placeholder="Cantidad">
            <button type="submit" class="form-btn f-right">Enviar</button>
        </form>
        <?php
    if (isset($_POST['username']) && isset($_POST['tipomoneda']) && isset($_POST['motivo']) && isset($_POST['organizador']) && isset($_POST['cantidad'])) {
        #Sanamos los datos
        $user = mysqli_real_escape_string($link, strip_tags($_POST['username']));
        $tipomoneda = mysqli_real_escape_string($link, strip_tags(strtolower($_POST['tipomoneda'])));
        $motivo = mysqli_real_escape_string($link, strip_tags($_POST['motivo']));
        $organizador = mysqli_real_escape_string($link, strip_tags($_POST['organizador']));
        $cantidad = mysqli_real_escape_string($link, strip_tags($_POST['cantidad']));

        $codeError = 0;
        $saldoActual = 0;

        #Verificamos que no este vacia las variables ingresadas.
        if (!empty($user) && !empty($tipomoneda) && !empty($motivo) && !empty($organizador) && !empty($cantidad)) {

           #Vamos a crear consulta sobre el usuario ingresado
           $sql = "SELECT * FROM usuarios WHERE username = $user";
           $resultado = $link->query($sql);
           
            #Vamos a obtener nuestros datos
            $minombre = $_SESSION["username"];
            $dataSQL = "SELECT * FROM usuarios WHERE username = '$minombre'";
            $resultData = $link->query($dataSQL);
            if ($resultData) {
                while ($miData = mysqli_fetch_array($resultData)) {
                    $miRango = $miData['rank'];
                }

                #Sacaremos nombre de nuestro rango
                $rangoSQL = "SELECT * FROM rangos WHERE id = $miRango";
                $resultRango = $link->query($rangoSQL);
                if ($resultRango) {
                    while ($dataRango = mysqli_fetch_array($resultRango)) {
                        $nameMyRank = $dataRango['nombre'];
                    }
                } else {
                    echo "Error al ejecutar la consulta: " . mysqli_error($link);
                }
            } else {
                echo "Error al ejecutar la consulta: " . mysqli_error($link);
            }

           
           if (!$resultado->num_rows > 0) {
            if ($tipomoneda == "fichas" || $tipomoneda == "puntos" || $tipomoneda == "tokens") {
                $userSQL = "SELECT * FROM usuarios WHERE username = '".$user."'";
                $resultadoUser = $link->query($userSQL);
                if (!$resultadoUser) {
                    // Manejar el error
                    echo "Error al obtener los datos del usuario: " . mysqli_error($link);
                } else {
                    while ($row = mysqli_fetch_array($resultadoUser)) {
                        $saldoActual = $row[$tipomoneda];
                    }
                }                
                if (is_numeric($cantidad)) {

                    /*#Enviamos mensaje de que se enviaron el premio
                    $mensaje = "<h5><img src=$url/images/$tipomoneda.png> Has recibido $cantidad $tipomoneda departe de $minombre (<b>$nameMyRank</b>) como bonificacion. ($fecha_log)</h5>";
                    $asunto = "Premio de evento";
                    $msjSQL = "INSERT INTO usuarios_mensajes_privados (user_enviado,rango,user_recibido,asunto,mensaje,fecha,razon,organizador) VALUES ('".$minombre."','".$nameMyRank."','".$user."','".$asunto."','".$mensaje."','".$fecha_log."','".$motivo."','".$organizador."')";
                    $link->query($msjSQL);*/

                    #Enviar premio
                    $sqlUpdate = "UPDATE usuarios SET $tipomoneda = $saldoActual + $cantidad WHERE username = '".$user."'";
                    $link->query($sqlUpdate);

                    #Guardar log
                    $accion = "Envio $cantidad de $tipomoneda a $user";
                    $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
                    $link->query($enviar_log);

                    if ($cantidad < 0) {
                        $codeError = 29; // Quitaste correctamente
                    } else {
                        $codeError = 28; // Enviadas correctamente
                    }
                } else {
                    $codeError = 3; //En cantidad ingresaron letras.
                }
            } else {
                $codeError = 2; //Error proceso formulario
            }
           }  else {
            $codeError = 1; // El usuario ingresado no existe.
           }

        } else {
            $codeError = 6; // Casilla vacia
        }
    }
    ?>
    <center>
        <?php
        switch ($codeError) {
            case 1:
                echo '<div class="form-alert form-error"><p><i class="bi bi-info-circle"></i> El nombre ingresado no existe.</p></div>';
                break;
            case 2:
                echo  '<div class="form-alert form-error"><p><i class="bi bi-info-circle"></i> Error al procesar formulario.</p></div>';
                break;
            case 3:
                echo  '<div class="form-alert form-error"><p><i class="bi bi-info-circle"></i> Error en cantidad solo se permiten numeros.</p></div>';
                break;
            case 4:
                echo  '<div class="form-alert form-error"><p><i class="bi bi-info-circle"></i> No puedes dar una cantidad superior a 30 o inferior a 1.</p></div>';
                break;
            case 5:
                echo  '<div class="form-alert form-error"><p><i class="bi bi-info-circle"></i> No puedes dar una cantidad inferior a 1.</p></div>';
                break;
            case 6:
                echo  '<div class="form-alert form-error"><p><i class="bi bi-info-circle"></i> No puedes dejar ninguna casilla vacia.</p></div>';
                break;
            case 28:
                echo  '<div class="form-alert form-aceptado"><p><i class="bi bi-info-circle"></i> El premio fue enviado correctamente.</p></div>';
                break;
            case 29:
                echo  "<div class='form-alert form-aceptado'><p><i class='bi bi-info-circle'></i> Quitaste correctamente los $tipomoneda.</p></div>";
                break;
            default:
                echo '<div class="form-alert form-informacion"><p><i class="bi bi-info-circle"></i> Llena el formulario con los datos requeridos. :)</p></div>';
                break;
        }
        ?>
    </center>
   </div>
</section>

<?php
if ($_POST['cantidad'] && $_POST['user'] && $_POST['opcion']) {
    
    $consulta1 = $link->query("SELECT * FROM usuarios WHERE username = '" . $_POST['user'] . "'");
    
    
    $resultados = mysqli_num_rows($consulta1);
    
    $revisar1 = $_POST['cantidad'];
    
    
    
    if ($resultados == 0) {
        
        echo "<br><div class='alerta-no'>$lang[383]</div>";
        
    }
    
    if ($revisar1 >= '6001') {
        
        echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Solo puedes enviar una cantidad maxima de 6000 como Staff.</div>";
        
    } elseif ($resultados == 0) {
        echo "<br><div class='alerta-no'>$lang[383]</div>";
    }
    
    else {
        
        $fecha_log = date ('d-M-Y h:i:s', time());
        
        $rango_mio = $link->query("SELECT * FROM usuarios WHERE username = '" . $username . "'");
        
        while ($row = mysqli_fetch_array($rango_mio)) {
            
            $rango_mio_1 = $row['rank'];
            
        }
        
        
        
        $rango_name = $link->query("SELECT * FROM rangos WHERE id = '" . $rango_mio_1 . "'");
        
        while ($row = mysqli_fetch_array($rango_name)) {
            
            $rango = $row['nombre'];
            
        }
        
        
        
        $mensaje = "<h5><img src=https://kuinz-fansite.space/images/$_POST[opcion].png> Has recibido $_POST[cantidad] $_POST[opcion] $tipo departe de $username (<b>$rango</b>) como bonificacion. ($fecha_log)</h5>";
        
        $asunto = "$lang[385]";
        
        $razon = "$_POST[razon]";
        
        $organizador = "$_POST[organizador]";
        
        while ($row = mysqli_fetch_array($consulta1)) {
            
            $fichas = $row['"$tipo"'];
            
        }
        
        $tipo = "$_POST[opcion]";
        
        $cantidad = $_POST['cantidad'];
        
        $actualizar = "UPDATE usuarios SET $tipo = $tipo +'$cantidad' WHERE username = '" . $_POST['user'] . "' ";
        
        $link->query($actualizar);
        
        
        
        $user_recibido = $_POST['user'];
        
        
        
        $enviar_mensaje_1 = "INSERT INTO usuarios_mensajes_privados (user_enviado,rango,user_recibido,asunto,mensaje,fecha,razon,organizador) VALUES ('" . $username . "','" . $rango . "','" . $user_recibido . "','" . $asunto . "','" . $mensaje . "','" . $fecha_log . "','Bonificacion','Staff')";
        
        $link->query($enviar_mensaje_1);
        
        
        
        // Guardar acción en Logs si se ha iniciado sesión
        $accion = "$lang[379] $_POST[cantidad] $lang[386] $_POST[user]";
        $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
        $link->query($enviar_log);
        
        // Log guardado en Base de datos
        
        echo "<br><div class='alert contenidoal' style='top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button><img src='https://kekocity.com/imagesnew/game/icono.png'> Entregastes $_POST[cantidad] $tipo a <b>$_POST[user]</b> $lang[71]</div>";
        
    }
    
}

?>

<?php include "../Templates/Footer.php";?>