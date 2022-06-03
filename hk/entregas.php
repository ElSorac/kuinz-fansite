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
         <font class="h2-reset">Motivo por el cual haras la entrega:</font>
         <br>
         <input type="text" required="" class="biginputkc" name="razon" placeholder="Ejemplo: Bingo" value="">
         <br>
         <br>
         <font class="h2-reset">Organizador del evento:</font>
         <br>
         <input type="text" required="" class="biginputkc" name="organizador" placeholder="Nombre del organizador">
         <br>
         <br>
         <font class="h2-reset">Cantidad:</font>
         <br>
         <select class="biginputkc" style="font-size:13px;width: auto;" name="cantidad">
             <option class="option" disabled>Elige cantidad</option>
             <option value="1" class="option">1</option>
             <option value="2" class="option">2</option>
             <option value="3" class="option">3</option>
             <option value="4" class="option">4</option>
             <option value="5" class="option">5</option>
             <option value="6" class="option">6</option>
             <option value="7" class="option">7</option>
             <option value="8" class="option">8</option>
             <option value="9" class="option">9</option>
             <option value="10" class="option">10</option>
             <option value="11" class="option">11</option>
             <option value="12" class="option">12</option>
             <option value="13" class="option">13</option>
             <option value="14" class="option">14</option>
             <option value="15" class="option">15</option>
             <option value="16" class="option">16</option>
             <option value="17" class="option">17</option>
             <option value="18" class="option">18</option>
             <option value="19" class="option">19</option>
             <option value="20" class="option">20</option>
             <option value="21" class="option">21</option>
             <option value="22" class="option">22</option>
             <option value="23" class="option">23</option>
             <option value="24" class="option">24</option>
             <option value="25" class="option">25</option>
             <option value="26" class="option">26</option>
             <option value="27" class="option">27</option>
             <option value="28" class="option">28</option>
             <option value="29" class="option">29</option>
             <option value="30" class="option">30</option>
         </select>
         <br>
         <br>
         <br>
         <font size="4px" class="h2-reset"> Recuerda leer estos detalles para no tener ningun tipo de inconvenientes tanto en Kuinz o KekoCity.</font>
         <details style="color:#fff">
            <br>
            <font size="4px"> Detalles del envio de fichas/puntos.</font>
            <br>
            <br>
            <p>1. Recuerda que esta totalmente prohibido regalar fichas/puntos.</p>
            <p>2. Es obligatorio poner la razon del envio de fichas/puntos.</p>
            <p>3. Es totalmente obligatorio poner el nombre del que realizo el evento donde se entregaron las fichas/puntos.</p>
            <br>
            <p><b>Nota:</b> Al momento de poner el organizador de evento, si tiene rango oficial como Becario, Helper o Moderador, solo ponen su nombre y ya.</p>
            <hr>
            <font size="4px"> Cantidad de fichas/puntos que se dan en los siguientes eventos.</font>
            <br><br>
            <p><b>Sillas Locas:</b> 8 fichas + 4 puntos</p>
            <p><b>Bingo:</b> 10 fichas + 5 puntos</p>
            <p><b>Dado Asesino:</b> 10 fichas + 6 puntos</p>
            <p><b>Pizza Asesina o eventos con comidas:</b> 12 fichas + 8 Puntos</p>
            <p><b>LLega al trono:</b> 10 fichas + 5 puntos</p>
         </details>
         <br>
         <center><input type="submit" class="btnkc" name="guardar" value="Hacer entrega"></center>
      </form>
   </div>
</main>

<?php
if ($_POST['cantidad'] && $_POST['user'] && $_POST['razon'] && $_POST['organizador'] && $_POST['opcion']) {
    
    $consulta1 = $link->query("SELECT * FROM usuarios WHERE username = '" . $_POST['user'] . "'");
    
    
    $resultados = mysqli_num_rows($consulta1);
    
    $revisar1 = $_POST['cantidad'];
    
    
    
    if ($resultados == 0) {
        
        echo "<br><div class='alerta-no'>$lang[383]</div>";
        
    }
    
    if ($revisar1 >= '31') {
        
        echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Solo puedes enviar una cantidad maxima de 30 como moderador.</div>";
        
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
        
        
        
        $mensaje = "<h5> $lang[375] <img src=https://kuinz-fansite.space/images/$_POST[opcion].png> $_POST[cantidad] $tipo $username (<b>$rango de $nameweb</b>) $lang[440] $_POST[razon], $lang[441]  $_POST[organizador].</h5>";
        
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
        
        
        
        $enviar_mensaje_1 = "INSERT INTO usuarios_mensajes_privados (user_enviado,rango,user_recibido,asunto,mensaje,fecha,razon,organizador) VALUES ('" . $username . "','" . $rango . "','" . $user_recibido . "','" . $asunto . "','" . $mensaje . "','" . $fecha_log . "','" . $razon . "','" . $organizador . "')";
        
        $link->query($enviar_mensaje_1);
        
        
        
        // Guardar acción en Logs si se ha iniciado sesión
        
        $accion = "$lang[379] $_POST[cantidad] $lang[386] $_POST[user]";
        
        $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
        
        $link->query($enviar_log);
        
        // Log guardado en Base de datos
        
        echo "<br><div class='contenidoal alert' style='top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button><img src='https://kekocity.com/imagesnew/game/icono.png'> Entregastes $_POST[cantidad] $tipo a <b>$_POST[user]</b> $lang[71]</div>";
        
    }
    
}

?>

<?php include "../Templates/Footer.php";?>