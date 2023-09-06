<?php
#Cerramos conexiones sin logeo
if (isset($_SESSION['logeado']) != "Si") {
  exit();
}
?>

<div class="page-heading">
   <div class="page-title">
      <div class="row">
         <div class="col-12 col-md-6 order-md-1 order-last">
            <h3>Registros de la web </h3>
            <p class="text-subtitle text-muted">El contenido encontrado en esta seccion es confidencial.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Logs web</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <div class="page-heading">
         <div class="page-content">
            <section class="row">
               <div class="col-12 col-mg-12">
                  <div class="row">
                     <div class="col-12 col-xl-12">
                        <div class="card">
                           <div class="card-header">
                              <h4>Logs webs</h4>
                           </div>
                           
                           <div class="card-body">
                           <div class="table-responsive">
                                 <table class="table table-hover table-lg">
                                    <thead>
                                       <tr>
                                          <th>User ID</th>
                                          <th>Usuario</th>
                                          <th>Accion</th>
                                          <th>Fecha y Hora</th>
                                          <th>IP</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                       $cons = $conn->prepare("SELECT * FROM logs_web WHERE UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(fecha) <= 60*60*168 ORDER BY fecha DESC");
                                       $cons->execute();

                                       while ($dataLog = $cons->fetch()) {
                                          $logUserID = $dataLog['id_user'];
                                          $logUser =  $dataLog['usuario'];
                                          $logAccion = $dataLog['accion'];
                                          $logFecha = $dataLog['fecha'];
                                          $logIP = $dataLog['ip'];
                                    ?>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><?=$logUserID?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logUser?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logAccion?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logFecha?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?php
                                                if ($nivelAdmin <= 6) {
                                                   echo 'xxx.xxx.xxx';
                                                } else {
                                                   echo "$logIP";
                                                }
                                                ?>
                                                </p>
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
         </div>
      </div>
   </div>
</div>