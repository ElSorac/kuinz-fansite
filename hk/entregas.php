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
<section class="form-section">
<div class="form-new">
    <div class="form-head">
        <i class="bi bi-gift-fill"><font>Enviar premio al keko ganador.</font></i>
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
        <label for="cantidad"><i class="bi bi-box-seam"></i> Cantidad</label>
        <input type="number" name="cantidad" placeholder="Cantidad (Max 30)">
        <button type="submit" class="form-btn f-right">Enviar</button>
    </form>
    <details>
        <summary>Recuerda leer las normas antes de enviar. <b> (Haz click aqui)</b></summary>
        <div class="form-info">
            <font size="4px"> Detalles del envio de fichas/puntos.</font>
            <br>
            <br>
            <p>1. Recuerda que esta totalmente prohibido regalar fichas/puntos.</p>
            <p>2. Es obligatorio poner la razon del envio de fichas/puntos.</p>
            <p>3. Es totalmente obligatorio poner el nombre del que realizo el evento donde se entregaron las fichas/puntos.</p>
            <br>
            <p><b>Nota:</b> Al momento de poner el organizador de evento, si tiene rango oficial como Becario, Helper o Moderador, solo ponen su nombre y ya.</p>
            <hr>
            <font size="4px"> Cantidad de fichas/puntos que se dan en los siguientes eventos.</font>
            <br><br>
            <p><b>Sillas Locas:</b> 8 fichas + 4 puntos</p>
            <p><b>Bingo:</b> 10 fichas + 5 puntos</p>
            <p><b>Dado Asesino:</b> 10 fichas + 6 puntos</p>
            <p><b>Pizza Asesina o eventos con comidas:</b> 12 fichas + 8 Puntos</p>
            <p><b>LLega al trono:</b> 10 fichas + 5 puntos</p>
        </div>
     </details>
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
                    if ($miRango >= 5) { //Para staff

                        #Enviamos mensaje de que se enviaron el premio
                        $mensaje = "<h5><img src=$url/images/$tipomoneda.png> Has recibido $cantidad $tipomoneda departe de $minombre (<b>$nameMyRank</b>) como bonificacion. ($fecha_log)</h5>";
                        $asunto = "Premio de evento";
                        $msjSQL = "INSERT INTO usuarios_mensajes_privados (user_enviado,rango,user_recibido,asunto,mensaje,fecha,razon,organizador) VALUES ('".$minombre."','".$nameMyRank."','".$user."','".$asunto."','".$mensaje."','".$fecha_log."','".$motivo."','".$organizador."')";
                        $link->query($msjSQL);

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
                        if (($cantidad <= 31 && $cantidad > 0) && ($miRango <= 4 || $miRango >= 3)) {

                            #Enviamos mensaje de que se enviaron el premio
                            $mensaje = "<h5><img src=./images/$tipomoneda.png> Has recibido $cantidad $tipomoneda departe de $minombre (<b>$nameMyRank</b>) como bonificacion. ($fecha_log)</h5>";
                            $asunto = "Premio de evento";
                            $msjSQL = "INSERT INTO usuarios_mensajes_privados (user_enviado,rango,user_recibido,asunto,mensaje,fecha,razon,organizador) VALUES ('".$minombre."','".$nameMyRank."','".$user."','".$asunto."','".$mensaje."','".$fecha_log."','".$motivo."','".$organizador."')";
                            $link->query($msjSQL);
                            //echo "Error: " . mysqli_error($link);
    
                            #Enviar premio
                            $sqlUpdate = "UPDATE usuarios SET $tipomoneda = $saldoActual + $cantidad WHERE username = '".$user."'";
                            $link->query($sqlUpdate);
                            //echo "Error: " . mysqli_error($link);
                            
                            #Guardar log
                            $accion = "Envio $cantidad de $tipomoneda a $user";
                            $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
                            $link->query($enviar_log);
    
                            $codeError = 28;
                        } else {
                            $codeError = 4; //No puedes dar una cantidad superior a 30 o inferior a 1.
                        }
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
<?php include "../Templates/Footer.php";?>