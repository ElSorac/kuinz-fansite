<div class="container">
   <?php 
      if($_SESSION["logeado"] != "SI"){
      
      header ("Location: ../index");
      
      }
      
      ?>
   <div class="row">
      <div class="col-md-8">
         <?php if(isset($_GET['regalos'])){?>
         <div class="panel panel-default">
            <div class="panel-heading blue">
               <h3 class="panel-title"><?php echo $lang[136]; ?></h3>
            </div>
            <div class="panel-body">
               <?php 
                  $mensajes_recibidos = $link->query("SELECT * FROM usuarios_regalos WHERE user_recibido = '".$username."'");
                  
                  $mensajes_recibidos_r = mysqli_num_rows($mensajes_recibidos);
                  
                        if("$mensajes_recibidos_r" == "0"){
                  
                            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[141]</div>";
                  
                        } else {
                  
                          ?>
               <table class="table table-striped">
                  <thead>
                     <tr>
                        <th><?php echo $lang[137]; ?></th>
                        <th><?php echo $lang[138]; ?></th>
                        <th><?php echo $lang[139]; ?></th>
                        <th><?php echo $lang[140]; ?></th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php 
                        $resultado = $link->query("SELECT * FROM usuarios_regalos WHERE user_recibido = '".$username."' ORDER BY id DESC");
                        
                        while($row = mysqli_fetch_array($resultado)){
                        
                          $user_recibido = $row['user_recibido'];
                        
                          $user_enviado = $row['user_enviado'];
                        
                          $asunto_regalo = $row['asunto_regalo'];
                        
                          $mensaje_regalo = $row['mensaje_regalo'];
                        
                          $regalo = $row['code_placa'];
                        
                          $id_regalo = md5($row['id']);
                        
                          ?>
                     <tr>
                        <td><?php echo $user_enviado; ?></button>
                        <td><?php echo $asunto_regalo; ?></td>
                        <td><?php echo $lang[143]; ?>: <?php echo $regalo; ?></button>
                        <td><button data-toggle="modal" data-target="#enviar_mensaje" class='btn btn-xs btn-default'><?php echo $lang[144]; ?></button> <button data-toggle="modal" data-target="#ver_regalo_<?php echo $id_regalo; ?>" class='btn btn-xs btn-default'><?php echo $lang[142]; ?></button></td>
                     </tr>
                     <!-- Modal -->
                     <div class="modal fade" id="ver_regalo_<?php echo $id_regalo; ?>" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content">
                              <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                 <h4 class="modal-title"><?php echo $lang[145]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo $user_enviado; ?>"><?php echo $user_enviado; ?></a></h4>
                              </div>
                              <div class="modal-body">
                                 <form class="form-horizontal" action="ajustes.php?regalos" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                       <div class="form-group">
                                          <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[96]; ?>:</label>
                                          <div class="col-lg-10">
                                             <?php echo $asunto_regalo; ?>
                                          </div>
                                       </div>
                                       <br>
                                       <div class="form-group">
                                          <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[97]; ?>:</label>
                                          <div class="col-lg-10">
                                             <?php echo $mensaje_regalo; ?>
                                          </div>
                                       </div>
                                       <br>
                                       <div class="form-group">
                                          <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[139]; ?>:</label>
                                          <div class="col-lg-10">
                                             Placa: <?php echo $regalo; ?> 
                                             <?php 
                                                $placa1=$link->query("SELECT * FROM placas WHERE code = '".$regalo."'");
                                                
                                                while($row = mysqli_fetch_array($placa1)){
                                                
                                                  $imagen_placa = $row['imagen']; ?>
                                             <img src="<?php echo $imagen_placa; ?>">
                                             <?php } ?>
                                          </div>
                                       </div>
                                    </fieldset>
                                 </form>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- Modal -->
                     <div class="modal fade" id="enviar_mensaje" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content">
                              <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                 <h4 class="modal-title"><?php echo $lang[95]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo $user_enviado; ?>"><?php echo $user_enviado; ?></a></h4>
                              </div>
                              <div class="modal-body">
                                 <form class="form-horizontal" action="ajustes.php?regalos" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                       <div class="form-group">
                                          <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[96]; ?></label>
                                          <div class="col-lg-10">
                                             <input type="text" class="form-control" name="asunto" value="Respuesta: <?php echo $asunto_regalo; ?>" placeholder="Usuario Reportado">
                                          </div>
                                       </div>
                                       ´<br>
                                       <div class="form-group">
                                          <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[97]; ?></label>
                                          <div class="col-lg-10">
                                             <textarea class="form-control" rows="3" name="mensaje" placeholder="<?php echo $lang[106]; ?> <?php echo $user_enviado; ?>" id="textArea"></textarea>
                                          </div>
                                       </div>
                                       <br>
                                       <div class="form-group">
                                          <div class="col-lg-10 col-lg-offset-2">
                                             <button type="reset" data-dismiss="modal" class="btn btn-default"><?php echo $lang[68]; ?></button>
                                             <button type="submit" name="guardar" class="btn btn-primary"><?php echo $lang[144]; ?></button>
                                          </div>
                                       </div>
                                    </fieldset>
                                 </form>
                              </div>
                           </div>
                        </div>
                     </div>
                     <?php } ?>
                  </tbody>
               </table>
               <?php
                  if ($_POST['mensaje'] && $_POST['asunto']) {
                  
                      if($_SESSION["logeado"] == "SI"){
                  
                    $fecha_log = date ('d-M-Y h:i:s', time());
                  
                  $enviar1 = "INSERT INTO usuarios_mensajes_privados (user_enviado,user_recibido,asunto,mensaje,fecha) values ('".$usuario_activo."','".$user_enviado."','".strip_tags($_POST['asunto'])."','".strip_tags($_POST['mensaje'])."','".$fecha_log."')";
                  
                  
                  
                  if ($link->query($enviar1)) { 
                  
                    
                  
                  // Guardar acción en Logs si se ha iniciado sesión
                  
                  
                  
                  $accion = "$lang[116] $user_enviado";
                  
                  $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$usuario_activo."','".$accion."','".$fecha_log."')";
                  
                  $link->query($enviar_log);
                  
                  // Log guardado en Base de datos
                  
                    
                  
                  echo "<div class='alert alerta-si alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[99]: $user_enviado $lang[71]</div>";
                  
                      }}else {
                  
                    echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[100]</div>";
                  
                  }
                  
                    }
                  
                  ?>
               <?php } ?>
            </div>
         </div>
         <div class="panel panel-default">
            <div class="panel-heading green">
               <h3 class="panel-title"><?php echo $lang[132]; ?></h3>
            </div>
            <div class="panel-body">
               <?php 
                  $mensajes_enviados = $link->query("SELECT * FROM usuarios_regalos WHERE user_enviado = '".$usuario_activo."'");
                  
                  $mensajes_enviados_r = mysqli_num_rows($mensajes_enviados);
                  
                        if("$mensajes_enviados_r" == "0"){
                  
                            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[146]</div>";
                  
                        } else {
                  
                          ?>
               <table class="table table-striped">
                  <thead>
                     <tr>
                        <th><?php echo $lang[138]; ?></th>
                        <th><?php echo $lang[96]; ?></th>
                        <th><?php echo $lang[103]; ?></th>
                        <th><?php echo $lang[147]; ?></th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php
                        $resultado = $link->query("SELECT * FROM usuarios_regalos WHERE user_enviado = '".$usuario_activo."' ORDER BY id DESC");
                        
                        while($row = mysqli_fetch_array($resultado)){
                        
                          $user_recibido = $row['user_recibido'];
                        
                          $user_enviado = $row['user_enviado'];
                        
                          $asunto_regalo1 = $row['asunto_regalo'];
                        
                          $mensaje_regalo1 = $row['mensaje_regalo'];
                        
                          $regalo = $row['code_placa'];
                        
                          $id_regalo = md5($row['id']);
                        
                          ?>
                     <tr>
                        <td><?php echo $user_recibido; ?></button>
                        <td><?php echo $asunto_regalo1; ?></td>
                        <td>Placa: <?php echo $regalo; ?></button>
                        <td><button data-toggle="modal" data-target="#ver_regalo_<?php echo $id_regalo; ?>" class='btn btn-xs btn-default'><?php echo $lang[148]; ?></button></td>
                        <!-- Modal -->
                        <div class="modal fade" id="ver_regalo_<?php echo $id_regalo; ?>" role="dialog">
                           <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title"><?php echo $lang[149]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo $user_recibido; ?>"><?php echo $user_recibido; ?></a></h4>
                                 </div>
                                 <div class="modal-body">
                                    <form class="form-horizontal" action="ajustes.php?regalos" method="post" enctype="multipart/form-data">
                                       <fieldset>
                                          <div class="form-group">
                                             <label class="col-lg-2 control-label"><?php echo $lang[96]; ?>:</label>
                                             <div class="col-lg-10">
                                                <?php echo $asunto_regalo1; ?>
                                             </div>
                                          </div>
                                          <br>
                                          <div class="form-group">
                                             <label class="col-lg-2 control-label"><?php echo $lang[110]; ?>:</label>
                                             <div class="col-lg-10">
                                                <?php echo $mensaje_regalo1; ?>
                                             </div>
                                          </div>
                                          <br>
                                          <div class="form-group">
                                             <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[103]; ?>:</label>
                                             <div class="col-lg-10">
                                                <?php echo $lang[42]; ?>: <?php echo $regalo; ?> 
                                                <?php 
                                                   $placa1=$link->query("SELECT * FROM placas WHERE code = '".$regalo."'");
                                                   
                                                   while($row = mysqli_fetch_array($placa1)){
                                                   
                                                    $imagen_placa = $row['imagen']; ?>
                                                <img src="<?php echo $imagen_placa; ?>">
                                                <?php } ?>
                                             </div>
                                          </div>
                                       </fieldset>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </tr>
                     <?php } ?>
                  </tbody>
               </table>
               <?php } ?>
            </div>
         </div>
         <?php } ?>
         <?php if(isset($_GET['mensajes'])){?>
         <div class="panel panel-default">
            <div class="panel-heading red">
               <h3 class="panel-title"><?php echo $lang[150]; ?></h3>
            </div>
            <div class="panel-body">
               <?php 
                  $mensajes_recibidos = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_recibido = '".$username."'");
                  
                  $mensajes_recibidos_r = mysqli_num_rows($mensajes_recibidos);
                  
                        if("$mensajes_recibidos_r" == "0"){
                  
                            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[151]</div>";
                  
                        } else {
                  
                          ?>
               <table class="table table-striped">
                  <thead>
                     <tr>
                        <th><?php echo $lang[137]; ?></th>
                        <th><?php echo $lang[96]; ?></th>
                        <th><?php echo $lang[140]; ?></th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php 
                        $resultado = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_recibido = '".$username."' ORDER BY id DESC");
                        
                        while($row = mysqli_fetch_array($resultado)){
                        
                          $user_enviado = $row['user_enviado'];
                        
                          $asunto_mensaje = $row['mensaje'];
                        
                          $id_mensaje = md5($row['id']);
                        
                          $asunto_recibido = $row['asunto'];
                        
                          $mensaje_recibido = $row['mensaje'];
                        
                          ?>
                     <tr>
                        <td><?php echo $user_enviado; ?></button>
                        <td><?php echo $asunto_recibido; ?></td>
                        <td><button data-toggle="modal" data-target="#enviar_mensaje" class='btn btn-xs btn-default'>Responder</button> <button data-toggle="modal" data-target="#ver_mensaje_<?php echo $id_mensaje; ?>" class='btn btn-xs btn-default'><?php echo $lang[140]; ?></button></td>
                     </tr>
                     <!-- Modal -->
                     <div class="modal fade" id="ver_mensaje_<?php echo $id_mensaje; ?>" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content">
                              <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                 <h4 class="modal-title"><?php echo $lang[153]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo $user_enviado; ?>"><?php echo $user_enviado; ?></a></h4>
                              </div>
                              <div class="modal-body">
                                 <form class="form-horizontal" action="ajustes.php?mensajes" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                       <div class="form-group">
                                          <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[96]; ?>:</label>
                                          <div class="col-lg-10">
                                             <?php echo $asunto_recibido; ?>
                                          </div>
                                       </div>
                                       <br>
                                       <div class="form-group">
                                          <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[97]; ?>:</label>
                                          <div class="col-lg-10">
                                             <?php echo $mensaje_recibido; ?>
                                          </div>
                                       </div>
                                    </fieldset>
                                 </form>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- Modal -->
                     <div class="modal fade" id="enviar_mensaje" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content">
                              <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                 <h4 class="modal-title"><?php echo $lang[154]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo $user_enviado; ?>"><?php echo $user_enviado; ?></a></h4>
                              </div>
                              <div class="modal-body">
                                 <form class="form-horizontal" action="ajustes.php?mensajes" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                       <div class="form-group">
                                          <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[96]; ?></label>
                                          <input type="hidden" name="user_enviado" value="<?php echo $user_enviado; ?>"/>
                                          <div class="col-lg-10">
                                             <input type="text" class="form-control" name="asunto" value="<?php echo $lang[155]; ?>: <?php echo $asunto_recibido; ?>" placeholder="">
                                          </div>
                                       </div>
                                       ´<br>
                                       <div class="form-group">
                                          <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[97]; ?></label>
                                          <div class="col-lg-10">
                                             <textarea class="form-control" rows="3" name="mensaje" placeholder="<?php echo $lang[106]; ?> <?php echo $user_enviado; ?>" id="textArea"></textarea>
                                          </div>
                                       </div>
                                       <br>
                                       <div class="form-group">
                                          <div class="col-lg-10 col-lg-offset-2">
                                             <button type="reset" data-dismiss="modal" class="btn btn-default"><?php echo $lang[68]; ?></button>
                                             <button type="submit" name="guardar" class="btn btn-primary"><?php echo $lang[98]; ?></button>
                                          </div>
                                       </div>
                                    </fieldset>
                                 </form>
                              </div>
                           </div>
                        </div>
                     </div>
                     <?php } ?>
                  </tbody>
               </table>
               <?php
                  if ($_POST['mensaje'] && $_POST['asunto']) {
                  
                      if($_SESSION["logeado"] == "SI"){
                  
                    $fecha_log = date ('d-M-Y h:i:s', time());
                  
                  $enviar1 = "INSERT INTO usuarios_mensajes_privados (user_enviado,user_recibido,asunto,mensaje,fecha) values ('".$usuario_activo."','".$_POST['user_enviado']."','".strip_tags($_POST['asunto'])."','".strip_tags($_POST['mensaje'])."','".$fecha_log."')";
                  
                  
                  
                  if ($link->query($enviar1)) { 
                  
                    
                  
                  // Guardar acción en Logs si se ha iniciado sesión
                  
                  
                  
                  $accion = "$lang[116] $_POST[user_enviado]";
                  
                  $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$usuario_activo."','".$accion."','".$fecha_log."')";
                  
                  $link->query($enviar_log);
                  
                  // Log guardado en Base de datos
                  
                    
                  
                  echo "<div class='alert alerta-si alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[99]: $user_enviado $lang[71]</div>";
                  
                      }}else {
                  
                    echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[100]</div>";
                  
                  }
                  
                    }
                  
                  ?>
               <?php } ?>
            </div>
         </div>
         <div class="panel panel-default">
            <div class="panel-heading blue">
               <h3 class="panel-title"><?php echo $lang[156]; ?></h3>
            </div>
            <div class="panel-body">
               <?php 
                  $mensajes_enviados = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_enviado = '".$username."'");
                  
                  $mensajes_enviados_r = mysqli_num_rows($mensajes_enviados);
                  
                        if("$mensajes_enviados_r" == "0"){
                  
                            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[157]</div>";
                  
                        } else {
                  
                          ?>
               <table class="table table-striped">
                  <thead>
                     <tr>
                        <th><?php echo $lang[138]; ?></th>
                        <th><?php echo $lang[96]; ?></th>
                        <th><?php echo $lang[140]; ?></th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php 
                        $resultado = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_enviado = '".$username."' ORDER BY id DESC");
                        
                        while($row = mysqli_fetch_array($resultado)){
                        
                          $user_recibido = $row['user_recibido'];
                        
                          $asunto_mensaje1 = $row['asunto'];
                        
                          $mensaje_mensaje1 = $row['mensaje'];
                        
                          $id_mensaje = md5($row['id']);
                        
                          ?>
                     <tr>
                        <td><?php echo $user_recibido; ?></button>
                        <td><?php echo $asunto_mensaje1; ?></td>
                        <td><button data-toggle="modal" data-target="#ver_mensaje_<?php echo $id_mensaje; ?>" class='btn btn-xs btn-default'><?php echo $lang[152]; ?></button></td>
                     </tr>
                     <!-- Modal -->
                     <div class="modal fade" id="ver_mensaje_<?php echo $id_mensaje; ?>" role="dialog">
                        <div class="modal-dialog">
                           <!-- Modal content-->
                           <div class="modal-content">
                              <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                                 <h4 class="modal-title"><?php echo $lang[158]; ?> <a href="<?php echo $url; ?>/perfil.php?user=<?php echo $user_recibido; ?>"><?php echo $user_recibido; ?></a></h4>
                              </div>
                              <div class="modal-body">
                                 <form class="form-horizontal" action="ajustes.php?mensajes" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label"><?php echo $lang[96]; ?>:</label>
                                          <div class="col-lg-10">
                                             <?php echo $asunto_mensaje1; ?>
                                          </div>
                                       </div>
                                       <br>
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label"><?php echo $lang[97]; ?>:</label>
                                          <div class="col-lg-10">
                                             <?php echo $mensaje_mensaje1; ?>
                                          </div>
                                       </div>
                                    </fieldset>
                                 </form>
                              </div>
                           </div>
                        </div>
                     </div>
                     <?php } ?>
                  </tbody>
               </table>
               <?php } ?>
            </div>
         </div>
         <?php } ?>
         <?php if(isset($_GET['amigos'])){?>
         <div class="panel panel-default">
            <div class="panel-heading green">
               <h3 class="panel-title"><?php echo $lang[21]; ?></h3>
            </div>
            <div class="panel-body">
               <?php 
                  $amigos = $link->query("SELECT * FROM usuarios_amigos WHERE user = '".$username."'");
                  
                  $amigos_r = mysqli_num_rows($amigos);
                  
                        if("$amigos_r" == "0"){
                  
                            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[159]</div>";
                  
                        } else {
                  
                          ?>
               <table class="table table-striped">
                  <thead>
                     <tr>
                        <th></th>
                        <th><?php echo $lang[123]; ?></th>
                        <th><?php echo $lang[160]; ?></th>
                        <th><?php echo $lang[147]; ?></th>
                     </tr>
                  </thead>
                  <tbody>
                     <?php 
                        $resultado = $link->query("SELECT * FROM usuarios_amigos WHERE user = '".$username."'");
                        
                        while($row = mysqli_fetch_array($resultado)){
                        
                          $usuarios_amigo = $row['user_amigo'];
                        
                          $id_solicitud = $row['id'];
                        
                                $user_enavido1 = $row['user'];
                        
                          
                        
                          if($row['estado_solicitud'] == 'Confirmado'){
                        
                          $estado = "<form class='form-horizontal' action='$url/ajustes?amigos' method='post' enctype='multipart/form-data'>
                        
                          <button class='btn btn-xs btn-success'>$lang[161]</button> <input type='hidden' readonly='readonly' name='id_verificar' value='$id_solicitud'> <button type='submit' name='eliminar' class='btn btn-xs btn-danger'>$lang[162]</button>
                        
                          </form>";
                        
                          } else {
                        
                            $estado = "<form class='form-horizontal' action='$url/ajustes?amigos' method='post' enctype='multipart/form-data'>
                        
                            <button type='submit' name='aceptar' class='btn btn-xs btn-success'>$lang[163]</button> 
                        
                            <button type='submit' name='rechazar' class='btn btn-xs btn-danger'>$lang[164]</button>
                        
                            </form>
                        
                            "; 
                        
                          }
                        
                          ?>
                     <tr>
                        <td></td>
                        <td><?php echo $usuarios_amigo; ?></td>
                        <td><?php echo $estado; ?></td>
                        <td><a href="<?php echo $url; ?>/perfil.php?user=<?php echo $usuarios_amigo; ?>"><button type="button" class="btn btn-xs btn-default"><?php echo $lang[165]; ?></button></a></td>
                     </tr>
                     <?php } ?>
                  </tbody>
               </table>
               <?php } ?>
            </div>
         </div>
         <?php
            if (isset($_POST['aceptar'])) {
            
                if($_SESSION["logeado"] == "SI"){
            
              $fecha_log = date ('d-M-Y h:i:s', time());
            
              
            
            $enviar1 = "UPDATE usuarios_amigos SET estado_solicitud='Confirmado' WHERE id = $id_solicitud";
            
            $enviar2 = "INSERT INTO usuarios_amigos (user,user_amigo,estado_solicitud) values ('".$usuarios_amigo."','".$username."','Confirmado')";
            
            
            
            if ($link->query($enviar1)) { 
            
            if ($link->query($enviar2)) { 
            
            echo "<div style='border-radius:5px;padding:10px;background-color:green;color:#fff;'>$lang[166] $usuarios_amigo $lang[167]</div>";
            
                }}}else {
            
              echo "<div style='border-radius:5px;padding:10px;background-color:red;color:#fff;'>$lang[168]</div>";
            
            }
            
              }
            
            ?>
         <?php
            if (isset($_POST['eliminar'])) {
            
                if($_SESSION["logeado"] == "SI"){
            
              $fecha_log = date ('d-M-Y h:i:s', time());
            
            
            
              $id_verificar = $_POST['id_verificar'];
            
            
            
              $verificar = $link->query("SELECT * FROM usuarios_amigos WHERE (id = '".$id_verificar."') AND (user = '".$usuario_activo."')");
            
              while ($row = mysqli_fetch_array($verificar)) {
            
                $nombre_amigo_user = $row['user_amigo'];
            
              }
            
              
            
            $enviar1 = "DELETE FROM usuarios_amigos WHERE (user = '".$nombre_amigo_user."') AND (user_amigo = '".$username."')";
            
            $enviar2 = "DELETE FROM usuarios_amigos WHERE (user = '".$username."') AND (user_amigo = '".$nombre_amigo_user."')";
            
            
            
            if ($link->query($enviar1)) { 
            
            if ($link->query($enviar2)) { 
            
            echo "<div style='border-radius:5px;padding:10px;background-color:green;color:#fff;'>$lang[170] $nombre_amigo_user $lang[171]</div>";
            
                }}}else {
            
              echo "<div style='border-radius:5px;padding:10px;background-color:red;color:#fff;'>$lang[172]</div>";
            
            }
            
              }
            
            ?>
         <?php
            if (isset($_POST['rechazar'])) {
            
                if($_SESSION["logeado"] == "SI"){
            
              $fecha_log = date ('d-M-Y h:i:s', time());
            
              
            
            $enviar1 = "DELETE FROM usuarios_amigos WHERE id = $id_solicitud";
            
            $enviar2 = "DELETE FROM usuarios_amigos WHERE (user = '".$usuarios_amigo."') AND (user_amigo = '".$username."')";
            
            
            
            if ($link->query($enviar1)) { 
            
            echo "<div style='border-radius:5px;padding:10px;background-color:green;color:#fff;'>$lang[169]</div>";
            
                }}else {
            
              echo "<div style='border-radius:5px;padding:10px;background-color:red;color:#fff;'>$lang[173]</div>";
            
            }
            
              }
            
            ?>
         <?php 
            }   
            
            ?>
         <?php
            if(isset($_GET['ajustes'])){
            
            $default_ajuste = 0;
            
                }
            
            
            
            if(isset($_GET['amigos'])){
            
            $default_ajuste = 0;
            
                }
            
            
            
            if(isset($_GET['mensajes'])){
            
            $default_ajuste = 0;
            
                }
            
            
            
            if(isset($_GET['guardado'])){
            
            $default_ajuste = 1;
            
                }
            
            
            
            if(isset($_GET['no-guardado'])){
            
            $default_ajuste = 1;
            
                }
            
            
            
            if(empty($_GET)){
            
            $default_ajuste = 1;
            
                }
            
            
            
            
            
              ?>
         <?php if($default_ajuste == 1){ ?>
         <div class="panel panel-default">
            <div class="panel-heading orange">
               <h3 class="panel-title"><?php echo $lang[174]; ?></h3>
            </div>
            <div class="panel-body">
               <div class="eventotext">
                  <form action="ajustes.php" method="post" enctype="multipart/form-data">
                     <?php
                        $query = $link->query('SELECT * FROM usuarios WHERE username = "' .$username. '"');
                        
                        while($row = mysqli_fetch_array($query))
                        
                        {
                        
                        ?>
                     <input type="hidden" name="id" value="<?php echo $row['ID'];?>"/>
                     <!-- Main component for a primary marketing message or call to action -->
                     <br>
                     <label><?php echo $lang[50]; ?> </label>
                     <input style="margin-bottom: 10px;" type="email" class="form-control" name="email" placeholder="<?php echo $lang[176]; ?>" required="" value="<?php echo $row['email'];?>" />  <br>
                     <label><?php echo $lang[177]; ?></label>
                     <div class="input-group date">
                        <input type="text" id="nacimiento" class="form-control" name="fecha" placeholder="<?php echo $lang[177]; ?>" aria-describedby="basic-addon2" value="<?php echo $row['fecha'];?>" readonly="">
                     </div>
                     <br>
                     <label><?php echo $lang[178]; ?></label>
                     <input style="margin-bottom: 10px;" type="text" class="form-control" name="nombre" placeholder="<?php echo $lang[179]; ?>" value="<?php echo $row['nombre'];?>" />  <br>
                     <label><?php echo $lang[180]; ?></label>
                     <input style="margin-bottom: 10px;" type="text" class="form-control" name="apellido" placeholder="<?php echo $lang[181]; ?>" value="<?php echo $row['apellido'];?>" />  <br>
                     <label>Misión</label>
                     <input style="margin-bottom: 10px;" type="" class="form-control" maxlength="50" name="mision" placeholder="Misión max. 50" value="<?php echo $row['mision'];?>" />  <br>
                     <label>Url Video Youtube Embed</label>
                     <input style="margin-bottom: 10px;" type="text" class="form-control" name="anclado" placeholder="Ejemplo: zisuhZqTeH4" value="<?php echo $row['anclado'];?>" />  <br><img src="https://i.imgur.com/VOxwwsL.png"> Solo necesitaran colocar el id del video.
                     <br><br>
                     <div style="width:100%;height: 90px;">
                        <div style="float:left;">
                           <label>Mostrar Video</label><br>
                           <select name="mostrar_anclado">
                              <option value="<?php echo $row['mostraranclado'];?>"><?php echo $row['mostraranclado'];?></option>
                              <option value="<?php echo $row['mostraranclado'];?>"></option>
                              <option value="No"><?php echo $lang[183]; ?></option>
                              <option value="Si"><?php echo $lang[184]; ?></option>
                           </select>
                           <br><br>
                        </div>
                        <div style="float:left;margin-left:10%;">
                           <label><?php echo $lang[185]; ?></label><br>
                           <select name="mostrar_nombre_apellido">
                              <option value="<?php echo $row['mostrarnombreapellido'];?>"><?php echo $row['mostrarnombreapellido'];?></option>
                              <option value="<?php echo $row['mostrarnombreapellido'];?>"></option>
                              <option value="No"><?php echo $lang[183]; ?></option>
                              <option value="Si"><?php echo $lang[184]; ?></option>
                           </select>
                           <br><br>
                        </div>
                        <div style="float:left;margin-left:10%;">
                           <label><?php echo $lang[186]; ?></label><br>
                           <select name="mostrar_pais">
                              <option value="<?php echo $row['mostrarpais'];?>"><?php echo $row['mostrarpais'];?></option>
                              <option value="<?php echo $row['mostrarpais'];?>"></option>
                              <option value="No"><?php echo $lang[183]; ?></option>
                              <option value="Si"><?php echo $lang[184]; ?></option>
                           </select>
                           <br><br>
                        </div>
                     </div>
                     <div style="float:none;">
                        <label><?php echo $lang[125]; ?></label><br>
                        <select name="pais">
                           <option value="<?php echo $row['pais'];?>" selected><?php echo $row['pais'];?></option>
                           <option value="África do Sul">África do Sul</option>
                           <option value="Albânia">Albânia</option>
                           <option value="Alemanha">Alemanha</option>
                           <option value="Andorra">Andorra</option>
                           <option value="Angola">Angola</option>
                           <option value="Anguilla">Anguilla</option>
                           <option value="Antigua">Antigua</option>
                           <option value="Arábia Saudita">Arábia Saudita</option>
                           <option value="Argentina">Argentina</option>
                           <option value="Armênia">Armênia</option>
                           <option value="Aruba">Aruba</option>
                           <option value="Austrália">Austrália</option>
                           <option value="Áustria">Áustria</option>
                           <option value="Azerbaijão">Azerbaijão</option>
                           <option value="Bahamas">Bahamas</option>
                           <option value="Bahrein">Bahrein</option>
                           <option value="Bangladesh">Bangladesh</option>
                           <option value="Barbados">Barbados</option>
                           <option value="Bélgica">Bélgica</option>
                           <option value="Benin">Benin</option>
                           <option value="Bermudas">Bermudas</option>
                           <option value="Botsuana">Botsuana</option>
                           <option value="Brasil">Brasil</option>
                           <option value="Brunei">Brunei</option>
                           <option value="Bulgária">Bulgária</option>
                           <option value="Burkina Fasso">Burkina Fasso</option>
                           <option value="botão">botão</option>
                           <option value="Cabo Verde">Cabo Verde</option>
                           <option value="Camarões">Camarões</option>
                           <option value="Camboja">Camboja</option>
                           <option value="Canadá">Canadá</option>
                           <option value="Cazaquistão">Cazaquistão</option>
                           <option value="Chade">Chade</option>
                           <option value="Chile">Chile</option>
                           <option value="China">China</option>
                           <option value="Cidade do Vaticano">Cidade do Vaticano</option>
                           <option value="Colômbia">Colombia</option>
                           <option value="Congo">Congo</option>
                           <option value="Coréia do Sul">Coréia do Sul</option>
                           <option value="Costa do Marfim">Costa do Marfim</option>
                           <option value="Costa Rica">Costa Rica</option>
                           <option value="Croácia">Croácia</option>
                           <option value="Dinamarca">Dinamarca</option>
                           <option value="Djibuti">Djibuti</option>
                           <option value="Dominica">Dominica</option>
                           <option value="EUA">EUA</option>
                           <option value="Egito">Egito</option>
                           <option value="El Salvador">El Salvador</option>
                           <option value="Emirados Árabes">Emirados Árabes</option>
                           <option value="Equador">Equador</option>
                           <option value="Eritréia">Eritréia</option>
                           <option value="Escócia">Escócia</option>
                           <option value="Eslováquia">Eslováquia</option>
                           <option value="Eslovênia">Eslovênia</option>
                           <option value="Espanha">Espanha</option>
                           <option value="Estônia">Estônia</option>
                           <option value="Etiópia">Etiópia</option>
                           <option value="Fiji">Fiji</option>
                           <option value="Filipinas">Filipinas</option>
                           <option value="Finlândia">Finlândia</option>
                           <option value="França">França</option>
                           <option value="Gabão">Gabão</option>
                           <option value="Gâmbia">Gâmbia</option>
                           <option value="Gana">Gana</option>
                           <option value="Geórgia">Geórgia</option>
                           <option value="Gibraltar">Gibraltar</option>
                           <option value="Granada">Granada</option>
                           <option value="Grécia">Grécia</option>
                           <option value="Guadalupe">Guadalupe</option>
                           <option value="Guam">Guam</option>
                           <option value="Guatemala">Guatemala</option>
                           <option value="Guiana">Guiana</option>
                           <option value="Guiana Francesa">Guiana Francesa</option>
                           <option value="Guiné-bissau">Guiné-bissau</option>
                           <option value="Haiti">Haiti</option>
                           <option value="Holanda">Holanda</option>
                           <option value="Honduras">Honduras</option>
                           <option value="Hong Kong">Hong Kong</option>
                           <option value="Hungria">Hungria</option>
                           <option value="Iêmen">Iêmen</option>
                           <option value="Ilhas Cayman">Ilhas Cayman</option>
                           <option value="Ilhas Cook">Ilhas Cook</option>
                           <option value="Ilhas Curaçao">Ilhas Curaçao</option>
                           <option value="Ilhas Marshall">Ilhas Marshall</option>
                           <option value="Ilhas Turks & Caicos">Ilhas Turks & Caicos</option>
                           <option value="Ilhas Virgens (brit.)">Ilhas Virgens (brit.)</option>
                           <option value="Ilhas Virgens(amer.)">Ilhas Virgens(amer.)</option>
                           <option value="Ilhas Wallis e Futuna">Ilhas Wallis e Futuna</option>
                           <option value="Índia">Índia</option>
                           <option value="Indonésia">Indonésia</option>
                           <option value="Inglaterra">Inglaterra</option>
                           <option value="Irlanda">Irlanda</option>
                           <option value="Islândia">Islândia</option>
                           <option value="Israel">Israel</option>
                           <option value="Itália">Itália</option>
                           <option value="Jamaica">Jamaica</option>
                           <option value="Japão">Japão</option>
                           <option value="Jordânia">Jordânia</option>
                           <option value="Kuwait">Kuwait</option>
                           <option value="Latvia">Latvia</option>
                           <option value="Líbano">Líbano</option>
                           <option value="Liechtenstein">Liechtenstein</option>
                           <option value="Lituânia">Lituânia</option>
                           <option value="Luxemburgo">Luxemburgo</option>
                           <option value="Macau">Macau</option>
                           <option value="Macedônia">Macedônia</option>
                           <option value="Madagascar">Madagascar</option>
                           <option value="Malásia">Malásia</option>
                           <option value="Malaui">Malaui</option>
                           <option value="Mali">Mali</option>
                           <option value="Malta">Malta</option>
                           <option value="Marrocos">Marrocos</option>
                           <option value="Martinica">Martinica</option>
                           <option value="Mauritânia">Mauritânia</option>
                           <option value="Mauritius">Mauritius</option>
                           <option value="México">México</option>
                           <option value="Moldova">Moldova</option>
                           <option value="Mônaco">Mônaco</option>
                           <option value="Montserrat">Montserrat</option>
                           <option value="Nepal">Nepal</option>
                           <option value="Nicarágua">Nicarágua</option>
                           <option value="Niger">Niger</option>
                           <option value="Nigéria">Nigéria</option>
                           <option value="Noruega">Noruega</option>
                           <option value="Nova Caledônia">Nova Caledônia</option>
                           <option value="Nova Zelândia">Nova Zelândia</option>
                           <option value="Omã">Omã</option>
                           <option value="Palau">Palau</option>
                           <option value="Panamá">Panamá</option>
                           <option value="Papua-nova Guiné">Papua-nova Guiné</option>
                           <option value="Paquistão">Paquistão</option>
                           <option value="Peru">Peru</option>
                           <option value="Polinésia Francesa">Polinésia Francesa</option>
                           <option value="Polônia">Polônia</option>
                           <option value="Porto Rico">Porto Rico</option>
                           <option value="Portugal">Portugal</option>
                           <option value="Qatar">Qatar</option>
                           <option value="Quênia">Quênia</option>
                           <option value="Rep. Dominicana">Rep. Dominicana</option>
                           <option value="Rep. Tcheca">Rep. Tcheca</option>
                           <option value="Reunion">Reunion</option>
                           <option value="Romênia">Romênia</option>
                           <option value="Ruanda">Ruanda</option>
                           <option value="Rússia">Rússia</option>
                           <option value="Saipan">Saipan</option>
                           <option value="Samoa Americana">Samoa Americana</option>
                           <option value="Senegal">Senegal</option>
                           <option value="Serra Leone">Serra Leone</option>
                           <option value="Seychelles">Seychelles</option>
                           <option value="Singapura">Singapura</option>
                           <option value="Síria">Síria</option>
                           <option value="Sri Lanka">Sri Lanka</option>
                           <option value="St. Kitts & Nevis">St. Kitts & Nevis</option>
                           <option value="St. Lúcia">St. Lúcia</option>
                           <option value="St. Vincent">St. Vincent</option>
                           <option value="Sudão">Sudão</option>
                           <option value="Suécia">Suécia</option>
                           <option value="Suiça">Suiça</option>
                           <option value="Suriname">Suriname</option>
                           <option value="Tailândia">Tailândia</option>
                           <option value="Taiwan">Taiwan</option>
                           <option value="Tanzânia">Tanzânia</option>
                           <option value="Togo">Togo</option>
                           <option value="Trinidad & Tobago">Trinidad & Tobago</option>
                           <option value="Tunísia">Tunísia</option>
                           <option value="Turquia">Turquia</option>
                           <option value="Ucrânia">Ucrânia</option>
                           <option value="Uganda">Uganda</option>
                           <option value="Uruguai">Uruguai</option>
                           <option value="Venezuela">Venezuela</option>
                           <option value="Vietnã">Vietnã</option>
                           <option value="Zaire">Zaire</option>
                           <option value="Zâmbia">Zâmbia</option>
                           <option value="Zimbábue">Zimbábue</option>
                        </select>
                        <br><br><br>
                     </div>
                     <label><?php echo $lang[187]; ?></label>
                     <input style="margin-bottom: 10px;" type="url" class="form-control" name="portada" placeholder="<?php echo $lang[188]; ?>" value="<?php echo $row['portada'];?>" />  <br>
                     <label><?php echo $lang[189]; ?></label>
                     <input style="margin-bottom: 10px;" type="url" class="form-control" name="avatar" placeholder="<?php echo $lang[190]; ?>" value="<?php echo $row['avatar'];?>" />  <br>
                     <br>
                     <?php
                        }
                        
                        ?>
                     <center><input class="btn btn-primary" name="guardar" type="submit" value="<?php echo $lang[192]; ?>" style="width: 120px;" /></center>
                  </form>
                  <?php
                     if ($_POST['guardar'] && $_POST['guardar']) {
                     
                     $query = $link->query("SELECT * FROM usuarios WHERE username = '" .$username. "'");
                     
                     while($row = mysqli_fetch_array($query))
                     
                     {
                     
                     $rowid = $row['ID'];
                     
                     $id = $_POST['id'];
                     
                     $username_actual = $row['username'];
                     
                     }
                     
                     if("$rowid" == "$id") {
                     
                     $avatar1 = strip_tags($_POST['avatar']);
                     
                     $email = strip_tags($_POST['email']);
                     
                     $pais = strip_tags($_POST['pais']);
                     
                     $seguridad_ip = strip_tags($_POST['seguridad_ip']);
                     
                     $nombre = strip_tags($_POST['nombre']);
                     
                     $mostrar_email = strip_tags($_POST['mostrar_email']);
                     
                     $mostrar_nombre_apellido = strip_tags($_POST['mostrar_nombre_apellido']);
                     
                     $mostrar_pais = strip_tags($_POST['mostrar_pais']);
                     
                     $portada = strip_tags($_POST['portada']);
                     
                     $apellido = strip_tags($_POST['apellido']);

                     $mision = strip_tags($_POST['mision']);

                     $anclado = strip_tags($_POST['anclado']);

                     $mostrar_anclado = strip_tags($_POST['mostrar_anclado']);
                     
                     
                     
                     $consulta = "UPDATE usuarios SET avatar='".strip_tags($avatar1)."', email='".strip_tags($email)."', pais='".strip_tags($pais)."', nombre='".strip_tags($nombre)."', mostraremail='".strip_tags($mostrar_email)."', mostrarnombreapellido='".strip_tags($mostrar_nombre_apellido)."', mostrarpais='".strip_tags($mostrar_pais)."', apellido='".strip_tags($apellido)."', portada='".strip_tags($portada)."',mision='".strip_tags($mision)."', anclado='".strip_tags($anclado)."', mostraranclado='".strip_tags($mostrar_anclado)."', seguridad_ip='".strip_tags($seguridad_ip)."' WHERE id='$id'";
                     
                     $consulta1 = "UPDATE comentarios SET avatar='".strip_tags($avatar)."' WHERE username='$username_actual'";

                     echo '<div class="alerta-si">Perfil editado correctamente </div> <script>location = "/ajustes.php";</script>';
                     
                     
                     
                     // Guardar acción en Logs si se ha iniciado sesión
                     
                     $fecha_log = date ('d-M-Y h:i:s', time());
                     
                     $accion = "$lang[193]";
                     
                     $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('".$username."','".$accion."','".$fecha_log."')";
                     
                     $link->query($enviar_log);
                     
                     // Log guardado en Base de datos
                     
                     
                     
                     $link->query($consulta);
                     
                     $link->query($consulta1);
                     
                     
                     
                     header("Location: ajustes.php?guardado");
                     
                     } else {
                     
                     header("Location: ajustes.php?no-guardado");
                     
                     }}
                     
                     
                     
                     
                     
                     ?>
               </div>
            </div>
         </div>
         <?php } ?>
      </div>
   </div>
</div>
<!-- /container -->