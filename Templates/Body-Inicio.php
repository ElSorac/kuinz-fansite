
<div class="container">
   <div class="row">
      <div class="col-md-4">
         <!-- Iniciar sesión en Index -->
         <?php
$resultado1 = $link->query("SELECT * FROM config WHERE id = 1");
while ($row = mysqli_fetch_array($resultado1))
{
    $iniciar_sesion_op = $row['iniciar_sesion'];
}

if ($iniciar_sesion_op == 0)
{

    echo '<div class="panel panel-default">
            			<div class="panel-heading oscuro">
            				<h3 class="panel-title">' . $lang[24] . '</h3>
            			</div>
            			<div class="panel-body">
            				<div class="loginindex">
            					<span style="font-size:19px;color:red;"><center>Bloqueado</center></span>
            					<br>
            					<span style="font-size:16px;color:red;">' . $lang[26] . '</span>
            				</div>
            			</div>
            		</div>
            		<br>
            		';

}
else
{
    if ($_SESSION["logeado"] != "SI")
    {

        echo "<div class='panel panel-default'>
            			<div class='panel-heading red'><h3 class='panel-title'><div class='contedor-badge'><div class='icon-login'></div></div> $lang[24]</h3>
            			</div>
            			<div class='panel-body'>
            				<div class='loginindex'>
            					<form class='form form-signup' role='form' method='post' action='kernel/login/entrar.php'>
            						<h5 class='colr bold mp'>$lang[27]</h5>
            						<div class='form-group'>
            							<div class='input-group'>
            								<span class='input-group-addon'><span class='glyphicon glyphicon-user'></span></span>
            								<input type='text' class='form-control' required='true' name='username' id='username' placeholder='$lang[27]'/>
            							</div>
            						</div>
            						<h5 class='colr bold mp'>$lang[28]</h5>
            						<div class='form-group'>
            							<div class='input-group'>
            								<span class='input-group-addon'><span class='glyphicon glyphicon-lock'></span></span>
            								<input type='password' id='password' required='true' name='password' class='form-control' placeholder='$lang[28]'/>
            							</div>
            						</div>
            						<a href='$url/recuperar.php' class='forgot'>$lang[29]</a>
            						<input type='submit' name='Submit recordar' value='$lang[24]' class='btn btn-sm btn-primary btn-block loginbuttom'>
            					</div>
            				</div>
            			</div>
            			<br>";
    }
}
?> 
          <?php echo $cartel_radio; ?>
        
        
    


<!-- Ultimas Furnis subidas -->
         <div class="panel panel-default">
            <div class="panel-heading orange">
               <h3 class="panel-title">
                  <div class='contedor-badge'><img src="https://kekocity.com/imagesnew/game/carritoicono.png"></div>
                  Ultimos Furnis Tienda <?=$_SESSION['id']?>
               </h3>
            </div>
            <div class="panel-body">
               <div class="placas">
                  <?php
$resultado = $link->query("SELECT * FROM placas ORDER BY id DESC limit 15");
while ($row = mysqli_fetch_array($resultado))
{
?>
                  <div data-toggle="tooltip" title="<?php echo " $row[code] "; ?>
                     " class="badgehabbink">
                     <div class="iconbadge">
                        <a href="./tienda.php"><img src="<?php echo " $row[imagen] "; ?>" alt="" style="padding:7px;"></a>
                     </div>
                  </div>
                  <?php
} ?>
               </div>
            </div>
         </div>
         <!-- Cierre de Furnis subidas -->
         <!-- Ultimas Furnis Dev subidas -->
         <div class="panel panel-default">
            <div class="panel-heading orange">
               <h3 class="panel-title">
                  <div class='contedor-badge'><img src="https://kekocity.com/fly/placas/dev.png" width="90%"></div>
                  Ultimos Furnis Tienda Dev
               </h3>
            </div>
            <div class="panel-body">
               <div class="placas">
                  <?php
