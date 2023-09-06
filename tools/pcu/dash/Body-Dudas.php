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
            <h3>Canal de dudas a tiempo real <i class="bi bi-broadcast" style="color:green;"></i> </h3>
            <p class="text-subtitle text-muted">Desde la web puedes moderar el canal de dudas, todo esto es a tiempo real.</p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Canal dudas</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <div class="page-heading">
         <div class="page-content">
            <section class="row">
               <div class="col-12 col-mg-12">
                     <?php
                     $env_id = isset($_GET['env']) ? substr($_GET['env'], 0, 3) : '';
                     if ($env_id == 1) {
                        echo '
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Muteo por 10 minutos</strong> enviado correctamente.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 2) {
                        echo '
                        <div class="alert alert-danger alert-dismissible show fade" role="alert">
                        <strong>ERROR:</strong> Este jugador ya esta muteado.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 3) {
                        echo '
                        <div class="alert alert-danger alert-dismissible show fade" role="alert">
                        <strong>ERROR:</strong> Este jugador ya esta baneado.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 4) {
                        echo '
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Jugador baneado</strong>, baneaste al jugador correctamente.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 8) {
                        echo '
                        <div class="alert alert-danger alert-dismissible show fade" role="alert">
                        <strong>ERROR:</strong> No puedes <strong>mutear/sancionar/banear</strong> a un usuario de mayor o igual nivel administrativo que tu.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 404) {
                        echo '
                        <div class="alert alert-danger alert-dismissible show fade" role="alert">
                        <strong>ERROR:</strong> No se encontro este jugador.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 100) {
                        echo '
                        <div class="alert alert-danger alert-dismissible show fade" role="alert">
                        ERROR KATRIX <strong>#100</strong> CONTACTA UN ADMINISTRADOR DE SITIO.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 101) {
                        echo '
                        <div class="alert alert-danger alert-dismissible show fade" role="alert">
                        No estas autorizado para realizar esta accion.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     if ($env_id == 7) {
                        echo '
                        <div class="alert alert-danger alert-dismissible show fade" role="alert">
                        <strong>ERROR:</strong> No tienes permisos para ejecutar esta accion.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                        ';
                     }
                     ?>
                  <div class="row">
                     <div class="col-12 col-xl-12">
                        <div class="card">
                           <div class="card-header">
                              <h4>Ulimas dudas enviadas</h4>
                           </div>
                           
                           <div class="card-body">
                           <div class="table-responsive">
                              <form action="" id="dbuscarJugadorForm" method="GET">
                                <input type="search" name="U" id="U" value="<?=isset($_GET['U']) ? $_GET['U'] : ''?>" placeholder="Buscar jugador..">
                              </form>
                                 <table class="table table-hover table-lg">
                                    <thead>
                                       <tr>
                                          <th></th>
                                          <th>ID Jugador</th>
                                          <th>Usuario</th>
                                          <th>Duda</th>
                                          <th>Fecha y Hora</th>
                                          <th>Mutear</th>
                                          <th>Banear</th>
                                          <th>Buscar</th>
                                       </tr>
                                    </thead>
                                    <tbody id="CargarDudas">
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

<script>
window.buscandoDuda = {
    porUsuario: ''
}
window.setInterval(function () {
    updateDudas();
}, 1000); //Cargara cada 1s

function updateDudas() {
    CargarDudas();
}

function CargarDudas() {
    /*var dudas = $.ajax({
        url: 'Ajax_Data_CanalDudas.php?U='+buscandoDuda.porUsuario,
        dataType: 'text',
        async:false
    }).responseText;*/

    ajax('GET', 'Ajax_Data_CanalDudas.php?U='+buscandoDuda.porUsuario).onload = function(){
        document.getElementById("CargarDudas").innerHTML = this.responseText;
    }
}
if(document.getElementById('dbuscarJugadorForm')){  
    
}
window.onload = function(){
    //
    // Formulario
    //
    document.getElementById('dbuscarJugadorForm');
    var formBuscarDuda = document.getElementById('dbuscarJugadorForm');

    if(formBuscarDuda){
        let cambiandoURL = null;

        window.buscandoDuda.porUsuario = formBuscarDuda.U.value;

        formBuscarDuda.U.oninput = function(){
            clearTimeout(cambiandoURL);
            
            var valor = this.value;

            window.buscandoDuda.porUsuario = valor;

            cambiandoURL = setTimeout(function(){
                history.pushState(null, document.title, location.href.split('?')[0] + '?U=' + valor);
            }, 1000);
        }
    }
}

</script>