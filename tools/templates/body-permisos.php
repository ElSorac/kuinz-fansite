<div class="row">
    <section class="main flex justify-center">
      <div class="card w-60 m-14">
        <div class="card-head">
          <h2>MODTOOLS - Kuinz Fansite <span class="f-right card-minititle">Asigna permisos</span></h2>
        </div>
        <?php
        if (!isset($_GET['user'])) {
        ?>
        <div class="card-cont flex justify-center">
          <form action="/app/permisos-buscar.php" method="get" enctype="multipart/form-data" class="form-dash flex flex-column w-40"> 
            <h2>Modificar permiso de usuario</h2>
            <div class="form-cont flex flex-column">
              <label for="user">Buscar usuario</label>
              <input type="text" name="user" id="" placeholder="Ingresa el usuario">
            </div>
            <div class="flex justify-center">
              <button class="btn btn-green w-40"> Buscar </button>
            </div>
          </form>
          <br>
        </div>
        <?php } 
          else { 
            if ($autorizado) {
              $user = $_GET['user'];
              $sql = "SELECT * FROM usuarios WHERE username = :username";
              $stmt = $conn->prepare($sql);
              $stmt->execute([':username'=> $user]);
              $usuario = $stmt->fetch(PDO::FETCH_ASSOC);
      
              if ($usuario) {
                  $idUser = $usuario['ID'];
                  $stmt = $conn->prepare("SELECT * FROM equipo WHERE user_id = :id");
                  $stmt->execute([':id'=> $idUser]);
                  $equipoUser = $stmt->fetch(PDO::FETCH_ASSOC);
                  if ($equipoUser) {
                      #Datos del usuario
                      $nameU = $usuario['username'];
                      $avatarU = $usuario['avatar'];
                      $misionU = $usuario['mision'];
                      $portadaU = $usuario['portada'];

                      #Permisos Actuales
                      $pModerador = $equipoUser['moderador'];
                      $pAvanzado = $equipoUser['avanzado'];
                      $pComunicados = $equipoUser['comunicados'];
                      $pSupermod = $equipoUser['supermod'];
                      $pAutorizado = $equipoUser['autorizado'];
                      $pTiendas = $equipoUser['tiendas'];
                      $pLogs = $equipoUser['logs'];
                      $pStaff = $equipoUser['staff'];
                      $pConfig = $equipoUser['config'];

                      #Funcion
                      function verEstadoPermiso($variable) {
                        return ($variable != 0) ? '<b style="color: var(--color-kuinz)">Activado</b>' : '<b style="color: var(--rojodc)">Desactivado</b>';
                      }
                      function opcionesPermisos($variable) {
                        return ($variable != 0) ? '<option value="1" selected>Activar permiso</option> <option value="0">Desactivar permiso</option>' : '<option value="0" selected>Desactivar permiso</option><option value="1">Activar permiso</option>';
                      }
                      
                  }else {
                    echo "<script type='text/javascript'>location.href='permisos.php?status=4;</script>";
                      exit();
                  }
              } else {
                echo "<script type='text/javascript'>location.href='permisos.php?status=2';</script>";
                exit();
              }
             } else {
              echo "<script type='text/javascript'>location.href='permisos.php?status=3';</script>";
              exit();
             }
            
            ?>
            <style>
              .flex-perm {
                display: flex;
                flex-wrap: wrap;
                max-width: 800px; /* Ajusta el valor según tus necesidades */
              }
              .flex-perm-cont {
                flex: 1 0 200px; /* Ajusta el valor según tus necesidades */
                margin: 10px;
                height: 100px;
                display: flex;
                justify-content: center;
                align-items: center;
              }
            </style>
          <div class="card-cont w-90">
            <div class="mod-data"> 
              <button class="f-right btn btn-red w-20" onclick="atras()"> Volver</button>
              <div class="dash-perfil" style="background-image: url(<?=$portadaU?>) !important;">
                <span class="flex-inline flex-wrap aling-item-center">
                  <img src="<?=$avatarU?>" class="dash-avatar">
                  <span class="dash_perfil-nombre"><?=$nameU?></span>
                </span>
                <span class="dash_perfil-mision"><b>Mision: </b><?=$misionU?></span>
              </div>
              <div class="flex dash-placas">
                <img src="https://kuinzfansite.online/images/placas/moderador.png">
                <img src="https://kuinzfansite.online/images/placas/staff.png">
                <img src="https://kuinzfansite.online/images/placas/fundador.png">
                <img src="https://kuinzfansite.online/images/placas/developer.png">
              </div>
              <ul>
                <form action="app/permisos-modificar.php" method="get" class="form-dash">
                  <input type="hidden" name="user" value="<?=$nameU?>">
                  <div class="flex-perm">
                    <div class="flex-perm-cont">
                      <label for="pModerador"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de moderador actualmente <?=verEstadoPermiso($pModerador)?></label>
                      <select name="pModerador" style="width:40px;">
                        <?=opcionesPermisos($pModerador)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pAvanzado"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de Avanzado (Rangers) actualmente <?=verEstadoPermiso($pAvanzado)?></label>
                      <select name="pAvanzado" style="width:40px;">
                        <?=opcionesPermisos($pAvanzado)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pComunicados"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de Comunicados actualmente <?=verEstadoPermiso($pComunicados)?></label>
                      <select name="pComunicados" style="width:40px;">
                        <?=opcionesPermisos($pComunicados)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pSupermod"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de Supermod actualmente <?=verEstadoPermiso($pSupermod)?></label>
                      <select name="pSupermod" style="width:40px;">
                        <?=opcionesPermisos($pSupermod)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pAutorizado"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de Autorizado actualmente <?=verEstadoPermiso($pAutorizado)?></label>
                      <select name="pAutorizado" style="width:40px;">
                        <?=opcionesPermisos($pAutorizado)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pTiendas"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de configurar tiendas actualmente <?=verEstadoPermiso($pTiendas)?></label>
                      <select name="pTiendas" style="width:40px;">
                        <?=opcionesPermisos($pTiendas)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pLogs"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de leer logs actualmente <?=verEstadoPermiso($pLogs)?></label>
                      <select name="pLogs" style="width:40px;">
                        <?=opcionesPermisos($pLogs)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pStaff"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de Staff actualmente <?=verEstadoPermiso($pStaff)?></label>
                      <select name="pStaff" style="width:40px;">
                        <?=opcionesPermisos($pStaff)?>
                      </select>
                    </div>
                    <div class="flex-perm-cont">
                      <label for="pConfig"><li  class="fa fa-caret-right" aria-hidden="true"></li> Permiso de configurador actualmente <?=verEstadoPermiso($pConfig)?></label>
                      <select name="pConfig" style="width:40px;">
                        <?=opcionesPermisos($pConfig)?>
                      </select>
                    </div>
                  </div>
                  <div class="flex justify-center">
                    <button class="btn btn-green w-20"> Actualizar </button>
                  </div>
                </form>
              </ul>
            </div>
          </div>
        <?php } ?>
      </div>
    </section>
  </div>
<?php
if (isset($_GET['status'])) {
    switch ($_GET['status']) {
        case 0:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Actualizaste permisos correctamente.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 1:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes dejar ninguna casilla vacia.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 2:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> El usuario no existe.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 3:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No estas autorizado para ascender.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 4:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Este usuario no es parte del Equipo Kuinz.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 5:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Hubo un error al actualizar permisos.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 500:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Error al procesar formulario.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 501:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Error en los valores de permisos.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 69:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes expulsar este usuario.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        default:
            echo '';
            break;
    }
}
/*
        <form method="post">
        <input type="submit" name="actualizar" value="Actualizar Equipo">
      </form>
        if(isset($_POST['actualizar'])) {
          $sql = "UPDATE equipo SET moderador = 1 WHERE rango_id = 3";
          $stmt = $conn->prepare($sql);
          $stmt->execute();
        }
*/
?>