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
            <h3>Logs cambio de contraseña</h3>
            <p class="text-subtitle text-muted">Aqui mostrara los cambios de contraseña de los jugadores.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Logs cambio de contraseña</li>
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
                              <h4>Cambios de contraseña</h4>
                              <p class="text-subtitle text-muted"></p>
                           </div>
                           <div class="card-body">
                           <div class="table-responsive">
                                 <table class="table table-hover table-lg">
                                    <thead>
                                       <tr>
                                          <th>Usuario</th>
                                          <th>Nueva contraseña</th>
                                          <th>Vieja contraseña</th>
                                          <th>Fecha y Hora</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                       $cons = $conn->prepare("SELECT * FROM logs_changepass ORDER BY fecha DESC");
                                       $cons->execute();

                                       while ($dataLog = $cons->fetch()) {
                                          $logUser= $dataLog['usuario'];
                                          $logNewPass =  $dataLog['newpassword'];
                                          $logOldPass = $dataLog['oldpassword'];
                                          $logFecha = $dataLog['fecha'];
                                    ?>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><?=$logUser?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logNewPass?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logOldPass?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logFecha?></p>
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