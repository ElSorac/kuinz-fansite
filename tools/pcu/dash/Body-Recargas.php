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
            <h3>Recargas de <?=$nameserver?></h3>
            <p class="text-subtitle text-muted">Regaliza tus recargas de <?=$moneda_server?> y de otras cosas aqui.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dash">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Recargar <?=$moneda_server?></li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <section>
         <div class="col-4 col-md-6">
            <div class="card">
               <div class="card-body">
                  <p>Proximamente</p>
               </div>
            </div>
         </div>
         </section>
</div>