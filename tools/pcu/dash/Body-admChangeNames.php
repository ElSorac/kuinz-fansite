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
            <h3>Logs cambio de nombre</h3>
            <p class="text-subtitle text-muted">Aqui mostrara los cambios de nombre de los jugadores.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Logs cambio de nombre</li>
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
                              <h4>Cambios de nombres</h4>
                              <p class="text-subtitle text-muted"></p>
                           </div>
                           <div class="card-body">
                           <div class="table-responsive">
                                 <table class="table table-hover table-lg">
                                    <thead>
                                       <tr>
                                          <th>Nombre actual</th>
                                          <th>Nuevo nombre</th>
                                          <th>Viejo nombre</th>
                                          <th>Fecha y Hora</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                       $cons = $conn->prepare("SELECT * FROM logs_nombres ORDER BY fecha DESC");
                                       $cons->execute();

                                       while ($dataLog = $cons->fetch()) {
                                          $logID = $dataLog['id_user'];
                                          $logNewUser =  $dataLog['newuser'];
                                          $logOldUser = $dataLog['olduser'];
                                          $logFecha = $dataLog['fecha'];

                                          $cons2 = $conn->prepare("SELECT Username FROM usuarios WHERE ID = :id");
                                          $cons2->execute([
                                            ':id' => $logID
                                          ]);
                                          $row = $cons2->fetch();
                                          $logUserActual = $row['Username'];
                                    ?>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><?=$logUserActual?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logNewUser?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logOldUser?></p>
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