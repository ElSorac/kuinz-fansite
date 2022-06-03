<!-- CUADRO PARA PUBLIZCAR -->
<?php
if ($_SESSION["logeado"] == "SI")
{

    $menu = " 
 <div id='web'>
<div class='contenedor'>
<div class='appakiwrapmenu'>
<div class='appakimenu'>
<div class='appakiwrapmenud'>
<div class='appakimenud'>                               
   <div class='boxhome'>
   		<br>
   		<form action='' method='post' enctype='multipart/form-data'>
   			<textarea style='font-face:verdana;' type='text' required='' name='publitext' placeholder='¿Qué estás pensando?' class='textcompartir'></textarea>
		   	<input class='btnwo fright' name='guardar' type='submit' value='Publicar' style='width: 120px;' />
   		</form>
   <br><br>
   </div>
   <div class='row'>
   <div class='col-md-12'>
      <div id='loader' style='text-aling:center;margin-left:50%;'>
         <img src='hk/loader.gif'>
      </div>
      <div class='outer_div'>
      </div>
      <!-- Datos ajax Final -->
   </div>
   
      <script>
      $(document).ready(function(){
        load(1);
      });
      function load(page){
        var parametros = {\"action\":\"ajax\",\"page\":page};
        $(\"#loader\").fadeIn('slow');
        $.ajax({
            url:'kernel/ajax/Body_Kweet_ajax.php',
            data: parametros,
             beforeSend: function(objeto){
            $(\"#loader\").html(\"<img src='hk/loader.gif'>\");
            },
            success:function(data){
                $(\".outer_div\").html(data).fadeIn('slow');
                $(\"#loader\").html(\"\");
            }
        })
      }
   </script>

</div>

</div>
</div>
</div>
</div>
  <div class='webakimenu'>
   <ul class='ulhome'>
      <li style='background: transparent;margin-top:7px;height:40px;'>
         <img class='radinoti' src='$avatar_user'> 
         <b>$usuario</b><br><a href='perfil.php?user=$usuario' class='links'>Ir al perfil</a>
      </li>
      <li onclick=\"location.href='equipo.php'\"><img width='15px' src='/images/rango.png'>Rango: <b>$u_rango</b></li>
      <li onclick=\"location.href='noticias.php'\"><img width='15px'src='/images/icon-new.png'>Ultimas Noticias</li>
      <li title='Fichas'><img width='15px'src='/images/fichas.png'>$fichas_user Fichas</li>
      <li title='Puntos'><img width='15px'src='/images/puntos.png'>$puntos_user Puntos</li>
      <li title='Tokens'><img width='15px'src='/images/tokens.png'>$tokens_user Tokens</li>
   </ul>
</div>
</div>
</div>";
}
else
{
    $menu = "<script> document.location.href='no-logueado.php'; </script>";
}
if ($_SESSION["logeado"] == "SI")
{

    echo "$menu";

?>
<?php
}
else
{

    echo "$menu";

}

?>

<?php
$query = $link->query('SELECT username,avatar FROM usuarios WHERE username = "' . $username . '"');
while ($row = mysqli_fetch_array($query))
{
    $avatar_mio = $row['avatar'];
}

if ($_POST['guardar'])
{
		$f_post = date('d-M-Y h:i:s', time());

    $enviar = "INSERT INTO eventos (publicacion,usuario,fecha,avatar) values ('" .strip_tags($_POST['publitext'], '<img><h2><video><audio><source><br><iframe>'). "','" . $username . "','" . $f_post . "','" . $avatar_mio . "')";

    if (@$link->query($enviar))
    {

        // Guardar acción en Logs si se ha iniciado sesión
        $fecha_log = date("Y-m-d");

?>
<script type="text/javascript">
   location.href ="<?php echo $_SERVER['HTTP_REFERER']; ?>";
   
</script>
<?php
    }

}

?>
<br>