$resultado = $link->query("SELECT * FROM placasdev ORDER BY id DESC limit 15");
while ($row = mysqli_fetch_array($resultado))
{
?>
                  <div data-toggle="tooltip" title="<?php echo " $row[code] "; ?>
                     " class="badgehabbink">
                     <div class="iconbadge">
                        <a href="./tienda-dev.php"><img src="<?php echo " $row[imagen] "; ?>" alt="" style="padding:7px;"></a>
                     </div>
                  </div>
                  <?php
} ?>
               </div>
            </div>
         </div>
         <!-- Cierre de Furnis Dev subidas -->
         <!-- Ultimas Furnis Elite subidas -->
         <div class="panel panel-default">
            <div class="panel-heading orange">
               <h3 class="panel-title">
                  <div class='contedor-badge'><img src="/images/elite-k.png" width="90%"></div>
                  Ultimos Furnis Pase Elite
               </h3>
            </div>
            <div class="panel-body">
               <div class="placas">
                  <?php
$resultado = $link->query("SELECT * FROM placase ORDER BY id DESC limit 15");
while ($row = mysqli_fetch_array($resultado))
{
?>
                  <div data-toggle="tooltip" title="<?php echo " $row[code] "; ?>
                     " class="badgehabbink">
                     <div class="iconbadge">
                        <img src="<?php echo " $row[imagen] "; ?>" alt="" style="padding:7px;">
                     </div>
                  </div>
                  <?php
} ?>
               </div>
            </div>
         </div>
         <!-- Cierre de Furnis Elite subidas -->
         
            <div class="panel panel-default">
            	<div class="panel-heading red">
            		<h3 class="panel-title"><div class='contedor-badge'><img src="https://kekocity.com/images/icon2/luna.png"></div> Lo del momento</h3>
            	</div>
            	<div class="panel-body">
            	<iframe width="358" height="250" src="https://www.youtube.com/embed/BQnp9cu-oUA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            	</div>
            </div>
             
         <br>

         <?php echo $cartel_publicidad; ?>
         <!-- Facebook -->
         <?php echo $redes_sociales; ?>
         <!-- Cierre Facebook -->
      </div>
      <div class="col-md-8">
         <div class="no-celular">
            <!-- Promociones -->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
               <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="5"></li>
               </ol>
               <div class="carousel-inner" role="listbox">
                  <?PHP
$resultado = $link->query("SELECT * FROM banner ORDER BY id DESC limit 6");
while ($row = mysqli_fetch_array($resultado))
{
?>
                  <div class="item <?=$row['principal']?>">
                     <img style="border-radius:10px;" data-src="holder.js/1140x500/auto/#777:#555/text:First slide" alt="<?php echo $nameweb; ?>" src="<?=$row['imagen']?>" data-holder-rendered="true">
                     <div style="float:right;position: absolute;bottom: 0px;right: 0px;background-color: rgba(0, 0, 0, 0.42);width: 100%;height:100%;border-radius: 0px 0px 10px 10px;padding: 15px;">
                        <div class="textpromo">
                           <b><?=$row['titulo']?></b>
                           <div class="textpromosmall"><?=$row['texto']?></div>
                        </div>
                        <br><a href="<?=$row['urlpromo']?>" target="_blank"><input class="btn btn-warning" style="margin-top:150px;" type="button" value="Ver Más"></a>
                     </div>
                  </div>
                  <?php
}
?>
               </div>
            </div>
         </div>

         <br>
         <!-- Ultimas noticias Publicadas -->
         <div style="margin-left: 0px;" class="panel-body">
            <?PHP
