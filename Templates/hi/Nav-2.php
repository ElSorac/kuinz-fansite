<?php

   $mipefil = $lang[16];
   $ajuste = $lang[17];
   $cerrar = $lang[18];

if($_SESSION["logeado"] == "SI"){

$query = $link->query('SELECT username,rank,avatar,portada,fichas,puntos,tokens FROM usuarios WHERE username = "' .$username. '"');
while($row = mysqli_fetch_array($query))
{
  $rango = $row['rank'];
  $usuario = $row['username'];
  $portada_user = $row['portada'];
  $avatar_user = $row['avatar'];
  $fichas_user = $row['fichas'];
  $puntos_user = $row['puntos'];
  $tokens_user = $row['tokens'];
}

$query = $link->query('SELECT * FROM usuarios_amigos WHERE  (user = "' .$username. '") AND (estado_solicitud = "Pendiente")');
$solicitudes = mysqli_num_rows($query);

if ($solicitudes != 0) {
$notificacion_solicitud = "<span class='badge'>$solicitudes</span>";
} else { 
  $notificacion_solicitud = ""; 
}
} else {
  $portada_user = './images/barras/b3.png';
  $avatar_user = "./images/avatars/noavatar.png";
}

if($_SESSION["logeado"] == "SI"){

   $menu = "<div id='nav-kb'>
<div class='contenedor'>
<button class='cabbtn fleft' title='Inicio'><a href='./index.php'><img src='./images/home.png'></img></a></button>
<button class='cabbtn fleft' title='Noticias'><a href='./noticias.php'><img src='./images/icon-new.png' width='80%'></img></a></button>
<button class='cabbtn fleft' title='Perfil'><a href='perfil.php?user=$usuario'><img src='./images/usuario.png' width='80%'></img></a></button>


<button class='cabbtn fright'><img src='https://kekocity.com/imagesnew/game/ajustes.png'></button>

<img src='https://kekocity.com/imagesnew/game/SEPARADOR.png' class='fright'>


<button class='cabbtn fright' title='Tokens'>
<span id='bolicoins' class='boli green'>$tokens_user</span><img src='./images/token.png'>
</button>

<button class='cabbtn fright' title='Puntos'>
<span class='boli cyan'>$puntos_user</span><img src='./images/puntos.png'>
</button>

<button class='cabbtn fright' title='Fichas'>
<span class='boli naranja'>$fichas_user</span><img src='./images/fichas.png'>
</button>

<img src='https://kekocity.com/imagesnew/game/SEPARADOR.png' class='fright'>

<div id='anchofright'><button class='cabbtn'> $usuario</button></div>
<br>
</div></div>
<style type='text/css'>
.green{background-color: #14C30E;color: #fff;}
#nav-kb{
min-width: 1000px;
width:100%;
padding: 4px 0 4px 0;
margin:0;
z-index: 3;
height:35px;
background-color: #247dc2;
background-image: url(https://images-kuinz.online/i/nubes.png);
background-repeat: repeat-x;
}</style>";} else {
  $menu = "
<div id='cargandokc'>
<img src='./images/logo.png' class='wow'><br>
<span>Habido un error al acceder al Kuinzbook, necesitas estar logueado para acceder.</span></div>";
}



        

   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');

   while($row = mysqli_fetch_array($query))

   {

     $rango = $row['rank'];

   }

   

   $query = $link->query('SELECT * FROM usuarios_amigos WHERE  (user = "' .$username. '") AND (estado_solicitud = "Pendiente")');

   $solicitudes = mysqli_num_rows($query);

   

   if ($solicitudes != 0) {

   $notificacion_solicitud = "<span class='badge'>$solicitudes</span>";

   } else { 

     $notificacion_solicitud = ""; 

   }

   if($_SESSION["logeado"] == "SI"){

    echo "$menu";

    echo '<ul class="nav navbar-nav navbar-right">';
     
     if("$rango" >= "4"){
      echo '<a href="/hk/index.php"><button class="app-mod" title="Panel de Control Administrativo" style="position: fixed;z-index: 4; left: 26px; border:none; bottom:80px; cursor: pointer; outline: none; background:none;"><img src="/images/icon-hk.png"></button></a>';
    }
    
     ?>

<style type="text/css">
  .app:hover {
    padding-right: 1rem;
    border-radius: 1rem 0 0 1rem;
    box-shadow:  0 0 .4rem rgba(0,0,0,0.4);
  }
  .app-mod:hover {
    box-shadow:  0 0 .4rem rgba(0,0,0,0.4);
  }
</style>
</ul> 

</li>

</ul> 

 

                           

<?php

   }  else {

    echo "$menu";



   }

   ?>

</div><!--/.nav-collapse -->

</div><!--/.container-fluid -->

</nav>