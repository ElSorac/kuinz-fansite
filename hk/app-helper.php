<?php
   include "../Templates/Hk_Head.php";
   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
   while($row = mysqli_fetch_array($query))
   {
     $rangouser = $row['rank'];
   }
   if(in_array($rangouser, array(1,2))){
    header("Location: ".$_SERVER['HTTP_REFERER']);
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
.hace {
    display: inline-block;
    width: 100%;
    margin-top: -3px;
    height: 15px;
    color: white;
    padding-left: 20px;
    padding-top: 2px;
    background: url(/imagesnew/app/hace.png) no-repeat;
}
.boxkweet {
    z-index: 2;
    padding: 10px;
    color: #fff;
    background: #2C2B2C;
    margin: 5px;
    border-radius:15px 15px 0 0;
    border: 2px solid rgba(0, 0, 0, 0.4);
}

.tituloglobos {
    font-size: 12px;
    font-weight: bold;
    margin-top: 6px;
    padding: 4px;
    color: #2C2C2C;
    border-bottom: 1px solid #D9D9D9;
}
.linkde {
    cursor: pointer;
    color: white;
}

.fleft {
    float: left;
}

.radinoti {
    width: 32px;
    height: 32px;
    margin-top: -2px;
    margin-right: 5px;
}
.fright {
    float: right;
}
.opciones {
    cursor: pointer;
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
   <div class="row">
     <main style="padding: 50px;" class="fleft">
   <div class="cuadro-info">
      <form action="" method="post" enctype="multipart/form-data">
         <font class="h2-reset">Insertar capturas</font>
         <br>
         <font class="h3-reset">Captura #1</font><input type="text" class="biginputkc" name="image" placeholder="URL imagen" required>
         <br>
         <font class="h3-reset">Captura #2</font><input type="text" class="biginputkc" name="image2" placeholder="URL imagen" required>
         <br>
         <font class="h3-reset">Captura #3</font><input type="text" class="biginputkc" name="image3" placeholder="URL imagen" required>
         <br>
         <font class="h3-reset">Captura #4</font><input type="text" class="biginputkc" name="image4" placeholder="URL imagen" required>
         <br><br>
         <font size="2x" color="white">Si no colocaras nada en las demás casillas rellenalo con lo siguiente:<br><code>/images/no-image.png</code></font>
         <br>
         <br>
         <input type="submit" class="btnkc" name="guardar" value="Enviarr">
      </form>
   </div>
</main>
    <main class="cuadro-info fright">
        <iframe src="https://images-kuinz.online/es/" width="500px" height="400px"></iframe>
    </main>
      </div>
   </div>

<?php
if ($_POST['image'] && $_POST['image2'] && $_POST['image3'] && $_POST['image4']) {
    
    $consulta1 = $link->query("SELECT * FROM usuarios WHERE username = '" . $_POST['user'] . "'");
    $userData = mysqli_fetch_array($consulta1);
    
    $resultado = $link->query("SELECT * FROM usuarios WHERE username = '$username'");
       while ($row = mysqli_fetch_array($resultado)) {
        $user = $row['username'];
        $u_id = $row['ID'];
        $u_rank = $row['rank'];
    }
    
    $app_img = $_POST['image'];
    $app_img2 = $_POST['image2'];
    $app_img3 = $_POST['image3'];
    $app_img4 = $_POST['image4'];
    
    if ($userData['username'] == "Carlos") {
        
        echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button> Cuidado con lo que intentas hacer.</div>";
        
    } else {
        
        $fecha_log = date ('d-M-Y h:i:s', time());
        
        $actualizar = "INSERT INTO app_helpers (user_id,username,image,image2,image3,image4,fecha) values ('".$u_id."', '".$user."','".strip_tags($app_img)."','".strip_tags($app_img2)."','".strip_tags($app_img3)."','".strip_tags($app_img4)."', '".$fecha_log."')";
        $link->query($actualizar);

        // Guardar acción en Logs si se ha iniciado sesión
        
        $accion = "$user, subio captura del app de helper.";
        
        $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
        
        $link->query($enviar_log);

        echo "<br><div class='alert contenidoal' style='top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button>Subiste tu captura correctamente.</div>";
        
                
    }
}

?>
<center>
    <br><br>
    <div class='container'>
    <div style='border-bottom: #ddd solid 1px;padding: 0px 0px 10px 15px;'>
        <a href='eliminar/apps_helpers_all.php'>
            <button type='button' class='btn btn-sm btn-danger'>Borrar todo los post</button>
        </a>
    </div>
</div>
</center>
<div class="container">

<div class="boxkweet">
    <center><font class="h1-reset">Capturas del trabajo de Helpers</font></center>
<?php
    $resultado = $link->query("SELECT * FROM app_helpers ORDER BY id DESC");
        while($row = mysqli_fetch_array($resultado)){
        $u_name = $row['username'];
        $fecha = $row['fecha'];
        $image = $row['image'];
        $image2 = $row['image2'];
        $image3 = $row['image3'];
        $image4 = $row['image4'];
        $app_img_id = $row['id'];
?>
<?php 
    $consulta1 = $link->query("SELECT * FROM usuarios WHERE username = '" . $u_name . "'");
    while($row = mysqli_fetch_array($consulta1)){
        $u_avatar = $row['avatar'];
        $rangouseruser = $row['rank'];
?>
   <div class="tituloglobos" style="height:40px;">
      <img src="<?php echo $u_avatar ?>" class="fleft radinoti">
      <div class="fleft">
         <a href="/perfil.php?user=<?php echo $u_name ?>"><span class="linkde"><?php echo $u_name ?></span></a>
         <div class="hace"><?php echo $fecha ?></div>
      </div>
      <?php if("$rangouser" >= "5"){
        echo "<a href='eliminar/app_helpers.php?id=$app_img_id'><img src='/images/x.png' class='opciones fright'></a>"
    ?>
    <?php } ?>
   </div>
   <div style="font-size:14px;margin-top:8px;margin-bottom:8px;padding:5px;">
      <div style="margin-top:10px;display:block">
         <center>
            <img src="<?php echo $image  ?>" style="width: 250px; height: 200px; padding: 2px;">
            <img src="<?php echo $image2 ?>" style="width: 250px; height: 200px; padding: 2px;">
            <img src="<?php echo $image3 ?>" style="width: 250px; height: 200px; padding: 2px;">
            <img src="<?php echo $image4 ?>" style="width: 250px; height: 200px; padding: 2px;">
         </center>
      </div>
   </div>
<?php } ?>
<?php } ?>
</div>
</div>

<?php include "../Templates/Footer.php";?>