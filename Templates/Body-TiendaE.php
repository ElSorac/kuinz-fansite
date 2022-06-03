<?php
  $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
  
  
  
  while($row = mysqli_fetch_array($query))
  
  
  
  {
  
  
  
    $rangouser = $row['rank'];
  
  
  
  }
  
  
  
  if("$rangouser" == "1"){
  
  
  
  header("Location: " . $_SERVER['HTTP_REFERER']);
  
  
  
    exit;
  
  
  
  }
  
  
  
  ?>  
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading orange">
          <h3 class="panel-title">
            <div class='contedor-badge'><img src="/images/elite-k.png"></div>
            Tienda Elite (Solo miembros pase élite)
          </h3>
        </div>
        <center>
          <hr>
          <img src="https://kekocity.com/imagesnew/game/caja.png">  ¡Hola <b><?php echo $username ?></b>!, no olvides que al realizar una compra debes comunicarte con un Encargado o Staff.
          <hr>
          <img src="/images/icono.png">Es <b><font color="red">OBLIGATORIO</font></b> que tu nombre sea el mismo de <b>KekoCity</b>, esto nos ayudara a saber que es tu cuenta!
          <hr>
        </center>
        <div class="panel-body">
          <?php
            $query = $link->query("SELECT * FROM tiendae  order by id DESC");
            
            ?>
          <table class="table table-striped">
            <thead>
              <tr>
                <th></th>
                <th><?php echo $lang[42]; ?></th>
                <th><?php echo $lang[44]; ?></th>
                <th>Disponibles</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php
                while($row = mysqli_fetch_array($query)){
                
                
                
                  $code_placa = $row['code_placa'];
                
                
                
                  $placa_code = $link->query("SELECT * FROM placase WHERE code = '".$code_placa."'");
                
                  while($placa = mysqli_fetch_array($placa_code)){
                
                
                
                          $placa_img = $placa['imagen'];
                
                          if ($row['icono'] == 'fichas') {
                
                            $icono = './images/fichas.png';
                
                          }
                
                
                
                          if ($row['icono'] == 'puntos') {
                
                              $icono = './images/puntos.png';
                
                          }
                
                          if ($row['icono'] == 'tokens') {
                
                              $icono = './images/tokens.png';
                
                          }
                
                  }
                
                ?>
              <tr>
                <td></td>
                <td>
                  <div data-toggle="tooltip" title="" class="badgehabbink" data-original-title="<?php echo $code_placa; ?>                          ">
                    <div class="iconbadge"><img style="float:center;" src="<?php echo $placa_img; ?>" alt=""></div>
                  </div>
                </td>
                <td><img src="<?php echo $icono; ?>" alt=""><?php echo $row['precio']; ?> <?php echo $row['icono']; ?></td>
                <td><?php echo $row['unidades']; ?></td>
                <td>
                  <form class="form-horizontal" action="shop-elite.php" method="post" enctype="multipart/form-data"><input type="hidden" name="id_placa" value="<?php echo $row['id']; ?>"/><button type="submit" name="guardar" class="btn btn-primary"><?php echo $lang[46]; ?></button></form>
                </td>
              </tr>
              <?php
                }
                
                ?>
            </tbody>
          </table>
          <?php
            if (isset($_POST['guardar'])) {
            
                if($_SESSION["logeado"] == "SI"){
            
            
            
                    $tienda = $link->query("SELECT * FROM tiendae WHERE id = '".$_POST['id_placa']."'");
            
                    while($row = mysqli_fetch_array($tienda)){
            
                            $placa_code = $row['code_placa'];
            
                            $unidades = $row['unidades'];
            
                            $precio = $row['precio'];
            
                            $tipo = $row['icono'];
            
                            }
            
            
            
                    $datos_user = $link->query("SELECT * FROM usuarios WHERE username = '".$usuario_activo."'");
            
                    while($row = mysqli_fetch_array($datos_user)){
            
                            $fichas = $row['fichas'];
            
                            $puntos = $row['puntos'];
            
                            $tokens = $row['tokens'];
            
                            }
            
            
            
                            if ($tipo == 'fichas') {
            
                              $dinero_user = $fichas;
            
                            }
            
            
            
                            if ($tipo == 'puntos') {
            
                              $dinero_user = $puntos;
            
                            }
            
            
            
                            if ($tipo == 'tokens') {
            
                              $dinero_user = $tokens;
            
                            }
            
            
            
                    $revisar = $link->query("SELECT * FROM usuarios_placase WHERE (username = '".$username."') AND (code_placa = '".$placa_code."')");
            
                            $revisar1 = mysqli_num_rows($revisar);
            
            
            
                    if ($unidades == '0') {
            
                      echo "<div class='alert alert-no contenidoal' style='background-color:red;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button> Se agotaron las unidades del furni: <b>$placa_code</b></div>";
            
                    } else {
            
            
            
                            if ($precio > $dinero_user) {
            
                              echo "<div class='alert alert-no contenidoal' style='background-color:red;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button>No tienes suficientes <img src='/images/$tipo.png'> $tipo </div>";
            
                            } else {
            
            
            
                             if ($revisar1 != '0') {
                	echo "<div class='alert alert-no contenidoal' style='background-color:red;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button><img src='https://kekocity.com/imagesnew/game/caja.png'> Ya tienes el furni: <b>$placa_code</b> en tu inventario.</div>";
                }
 else {
            
            
            
              $fecha_log = date ('d-M-Y h:i:s', time());
            
            
            
            $descuento = $dinero_user - $precio;
            
            $descuento_unidad = $unidades - 1;
            
            
            
            $consulta = "UPDATE tiendae SET unidades='$descuento_unidad' WHERE id ='".$_POST['id_placa']."'";
            
            $resultado = $link->query($consulta);
            
            
            
            $consulta = "UPDATE usuarios SET $tipo='$descuento' WHERE username ='$usuario_activo'";
            
            $resultado = $link->query($consulta);
            
            
            
            $envio_placa = "INSERT INTO usuarios_placase (username,code_placa,img) values ('" . $usuario_activo . "','" . strip_tags($placa_code) . "','".$placa_img."')";
            
            
            
            if ($link->query($envio_placa)) { 
            
              
            
            // Guardar acción en Logs si se ha iniciado sesión
            
            $accion = "Ha comprado <b>($placa_code)</b> en la tienda elite.";
            
            $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$usuario_activo."','".$accion."','".$fecha_log."')";
            
            $link->query($enviar_log);
            
            // Log guardado en Base de datos
            
              
            
            echo "<div class='alert alert-si contenidoal' style='background-color:green;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button><img src='https://kekocity.com/imagesnew/game/caja.png'> Compraste el furni: <b>$placa_code</b> correctamente <br><a style='color:cyan;' href='perfil.php?user=$username'>Ver inventario</a></div>";
            
                }else {
            
              echo "<div class='alert alert-no contenidoal' style='background-color:red;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button>Ha habido un problema al realizar la compra...</div>";
            
            }
            
            }
            
            }
            
            }
            
              } else {
            
                echo "<div class='alert alert-no contenidoal' style='background-color:red;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button>Debes iniciar sesión para comprar el furni: <b>$code_placa</b></div>  <script>location = 'shop-elite.php';</script>
";
            
              } 
            
            }
            
            ?>
        </div>
      </div>
    </div>


 <div class="col-md-4">
      <?php echo $redes_sociales; ?>
      <?php echo $cartel_publicidad; ?>
    </div>
  </div>
  <script>
    $(document).ready(function(){
    
      load(1);
    
    });
    
    function load(page){
    
      var parametros = {"action":"ajax","page":page};
    
      $("#loader").fadeIn('slow');
    
      $.ajax({
    
        url:'kernel/ajax/Body_TiendaE_ajax.php',
    
        data: parametros,
    
         beforeSend: function(objeto){
    
        $("#loader").html("<img src='hk/loader.gif'>");
    
        },
    
        success:function(data){
    
          $(".outer_div").html(data).fadeIn('slow');
    
          $("#loader").html("");
    
        }
    
      })
    
    }
    
  </script>
