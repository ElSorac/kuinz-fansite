<?php
   include "../Templates/Hk_Head.php";
   
   
   
   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
   
   while($row = mysqli_fetch_array($query))
   
   {
   
     $rangouser = $row['rank'];
   
   }
   
   if("$rangouser" == "2"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }
   
   if("$rangouser" == "1"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }
   
   if("$rangouser" == "3"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }

   if("$rangouser" == "4"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }

    if("$rangouser" == "5"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }
   
   
    if("$rangouser" == "6"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }

    if("$rangouser" == "7"){
   
   header("Location: " . $_SERVER['HTTP_REFERER']);
   
     exit;
   
   }
   
   include "../Templates/Hk_Nav.php";
   
   ?>
<style type="text/css">
 .cuadro{
     width: 600px;
     margin:0 auto;
}
 .cuadro-info{
    align-content: center;
     width:50%;
     z-index:10;
     padding:30px;
     background:#424242;
     border-radius:15px 0 15px 0;
     border:1px solid #000;
}
 .btnkc{
     cursor:pointer;
     margin-top:-2px;
     margin-left:2px;
     border-radius:4px;
     border:1px solid #fff;
     background:url(https://v2.kekocity.com/imagesnew/home/btnkc2.png);
     color:#fff;
     font-weight:bold;
     height:34px;
     text-align:center;
     font-family: var(--font-formulario);
     font-size:12px;
     padding-left:20px;
     padding-right:20px;
}
 .btnkc:Hover{
     box-shadow: 0px 0px 1px 1px #1A6489;
}
 .biginputkc {
     margin: 5px;
     outline: none;
     border-radius: 5px;
     height: 30px;
     width: 200px;
     border: 1px solid #8E8E8E;
     padding: 5px 10px;
     font-size: 15px;
     font-family: var(--font-formulario);
     font-weight: bold;
}
 .biginputkc:Hover{
     box-shadow: 0px 0px 1px 1px #1A6489;
}
 :root {
     --font-formulario: Corbel;
}
 .h1-reset{
     font-size: 30px;
     font-family: var(--font-formulario);
     font-weight: bolder;
     margin:2px;
     color:#fff;
}
 .h2-reset{
     font-size:20px;
     font-family: var(--font-formulario);
     font-weight: lighter;
     margin:2px;
     color: #FFF;
}
 .h3-reset{
     font-size: 17px;
     font-family: var(--font-formulario);
     font-weight: lighter;
     margin: 2px;
     color: #fff;
}
 .select {
     width:100px;
     height:40px;
}
 .option {
     min-height:40px;
     align-items:center;
     background:#fff;
     border-top:#fff solid 1px;
     top:0;
     width: 100%;
     pointer-events:none;
     order:2;
     z-index:1;
}
 .option:hover {
     background:#666;
}
 .select:focus .option {
     position:relative;
     pointer-events:all;
}
.valido {
    background-color: rgb(9, 162, 9);

    color: rgb(255, 255, 255);
    border-bottom: 3px solid rgba(0, 0, 0, 0.41);
    text-align: center;
    width: 90%;
    border-radius: 5px;
    margin: 15px auto 10px;
}
.contenidoal {
    background-color: rgb(9, 162, 9);
    border: 1px solid #000;
    border-radius: 4px;
    padding: 7px;
    color: #fff;
    width: 200px;
    min-height: 30px;
    position: fixed;
    z-index: 2;
    font-size: 11px;
    -webkit-animation: contealmov;
    -webkit-animation-duration: 12s;
}

@-webkit-keyframes contealmov {
    0% {
        right: -230px;
    }

    15% {
        right: 0px;
    }

    25% {
        right: 0px;
    }

    50% {
        right: 0px;
    }

    75% {
        right: 0px;
    }

    85% {
        right: 0px;
    }

    100% {
        right: -230px;
    }
}

         
</style>
<main style="padding: 50px;">
   <div class="cuadro-info">
      <form action="" method="post" enctype="multipart/form-data">
         <font class="h2-reset">Nombre de usuario</font>
         <br>
         <input type="text" class="biginputkc" name="user" placeholder="Usuario ganador"><br>
         <br>
         <font class="h2-reset">Tipo de entrega</font>
         <br>
         <select class="biginputkc" style="font-size:13px;width: auto;" name="opcion">
            <option value="fichas" class="option">Fichas</option>
           <option value="puntos" class="option">Puntos</option>
            <option value="tokens" class="option">Tokens (NO ENVIAR MAS DE 1 POR EVENTO)</option>
         </select>
         <br>
         <br>
         <font class="h2-reset">Cantidad:</font>
         <br>
         <input type="number" name="cantidad" class="biginputkc" placeholder="Ingresa cantidad" max="6000" maxlength="6000" required>
         <br>
         <br>
         <center><input type="submit" class="btnkc" name="guardar" value="Hacer entrega"></center>
      </form>
   </div>
</main>

<?php
if ($_POST['cantidad'] && $_POST['user'] && $_POST['opcion']) {
    
    $consulta1 = $link->query("SELECT * FROM usuarios WHERE username = '" . $_POST['user'] . "'");
    
    
    $resultados = mysqli_num_rows($consulta1);
    
    $revisar1 = $_POST['cantidad'];
    
    
    
    if ($resultados == 0) {
        
        echo "<br><div class='alerta-no'>$lang[383]</div>";
        
    }
    
    if ($revisar1 >= '6001') {
        
        echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Solo puedes enviar una cantidad maxima de 6000 como Staff.</div>";
        
    } elseif ($resultados == 0) {
        echo "<br><div class='alerta-no'>$lang[383]</div>";
    }
    
    else {
        
        $fecha_log = date ('d-M-Y h:i:s', time());
        
        $rango_mio = $link->query("SELECT * FROM usuarios WHERE username = '" . $username . "'");
        
        while ($row = mysqli_fetch_array($rango_mio)) {
            
            $rango_mio_1 = $row['rank'];
            
        }
        
        
        
        $rango_name = $link->query("SELECT * FROM rangos WHERE id = '" . $rango_mio_1 . "'");
        
        while ($row = mysqli_fetch_array($rango_name)) {
            
            $rango = $row['nombre'];
            
        }
        
        
        
        $mensaje = "<h5><img src=https://kuinz-fansite.space/images/$_POST[opcion].png> Has recibido $_POST[cantidad] $_POST[opcion] $tipo departe de $username (<b>$rango</b>) como bonificacion. ($fecha_log)</h5>";
        
        $asunto = "$lang[385]";
        
        $razon = "$_POST[razon]";
        
        $organizador = "$_POST[organizador]";
        
        while ($row = mysqli_fetch_array($consulta1)) {
            
            $fichas = $row['"$tipo"'];
            
        }
        
        $tipo = "$_POST[opcion]";
        
        $cantidad = $_POST['cantidad'];
        
        $actualizar = "UPDATE usuarios SET $tipo = $tipo +'$cantidad' WHERE username = '" . $_POST['user'] . "' ";
        
        $link->query($actualizar);
        
        
        
        $user_recibido = $_POST['user'];
        
        
        
        $enviar_mensaje_1 = "INSERT INTO usuarios_mensajes_privados (user_enviado,rango,user_recibido,asunto,mensaje,fecha,razon,organizador) VALUES ('" . $username . "','" . $rango . "','" . $user_recibido . "','" . $asunto . "','" . $mensaje . "','" . $fecha_log . "','Bonificacion','Staff')";
        
        $link->query($enviar_mensaje_1);
        
        
        
        // Guardar acción en Logs si se ha iniciado sesión
        
        $accion = "$lang[379] $_POST[cantidad] $lang[386] $_POST[user]";
        
        $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
        
        $link->query($enviar_log);
        
        // Log guardado en Base de datos
        
        echo "<br><div class='alert contenidoal' style='top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button><img src='https://kekocity.com/imagesnew/game/icono.png'> Entregastes $_POST[cantidad] $tipo a <b>$_POST[user]</b> $lang[71]</div>";
        
    }
    
}

?>

<?php include "../Templates/Footer.php";?>