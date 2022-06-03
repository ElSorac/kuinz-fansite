<?php
   $verCuenta = $link->query('SELECT * FROM usuarios WHERE username = "' . $_SESSION['username'] . '"');
   $miCuenta = $verCuenta->fetch_assoc();
   
   $username = $_GET['user'];
   
   $consulta = "SELECT *FROM usuarios WHERE username = '$username' LIMIT 1";
   
   $filas = $link->query($consulta);
   
   $columnas = mysqli_fetch_assoc($filas);
   
   $verificacion = mysqli_num_rows($filas);
   
   if ($verificacion == 0)
   {
   
       echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[111]</div>";
   
       echo "<center><div><img style='margin:25px;' src='https://kuinz-fansite.space/images/perdido.png'></div></center>";
   
       include "Templates/Footer.php";
   
       exit();
   
   }
   
   ?>
<div class="container">
<div class="row">
   <div class="col-md-8">
      <center>
         <div class="registro">
            <div class="panel panel-default">
               <div class="panel-heading blue">
                  <h3 class="panel-title">
                     <div class="contedor-badge"><img src="/images/usuario.png"></div>
                     Información del perfil:
                  </h3>
               </div>
               <div class="panel-body">
                  <div class="eventotext">
                     <div style="
                        background-color: #00000040;
                        background-image: url(<?php echo $columnas['portada']; ?>);
                        width: 100%;
                        height: 200px;
                        border-radius: 10px;
                        background-size: 100%;
                        ">
                        <img style="border: 2px solid #fff;border-radius:100%;width:100px;height:100px; margin-top:50px;margin-left:-280px;position:absolute;" id="miniyoperfilima" src="<?php echo $columnas['avatar']; ?>">
                        <div class="titulow" style="color:#fff;font-size:24px;position:absolute;margin-left:-80px;margin-top:50px;">
                           <?php echo $columnas['username']; ?>   <?php if ("$columnas[verificado]" == "Si")
                              { ?>
                           <img style="width:16px;" src="/images/verificado.png">
                           <?php
                              }
                              
                              ?>
                           <br>
                           <div style="color:#fff;font-size:12px;"><?php echo $columnas['mision']; ?> <br><br> <img src="/images/placas/<?php echo $columnas['rank']; ?>.png"></div>
                        </div>
                        <button class="cabbtn fright" id="newbtn_bits"><span id="bolibits" class="boli naranja" style="margin-top:65px;"> <?php echo $columnas['fichas']; ?></span><img src="./images/fichas.png"></button> <button class="cabbtn fright" id="newbtn_bits"><span id="bolibits" class="boli cyan" style="margin-top:65px;"> <?php echo $columnas['puntos']; ?></span><img src="./images/puntos.png"></button> <button class="cabbtn fright" id="newbtn_bits"><span id="bolibits" class="boli rojo" style="margin-top:65px;"> <?php echo $columnas['tokens']; ?></span><img src="./images/tokens.png"></button> 
                     </div>
                     <div style="float: rigth;overflow: hidden;">
                        <?php
                           if ($columnas['username'] != $usuario_activo)
                           {
                               if ($_SESSION["logeado"] == "SI")
                               {
                                   $enviar_mensaje = '#enviar_mensaje';
                                   $solicitud = '#solicitud';
                                   $enviar_regalo = '#enviar_regalo';
                                   $reportar = '#reportar';
                               }
                               else
                               {
                                   $enviar_mensaje = '#anonimo';
                                   $enviar_regalo = '#anonimo';
                                   $reportar = '#anonimo';
                                   $solicitud = '#anonimo';
                               }
                           ?>
                        <div id="likes"></div>
                        <?php
                           if ($_SESSION["logeado"] == "SI")
                           {
                           ?>
                        <div style="position:absolute;margin-top:-40px;margin-left:28px;">
                           <form class="form-horizontal" action="perfil.php?user=<?php echo $columnas['username']; ?>#seguir" method="post" enctype="multipart/form-data">
                              <button type="submit" name="megusta" class="btn btn-primary"> <i class="fa-user-plus"></i>Seguir</button>
                           </form>
                        </div>
                        <?php
                           if (isset($_POST['megusta']))
                           {
                           
                               $id_seguidor = $miCuenta['ID']; // La id del seguidor
                               $id_perfil = $columnas['ID'];
                           
                               $consulta = $link->query("SELECT * FROM seguidores WHERE (id_seguidor = $id_seguidor) AND (id_perfil = $id_perfil)");
                               $resultados = mysqli_num_rows($consulta);
                           
                               if ($resultados == 0)
                               {
                           
                                   $actualizar = "UPDATE usuarios SET megusta = megusta + 1 WHERE ID = $id_perfil";
                                   $link->query($actualizar);
                           
                                   $enviar_voto = "INSERT INTO seguidores (id_seguidor, id_perfil) values ($id_seguidor,$id_perfil)";
                                   $link->query($enviar_voto);
                           
                                   echo "<div class='alert alert-si contenidoal' style='background-color:green;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button>Comenzaste a seguir a <b>$username</b>.</div><META HTTP-EQUIV='REFRESH' CONTENT='0;URL=/perfil.php?user=$username'>";
                               }
                               else
                               {
                                   echo "<div class='alert alert-no contenidoal' style='background-color:red;top: 3em; left: 3px;'><button type='button' class='close' data-dismiss='alert'>×</button>Error, al parecer ya sigues a <b>$username</b>.</div>";
                               }
                           }
                           
                           }
                           else
                           { ?> 
                        <?php
                           } ?>
                        <?php
                           }
                           else
                           { ?>
                        <?php
                           } ?>
                        <div class="menu-perfil">
                           <?php
                              if ($columnas['username'] != $usuario_activo)
                              {
                              
                                  if ($_SESSION["logeado"] == "SI")
                                  {
                              
                                      $enviar_mensaje = '#enviar_mensaje';
                              
                                      $solicitud = '#solicitud';
                              
                                      $enviar_regalo = '#enviar_regalo';
                              
                                      $reportar = '#reportar';
                              
                                  }
                                  else
                                  {
                              
                                      $enviar_mensaje = '#anonimo';
                              
                                      $enviar_regalo = '#anonimo';
                              
                                      $reportar = '#anonimo';
                              
                                      $solicitud = '#anonimo';
                              
                                  }
                              
                              ?>
                           <a class="seccion-perfil" data-toggle="modal" data-target="<?php echo $enviar_mensaje; ?>" href="#"><?php echo $lang[55]; ?></a>
                           <a style="display: none;"> class="seccion-perfil" data-toggle="modal" data-target="<?php echo $enviar_regalo; ?>" href="#"><?php echo $lang[56]; ?></a>
                           <a class="seccion-perfil" data-toggle="modal" data-target="<?php echo $reportar; ?>" href="#"><?php echo $lang[58]; ?></a>
                           <?php
                              }
                              else
                              { ?>
                           <a class="seccion-perfil" href="ajustes.php"><img src=" https://images-kuinz.online/i/ICON%2520(2).png">| <?php echo $lang[17]; ?></a></li>
                           <a class="seccion-perfil" href="ajustes.php?amigos"><img src="https://images-kuinz.online/i/ICON%2520(3).png">| <?php echo $lang[60]; ?></a></li>
                           <a class="seccion-perfil" href="ajustes.php?mensajes"><img src="https://images-kuinz.online/i/ICON%2520(4).png">| <?php echo $lang[61]; ?></a></li>
                           <a style="display: none;" class="seccion-perfil" href="ajustes.php?regalos"><img src="https://images-kuinz.online/i/ICON%2520(1).png">| <?php echo $lang[62]; ?></a></li>
                           <?php
                              } ?>
                        </div>
                        <?php if ($columnas['username'] != $usuario_activo)
                           { ?>
                        <!-- Modal -->
                        <div class="modal fade" id="anonimo" role="dialog">
                           <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title"><?php echo $lang[63]; ?></h4>
                                 </div>
                                 <div class="modal-body">
                                    <p><?php echo $lang[64]; ?></p>
                                    <a href="<?php echo $url; ?>/registro"><button class="btn btn-warning"><?php echo $lang[48]; ?></button></a>
                                    <a href="<?php echo $url; ?>/login"><button class="btn btn-primary"><?php echo $lang[24]; ?></button></a>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <?php
                           if ($_SESSION["logeado"] == "SI")
                           {
                           
                           ?>
                        <!-- Modal -->
                        <div class="modal fade" id="solicitud" role="dialog">
                           <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title"><?php echo $lang[66]; ?></h4>
                                 </div>
                                 <div class="modal-body">
                                    <form class="form-horizontal" action="perfil.php?user=<?php echo $columnas['username']; ?>" method="post" enctype="multipart/form-data">
                                       <p><?php echo $lang[67]; ?> <?php echo $columnas['username']; ?>?</p>
                                       <button type="reset" data-dismiss="modal" class="btn btn-default"><?php echo $lang[68]; ?></button>
                                       <button type="submit" name="confirmar" class="btn btn-primary"><?php echo $lang[69]; ?></button>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <?php
                           if (isset($_POST['confirmar']))
                           {
                           
                               if ($_SESSION["logeado"] == "SI")
                               {
                           
                                   $fecha_log = date('d-M-Y h:i:s', time());
                           
                                   $user_perfil1 = $columnas['username'];
                           
                                   $amigos_confirmado = $link->query("SELECT * FROM usuarios_amigos WHERE (user = '" . $columnas['username'] . "') AND (user_amigo = '" . $usuario_activo . "') AND (estado_solicitud = 'Confirmado')");
                           
                                   $amigos_confirmado_r = mysqli_num_rows($amigos_confirmado);
                           
                                   if ("$amigos_confirmado_r" == "0")
                                   {
                           
                                       $amigos1 = $link->query("SELECT * FROM usuarios_amigos WHERE (user = '" . $columnas['username'] . "') AND (user_amigo = '" . $usuario_activo . "')");
                           
                                       $amigos1_r = mysqli_num_rows($amigos1);
                           
                                       $amigos2 = $link->query("SELECT * FROM usuarios_amigos WHERE (user = '" . $usuario_activo . "') AND (user_amigo = '" . $columnas['username'] . "')");
                           
                                       $amigos2_r = mysqli_num_rows($amigos2);
                           
                                       if ("$amigos1_r" == "0")
                                       {
                           
                                           if ("$amigos2_r" == "0")
                                           {
                           
                                               $enviar1 = "INSERT INTO usuarios_amigos (user,user_amigo,estado_solicitud) values ('" . $columnas['username'] . "','" . $usuario_activo . "','Pendiente')";
                           
                                               $user_report = strip_tags($_POST['user_report']);
                           
                                               if ($link->query($enviar1))
                                               {
                           
                                                   // Guardar acción en Logs si se ha iniciado sesión
                                                   
                           
                                                   $accion = "$lang[118] $columnas[username]";
                           
                                                   $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $usuario_activo . "','" . $accion . "','" . $fecha_log . "')";
                           
                                                   $link->query($enviar_log);
                           
                                                   // Log guardado en Base de datos
                                                   
                           
                                                   echo "<div class='alert alerta-si alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[70] $columnas[username] $lang[71]</div>";
                           
                                               }
                                               else
                                               {
                           
                                                   echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[72]</div>";
                           
                                               }
                           
                                           }
                           
                                       }
                                       else
                                       {
                                           echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[73] $user_perfil1</div>";
                                       }
                           
                                   }
                                   else
                                   {
                                       echo "<div class='alert alerta-si alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$columnas[username] $lang[74]</div>";
                                   }
                           
                               }
                           
                           }
                           
                           ?>
                        <!-- Modal -->
                        <div class="modal fade" id="reportar" role="dialog">
                           <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title"><?php echo $lang[75]; ?></h4>
                                 </div>
                                 <div class="modal-body">
                                    <form class="form-horizontal" action="perfil.php?user=<?php echo $columnas['username']; ?>" method="post" enctype="multipart/form-data">
                                       <fieldset>
                                          <div class="form-group">
                                             <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[76]; ?></label>
                                             <div class="col-lg-10">
                                                <input type="text" class="form-control" name="user_report" value="<?php echo $columnas['username']; ?>" placeholder="Usuario Reportado">
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label for="select" class="col-lg-2 control-label"><?php echo $lang[77]; ?></label>
                                             <div class="col-lg-10">
                                                <select class="form-control" name="tipo" id="select">
                                                   <option><?php echo $lang[78]; ?></option>
                                                   <option value="<?php echo $lang[79]; ?>"><?php echo $lang[79]; ?></option>
                                                   <option value="<?php echo $lang[80]; ?>"><?php echo $lang[80]; ?></option>
                                                   <option value="<?php echo $lang[81]; ?>"><?php echo $lang[81]; ?></option>
                                                   <option value="<?php echo $lang[82]; ?>"><?php echo $lang[82]; ?></option>
                                                   <option value="<?php echo $lang[83]; ?>"><?php echo $lang[83]; ?></option>
                                                   <option value="<?php echo $lang[84]; ?>"><?php echo $lang[84]; ?></option>
                                                   <option value="<?php echo $lang[85]; ?>"><?php echo $lang[85]; ?></option>
                                                   <option value="<?php echo $lang[86]; ?>"><?php echo $lang[86]; ?></option>
                                                   <option value="<?php echo $lang[87]; ?>"><?php echo $lang[87]; ?></option>
                                                   <option value="<?php echo $lang[88]; ?>"><?php echo $lang[88]; ?></option>
                                                   <option value="<?php echo $lang[89]; ?>"><?php echo $lang[89]; ?></option>
                                                </select>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[90]; ?></label>
                                             <div class="col-lg-10">
                                                <textarea class="form-control" name="mensaje" rows="3" placeholder="<?php echo $lang[194]; ?>" id="textArea"></textarea>
                                                <span class="help-block"><?php echo $lang[91]; ?></span>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <div class="col-lg-10 col-lg-offset-2">
                                                <button type="reset" data-dismiss="modal" class="btn btn-default"><?php echo $lang[68]; ?></button>
                                                <button type="submit" class="btn btn-primary"><?php echo $lang[92]; ?></button>
                                             </div>
                                          </div>
                                       </fieldset>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <?php
                           if ($_POST['user_report'] && $_POST['mensaje'])
                           {
                           
                               if ($_SESSION["logeado"] == "SI")
                               {
                           
                                   $fecha_log = date('d-M-Y h:i:s', time());
                           
                                   $user_perfil1 = $columnas['username'];
                           
                                   $estado_report = 'Activo';
                           
                                   $enviar1 = "INSERT INTO reportes (user_enviado,user_reportado,mensaje,fecha_i,tipo,estado) values ('" . $usuario_activo . "','" . strip_tags($_POST['user_report']) . "','" . strip_tags($_POST['mensaje']) . "','" . $fecha_log . "','" . strip_tags($_POST['tipo']) . "','" . $estado_report . "')";
                           
                                   $user_report = strip_tags($_POST['user_report']);
                           
                                   if ($link->query($enviar1))
                                   {
                           
                                       // Guardar acción en Logs si se ha iniciado sesión
                                       
                           
                                       $accion = "$lang[117] $user_report";
                           
                                       $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $usuario_activo . "','" . $accion . "','" . $fecha_log . "')";
                           
                                       $link->query($enviar_log);
                           
                                       // Log guardado en Base de datos
                                       
                           
                                       echo "<div class='alert alerta-si alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[93] $user_report</div>";
                           
                                   }
                               }
                               else
                               {
                           
                                   echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[94]</div>";
                           
                               }
                           
                           }
                           
                           ?>
                        <!-- Modal -->
                        <div class="modal fade" id="enviar_mensaje" role="dialog">
                           <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title"><?php echo $lang[95]; ?> <?php echo $columnas['username']; ?></h4>
                                 </div>
                                 <div class="modal-body">
                                    <form class="form-horizontal" action="perfil.php?user=<?php echo $columnas['username']; ?>" method="post" enctype="multipart/form-data">
                                       <fieldset>
                                          <div class="form-group">
                                             <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[96]; ?></label>
                                             <div class="col-lg-10">
                                                <input type="text" class="form-control" name="asunto" value="<?php echo $lang[105]; ?>" placeholder="<?php echo $lang[76]; ?>">
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[97]; ?></label>
                                             <div class="col-lg-10">
                                                <textarea class="form-control" rows="3" name="mensaje" placeholder="<?php echo $lang[106]; ?> <?php echo $columnas['username']; ?>" id="textArea"></textarea>
                                                <span class="help-block"></span>
                                             </div>
                                          </div>
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
                        <?php
                           if ($_POST['mensaje'] && $_POST['asunto'])
                           {
                           
                               if ($_SESSION["logeado"] == "SI")
                               {
                           
                                   $fecha_log = date('d-M-Y h:i:s', time());
                           
                                   $user_perfil1 = $columnas['username'];
                           
                                   $enviar1 = "INSERT INTO usuarios_mensajes_privados (user_enviado,user_recibido,asunto,mensaje,fecha) values ('" . $usuario_activo . "','" . $user_perfil1 . "','" . strip_tags($_POST['asunto']) . "','" . strip_tags($_POST['mensaje']) . "','" . $fecha_log . "')";
                           
                                   if ($link->query($enviar1))
                                   {
                           
                                       // Guardar acción en Logs si se ha iniciado sesión
                                       
                           
                                       $accion = "$lang[116] $columnas[username]";
                           
                                       $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $usuario_activo . "','" . $accion . "','" . $fecha_log . "')";
                           
                                       $link->query($enviar_log);
                           
                                       // Log guardado en Base de datos
                                       
                           
                                       echo "<div class='alert alerta-si alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[99] $user_perfil1 $lang[71]</div>";
                           
                                   }
                               }
                               else
                               {
                           
                                   echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[100]</div>";
                           
                               }
                           
                           }
                           
                           ?>
                        <!-- Modal -->
                        <div class="modal fade" id="enviar_regalo" role="dialog">
                           <div class="modal-dialog">
                              <!-- Modal content-->
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title"><?php echo $lang[101]; ?> <?php echo $columnas['username']; ?></h4>
                                 </div>
                                 <div class="modal-body">
                                    <form class="form-horizontal" action="perfil.php?user=<?php echo $columnas['username']; ?>" method="post" enctype="multipart/form-data">
                                       <fieldset>
                                          <div class="form-group">
                                             <label for="inputEmail" class="col-lg-2 control-label"><?php echo $lang[96]; ?></label>
                                             <div class="col-lg-10">
                                                <input type="text" class="form-control" name="asunto_regalo" id="inputEmail" value="<?php echo $lang[105]; ?>" placeholder="<?php echo $lang[102]; ?>">
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label for="select" class="col-lg-2 control-label"><?php echo $lang[103]; ?></label>
                                             <div class="col-lg-10">
                                                <select class="form-control" name="regalo" id="select">
                                                   <option><?php echo $lang[104]; ?></option>
                                                   <!--<?php
                                                      $resultado = $link->query("SELECT * FROM usuarios_placas WHERE username = '" . $usuario_activo . "' ORDER BY id DESC");
                                                      
                                                      while ($row = mysqli_fetch_array($resultado))
                                                      
                                                      {
                                                      
                                                      ?>
                                                   <option value="<?php echo "$row[code_placa]"; ?>"><?php echo $lang[42]; ?>: <?php echo "$row[code_placa]"; ?></option>
                                                   <?php
                                                      }
                                                      
                                                      ?>-->

                                                </select>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <label for="textArea" class="col-lg-2 control-label"><?php echo $lang[107]; ?></label>
                                             <div class="col-lg-10">
                                                <textarea class="form-control" name="mensaje_regalo" rows="3" placeholder="<?php echo $lang[108]; ?>" id="textArea"></textarea>
                                                <span class="help-block"></span>
                                             </div>
                                          </div>
                                          <div class="form-group">
                                             <div class="col-lg-10 col-lg-offset-2">
                                                <button type="reset" data-dismiss="modal" class="btn btn-default"><?php echo $lang[68]; ?></button>
                                                <button type="submit" class="btn btn-primary"><?php echo $lang[109]; ?></button>
                                             </div>
                                          </div>
                                       </fieldset>
                                    </form>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <?php
                           if ($_POST['asunto_regalo'] && $_POST['regalo'])
                           {
                           
                               if ($_SESSION["logeado"] == "SI")
                               {
                           
                                   $fecha_log = date('d-M-Y h:i:s', time());
                           
                                   $user_perfil1 = $columnas['username'];
                           
                                   $placas_existente = $link->query("SELECT * FROM usuarios_placas WHERE (username='" . $usuario_activo . "') AND (code_placa='" . $_POST['regalo'] . "')");
                           
                                   $placa_existente_r = mysqli_num_rows($placas_existente);
                           
                                   $placa_inventario = $link->query("SELECT * FROM usuarios_placas WHERE (username='" . $user_perfil1 . "') AND (code_placa='" . $_POST['regalo'] . "')");
                           
                                   $placa_inventario_r = mysqli_num_rows($placa_inventario);
                           
                                   if ("$placa_inventario_r" != "0")
                                   {
                           
                                       echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[112]</div>";
                           
                                   }
                                   else
                                   {
                           
                                       if ("$placa_existente_r" == "0")
                                       {
                           
                                           echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[114]</div>";
                           
                                       }
                           
                                       $enviar1 = "INSERT INTO usuarios_regalos (user_enviado,user_recibido,asunto_regalo,mensaje_regalo,fecha,code_placa) values ('" . $usuario_activo . "','" . $user_perfil1 . "','" . strip_tags($_POST['asunto_regalo']) . "','" . strip_tags($_POST['mensaje_regalo']) . "','" . $fecha_log . "','" . $_POST['regalo'] . "')";
                           
                                       $enviar2 = "UPDATE usuarios_placas SET username='" . $user_perfil1 . "', code_placa='" . $_POST['regalo'] . "' WHERE (username='" . $usuario_activo . "') AND (code_placa='" . $_POST['regalo'] . "')";
                           
                                       if ($link->query($enviar1))
                                       {
                           
                                           if ($link->query($enviar2))
                                           {
                           
                                               // Guardar acción en Logs si se ha iniciado sesión
                                               
                           
                                               $accion = " $lang[115] $columnas[username]";
                           
                                               $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $usuario_activo . "','" . $accion . "','" . $fecha_log . "')";
                           
                                               $link->query($enviar_log);
                           
                                               // Log guardado en Base de datos
                                               
                           
                                               echo "<div class='alert alerta-si alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[113] $user_perfil1 $lang[71]</div>";
                           
                                           }
                                       }
                                   }
                               }
                               else
                               {
                           
                                   echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>$lang[114]</div>";
                           
                               }
                           
                           }
                           
                           }
                           
                           }
                           
                           ?>
                        <table class="table table-bordered">
                           <tr>
                              <td>
                                 <span style="color:red;font-size:18px;" class="glyphicon glyphicon-heart-empty"></span> Seguidores:
                              </td>
                              <td>
                                 <?php echo $columnas['megusta']; ?>
                              </td>
                           </tr>
                           <tr>
                              <td>
                                 <img src="/images/hace.png"> Ultima vez:
                              </td>
                              <td>
                                 <?php echo $columnas['ultimavez']; ?>
                              </td>
                           </tr>
                           <tr>
                              <td>
                                 <img src="./images/calendario.png"> <?php echo $lang[119]; ?>:
                              </td>
                              <td>
                                 <?php echo $columnas['fecha']; ?>
                              </td>
                           </tr>
                           <tr>
                           <tr>
                              <td>
                                 <img src="./images/rango.png"> <?php echo $lang[122]; ?>:
                              </td>
                              <td>
                                 <?php echo $columnas['rank']; ?>
                              </td>
                           <tr>
                              <?php if ("$columnas[mostrarnombreapellido]" == "Si")
                                 { ?>
                           <tr>
                              <td>
                                 <img src="./images/nombre.png"> <?php echo $lang[123]; ?>:
                              </td>
                              <td>
                                 <?php echo $columnas['nombre']; ?>
                              </td>
                           <tr>
                           <tr>
                              <td>
                                 <img src="./images/apellidos.png"> <?php echo $lang[124]; ?>:
                              </td>
                              <td>
                                 <?php echo $columnas['apellido']; ?>
                              </td>
                           <tr>
                              <?php
                                 }
                                 
                                 ?>
                              <?php if ("$columnas[mostrarpais]" == "Si")
                                 { ?>
                           <tr>
                              <td>
                                 <img src="./images/pais.png"> <?php echo $lang[125]; ?>:
                              </td>
                              <td>
                                 <?php echo $columnas['pais']; ?>
                              </td>
                           <tr>
                              <?php
                                 }
                                 
                                 ?>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
            <?php if ("$columnas[mostraranclado]" == "Si")
               { ?>
            <div id="placas" class="panel panel-default">
               <div class="panel-heading red">
                  <h3 class="panel-title">
                     <div class="contedor-badge"><img src="/images/youtube.png" width="30"></div>
                     Video anclado por <?php echo $columnas['username']; ?>
                  </h3>
               </div>
               <div class="panel-body">
                  <div style="margin:10px;">
                     <iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo $columnas['anclado']; ?>" frameborder="0"  allowfullscreen></iframe>
                  </div>
               </div>
            </div>
            <?php
               }
               
               ?>
            <div id="placas" class="panel panel-default">
               <div class="panel-heading orange">
                  <h3 class="panel-title">
                     <div class="contedor-badge"><img src="/images/caja.png"></div>
                     Inventario de <?php echo $columnas['username']; ?>
                  </h3>
               </div>
               <div class="panel-body">
                  <div style="margin:10px;">
                     <?php
                        $user_perfil = $columnas['username'];
                        
                        $resultado2 = $link->query("SELECT * FROM usuarios_placas WHERE username = '" . $user_perfil . "'");
                        
                        while ($row = mysqli_fetch_array($resultado2))
                        {
                        
                            $placa_user = $row['code_placa'];
                        
                            $resultado1 = $link->query("SELECT * FROM placas WHERE code = '" . $placa_user . "'");
                        
                            while ($row = mysqli_fetch_array($resultado1))
                            {
                        
                                $code = $row['code'];
                        
                                $imagen_placa = $row['imagen'];
                        
                        ?>
                     <div data-toggle="tooltip" title="<?php echo $code; ?>
                        " class="badgehabbink">
                        <div class="iconbadge">
                           <img src="<?php echo $imagen_placa; ?>" alt="" style="padding:7px;">
                        </div>
                     </div>
                     <?php
                        }
                        }
                        
                        $result = $link->query("SELECT * FROM usuarios_placas WHERE username = '" . $user_perfil . "'");
                        
                        $row_cnt = mysqli_num_rows($result);
                        
                        if ($row_cnt == 0)
                        { ?>
                     <?php
                        } ?>
                     <script>
                        $(document).ready(function() {
                        
                            $('[data-toggle="tooltip"]').tooltip();
                        
                        });
                        
                     </script>
                     <?php
                        $user_perfil = $columnas['username'];
                        
                        $resultado2 = $link->query("SELECT * FROM usuarios_placasdev WHERE username = '" . $user_perfil . "'");
                        
                        while ($row = mysqli_fetch_array($resultado2))
                        {
                        
                            $placa_user = $row['code_placa'];
                        
                            $resultado1 = $link->query("SELECT * FROM placasdev WHERE code = '" . $placa_user . "'");
                        
                            while ($row = mysqli_fetch_array($resultado1))
                            {
                        
                                $code = $row['code'];
                        
                                $imagen_placa = $row['imagen'];
                        
                        ?>
                     <div data-toggle="tooltip" title="<?php echo $code; ?>
                        " class="badgehabbink">
                        <div class="iconbadge">
                           <img src="<?php echo $imagen_placa; ?>" alt="" style="padding:7px;">
                        </div>
                     </div>
                     <?php
                        }
                        }
                        
                        $result = $link->query("SELECT * FROM usuarios_placasdev WHERE username = '" . $user_perfil . "'");
                        
                        $row_cnt = mysqli_num_rows($result);
                        
                        if ($row_cnt == 0)
                        { ?>
                     <?php
                        } ?>
                     <script>
                        $(document).ready(function() {
                        
                            $('[data-toggle="tooltip"]').tooltip();
                        
                        });
                        
                     </script>
                     <?php
                        $user_perfil = $columnas['username'];
                        
                        $resultado2 = $link->query("SELECT * FROM usuarios_placase WHERE username = '" . $user_perfil . "'");
                        
                        while ($row = mysqli_fetch_array($resultado2))
                        {
                        
                            $placa_user = $row['code_placa'];
                        
                            $resultado1 = $link->query("SELECT * FROM placase WHERE code = '" . $placa_user . "'");
                        
                            while ($row = mysqli_fetch_array($resultado1))
                            {
                        
                                $code = $row['code'];
                        
                                $imagen_placa = $row['imagen'];
                        
                        ?>
                     <div data-toggle="tooltip" title="<?php echo $code; ?>
                        " class="badgehabbink">
                        <div class="iconbadge">
                           <img src="<?php echo $imagen_placa; ?>" alt="" style="padding:7px;">
                        </div>
                     </div>
                     <?php
                        }
                        }
                        
                        $result = $link->query("SELECT * FROM usuarios_placase WHERE username = '" . $user_perfil . "'");
                        
                        $row_cnt = mysqli_num_rows($result);
                        
                        if ($row_cnt == 0)
                        { ?>
                     <?php
                        } ?>
                     <script>
                        $(document).ready(function() {
                        
                            $('[data-toggle="tooltip"]').tooltip();
                        
                        });
                        
                     </script>
                  </div>
               </div>
            </div>
            <div class="panel panel-default">
               <div class="panel-heading red">
                  <h3 class="panel-title">
                     <div class="contedor-badge"><img src="/images/minicon.png"></div>
                     Mensajes de <?php echo $columnas['username']; ?>
                  </h3>
               </div>
               <div class="panel-body">
                  <?php
                     $mensajes_recibidos = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_recibido = '" . $username . "'");
                     $mensajes_recibidos_r = mysqli_num_rows($mensajes_recibidos);
                     if ("$mensajes_recibidos_r" == "0")
                     {
                         echo "";
                     }
                     else
                     {
                     ?>
                  <table class="table table-striped">
                     <thead>
                        <tr>
                           <th>Nombre</th>
                           <th>Mensaje</th>
                        </tr>
                     </thead>
                     <tbody>
                        <?php
                           $resultado = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_recibido = '" . $username . "' ORDER BY id DESC");
                           while ($row = mysqli_fetch_array($resultado))
                           {
                               $user_enviado = $row['user_enviado'];
                               $asunto_mensaje = $row['mensaje'];
                               $razon = $row['razon'];
                               $id_mensaje = md5($row['id']);
                               $asunto_recibido = $row['asunto'];
                               $mensaje_recibido = $row['mensaje'];
                           ?>
                        <tr>
                           <td>
                              <h5><a href="/perfil.php?user=<?php echo $user_enviado; ?>"><?php echo $user_enviado; ?></a></h5>
                              </button>
                           <td>
                              <h5><?php echo $mensaje_recibido; ?></h5>
                           </td>
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
                                    <form class="form-horizontal" action="perfil.php?user=<?php echo $columnas['username']; ?>" method="post" enctype="multipart/form-data">
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
                                    <form class="form-horizontal" action="<?php echo $url; ?>/perfil.php?user=<?php echo $user_enviado; ?>" method="post" enctype="multipart/form-data">
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
                        <?php
                           } ?>
                     </tbody>
                  </table>
                  <?php
                     if ($_POST['mensaje'] && $_POST['asunto'])
                     {
                         if ($_SESSION["logeado"] == "SI")
                         {
                             $fecha_log = date('d-M-Y h:i:s', time());
                             $enviar1 = "INSERT INTO usuarios_mensajes_privadoss (user_enviado,user_recibido,asunto,mensaje,fecha) values ('" . $usuario_activo . "','" . $_POST['user_enviado'] . "','" . strip_tags($_POST['asunto']) . "','" . strip_tags($_POST['mensaje']) . "','" . $fecha_log . "')";
                     
                             if ($link->query($enviar1))
                             {
                     
                                 // Guardar acción en Logs si se ha iniciado sesión
                                 $accion = "$lang[116] $_POST[user_enviado]";
                                 $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $usuario_activo . "','" . $accion . "','" . $fecha_log . "')";
                                 $link->query($enviar_log);
                                 // Log guardado en Base de datos
                                 echo "";
                             }
                         }
                         else
                         {
                             echo "";
                         }
                     }
                     ?>
                  <?php
                     } ?>
               </div>
            </div>
            <div id="estadisticas" class="panel panel-default">
               <div class="panel-heading blue">
                  <h3 class="panel-title"><?php echo $lang[128]; ?> <?php echo $columnas['username']; ?></h3>
               </div>
               <div class="panel-body">
                  <div style="margin:10px;">
                     <?php
                        $placas = $link->query("SELECT * FROM usuarios_placas WHERE username = '" . $user_perfil . "'");
                        
                        $placa_r = mysqli_num_rows($placas);
                        
                        $placasdev = $link->query("SELECT * FROM usuarios_placasdev WHERE username = '" . $user_perfil . "'");
                        
                        $placadev_r = mysqli_num_rows($placasdev);
                        
                        $placase = $link->query("SELECT * FROM usuarios_placase WHERE username = '" . $user_perfil . "'");
                        
                        $placae_r = mysqli_num_rows($placase);
                        
                        $comentarios = $link->query("SELECT * FROM comentarios WHERE username = '" . $user_perfil . "'");
                        
                        $comentarios_r = mysqli_num_rows($comentarios);
                        
                        $regalos_recibidos = $link->query("SELECT * FROM usuarios_regalos WHERE   user_recibido = '" . $user_perfil . "'");
                        
                        $regalos_recibidos_r = mysqli_num_rows($regalos_recibidos);
                        
                        $regalos_enviado = $link->query("SELECT * FROM usuarios_regalos WHERE   user_enviado = '" . $user_perfil . "'");
                        
                        $regalos_enviado_r = mysqli_num_rows($regalos_enviado);
                        
                        $amigos = $link->query("SELECT * FROM usuarios_amigos WHERE (user = '" . $user_perfil . "') AND (estado_solicitud = 'Confirmado')");
                        
                        $amigos_r = mysqli_num_rows($amigos);
                        
                        $mensajes_enviados = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_enviado = '" . $user_perfil . "'");
                        
                        $mensajes_enviados_r = mysqli_num_rows($mensajes_enviados);
                        
                        $mensajes_recibidos = $link->query("SELECT * FROM usuarios_mensajes_privados WHERE user_recibido = '" . $user_perfil . "'");
                        
                        $mensajes_recibidos_r = mysqli_num_rows($mensajes_recibidos);
                        
                        ?>
                     <ul class="nav nav-pills" role="tablist">
                        <li role="presentation"><a>Furnis <span class="badge"><?php echo $placa_r; ?></span></a></li>
                        <li role="presentation"><a>Furnis Dev <span class="badge"><?php echo $placadev_r; ?></span></a></li>
                        <li role="presentation"><a>Furnis Elite <span class="badge"><?php echo $placae_r; ?></span></a></li>
                        <li role="presentation"><a><?php echo $lang[130]; ?> <span class="badge"><?php echo $comentarios_r; ?></span></a></li>
                        <li role="presentation"><a><?php echo $lang[131]; ?> <span class="badge"><?php echo $regalos_recibidos_r; ?></span></a></li>
                        <li role="presentation"><a><?php echo $lang[132]; ?> <span class="badge"><?php echo $regalos_enviado_r; ?></span></a></li>
                        <li role="presentation"><a><?php echo $lang[133]; ?> <span class="badge"><?php echo $amigos_r; ?></span></a></li>
                        <li role="presentation"><a><?php echo $lang[134]; ?> <span class="badge"><?php echo $mensajes_enviados_r; ?></span></a></li>
                        <li role="presentation"><a><?php echo $lang[135]; ?> <span class="badge"><?php echo $mensajes_recibidos_r; ?></span></a></li>
                     </ul>
                  </div>
               </div>
            </div>
      </center>
      </div>
      <div class="col-md-4">
         <?php echo $redes_sociales; ?>
         <?php echo $cartel_publicidad; ?>
      </div>
   </div>
</div>