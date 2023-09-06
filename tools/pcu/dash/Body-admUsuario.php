<?php
   #Cerramos conexiones sin logeo
   if (isset($_SESSION['logeado']) != "Si") {
     exit();
   }
?>
<script>
function admOpcion(mostrar) {
    switch(mostrar){
        case 'sancionar':
            document.getElementById('admOpcionesSancion').style.display = '';
            document.getElementById('admOpcionesBanOff').style.display = 'none';
            document.getElementById('admOpcionesBan').style.display = 'none';
            document.getElementById('admOpcionesUnban').style.display = 'none';
        break;
        case 'banear':
            document.getElementById('admOpcionesSancion').style.display = 'none';
            document.getElementById('admOpcionesBanOff').style.display = 'none';
            document.getElementById('admOpcionesUnban').style.display = 'none';
            document.getElementById('admOpcionesBan').style.display = '';
        break;
        case 'banearoff':
            document.getElementById('admOpcionesSancion').style.display = 'none';
            document.getElementById('admOpcionesBan').style.display = 'none';
            document.getElementById('admOpcionesUnban').style.display = 'none';
            document.getElementById('admOpcionesBanOff').style.display = '';
        break;
        case 'unban':
            document.getElementById('admOpcionesSancion').style.display = 'none';
            document.getElementById('admOpcionesBan').style.display = 'none';
            document.getElementById('admOpcionesBanOff').style.display = 'none';
            document.getElementById('admOpcionesUnban').style.display = '';
        break;
    }
}
</script>
<div class="page-heading">
  <div class="page-title">
    <div class="row">
      <div class="col-12 col-md-6 order-md-1 order-last">
        <h3>Buscar usuario</h3>
        <p class="text-subtitle text-muted">Ejecuta acciones en la cuenta de usuario</p>
      </div>
      <div class="col-12 col-md-6 order-md-2 order-first">
        <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="dash">Dashboard</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Usuarios</li>
          </ol>
        </nav>
      </div>
    </div>
  </div>
  <section>
    <div class="row">
      <div class="col-12 d-flex justify-content-center">
        <div class="col-md-6">
          <div class="card">
            <div class="card-header">
              <h4 class="card-title">Buscar usuario</h4>
            </div>
            <div class="card-content">
              <div class="card-body">
                <form class="form form-vertical">
                  <div class="form-body">
                    <div class="col-12">
                      <form action="" method="get">
                        <div class="form-group has-icon-left">
                          <label for="first-name-icon">Usuario</label>
                          <div class="position-relative">
                            <input type="text" class="form-control" name="perfil" placeholder="Nombre_Apellido" id="first-name-icon">
                            <div class="form-control-icon">
                              <i class="bi bi-person"></i>
                            </div>
                          </div>
                        </div>
                    </div>
                    <div class="col-12 d-flex justify-content-end">
                      <button type="submit" class="btn btn-primary me-1 mb-1">Buscar</button>
                      <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                    </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <?php
  if (isset($_GET['perfil'])) {
    #Verificamos si existe
    $pNombreT1 = $_GET['perfil'] ? substr($_GET['perfil'], 0, 60) : '';
    $pNombrePurgeT1 = htmlentities(strip_tags($pNombreT1));
    $consT1 = $conn->query('SELECT * FROM usuarios WHERE Username = "' . $pNombrePurgeT1 . '"');
    $pUserExiste = $consT1->fetchColumn();

    if ($pUserExiste > 0) {

        $pNombre = $_GET['perfil'] ? substr($_GET['perfil'], 0, 60) : '';
        $pNombrePurge = htmlentities(strip_tags($pNombre));

        $consU2 = $conn->query('SELECT * FROM usuarios WHERE Username = "' . $pNombrePurge . '"');
        $dataUser = $consU2->fetch();
        $pIP = $dataUser['IP'];
        $pID_Banda = $dataUser['Faccion'];
        $pID_Rango = $dataUser['Rango'];
        $pEstado = $dataUser['Online'];

        //Hacemos consulta
        $ingresos = $conn->prepare("SELECT * FROM log_ingresos WHERE Nombre = :nombre ORDER BY ID DESC LIMIT 1");
        $ingresos->bindParam(':nombre', $pNombrePurge);
        $ingresos->execute();
        $dataIngresos= $ingresos->fetch();
        
        $pUltimaVez = substr($dataIngresos['Fecha'],0,22);

        //Sacar estado en el juego
        if ($pEstado == 0 || $pEstado > 1 || $pEstado < 0 || $pEstado == NULL) {
            $pStatus = 'danger';
        } else {
            $pStatus = 'success';
        }

        //Vamos obtener los datos de la banda
        $cons = $conn->query('SELECT * FROM facciones WHERE id = "' .$pID_Banda. '"');
        while($dataBanda = $cons->fetch()) {
            $pBanda = $dataBanda['Nombre'];
            $rango1 = $dataBanda['Rango1'];
            $rango2 = $dataBanda['Rango2'];
            $rango3 = $dataBanda['Rango3'];
            $rango4 = $dataBanda['Rango4'];
            $rango5 = $dataBanda['Rango5'];
            $rango6 = $dataBanda['Rango6'];
            $rango7 = $dataBanda['Rango7'];
            $rango8 = $dataBanda['Rango8'];
        }

        //Verificamos el nombre del rango.
        if ($pID_Rango == 1) {
            $pRango = $rango1;
        }
        elseif ($pID_Rango == 2) {
            $pRango = $rango2;
        }
        elseif ($pID_Rango == 3) {
            $pRango = $rango3;
        }
        elseif ($pID_Rango == 4) {
            $pRango = $rango4;
        }
        elseif ($pID_Rango == 5) {
            $pRango = $rango5;
        }
        elseif ($pID_Rango == 6) {
            $pRango = $rango6;
        }
        elseif ($pID_Rango == 7) {
            $pRango = $rango7;
        }
        elseif ($pID_Rango == 8) {
            $pRango = $rango8;
        }
        elseif ($pID_Rango > 8 || $pID_Rango < 0) {
            $pRango  = "Ninguno";
        }

        //Verificamos que si no existe la banda salte lo siguiente.
        if ($pID_Banda < 0) {
            $pBanda = 'Ninguna';
        }


        $consU = $conn->query('SELECT * FROM usuarios WHERE Username = "' . $pNombre . '"');
        while ($data = $consU->fetch()) {
            $pNombre = $data['Username'];
            
            $pSkin = $data['Skin'];
            $pVip = $data['VIP'];
            $pSanciones = $data['Sanciones'];
            $pBaneado = $data['Baneado'];
            $pBanRazon = $data['razon'];
            $pCorreo = $data['Email'];
            $pNivelAdmin = $data['Admin'];
            $pVida = $data['Vida'];
            $pChaleco = $data['Chaleco'];
            $pCrack = $data['Crack'];
            $pTotem = $data['totems'];
            $pMarihuana = $data['Marihuana'];
            $pMedicinas = $data['Medicamentos'];
            $pPiezas = $data['Materiales'];
            $pMonedas = $data['Moneda'];
            $pNumero = $data['Numero'];
            $pArrestos = $data['arrestado'];
            $pNivel = $data['Nivel'];
            $pHorasJugadas = $data['horasjugadas'];
            $pDineroBanco = $data['Banco'];
            $pDineroMano = $data['Money'];
            $pDineroTotal = number_format($pDineroBanco + $pDineroMano);

            //Que tipo de VIP
            if ($pVip == 0 || $pVip > 2 || $pVip == NULL || $pVip < 0) {
                $pVipUser = "No";
            } elseif ($pVip == 1) {
                $pVipUser = "VIP1";
            } elseif ($pVip == 2) {
                $pVipUser = "VIP2";
            }
            
            //Sacar nombre rango
            if ($pNivelAdmin == 0) {
                $pRangoADM = "Usuario";
            } elseif ($pNivelAdmin == 1) {
                $pRangoADM = "Ayudante";
            } elseif ($pNivelAdmin == 2) {
                $pRangoADM = "Moderador de Dudas";
            } elseif ($pNivelAdmin == 3) {
                $pRangoADM = "Moderador del Juego";
            } elseif ($pNivelAdmin == 4) {
                $pRangoADM = "Moderador Global";
            } elseif ($pNivelAdmin == 5) {
                $pRangoADM = "Administrador";
            } elseif ($pNivelAdmin == 6) {
                $pRangoADM = "Encargado";
            } elseif ($pNivelAdmin == 7) {
                $pRangoADM = "Fundador";
            } elseif ($pNivelAdmin > 8 || $pNivelAdmin < 0 || $pNivelAdmin == NULL) {
                $pRangoADM = "Usuario";
            }    
  ?>
  <section id="usuario">
    <div class="row">
      <div class="col-6 col-md-6">
        <div class="card">
          <div class="card-header">
            <h4 class="card-title">Perfil de <?=$pNombre?> <sup>(<?=$pRangoADM?>) <span href="#" class="btn icon btn-<?=$pStatus?>"><i data-feather="times"></i></span> </sup></h4>
            <p class="text-subtitle text-muted">Esta es la informacion del usuario. (No compartir con otra persona que no sea del staff)</p>
            <div class="d-flex justify-content-center">
              <img src="/images/skin/<?=$pSkin?>.png">
            </div>
          </div>
          <div class="card-body">
            <p>
              <i class="bi bi-people"></i>
              <b>Banda:</b> <?php if($pID_Banda == 0){ echo 'Ninguna';}else{ echo $pBanda; }?>
            </p>
            <p>
              <i class="bi bi-diagram-2"></i>
              <b>Rango banda:</b> <?php if($pID_Rango == 0){ echo 'Ninguno';}else{ echo $pRango; }?>
            </p>
            <p>
              <img src="/images/icons/vip.png" width="16px">
              <b>Tipo de VIP:</b> <?php echo $pVipUser; ?>
            </p>
            <p>
              <i class="bi bi-hammer"></i>
              <b>Sanciones:</b> <?=$pSanciones?>
            </p>
            <p>
              <i class="bi bi-shield-slash"></i>
              <b>Baneado:</b> <?php if($pBaneado == 0) { echo 'No';} else { echo 'Si';?> <b>(Razon: <?php echo $pBanRazon?>) <?php } ?> </b>
            </p>
            <p>
              <i class="bi bi-mailbox2"></i>
              <b>Correo:</b> <?php echo $pCorreo?>
            </p>
            <P>
              <i class="bi bi-hdd-network"></i>
              <b>Direcion IP:</b> <?php if($nivelAdmin >= 6){ echo $pIP;} else {echo "***.***.***.***";}?>
            </P>
            <p>
              <i class="bi bi-clock"></i>
              <b>Ultima conexion:</b> <?php echo $pUltimaVez?>
            </p>
          </div>
        </div>
        <div class="card">
          <div class="card-header">
            <h6 class="card-title">Inventario de <?=$pNombre?> <sup>(<?=$pRangoADM?>) <span href="#" class="btn icon btn-<?=$pStatus?>"><i data-feather="times"></i></span> </sup> </h6>
          </div>
          <div class="card-body custom">
            <p>
              <img src="/images/icons/corazon.png" class="noselect"> Salud: <?php echo $pVida ?>/100
            </p>
            <p>
              <img src="/images/icons/blindaje.png" class="noselect"> Chaleco antibala: <?php echo $pChaleco ?>/100
            </p>
            <p>
              <img src="/images/icons/nivel2.png" class="noselect"> Nivel: <?php echo $pNivel ?>
            </p>
            <p>
              <img src="/images/icons/tiempo.png" class="noselect"> Horas jugadas: <?php echo $pHorasJugadas ?>
            </p>
            <p>
              <img src="/images/icons/arrestado.png" class="noselect"> Arrestado: <?php if($pArrestos == 0) { echo 'No hay arrestos';} else { echo $pArrestos;?> veces <?php } ?>
            </p>
            <p>
              <img src="/images/icons/tel.png" class="noselect"> Telefono: <?php if($pNumero == 0) {echo 'No tiene';}else{ echo $pNumero;}?>
            </p>
            <p>
              <img src="/images/icons/dinero.png" class="noselect"> Dinero total: <span style="color: #47D531;">$ <?php echo $pDineroTotal ?> </span>
            </p>
            <p>
              <img src="/images/icons/pildora.png" class="noselect"> Medicamentos: <?php echo number_format($pMedicinas) ?>
            </p>
            <p>
              <img src="/images/icons/crack.png" class="noselect"> Crack: <span style="color:coral"> <?php echo number_format($pCrack) ?> <b>g</b>
              </span>
            </p>
            <p>
              <img src="/images/icons/marihuana.png" class="noselect"> Marihuana: <span style="color:coral"> <?php echo number_format($pMarihuana) ?> <b>g</b>
              </span>
            </p>
            <p>
              <img src="/images/icons/piezas.png" class="noselect"> Piezas de armas: <?php echo number_format($pPiezas) ?>
            </p>
            <p>
              <img src="/images/icons/totemx16.png" class="noselect"> Totems: <?php echo number_format($pTotem) ?>
            </p>
            <p>
              <img src="/images/icons/monedas.png" class="noselect"> Monedas: <?php echo number_format($pMonedas) ?>
            </p>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="col-6 col-md-6">
        <div class="card">
          <div class="card-header">
            <h6 class="card-title">Realizar accion</h6>
            <p class="text-subtitle text-muted">Si deseas realizar una accion en el usuario, selecciona una opcion.</p>
          </div>
          <div class="card-body">
            <div class="input-group mb-3">
                <label class="input-group-text" for="admOpcion">Opciones</label>
                <select class="form-select" onchange="admOpcion(this.value)" name="opcion">
                  <option selected="">Escoge accion..</option>
                  <option value="sancionar">Sancionar</option>
                  <option value="banear">Banear</option>
                  <option value="banearoff">Banear Off</option>
                  <option value="unban">Desbanear</option>
                </select>
            </div>
            <form method="POST" id="admOpcionesSancion" style="display: none;">
                <label for="tiempo"><h6>Tiempo de sancion</h6></label>
                <select name="tiemposan" id="tiempo" class="form-select">
                  <option value="5min">5 Minutos</option>
                  <option value="10m">10 Minutos</option>
                  <option value="20m">20 Minutos</option>
                  <option value="30m">30 Minutos</option>
                  <option value="1h">1 Hora</option>
                  <option value="2h">2 Horas</option>
                  <option value="10h">10 Horas</option>
                  <option value="1d">1 dia</option>
                  <option value="1s">1 dia</option>
                </select>
                <label for="razonsan"><h6>Razon de sancion</h6></label>
                <input type="text" name="razonsancion" require class="form-control">
                <input type="hidden" name="usersan" value="<?=$pNombre?>">
                <br>
                <div class="buttons">
                  <button type="submit" class="btn icon icon-center btn-primary btn-sm">Sancionar usuario</button>
                </div>
              </form>
              <form method="get" id="admOpcionesBan" style="display: none;" action="/admAcciones/accionBan.php">
                <input type="hidden" name="perfil" value="<?=$pNombre?>">
                <label for="razonban"><h6>Razon del baneo</h6></label>
                <input type="text" name="razonban" require class="form-control">
                <br>
                <button type="submit" class="btn icon icon-center btn-primary btn-sm">Banear usuario</button>
              </form>
              <form method="get" id="admOpcionesBanOff" style="display: none;" action="/admAcciones/accionBanOff.php">
                <input type="hidden" name="perfil" value="<?=$pNombre?>">
                <label for="razonban"><h6>Razon del baneo</h6></label>
                <input type="text" name="razonban" require class="form-control">
                <br>
                <button type="submit" class="btn icon icon-center btn-primary btn-sm">Banear usuario</button>
              </form>
              <form method="get" id="admOpcionesUnban" style="display: none;" action="/admAcciones/accionUnban.php">
                <input type="hidden" name="perfil" value="<?=$pNombre?>">
                <label for="razonunban"><h6>Razon del desbaneo</h6></label>
                <input type="text" name="razonunban" require class="form-control">
                <br>
                <button type="submit" class="btn icon icon-center btn-primary btn-sm">Desbanear usuario</button>
              </form>
          </div>
        </div>
        <?php
        $consVin = $conn->prepare("SELECT * FROM usuarios WHERE IP = :ip LIMIT 5");
        $consVin->execute([
          ':ip' => $pIP
        ]);
        ?>
        <div class="card">
          <div class="card-header">
            <h4>Cuentas vinculadas por su IP</h4>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-hover table-lg">
                <thead>
                  <tr>
                    <th>Usuario</th>
                    <th>Fecha registro</th>
                    <th>Opciones</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  while ($dataVin = $consVin->fetch()) {
                    $vinSkin = $dataVin['Skin'];
                    $vinFechaRegistro = $dataVin['Registro'];
                    $vinNombre = $dataVin['Username'];

                    if ($vinSkin == '') {
                      $vSkin = '217';
                    } else {
                      $vSkin = $vinSkin;
                    }
                  ?>
                  <tr>
                    <td class="col-12">
                      <div class="d-flex align-items-center">
                        <div class="avatar avatar-md">
                          <img src="/images/skin/<?=$vSkin?>.png">
                        </div>
                        <p class="font-bold"><?=$vinNombre?></p>
                      </div>
                    </td>
                    <td class="col-auto">
                      <p class=" mb-0"><?=$vinFechaRegistro?></p>
                    </td>
                    <td>
                      <div class="buttons">
                        <a href="admUsuarios?perfil=<?=$vinNombre?>" class="btn icon btn-sm btn-success">
                          <i class="bi bi-search"></i>
                        </a>
                      </div>
                    </td>
                  </tr>
                <?php } ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
</section>
<?php } else {
    echo '
    <div class="alert alert-danger alert-dismissible show fade " role="alert">
    <strong>Atencion:</strong> El usuario ingresado no existe.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>';
}
} ?>
</div>
