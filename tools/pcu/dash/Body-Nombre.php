<?php
#Cerramos conexiones sin logeo
if (isset($_SESSION['logeado']) != "Si") {
  exit();
}
?>
<?php

#Verificamos que tipo de pago es
if ($tipo == 1) {
    $tipoPago = 'Money';
} elseif ($tipo == 2) {
    $tipoPago = 'Moneda';
} elseif ($tipo == 3) {
    $tipoPago = 'totems';
}
$tengoCantidad = $row[$tipoPago];

function validarCadena($cadena)
{
    if (strlen($cadena) < 3 || strlen($cadena) > 12) {
        return false;
    }
    $permitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    for ($i = 0; $i < strlen($cadena); $i++) {
        if (strpos($permitidos, substr($cadena, $i, 1)) === false) {
            return false;
        }
    }
    return true;
}

function validarCadenaEdad($cadena)
{
    if (strlen($cadena) > 2) {
        return false;
    }
    $permitidos = "0123456789";
    for ($i = 0; $i < strlen($cadena); $i++) {
        if (strpos($permitidos, substr($cadena, $i, 1)) === false) {
            return false;
        }
    }
    return true;
}
?>

<div class="page-heading">
   <div class="page-title">
      <div class="row">
         <div class="col-12 col-md-6 order-md-1 order-last">
            <h3>Cambio de nombre</h3>
            <p class="text-subtitle text-muted">Aqui puedes cambiar nombre de usuario,  recuerda estar desconectado del juego.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dash.php">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Cambiar nombre</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <section class="section d-flex justify-content-center">
      <div class="col-8 col-md-5">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title"><img src="/images/municipalidad.jpg" width="100%"></h4>
            </div>
            <div class="card-body">
                <p style="color:#006600; font-weight: bold; margin-left: 20px;">* <?=$nombre?> entra a la municipalidad y se acerca a la recepción.</p>
                <hr>
                <p><img src="/images/icons/agregar_dialogo.png"> <?=$nombre?> dice: Hola, vengo a cambiar mi nombre.</p>
                <hr>
                <p><img src="/images/icons/playerdialogo.png"> Recepcionista: Hola señor, recuerde que este tramite lo puede hacer gratis solamente una vez, luego tendrá que pagar.</p>
                <hr>
                <p><img src="/images/icons/agregar_dialogo.png"> <?=$nombre?> dice: Si, no hay problema.</p>
                <hr>
                <form action="" method="post">
                    <p><img src="/images/icons/playerdialogo.png"> Recepcionista dice: Muy bien, ¿con qué nombre quiere quedar registrado?</p>
                    <hr>
                    <p><img src="/images/icons/agregar_dialogo.png"> <?=$nombre?> dice: <input type="text" maxlength="12" name="nombre" id="input"></p>
                    <hr>
                    <p><img src="/images/icons/playerdialogo.png"> Recepcionista dice: ¿Y el apellido?</p>
                    <hr>
                    <p><img src="/images/icons/agregar_dialogo.png"> <?=$nombre?> dice: <input type="text" maxlength="12" name="apellido" id="input"></p>
                    <hr>
                    <p><img src="/images/icons/playerdialogo.png"> Recepcionista dice: ¿Podría decirme su edad?</p>
                    <hr>
                    <p><img src="/images/icons/agregar_dialogo.png"> <?=$nombre?> dice: <input type="number" max="99" name="edad" id="input"></p>
                    <hr>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary"> Firmar</button>
                    </div>
                    <br>
                    <center><p style="font-weight: bold; font-size:20px;">(Costo del cambio de nombre:
                    <?php 
                    switch ($tipoPago) {
                        case 'Money':
                            $costo2 = number_format($costo);
                            echo "<span style=\"color: #47D531;\">$$costo2</span>";
                        break;
                        case 'Moneda':
                            echo "<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-coin' viewBox='0 0 16 16' style='color:#DCCB40;'> <path d='M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z'/> <path d='M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z'/> <path d='M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z'/></svg> 
                            <span style=\"color:#DCCB40;\">$costo</span> $moneda_server's";
                        break;
                        case 'totems':
                            echo "$costo Totem's";
                        break;
                    }
                    ?>)</p>
                </form>
                <?php
                   if (isset($_POST['nombre']) && isset($_POST['apellido']) && isset($_POST['edad'])) {
                    
                     #Sanamos
                     $nombrenew = htmlentities(strip_tags($_POST['nombre']));
                     $apellidonew  = htmlentities(strip_tags($_POST['apellido']));
                     $edadform = htmlentities($_POST['edad']);
                     
                     $namedp = $nombrenew . "_"  .  $apellidonew;
                     $nameforo = $nombrenew . " " . $apellidonew;
                     
                     if ($estado == 1) {
                         echo 'Desconectate del juego para proceder con el cambio de nombre.';
                     } elseif (empty($nombrenew) || empty($apellidonew)  || empty($edadform)) {
                        echo 'No dejes ninguna casilla vacia, llenalas todas.';
                     } elseif (strlen($nombrenew) >=  12 || strlen($nombrenew) >=  12) {
                        echo 'La suma de letras entre el nombre y el apellido, no puede ser superior a 12.';
                     } elseif(strpos($nombrenew, " ") && strpos($apellidonew, " ") && strpos($edadform, " ")){
                        echo 'No pueden haber espacios.';
                     }elseif($edadform <= 14 || $edadform >= 99){
                        echo 'La edad ingresada no es correcta.';
                     } elseif (validarCadena($nombrenew) == true && validarCadena($apellidonew) ==  true && validarCadenaEdad($edadform)){
                        if ($tengoCantidad < $costo) {
                            echo "No tienes te alcanza para el cambio de nombre, necesitas $costo $tipoPago";
                        } else {
                            $stm = $conn->prepare(
                                "SELECT * FROM usuarios WHERE Username = :nombrecompleto"
                            );
                            $stm->bindParam(
                                ":nombrecompleto",
                                $namedp
                            );
                            $stm->execute();
                            $num_rows = $stm->rowCount();
                            if ($num_rows == 1) {
                                echo "Ya una persona se llama <b>$namedp</b> en el juego.";
                            } else {

                                #Modificamos antecedentes
                                $stmt3 = $conn->prepare("UPDATE antecedentes SET Oficial = :newname WHERE Oficial=:nombre");
                                $stmt3->execute([
                                    ':newname' => $namedp,
                                    ':nombre' => $nombre
                                ]);

                                #Modificamos Logros
                                $stmt4 = $conn->prepare("UPDATE achievements SET Nombre_Jugador = :nombrecompleto WHERE Nombre_Jugador = :nombre");
                                $stmt4->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':nombre' => $nombre
                                ]);

                                #Modificamos Prendas
                                $stmt5 = $conn->prepare("UPDATE prendas SET Propietario = :nombrecompleto WHERE Propietario=:nombre");
                                $stmt5->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':nombre' => $nombre
                                ]);

                                #Modificamos log_transiciones (Enviador)
                                $stmt6 = $conn->prepare("UPDATE log_transacciones SET Enviador = :nombrecompleto WHERE Enviador=:nombre");
                                $stmt6->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':nombre' => $nombre
                                ]);

                                #Modificamos log_transiciones (Receptor)
                                $stmt7 = $conn->prepare("UPDATE log_transacciones SET Receptor = :nombrecompleto WHERE Receptor=:nombre");
                                $stmt7->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':nombre' => $nombre
                                ]);

                                #Modificamos logs_web
                                $stmt8 = $conn->prepare("UPDATE logs_web SET usuario = :nombrecompleto WHERE id_user=:id");
                                $stmt8->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':id' => $id
                                ]);

                                #Modificamos log_ventas (Vendedor)
                                $stmt9 = $conn->prepare("UPDATE log_ventas SET Vendedor = :nombrecompleto WHERE Vendedor=:nombre");
                                $stmt9->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':nombre' => $nombre
                                ]);

                                #Modificamos log_ventas (Comprador)
                                $stmt10 = $conn->prepare("UPDATE log_ventas SET comprador = :nombrecompleto WHERE comprador=:nombre");
                                $stmt10->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':nombre' => $nombre
                                ]);

                                /*#Modificamos smf_members
                                $stmt11 = $conn->prepare("UPDATE smf_members SET real_name = :nombreforo ,member_name= :nombrecompleto ,passwd=SHA1(CONCAT(LOWER(:nombrecompleto), :clave)) WHERE member_name = :nombre");
                                $stmt11->execute([
                                    ':nombrecompleto' => $namedp,
                                    ':nombreforo' => $nameforo,
                                    ':clave'=> $mypassword,
                                    ':nombre' => $nombre
                                ]);*/

                                #Modificamos si tenemos faccion
                                if ($id_rango == 8 && $id_faccion > 0) {
                                    $stmt12 = $conn->prepare("UPDATE facciones SET Lider = :nombrecompleto WHERE Lider = :nombre");
                                    $stmt12->execute([
                                        ':nombrecompleto' => $namedp,
                                        ':nombre' => $nombre
                                    ]);
                                }

                                #Modificamos propiedades
                                if ($CasaID > 0 || $CasaID2 > 0) {
                                    $stmt13 = $conn->prepare("UPDATE propiedades SET Propietario = :nombrecompleto WHERE Propietario = :nombre");
                                    $stmt13->execute([
                                        ':nombrecompleto' => $namedp,
                                        ':nombre' => $nombre
                                    ]);
                                }

                                #Le quitamos lo que costo el cambio de nombre
                                $stmt = $conn->prepare("UPDATE usuarios SET $tipoPago = $tipoPago-$costo WHERE ID=:id");
                                $stmt->execute([
                                    ':id' => $id
                                ]);
                                
                                #Enviamos el cambio de nombre
                                $stmt2 = $conn->prepare("UPDATE usuarios SET Username = :newname WHERE ID=:id");
                                $stmt2->execute([
                                    ':newname' => $namedp,
                                    ':id' => $id
                                ]);

                                #Guardar log_nombres
                                $env_log = "INSERT INTO logs_nombres (id_user,newname,oldname,fecha,ip) VALUES ('".$id."','".$namedp."','".$user_session."','".$fecha_hoy."','".$mi_ip."')";
                                $conn->query($env_log);

                                #Guardar logs_web
                                $accion = "Cambio su nombre de usuario";
                                $enviar_log = "INSERT INTO logs_web (id_user,usuario,accion,fecha,ip) values ('".$id."','".$user_session."','".$accion."','".$fecha_hoy."','".$mi_ip."')";
                                $conn->query($enviar_log);

                                
                                session_unset();
                                session_destroy();
                                echo '<script type="text/javascript">location.href ="../index";</script>';
                            }
                        }
                     } else {
                        echo 'Algo salio mal con el cambio de nombre =(';
                     }
                   }
                ?>
            </div></center>
        </div>
      </div>
   </section>
</div>
