<?php
   include "../Templates/Hk_Head.php";

   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
   while($row = mysqli_fetch_array($query))
   {
     $rangouser = $row['rank'];
   }
   if(in_array($rangouser, array(1,2,3,4))){
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
     background:url(https://kekocity.com/imagesnew/home/btnkc2.png);
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
   <div class="row">
      <div class="panel panel-default">
         <div class="panel-heading blue">
            <h3 class="panel-title"><?php echo $lang[6]; ?></h3>
         </div>
         <div class="panel-body">
            <table class="table table-striped">
               <thead>
                  <tr>
                    <th></th>
                     <th>Nombre de usuario</th>
                     <th>Última conexión</th>
                     <th>Correo Electronico</th>
                     <th>Rango</th>
                  </tr>
               </thead>
               <tbody>
                  <?php
                     $resultado = $link->query("SELECT * FROM usuarios WHERE rank <= 8 and rank >= 5 ORDER BY rank DESC");
                     
                     while($row=mysqli_fetch_array($resultado))
                     
                     {
                     
                     ?>
                  <tr>
                     <td><font size="1mm"><?php echo "$row[ID]"; ?></font></td>
                     <td><img class="userperfileindex" style="height: 40px; width: 40px;" src="<?=$row['avatar']?>"> <?php echo "$row[username]" ?></td>
                     <td><?php echo "$row[ultimavez]"; ?></td>
                     <td><?php echo "$row[email]"; ?></td>
                     <td><?php echo "$row[rank]"; ?></td>
                  </tr>
                  <?php
                     }
                     
                       ?>
               </tbody>
            </table>
         </div>
      </div>
      <main style="padding: 50px;">
   <div class="form-new">
      <form action="" method="post" enctype="multipart/form-data">
         <label>Nombre de usuario</label>
         <input type="text" class="biginputkc" name="user" placeholder="Nombre de usuario" required=""><br>
         <label>Rango:</label>
         <select name="rango">
             <option class="option" disabled>Elige el rango</option>
             <option value="1" class="option">Usuario</option>
             <option value="2" class="option">Pase Elite</option>
             <option value="3" class="option">Moderador</option>
             <option value="4" class="option">Developer</option>
             <option value="5" class="option">Fundador</option>
         </select>
         <button type="submit" class="form-btn">Ascender</button>
      </form>
   </div>
</main>
      </div>
   </div>

<?php
if ($_POST['rango'] && $_POST['user']) {
    
    $consulta1 = $link->query("SELECT * FROM usuarios WHERE username = '" . $_POST['user'] . "'");
    // Obtener la información del usuario
    $userData = mysqli_fetch_assoc($consulta1);

    $revisar1 = $_POST['rango'];
    $user = $_POST['user'];
    
    
    
    if (!$userData) {
        
        echo "<br><div class='alerta-no'>$lang[383]</div>";
        
    }else if ($userData['username'] == "Krozox" || $userData['username'] == "Carlos" || $userData['username'] == "Rutierrez") {
        
        echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button> Cuidado con lo que intentas hacer.</div>";
        
    } else {
        
        $fecha_log = date ('d-M-Y h:i:s', time());

        $rango_opcion = $_POST['rango'];
        
        $actualizar = "UPDATE usuarios SET rank = '$rango_opcion' WHERE username = '" . $_POST['user'] . "' ";
        
        $link->query($actualizar);

        // Guardar acción en Logs si se ha iniciado sesión
        
        $accion = "Ascendio al usuario ($user) al rango ($rango_opcion)";
        
        $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha_log . "')";
        
        $link->query($enviar_log);

        echo "<br><div class='alert contenidoal' style='top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button> Ascendiste a $user.</div>";
        
                
    }

    
}

?>

<?php include "../Templates/Footer.php";?>