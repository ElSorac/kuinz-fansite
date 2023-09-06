<?php
#Cerramos conexiones sin logeo
if (isset($_SESSION['logeado']) != "Si") {
  exit();
}
?>
            <!--COMIENZA CONTENIDO-->
            <div class="page-heading" bis_skin_checked="1">
                <div class="page-title" bis_skin_checked="1">
                    <div class="row" bis_skin_checked="1">
                        <div class="col-12 col-md-6 order-md-1 order-last" bis_skin_checked="1">
                            <h3>Dashboard</h3>
                            <p class="text-subtitle text-muted">Datos de tu perfil</p>
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first" bis_skin_checked="1">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Perfil</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <section class="section">
                    <div class="row" id="basic-table">
                        <div class="col-10 col-md-5">
                            <div class="card">
                                <div class="card-body py-4 px-5">
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-xl">
                                            <img src="/images/skin/<?php echo $skin;?>.png">
                                            <span class="avatar-status bg-<?php echo $status;?>"></span>
                                        </div>
                                        <div class="ms-3 name">
                                            <h5 class="font-bold"><?php echo $nombre;?></h5>
                                            <h6 class="text-muted mb-0">Mision: "<?php echo $mision;?>"</h6>
                                        </div>
                                    </div>
                                    <br>
                                    <style>
                                        .card-content p{
                                            margin: 5px;
                                        }
                                        .card-content p i{
                                            font-size: 16px;
                                        }
                                    </style>
                                    <div class="card-content">
                                        <h5>Informacion de tu cuenta</h5>
                                        <hr>
                                        <p><i class="bi bi-people"></i> <b>Banda:</b> <?php if($id_banda == 0){ echo 'Ninguna';}else{ echo $banda; }?></p>
                                        <p><i class="bi bi-diagram-2"></i> <b>Rango banda:</b> <?php if($id_rango == 0){ echo 'Ninguno';}else{ echo $rango; }?>
                                        </p>
                                        <p><img src="/images/icons/vip.png" width="16px"> <b>Tipo de VIP:</b> <?php echo $soyvip; ?></p>
                                        <p><i class="bi bi-hammer"></i> <b>Sanciones:</b> <?php if($saciones == 0) { echo 'No hay sanciones';} elseif($saciones == 1) { echo '1 vez';} else { echo $saciones?> veces<?php } ?></p>
                                        <p><i class="bi bi-shield-slash"></i> <b>Baneado:</b> <?php if($baneado == 0) { echo 'No';} else { echo 'Si';?> <b>(Razon: <?php echo $razonBan?>) <?php } ?></b></p>
                                        <p><i class="bi bi-mailbox2"></i> <b>Correo:</b> <?php echo $correo?></p>
                                        <p><i class="bi bi-clock"></i> <b>Ultima conexion:</b> <?php echo $ultimaVez?></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-12 col-xl-12">
                                <div class="card">
                                    <div class="card-content">
                                        <div class="card-body">
                                            <h5 class="card-title">Cambia tu contraseña</h5>
                                            <div class="alert alert-light-warning color-warning"><i class="bi bi-exclamation-triangle"></i> Recuerda que tu clave debe ser segura, no la compartas con nadie. <details>Ningun miembro del equipo staff te pedira tu contraseña</details></div>
                                            <div class="form form-vertical">
                                                <form method="post" class="form-body">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="password-vertical">Contraseña actual</label>
                                                                <input type="password" id="password-vertical" class="form-control" name="password-actual" placeholder="Contraseña actual">
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="password-vertical">Contraseña nueva</label>
                                                                <input type="password" id="password-vertical" class="form-control" name="password" placeholder="Contraseña nueva">
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <label for="password-vertical">Repite Contraseña</label>
                                                                <input type="password" id="password-vertical" class="form-control" name="password-repeat" placeholder="Repite contraseña nueva">
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-12 d-flex justify-content-center">
                                                            <button type="submit" class="btn btn-primary me-1 mb-1">Cambiar</button> 
                                                        </div>
                                                    </div>
                                                </form>
                                                <br>
                                                <?php
                                                if (isset($_POST['password-actual']) && isset($_POST['password']) && isset($_POST['password-repeat'])) {
                                                    #Vamos a sanear los datos ingresados
                                                    $p_act = htmlentities(substr($_POST['password-actual'], 0, 150));
                                                    $pass_actual = strip_tags($p_act);
                                                    $pass_f = htmlentities(substr($_POST['password'], 0, 150));
                                                    $pass = strip_tags($pass_f);
                                                    $pass_f2 = htmlentities(substr($_POST['password-repeat'], 0, 150));
                                                    $pass_repeat = strip_tags($pass_f2);

                                                    if (empty($pass_actual) || empty($pass) || empty($pass_repeat)) {
                                                        $errorPassword =  "No puedes dejar ninguna casilla vacia.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    }
                                                    elseif ($pass_actual != $mypassword) {
                                                        $errorPassword =  "La contraseñas actual es erronea.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    }
                                                    elseif ((strlen($pass) < 6) && (strlen($pass_repeat) < 6)) {
                                                        $errorPassword =  "La calve debe tener al menos 6 Caracteres.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    }
                                                    elseif ((strlen($pass) > 16) && (strlen($pass_repeat) > 16)) {
                                                        $errorPassword =  "La contraseña no puede tener mas de 16 caracteres.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    }
                                                    elseif ((!preg_match('`[a-z]`',$pass)) && !preg_match('`[a-z]`',$pass_repeat)) {
                                                        $errorPassword =  "La contraseña debe tener al menos una letra en minuscula.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    }
                                                    elseif ((!preg_match('`[A-Z]`',$pass)) && !preg_match('`[A-Z]`',$pass_repeat)) {
                                                        $errorPassword =  "La contraseña debe tener al menos una letra en mayuscula.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    }
                                                    elseif ((!preg_match('`[0-9]`',$pass)) && !preg_match('`[0-9]`',$pass_repeat)) {
                                                        $errorPassword =  "La contraseña debe tener al menos un caracter numerico.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    }
                                                    elseif ($pass != $pass_repeat) {
                                                        $errorPassword =  "La contraseñas nuevas no coinciden.";
                                                        echo "<div class=\"alert alert-light-danger color-danger\"><i class=\"bi bi-exclamation-circle\"></i> $errorPassword</div>";
                                                    } else {
                                                        #Enviamos el cambio de contraseña
                                                        $stmt = $conn->prepare("UPDATE usuarios SET Password = :new_password WHERE id=:id");
                                                        $stmt->execute([
                                                            ':new_password' => $pass,
                                                            ':id' => $id
                                                        ]);

                                                        #Guardar logs_web
                                                        $accion = "Cambio su contraseña";
                                                        $enviar_log = "INSERT INTO logs_web (id_user,usuario,accion,fecha,ip) values ('".$id."','".$user_session."','".$accion."','".$fecha_hoy."','".$mi_ip."')";
                                                        $conn->query($enviar_log);

                                                        #Guardar logs_changepass
                                                        $enviar_log2 = "INSERT INTO logs_changepass (id_user,usuario,oldpassword,newpassword,fecha,ip) values ('".$id."','".$user_session."','".$mypassword."','".$pass."','".$fecha_hoy."','".$mi_ip."')";
                                                        $conn->query($enviar_log2);

                                                        
                                                        session_unset();
                                                        session_destroy();
                                                        echo '<script type="text/javascript">
                                                        location.href ="../index";
                                                        </script>';
                                                    }
                                                }
                                                ?>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-10 col-md-7">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Habilidades en trabajos</h4>
                                </div>
                                <div class="card-content">
                                    <!-- Table with no outer spacing -->
                                    <div class="table-responsive">
                                        <table class="table mb-0 table-lg">
                                            <thead>
                                                <tr>
                                                    <th>Trabajo</th>
                                                    <th>Nivel</th>
                                                    <th>Experiencia</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-bold-700">Camionero</td>
                                                    <td><?php echo $nivelCamionero?></td>
                                                    <td class="text-bold-500"><?php echo $expCamionero?>/50</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-bold-700">Mecanico</td>
                                                    <td><?php echo $nivelMecanico?></td>
                                                    <td class="text-bold-500"><?php echo $expMecanico?>/50</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-bold-700">Basurero</td>
                                                    <td><?php echo $nivelBasurero?></td>
                                                    <td class="text-bold-500"><?php echo $expBasurero?>/50</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-bold-700">Minero</td>
                                                    <td><?php echo $nivelMinero?></td>
                                                    <td class="text-bold-500"><?php echo $expMinero?>/50</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-bold-700">Armero</td>
                                                    <td><?php echo $nivelArmero?></td>
                                                    <td class="text-bold-500"><?php echo $expArmero?>/50</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-bold-700">Ladron</td>
                                                    <td><?php echo $nivelLadron?></td>
                                                    <td class="text-bold-500"><?php echo $expLadron?>/50</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-bold-700">Transportista</td>
                                                    <td><?php echo $nivelTransportista?></td>
                                                    <td class="text-bold-500"><?php echo $expTransportista?>/50</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-bold-700">Pescador</td>
                                                    <td><?php echo $nivelPescador?></td>
                                                    <td class="text-bold-500"><?php echo $expPescador?>/50</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <section class="section">
                    <div class="row" id="table-striped-dark">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-content">
                                    <div class="table-responsive">
                                        <table class="table table-striped table mb-1">
                                            <thead>
                                                <tr>
                                                    <th>Mi personaje</th>
                                                    <th>Mi inventario</th>
                                                    <th>Mis armas</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/dinero.png" class="noselect"> Dinero total: <span style="color: #47D531;">$<?php echo $dineroTotal ?></span></td>
                                                    <td class="text-bold-500"><img src="/images/icons/crack.png" class="noselect"> Crack: <span style="color:coral"><?php echo number_format($crack) ?><b>g</b></span></td>
                                                    <td class="text-bold-500"><img src="../images/icons/pistolas.png"> Pistola: <?php echo $a_pistola; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/nivel2.png" class="noselect"> Nivel: <?php echo $nivel ?></td>
                                                    <td class="text-bold-500"><img src="/images/icons/pildora.png" class="noselect"> Medicamentos: <?php echo number_format($remedios) ?></td>
                                                    <td class="text-bold-500"><img src="../images/icons/escopeta.png"> Escopeta: <?php echo $a_escopeta; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/reputacion.png" class="noselect"> Reputacion: <?php echo $reputacion ?>/<?php switch ($nivel) { case 1: echo 7; break; case 2: echo 12; break; case 3: echo 19; break; case 4: echo 31; break; case 5: echo 52; break; case 6: echo 86; break; case 7: echo 143; break; case 8: echo 239; break; case 9: echo 397; break; case 10: echo 662; break; case 11: echo 1103; break; case 12: echo 1838; break; case 13: echo 3063; break; case 14: echo 5105; break;}?></td>
                                                    <td class="text-bold-500"><img src="/images/icons/marihuana.png" class="noselect"> Marihuana: <span style="color:coral"><?php echo number_format($marihuana) ?><b>g</b></span></td>
                                                    <td class="text-bold-500"><img src="../images/icons/subfusil.png"> Subfusil: <?php echo $a_subfusil; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/arrestado.png" class="noselect"> Arrestado: <?php if($arrestado == 0) { echo 'No hay arrestos';} else { echo $arrestado;?> veces<?php } ?></td>
                                                    <td class="text-bold-500"><img src="/images/icons/guia.png" class="noselect"> Guia telefonica: <?php if($guia == 0) { echo 'No';} else { echo 'Si';}?></td>
                                                    <td class="text-bold-500"><img src="../images/icons/asalto.png"> Asalto: <?php echo $a_asalto; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/tiempo.png" class="noselect"> Horas jugadas: <?php echo $horasjugadas ?></td>
                                                    <td class="text-bold-500"><img src="/images/icons/piezas.png" class="noselect"> Piezas de armas: <?php echo number_format($piezas) ?></td>
                                                    <td class="text-bold-500"><img src="../images/icons/rifle.png"> Rifle: <?php echo $a_rifle; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/tel.png" class="noselect"> Telefono: <?php if($numero == 0) {echo 'No tiene';}else{ echo $numero;}?> </td>
                                                    <td class="text-bold-500"><img src="/images/icons/herramientas.png" class="noselect"> Respuestos: <?php echo $repuestos ?> </td>
                                                    <td class="text-bold-500"><img src="../images/icons/armas-blancas.png"> Arma blanca: <?php echo $arma_blanca; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/corazon.png" class="noselect"> Salud: <?php echo $vida ?>/100</td>
                                                    <td class="text-bold-500"><img src="/images/icons/radiocomunicador.png" class="noselect"> Radio comunicador: <?php if($radio == 0) { echo 'No';} else { echo 'Si';}?></td>
                                                    <td class="text-bold-500"><img src="../images/icons/granada.png"> Granada: <?php echo $a_granada; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"><img src="/images/icons/blindaje.png" class="noselect"> Chaleco antibala: <?php echo $chaleco ?>/100</td>
                                                    <td class="text-bold-500"><img src="/images/icons/totemx16.png" class="noselect">Totems: <?php echo number_format($totems) ?></td>
                                                    <td class="text-bold-500"><img src="../images/icons/regalos.png"> Regalos: <?php echo $a_regalo; ?></tr>
                                                <tr>
                                                    <td class="text-bold-500"></td>
                                                    <td class="text-bold-500"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin" viewBox="0 0 16 16" style="color:#DCCB40;"> <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/> <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/> <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/></svg>
                                                         Monedas: <?php echo number_format($monedas) ?></td>
                                                    <td class="text-bold-500"><img src="../images/icons/camara.png"> Camara: <?php echo $a_camara; ?></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                    </div>
                </section>
            </div>