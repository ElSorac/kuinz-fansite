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
            <h3>Logs comandos ejecutados</h3>
            <p class="text-subtitle text-muted">Aqui muestra los comandos administrativos ejecutados dentro del servidor.
                El contenido encontrado en esta seccion es confidencial.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Logs cmd</li>
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
                              <h4>Registros admin</h4>
                              <p class="text-subtitle text-muted">Se mostrara registro de una semana.</p>
                           </div>
                           <div class="card-body">
                           <div class="table-responsive">
                                 <table class="table table-hover table-lg">
                                    <thead>
                                       <tr>
                                          <th>Responsable</th>
                                          <th>Usuario</th>
                                          <th>Accion</th>
                                          <th>Razon</th>
                                          <th>Fecha y Hora</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                       $cons = $conn->prepare("SELECT * FROM registros_admin WHERE UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(Fecha) <= 60*60*168 ORDER BY Fecha DESC");
                                       $cons->execute();

                                       while ($dataLog = $cons->fetch()) {
                                          $logResponsable = $dataLog['Responsable'];
                                          $logUser =  $dataLog['Jugador'];
                                          $logAccion = $dataLog['Accion'];
                                          $logRazon = $dataLog['Razon'];
                                          $logFecha = $dataLog['Fecha'];
                                    ?>
                                        <tr>
                                            <td>
                                                <p class="mb-0"><?=$logResponsable?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logUser?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logAccion?></p>
                                            </td>
                                            <td>
                                                <p class="mb-0"><?=$logRazon?></p>
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