<header>
  <div class="sidebar">
    <div class="sidebar-header">
      <img src="<?=$myAvatar?>" alt="Avatar">
      <div class="rango-sidebar">
        <h4><?=$myNombre?> <sup><i class="fa fa-circle" aria-hidden="true"></i></sup></h4>
        <h5 style="margin-top: -3px;"><?=$myNombreRango?></h5>
      </div>
    </div>
    <div class="sidebar-menu">
      <div class="sidebar-category"><a href="index.php" style="text-decoration:none; color:white;">Inicio</a></div>
      <div class="sidebar-category" data-categoria-id="1">Premios</div>
      <div class="sidebar-subcategory subcategoria-1" data-categoria-id="1">
          <?php
          if ($avanzado) {
            echo '<a href="send-avanzados.php" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Premios (Avanzados)</a>';
          } 
          if($moderador) {
            echo '<a href="send-premios.php" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Premios</a>';
          }
          if ($staff) {
            echo '<a href="send-staff.php" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Premios(Staff)</a>';
          }
          ?>
      </div>
      <?php
      if ($periodista) {
      ?>
      <div class="sidebar-category" data-categoria-id="2">Comunicados</div>
      <div class="sidebar-subcategory subcategoria-2" data-categoria-id="2">
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Noticias</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Misiones</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Promos</a>
      </div>
      <?php } 
      if ($moderador) {
      ?>
      <div class="sidebar-category" data-categoria-id="3"> Moderador</div>
      <div class="sidebar-subcategory subcategoria-3" data-categoria-id="3">
        <a href="mensajes.php" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Mensajes usuarios</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Comentarios</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Reportes</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Eliminar foto</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Eliminar mision</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Banear</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Lista usuarios</a>
      </div>
      <?php
      }
      if ($supermod) {
      ?>
      <div class="sidebar-category" data-categoria-id="4"> Super moderador</div>
      <div class="sidebar-subcategory subcategoria-4" data-categoria-id="4">
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Alertar moderador</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Usuarios vinculados</a>
      </div>
      <?php }
      if ($autorizado) {
      ?>
      <div class="sidebar-category" data-categoria-id="4-5"> Autorizados</div>
      <div class="sidebar-subcategory subcategoria-4-5" data-categoria-id="4-5">
        <a href="equipo.php?pag=1" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Dar/quitar rango</a>
        <a href="permisos.php" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Modificar permisos</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Cambiar usuario</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Cambiar contraseña</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Informacion fansite</a>
      </div>
      <?php }
      if ($tiendas) {
      ?>
      <div class="sidebar-category" data-categoria-id="5"> Configurar tiendas</div>
      <div class="sidebar-subcategory subcategoria-5" data-categoria-id="5">
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Principal</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Developer</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Exclusiva</a>
      </div>
      <?php }
      if ($logs) {
      ?>
      <div class="sidebar-category" data-categoria-id="6"> Logs</div>
      <div class="sidebar-subcategory subcategoria-6" data-categoria-id="6">
        <a href="logs-generales.php" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> General</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Compras</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Ingresos</a>
        <a href="logs-premios.php?pag=1" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Premios</a>
      </div>
      <?php }
      if ($config) {
      ?>
      <div class="sidebar-category" data-categoria-id="7"> Configurar web</div>
      <div class="sidebar-subcategory subcategoria-7" data-categoria-id="7">
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Mantenimiento</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Informacion</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Configurar rangos</a>
        <a href="#" class="subcategoria"><i class="fa fa-plus" aria-hidden="true"></i> Categorias fansite</a>
      </div>
    </div>
    <?php } ?>
    <div class="sidebar-category" style="position: absolute;bottom: 42px;left: 6px;background-color: var(--color-kuinz);"><a href="https://kuinzfansite.online" style="text-decoration:none; color:white;">Ir a Kuinz</a></div>
    <div class="sidebar-category" style="position: absolute; bottom: 7px; left: 6px; background-color: var(--azuldc);"><a href="logout.php" style="text-decoration:none; color:white;">Desconectarse</a></div>
    <button class="sidebar-toggle">
      <i class="fas fa-bars"></i>
    </button>
  </div> 
</header>
<body>