$resultado = $link->query("SELECT * FROM noticias ORDER BY id DESC limit 4");
while ($row = mysqli_fetch_array($resultado))
{
?>
            <div style="background-image: url(<?php echo $row['imagen']; ?>);background-position: 50%;margin-bottom: 15px;border-radius: 5px" class="articulo">
               <a href="articulo.php?id=<?php echo $row['id']; ?>">
                  <div class="contenedor-datos">
                     <div class="contenedor-likes">
                        <div style="float:left;font-size: 14px;"><i style="font-size: 11px;" class="material-icons">thumb_up</i> <?php echo $row['megusta']; ?></div>
                        <div style="margin-left:10px;float:left;font-size: 14px;"><i style="font-size: 11px;" class="material-icons">thumb_down</i> <?php echo $row['no_megusta']; ?></div>
                     </div>
                     <p><span style="color: rgb(204, 204, 204);"><span class="datos-noticia"><?php echo $lang[34]; ?>: <?php echo "$row[fecha]"; ?> <span style="margin-left:15px;"><?php echo $lang[35]; ?>: <?php echo "$row[categoria]"; ?><span style="margin-left:15px;"><?php echo $lang[36]; ?>: <?php echo "$row[autor]"; ?></span></span>
                        </span>
                        </span>
                     </p>
                  </div>
                  <div style="height: 55px;position: relative;padding: 10px;float: left;width: 55%;background-color: rgba(0, 0, 0, 0.86);overflow: hidden;">
                     <div class="titlesmallarticulo">
               <a href="articulo.php?id=<?php echo $row['id']; ?>">
               <?php echo "$row[titulo]"; ?>           </a>
               </div>
               <div style="color:#ccc;" class="resumen-noticia">
               <?php echo "$row[resumen]"; ?>                <br>
               </div>
               </div>
               <div class="detalle-titulo"></div>
               </a>
            </div>
            <?php
}
?>
         </div>
         <!-- Cierre de Ultimas noticias Publicadas -->
         
         <!--  Usuarios con mas fichas -->
         <div class="panel panel-default">
            <div class="panel-heading gold">
               <h3 class="panel-title">
                  <div class="contedor-badge"><img src="./images/fichas.png"></div>
               </h3>
               <h3 class="panel-title">Usuarios con mas Fichas</h3>
            </div>
            <div class="panel-body">
               <div style="margin-left: 0px;" class="panel-users">
                  <center>
                     <?PHP
$resultado = $link->query("SELECT * FROM `usuarios` ORDER BY fichas DESC LIMIT 4");
while ($row = mysqli_fetch_array($resultado))
{
?>
                     <div class="usercontenedor">
                        <center>
                           <div class="userperfileindex">
                              <img src="<?php echo " $row[avatar] "; ?>" alt="" style="width:100px;height:100px;">
                           </div>
                           <div class="nameuserperfil">
                              <a style="color: #fff; font size: 3;" href="perfil.php?user=<?php echo $row['username']; ?>"> <b><?php echo "$row[username]"; ?></b>
                              </a><?php if ($row['verificado'] == "Si"){ echo '<sup title="Usuario verificado"><i class="bi bi-patch-check-fill" style="color: #00C1FF;"></i></sup>';}?><br>Fichas: <?php echo "$row[fichas]"; ?> </font>
                           </div>
                        </center>
                     </div>
                     <?php
}
?>
                  </center>
               </div>
            </div>
         </div>
         <!-- Cierre de Usuarios con mas fichas -->
         <!--  Usuarios con mas puntos -->
         <div class="panel panel-default">
            <div class="panel-heading blue">
               <h3 class="panel-title">
                  <div class="contedor-badge"><img src="./images/puntos.png"></div>
               </h3>
               <h3 class="panel-title">Usuarios con mas Puntos</h3>
            </div>
            <div class="panel-body">
               <div style="margin-left: 0px;" class="panel-users">
                  <center>
                     <?PHP
