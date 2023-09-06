<?php
#Cerramos conexiones sin logeo
if (isset($_SESSION['logeado']) != "Si") {
  exit();
}
?>
<?php
    $const_r = $conn->query("SELECT * FROM usuarios WHERE Admin > 0 ORDER BY Admin DESC");
?>
<div class="page-heading">
   <div class="page-title">
      <div class="row">
         <div class="col-12 col-md-6 order-md-1 order-last">
            <h3>Equipo Staff de <?=$nameserver?></h3>
            <p class="text-subtitle text-muted">Listado oficial de nuestro equipo staff.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dash">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Equipo Staff</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <section class="section">
      <div class="row" id="table-responsive">
         <div class="col-12">
            <div class="card">
               <div class="card-header">
                  <h4 class="card-title"><i class="bi bi-shield-shaded"></i> Equipo Staff - <?=$year?></h4>
               </div>
               <div class="card-content">
                  <div class="card-body">
                     <p>Este es nuestro listado oficial del equipo administrativo, si alguien dice ser del <b>Equipo Staff</b> y no esta en esta lista, reportalo enseguida.</p>
                  </div>
                  <!-- table responsive -->
                  <div class="table-responsive">
                     <table class="table mb-0">
                        <thead>
                           <tr>
                              <th scope="col"></th>
                              <th scope="col">Usuario</th>
                              <th scope="col">Rango</th>
                              <th scope="col">¿Puede Mapear?</th>
                              <th scope="col">Estado</th>
                           </tr>
                        </thead>
                        <tbody>
                        <?php 
                        while ($datos=$const_r->fetch()) {
                            $nivelAdmin = $datos['Admin'];
                            $adminSkin = $datos['Skin'];
                            $idAdmin = $datos['ID'];
                            $userAdmin = $datos['Username'];
                            $estado = $datos['Online'];
                            $mapper = $datos['Mapper'];

                            if ($adminSkin == '') {
                              $admSkin = '217';
                            } else {
                              $admSkin = $adminSkin;
                            }

                            if ($mapper == 1) {
                                $EsMapper = "Si";
                            } else {
                                $EsMapper = "No";
                            }

                            if ($estado == 0 || $estado > 1 || $estado < 0 || $estado == NULL) {
                                $status = 'danger';
                                $conexion =  "<img src='/images/icons/desconectado.png' width='16px'> Desconectado";
                            } else {
                                $status = 'success';
                                $conexion =  "<img src='/images/icons/conectado.png' width='16px'> Conectado";
                            }

                            //Sacar nombre rango
                            if ($nivelAdmin == 0) {
                                $miRango = "Usuario";
                            } elseif ($nivelAdmin == 1) {
                                $miRango = "Ayudante";
                            } elseif ($nivelAdmin == 2) {
                                $miRango = "Moderador de Dudas";
                            } elseif ($nivelAdmin == 3) {
                                $miRango = "Moderador del Juego";
                            } elseif ($nivelAdmin == 4) {
                                $miRango = "Moderador Global";
                            } elseif ($nivelAdmin == 5) {
                                $miRango = "Administrador";
                            } elseif ($nivelAdmin == 6) {
                                $miRango = "Encargado";
                            } elseif ($nivelAdmin == 7) {
                                $miRango = "Fundador";
                            } elseif ($nivelAdmin > 8 || $nivelAdmin < 0 || $nivelAdmin == NULL) {
                                $miRango = "Usuario";
                            }
                        ?>
                           <tr>
                              <td><div class="avatar avatar-xl me-3"><img src="/images/skin/<?=$admSkin?>.png"><span class="avatar-status bg-<?=$status?>"></span></div></td>
                              <td><?=$userAdmin?></td>
                              <td><?=$miRango?></td>
                              <td><?=$EsMapper?></td>
                              <td><?=$conexion?></td>
                           </tr>
                        <?php } ?>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
</div>