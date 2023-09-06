<?php
$mipefil = $lang[16];

$ajuste = $lang[17];

$cerrar = $lang[18];

function whos_stats($id)
{
    $f = json_decode(
        file_get_contents("http://whos.amung.us/stats/data/?k=" . $id)
    );
    return $f->total_count;
}

$visitantes = whos_stats("$contador");

if ($visitantes == 1) {
    $texto_visitantes = $lang[14];
} else {
    $texto_visitantes = $lang[15];
}

if ($_SESSION["logeado"] == "SI") {
    $query = $link->query(
        'SELECT * FROM usuarios WHERE username = "' . $username . '"'
    );
    while ($row = mysqli_fetch_array($query)) {
        $rango = $row["rank"];
        $portada_user = $row["portada"];
        $avatar_user = $row["avatar"];
        $fichas_user = $row["fichas"];
        $puntos_user = $row["puntos"];
    }

    $query = $link->query(
        'SELECT * FROM usuarios_amigos WHERE  (user = "' .
            $username .
            '") AND (estado_solicitud = "Pendiente")'
    );
    $solicitudes = mysqli_num_rows($query);

    if ($solicitudes != 0) {
        $notificacion_solicitud = "<span class='badge'>$solicitudes</span>";
    } else {
        $notificacion_solicitud = "";
    }
} else {
    $portada_user = "./images/barras/b3.png";
    $avatar_user = "./images/avatars/noavatar.png";
}

if ($_SESSION["logeado"] == "SI") {
    $query = $link->query(
        'SELECT tokens FROM usuarios WHERE username = "' . $username . '"'
    );
    while ($row = mysqli_fetch_array($query)) {
        $tokens_user = $row["tokens"];
    }
}
if ($_SESSION["logeado"] == "SI") {
    $fichas_puntos = "<button class='cabbtn fright' id='newbtn_bits'><span id='bolibits' class='boli naranja'>$fichas_user</span><img src='./images/fichas.png'></button> <button class='cabbtn fright' id='newbtn_bits'><span id='bolibits' class='boli cyan'>$puntos_user</span><img src='./images/puntos.png'></button>  <button class='cabbtn fright' id='newbtn_bits'><span id='bolibits' class='boli rojo'>$tokens_user</span><img src='./images/tokens.png'></button> ";
    if ("$rango" >= "3") {
        $contenido_user = "<span><a style='color:#fff;margin-left: 6px;' href='perfil.php?user=$username'>$username</a></span>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php'>$lang[17]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?mensajes'>$lang[20]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?regalos'>$lang[22]</a>
  <a style='color:#fff;margin-left: 8px;' href='kernel/login/cerrar.php'>$lang[23]</a>";
    } else {
        $contenido_user = "<span><a style='color:#fff;margin-left: 6px;' href='perfil.php?user=$username'>$lang[19]</a></span>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php'>$lang[17]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?mensajes'>$lang[20]</a>
  <a style='color:#fff;margin-left: 8px;' href='ajustes.php?regalos'>$lang[22]</a>
  <a style='color:#fff;margin-left: 8px;' href='kernel/login/cerrar.php'>$lang[23]</a>
  </<span></span>
  ";
    }
} else {
    $contenido_user = "<span style='margin-right: 30px;'><a style='color:#fff;' href='login.php'>Iniciar Sesion</a></span><span><a style='color:#fff;' href='registro.php'>$lang[25]</a></span>";
}

$bannertop = "<div class='contador-visitas'><b>$visitantes</b> $texto_visitantes</div><div class='banner-top'><div class='container'><div class='visible-desktop'><div class='logo'><div class='col-md-8'><a href='$url/index.php'><img class='logo' src='$logo'></a></div>
<div class='col-md-4' style='
    
    border-radius: 4px;
    padding: 5px;
    margin-top: 1px;
'>
    <div style='
    width: 110%;
    height: 125px;
    '><div style='
    width: 100%;
            '><div style='
    border: 2px solid rgba(255, 255, 255, 0.24);
    border-radius: 12px;
'><div style='
    
    background-color: #00000040;
    background-image: url($portada_user);
    width: 100%;
    height: 100px;
    border-radius: 10px;
    background-size: 100%;
    '><img src='$avatar_user' style='
    width: 80px;
    height: 80px;
    border-radius: 100%;
    border: 1px solid #fff;
    margin: 10px;
'>$fichas_puntos</div></div>
</div>
<div style='
    color: #fff;
    text-shadow: 0px 1px 1px rgba(0, 0, 0, 0.88);
    margin-top: 1px;
'>
    <center>$contenido_user </center></div></div>
</div>

  
";

$menu = "$bannertop
</div>
</div></div>
        

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

                 <li><a href='index.php'>$lang[1]</a></li>

                 <li><a href='$url/noticias.php'>$lang[2]</a></li>

                <li><a href='$url/equipo.php'>$lang[6]</a></li>

                 <li><a href='$url/furni.php'>$lang[4]</a></li>
                 
                 <li><a href='$url/tienda.php'>$lang[7]</a></li>

                 <li><a href='$url/tienda-dev.php'>Tienda Dev</a></li>

                  <li><a href='$url/buscador.php'>Buscador</a></li>

                 
                 <li style='display:none;'><a href='$url/recargar.php'>Recargar</a></li>
                 


                 <li class='dropdown'>

                   <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>$lang[8] <span class='caret'></span></a>

                   <ul class='dropdown-menu'>
                     
                     <li><a href='$url/subir-imagen.php'>Subir Imagen</a></li>
                     
                     
                      <li><a href='$url/kekoguias.php'>Guias KekoCity</a></li>


                
                      
                   </ul>

                 </li>

            ";

$query = $link->query(
    'SELECT rank FROM usuarios WHERE username = "' . $username . '"'
);

while ($row = mysqli_fetch_array($query)) {
    $rango = $row["rank"];
}

$query = $link->query(
    'SELECT * FROM usuarios_amigos WHERE  (user = "' .
        $username .
        '") AND (estado_solicitud = "Pendiente")'
);

$solicitudes = mysqli_num_rows($query);

if ($solicitudes != 0) {
    $notificacion_solicitud = "<span class='badge'>$solicitudes</span>";
} else {
    $notificacion_solicitud = "";
}

if ($_SESSION["logeado"] == "SI") {

    echo "$menu";

    echo '<ul class="nav navbar-nav navbar-right">';

    if ("$rango" >= "2") {
        echo '<a href="/shop-elite.php"><button class="app" title="Esto hace referencia que eres Elite en Kuinz." style="position: fixed;z-index: 3; left: 20px; border:none; bottom:20px; cursor: pointer; outline: none; background:none;"><img src="./images/elite-k.png"> <font style="color:rgba(0,0,0,0.6);">Tienda Elite</font></button></a>';
    }

    if ("$rango" >= "3") {
        echo '<a href="/hk/index.php"><button class="app-mod" title="Panel de Control Administrativo" style="position: fixed;z-index: 4; left: 26px; border:none; bottom:80px; cursor: pointer; outline: none; background:none;"><img src="./images/icon-hk.png"></button></a>';
    }
    ?>

<style type="text/css">
  .app:hover {
    padding-right: 1rem;
    border-radius: 1rem 0 0 1rem;
    box-shadow:  0 0 .4rem rgba(0,0,0,0.4);
    outline: none;
  }
  .app-mod:hover {
    box-shadow:  0 0 .4rem rgba(0,0,0,0.4);
  }
</style>


</ul> 

</li>

</ul> 


                           

<?php
} else {
    echo "$menu";
}
?>

</div><!--/.nav-collapse -->

</div><!--/.container-fluid -->
</nav>
