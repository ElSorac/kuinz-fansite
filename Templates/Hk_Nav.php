<?php
$query = $link->query('SELECT rank FROM usuarios WHERE username = "' . $username . '"');

while ($row = mysqli_fetch_array($query))

{

    $rangouseruser = $row['rank'];

}

function whos_stats($id)
{
    $f = json_decode(file_get_contents("http://whos.amung.us/stats/data/?k=" . $id));
    return $f->total_count;
}

$visitantes = whos_stats("$contador");

if ($visitantes == 1)
{

    $texto_visitantes = $lang[14];

}
else
{

    $texto_visitantes = $lang[15];

}

if ($_SESSION["logeado"] == "SI")
{

    echo "$bannertop";

    echo "
   
     <div class='banner-top'><div class='container'><div class='visible-desktop'><div class='logo'><a href='$url/index'><img class='logo' src='$logo'></a><div class='contador-visitas'>$visitantes $texto_visitantes</div></div></div></div>
   
     <nav class='navbar navbar-default'>
   
             <div class='container'>
   
               <div class='navbar-header'>
   
                 <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#navbar' aria-expanded='false' aria-controls='navbar'>
   
                   <span class='sr-only'>Toggle navigation</span>
   
                   <span class='icon-bar'></span>
   
                   <span class='icon-bar'></span>
   
                   <span class='icon-bar'></span>
   
               </button>
   
               <a class='navbar-brand' href='$url'></a>
   
             </div>
   
               <div id='navbar' class='navbar-collapse collapse'>
   
                 <ul class='nav navbar-nav'>
   
                 <li><a href='$url/hk/index.php'>$lang[1]</a></li>";

    if ("$rangouser" >= "$rango4")
    {

        echo "<li class='dropdown'>
   
   <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Comunicados<span class='caret'></span></a>
   
   <ul class='dropdown-menu'>
   
   <li style='display:none;'><a href='$url/hk/app-helper.php'>App Helper</a></li>

    <li><a href='$url/hk/noticias.php'>$lang[2]</a></li>
   
   <li><a href='$url/hk/misiones.php'>Misiones</a></li>
   
   <li><a href='$url/hk/promos.php'>$lang[269]</a></li>

   <li><a href='$url/hk/kekoguias.php'>KekoGuias</a></li>
   
   

   </ul>
   
   </li>";

    }

    if ("$rangouser" >= "$rango5")
    {

        echo "<li class='dropdown'>
   
   <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Moderador <span class='caret'></span></a>
   
   <ul class='dropdown-menu'>
   
    
   <li><a href='$url/hk/entregas.php'>Premios</a></li>
   
   <li><a href='$url/hk/empresa.php'>Empresa</a></li>
   
   <li><a href='$url/hk/users.php'>$lang[282]</a></li>

    <li><a href='$url/hk/quitar-foto.php'>Quitar foto</a></li>
   
   <li><a href='$url/hk/mensajes.php'>$lang[20]</a></li>

   <li style='display:none'><a href='$url/hk/regalos.php'>$lang[22]</a></li>

   <li><a href='$url/hk/comentarios.php'>$lang[130]</a></li>

   <li><a href='$url/hk/ban.php'>$lang[274]</a></li>

   <li><a href='$url/hk/reportes.php'>$lang[273]</a></li>
   
   </ul>
   
   </li>";

    }

    if ("$rangouser" >= "$rango7")
    {

        echo "<li class='dropdown'>
   
   <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>$rango_7<span class='caret'></span></a>
   
   <ul class='dropdown-menu'>
      
   <li><a href='$url/hk/entregas.php'>Premios</a></li>

    <li><a href='$url/hk/puntos-comprados.php'>Puntos comprados</a></li>

   <li><a href='$url/hk/ascender.php'>Equipo Kuinz</a></li>
      
   <li><a href='$url/hk/furni.php'>Catalogo Fansite</a></li>
   
   <li><a href='$url/hk/ricos.php'>U. con mas Fichas</a></li>
   
   <li><a href='$url/hk/ricos-p.php'>U. con mas Puntos</a></li>
   
   
   </ul>
   
   </li>";

    }

    if ("$rangouser" >= 8)
    {

        echo "<li class='dropdown'>
   
   <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Staff<span class='caret'></span></a>
   
   <ul class='dropdown-menu'>
   
   <li><a href='$url/hk/entregas2.0.php'>Premios</a></li>

   <li><a href='$url/hk/ascender2.0.php'>Equipo Kuinz</a></li>

   <li><a href='$url/hk/elites.php'>Quitar Elite</a></li>

   <li><a href='$url/hk/cambiar-username.php'>Cambiar username</a></li>

   <li><a href='$url/hk/cambiar-pass.php'>Cambiar contraseñas</a></li>

   <li><a href='$url/hk/logs.php'>$lang[276]</a></li>
   
   </ul>
   
   </li>";

    }

    if ("$rangouser" >= 8)
    {

        echo "<li class='dropdown'>
   
   <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Tiendas<span class='caret'></span></a>
   
   <ul class='dropdown-menu'>
   <li><a href='$url/hk/tienda.php'>Tienda Normal</a></li>
   <li><a href='$url/hk/tienda-dev.php'>Tienda Dev</a></li>
   <li><a href='$url/hk/shop-elite.php'>Tienda Elite</a></li>
   <hr>
   <li><a href='$url/hk/placas.php'>Furnis Normales</a></li>
   <li><a href='$url/hk/furnis-dev.php'>Furnis Dev</a></li> 
   <li><a href='$url/hk/furnis-elite.php'>Furnis Elite</a></li> 
   <hr>
   <li><a href='$url/hk/compras.php'>Compras</a></li>
  
   </ul>
   
   </li>";

    }

    if ("$rangouser" >= 8)
    {

        echo "<li class='dropdown'>
   
   <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Configuracion<span class='caret'></span></a>
   
   <ul class='dropdown-menu'>
   
   <li><a href='$url/hk/mantenimiento.php'>$lang[279]</a></li>
   
   <li><a href='$url/hk/configuracion.php'>$lang[280]</a></li>
   
   <li><a href='$url/hk/rangos.php'>$lang[275]</a></li>
   
   <li><a href='$url/hk/catalogo_secciones.php'>$lang[278]</a></li>
   
   <li><a href='$url/hk/estadisticas.php'>$lang[277]</a></li>

   <li><a href='$url/hk/radio.php'>$lang[281]</a></li>
   
   <li><a href='$url/hk/xat.php'>$lang[5]</a></li>
   <li><a href='$url/hk/backup/index.php'>Backup</a></li>
   
   </ul>
   
   </li>";

    }

    echo '</ul>';

    echo '<ul class="nav navbar-nav navbar-right">';

?>
<li><a href="<?php echo $url; ?>/index.php?hkcerrada"><?php echo $lang[283]; ?></a></li>
</ul><?php
}

?>
</div><!--/.nav-collapse -->
</div><!--/.container-fluid -->
</nav>
