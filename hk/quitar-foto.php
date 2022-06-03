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

<div class="container">
   <!-- Main component for a primary marketing message or call to action -->
   <div class="row">
            <div class="cuadro-info">
               <form action="" method="post" enctype="multipart/form-data">
                  <font class="h1-reset">Quitar foto (solo si es inadecuada)</font>
                     <br>
                     <label class="h2-reset">Usuario</label>
                     <input style="margin-bottom: 10px;width:200px;" type="text" required="" class="biginputkc" name="user" placeholder="Nombre de usuario" value="" />
                     <br>
                     <label class="h2-reset">Tipo de foto</label>
                     <select class="biginputkc" name="tipo">
                        <option value="avatar">Perfil</option>
                        <option value="portada">Portada</option>
                     </select>
                     <br>
                    <input class="btnkc" name="cambiar" type="submit" value="Ejecutar" />

               </form>

               <?php
                  if ($_POST['user'] && $_POST['tipo']) {
                  
                     $consulta1 = $link->query("SELECT ID FROM usuarios WHERE username = '".$_POST['user']."'");
                     $resultados = mysqli_fetch_row($consulta1);
                     $user_id = $resultados[0] ?? false;

                     $tipo = $_POST['tipo'];
                     $user = $_POST['user'];

                     if (!$user_id) {
                     
                       echo "<br><div class='alerta-no'>$lang[383]</div>";

                     }else{

                     if ($tipo == 'avatar') {
                        $img = './images/avatars/noavatar.png';
                     }
                     if ($tipo == 'portada') {
                        $img = './images/default_p.png';
                     }

                     $link->query("UPDATE usuarios SET $tipo='".$img."' WHERE ID=".$user_id.";");

                     $accion = "Le borro $tipo a ($user)";
        
                     $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
        
                     $link->query($enviar_log);

                     echo "<br><div class='alert contenidoal' style='top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button> Borraste ($tipo) de $user.</div>";
                     }

                     

                  }

               ?>     
            </div>
   </div>
   <!-- /container -->
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<?php 
   include "../Templates/Footer.php";
   
   
   
   ?>