</div>
<div class="container" style="display: none;">
  <div class="row">
    <div class="col-md-8">
      <?php
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 3");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
          $idrank3 = $row['id'];
        
        }
        
        
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 5");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
          $idrank5 = $row['id'];
        
        }
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 6");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
          $idrank6 = $row['id'];
        
        }
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 7");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
          $idrank7 = $row['id'];
        
        }
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 8");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
          $idrank8 = $row['id'];
        
        }
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 9");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
          $idrank9 = $row['id'];
        
        }
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 10");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
          $idrank10 = $row['id'];
        
        }
        
        if(isset($idrank10) && $idrank10){
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id = 10");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
        ?>
      <div class="panel panel-default">
        <div class="panel-heading <?php echo $row['color']; ?>
          ">
          <h3 class="panel-title">
            <div class='contedor-badge'>
              <div class='icon-news'></div>
            </div>
            <?php echo $row['nombre']; ?>
          </h3>
        </div>
        <div class="panel-body">
          <?php }
            $resultado = $link->query("SELECT * FROM usuarios WHERE rank = 10");
            
            while($row = mysqli_fetch_array($resultado))
            
            {
            
            ?>
          <div class="panel-users">
            <div class="usercontenedor">
              <center>
                <div class="userperfileindex">
                  <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                </div>
                <div class="nameuserperfil">
                  <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                  </a>
                </div>
              </center>
            </div>
          </div>
          <?php
            }
            
            ?>
        </div>
      </div>
      <?php } ?>
      <?php 
        if(isset($idrank3) && $idrank3){
        
        $resultado = $link->query("SELECT * FROM rangos WHERE id =2");
        
        while($row = mysqli_fetch_array($resultado))
        
        {
        
        ?>
      <div class="panel panel-default">
        <div class="panel-heading blue">
          <h3 class="panel-title">
            <div class='contedor-badge'>
              <img src="../images/elite-k.png" style="width:40px;">
            </div>
            Usuarios con <b><?php echo $row['nombre']; ?></b>
          </h3>
        </div>
        <div class="panel-body">
          <?php }
            $resultado = $link->query("SELECT * FROM (usuarios)WHERE rank =2");
            
            while($row = mysqli_fetch_array($resultado))
            
            {
            
            ?>

          <div class="panel-users">
            <div class="usercontenedor">
              <center>
                <main><img src="<?php echo $row['avatar']; ?>" alt="" style="width:35px;height:30px; background-color: rgba(0, 0, 0, 0.1); padding: 3px;"></main>
                <main class="nameuserperfil" style="width: auto;">
                  <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                  </a>
                </main>
              </center>
            </div>
          </div>
          <?php
            }
            
            ?>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<!-- /container -->
<!-- /container -->