$resultado = $link->query("SELECT * FROM `usuarios` ORDER BY puntos DESC LIMIT 4");
while ($row = mysqli_fetch_array($resultado))
{
?>
                     <div class="usercontenedor">
                        <center>
                           <div class="userperfileindex">
                              <img src="<?php echo " $row[avatar] "; ?>" alt="" style="width:100px;height:100px;">
                           </div>
                           <div class="nameuserperfil">
                              <a style="color: #fff; font size: 3;" href="perfil.php?user=<?php echo $row['username']; ?>"> <b><?php echo "$row[username]"; ?> </b>
                              </a><?php if ($row['verificado'] == "Si"){ echo '<sup title="Usuario verificado"><i class="bi bi-patch-check-fill" style="color: #00C1FF;"></i></sup>';}?><br>Puntos: <?php echo "$row[puntos]"; ?> </font>
                           </div>
                        </center>
                     </div>
                     <?php
}
?>
                  </center>
               </div>
            </div>
         </div>
         <!-- Cierre de Usuarios con mas fichas -->
         <!--  Usuarios con mas tokens -->
         <div class="panel panel-default">
            <div class="panel-heading green">
               <h3 class="panel-title">
                  <div class="contedor-badge"><img src="./images/tokens.png"></div>
               </h3>
               <h3 class="panel-title">Usuarios con mas Tokens</h3>
            </div>
            <div class="panel-body">
               <div style="margin-left: 0px;" class="panel-users">
                  <center>
                     <?PHP
$resultado = $link->query("SELECT * FROM `usuarios` ORDER BY tokens DESC LIMIT 4");
while ($row = mysqli_fetch_array($resultado))
{
?>
                     <div class="usercontenedor">
                        <center>
                           <div class="userperfileindex">
                              <img src="<?php echo " $row[avatar] "; ?>" alt="" style="width:100px;height:100px;">
                           </div>
                           <div class="nameuserperfil">
                              <a style="color: #fff; font size: 3;" href="perfil.php?user=<?php echo $row['username']; ?>"> <b><?php echo "$row[username]"; ?> </b>
                              </a><?php if ($row['verificado'] == "Si"){ echo '<sup title="Usuario verificado"><i class="bi bi-patch-check-fill" style="color: #00C1FF;"></i></sup>';}?><br>Tokens: <?php echo "$row[tokens]"; ?> </font>
                           </div>
                        </center>
                     </div>
                     <?php
}
?>
                  </center>
               </div>
            </div>
         </div>
         <!-- Cierre de Usuarios con mas tokens -->
         <!-- Ultimos Usuarios Populares -->
         <div class="panel panel-default">
            <div class="panel-heading oscuro">
               <h3 class="panel-title">
                  <div class="contedor-badge"><img src="./images/nuevo-user.png"></div>
               </h3>
               <h3 class="panel-title">Usuarios Populares</h3>
            </div>
            <div class="panel-body">
               <div style="margin-left: 0px;" class="panel-users">
                  <center>
                     <?PHP
$resultado = $link->query("SELECT * FROM `usuarios` ORDER BY megusta DESC LIMIT 4");
while ($row = mysqli_fetch_array($resultado))
{
?>
                     <div class="usercontenedor">
                        <center>
                           <div class="userperfileindex">
                              <img src="<?php echo " $row[avatar] "; ?>" alt="" style="width:100px;height:100px;">
                           </div>
                           <div class="nameuserperfil">
                              <a style="color: #fff; font size: 3;" href="perfil.php?user=<?php echo $row['username']; ?>"> <b><?php echo "$row[username]"; ?> </b>
                              </a><?php if ($row['verificado'] == "Si"){ echo '<sup title="Usuario verificado"><i class="bi bi-patch-check-fill" style="color: #00C1FF;"></i></sup>';}?><br><?php echo "$row[megusta]"; ?> Seguidores</font>
                           </div>
                        </center>
                     </div>
                     <?php
}
?>
                  </center>
               </div>
            </div>
         </div>
         <!-- Cierre de Ultimos Usuarios Populares -->
      </div>
   </div>
</div>
