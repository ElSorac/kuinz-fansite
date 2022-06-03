<?php

   $mipefil = $lang[16];
   $ajuste = $lang[17];
   $cerrar = $lang[18];

if($_SESSION["logeado"] == "SI"){

$query = $link->query('SELECT username,rank,avatar,portada,fichas,puntos,tokens,megusta FROM usuarios WHERE username = "' .$username. '"');
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

$resultado = $link->query("SELECT * FROM usuarios WHERE username = '$username'");
                while ($row = mysqli_fetch_array($resultado)) {
                    $u_id   = $row['ID'];
                    $u_name = $row['username'];
                    $u_rank = $row['rank'];
                }
                

$rango_name = $link->query("SELECT * FROM rangos WHERE id = '" . $u_rank . "'");
                
  while ($row = mysqli_fetch_array($rango_name)) {
                    
  $u_rango = $row['nombre'];
                    
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

   $menu = "
   <body>
<div id='nav-kb'>
<button class='cabbtn fleft kuinzbook_inicio' title='Inicio'><a href='./index.php'><img src='/images/logo.png' class='kuinzbook_inicio--logo'></img></a></button>

<button class='cabbtn fright ajustes'><img src='https://kekocity.com/imagesnew/game/ajustes.png'></button>
<br>
<style type='text/css'>

  body{
    background-color: #000;
  }
</style></body>";} else {
     $menu = "<script> document.location.href='no-logueado.php'; </script";
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

</div>

</div><!--/.container-fluid -->

</nav>-->