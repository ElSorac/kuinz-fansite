<?php 

include ('kernel/config.php');


$resultado = $link->query("SELECT * FROM config WHERE id = 1");
  while($row = mysqli_fetch_array($resultado))
  {
$nameweb = $row['nameweb'];
$url = $row['url'];
$facebook = $row['facebook'];
$facebookimg = $row['facebookimg'];
$descripcion = $row['descripcion'];
$pclaves = $row['pclaves'];
$logo = $row['logo'];
$publicidac_cartel = $row['publicidad'];
$publicidad_code = $row['codigo'];
$iniciar_sesion_op = $row['iniciar_sesion'];
$registro_op = $row['registro'];
$mantenimiento = $row['mantenimiento'];
$radio_coder = $row['radio'];
$nombre_radio = $row['nombre_radio'];
$puntos_img = $row['puntos'];
$fichas_img = $row['fichas'];
$tokens_img = $row['tokens'];
$radio_op = $row['radio_op'];
}

if (isset($_GET['lang'])) {
  setcookie("idioma", $_GET['lang'], time()+3600); 
    include ('kernel/langs/'.$_GET['lang'].'.php');
}

if (empty($_GET['lang'])) {
  if (isset($_COOKIE["idioma"])) {
    include ('kernel/langs/'.$_COOKIE["idioma"].'.php');
  } else {
    include ('kernel/langs/'.$language.'.php');
  }
}


$meta = "<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta property='og:locale' content='es_ES'/>
<meta property='og:type' content='website'/>
<meta property='og:title' content='$nameweb'/>
<meta property='og:description' content='$descripcion'/>
<meta property='og:url' content='$url'/>
<meta property='og:site_name' content='$nameweb'/>
<meta property='og:image' content='$facebookimg'>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<meta http-equiv='Content-Language' content='es'/>
<meta name='Keywords' content='$pclaves'/>
<meta name='Description' content='$descripcion'/>
<meta name='Distribution' content='global'/>
<meta name='Robots' content='all'/>";


if("$publicidac_cartel"=="1"){
  $cartel_publicidad ="<div class='panel panel-default'>
            <div class='panel-heading green'>
              <h3 class='panel-title'><div class='contedor-badge'><div class='icon-publicidad'></div></div> $lang[37]</h3>
            </div>
            <div style='overflow: hidden;' class='panel-body'>
            <div><div><div><div><div>
           <CENTER>$publicidad_code</CENTER>
           </div></div></div></div></div>
			  </div>
          </div><br>";
}else{
  $cartel_publicidad = " ";
}

if("$radio_op"=="1"){
$cartel_radio ="<div class='visible-desktop'><div class='panel panel-default'>
            <div class='panel-heading oscuro'>
              <h3 class='panel-title'><div class='contedor-badge'><div class='icon-radio'></div></div> $nombre_radio</h3>
            </div>
            <div class='panel-body'>
            <div><div><div><div><div>
           <CENTER>$radio_coder</CENTER>
           </div></div></div></div></div>
            </div>
          </div></div><br>";
}else{
  $cartel_radio = " ";
}

$redes_sociales = "<div class='panel panel-default'>
        <div class='panel-heading blue'>
          <h3 class='panel-title'><div class='contedor-badge'><div class='icon-redes-sociales'></div></div> $lang[31]</h3>
        </div>
        <div class='panel-body'>
          <div class='fb-page' data-href='$facebook
            ' data-tabs='timeline' data-small-header='false' data-adapt-container-width='true' data-width='400' data-hide-cover='false' data-show-facepile='true'>
            <blockquote cite='$facebook
              ' class='fb-xfbml-parse-ignore'> <a href='$facebook'> $nameweb
              </a>
            </blockquote>
          </div>
        </div>
      </div>";


// Configuración Hk

 $resultado = $link->query("SELECT * FROM rangos WHERE id = 7");
  while($row=mysqli_fetch_array($resultado))
  {
$rango7 = "7";
$rango_7 = $row['nombre'];
  } 
  
  $resultado = $link->query("SELECT * FROM rangos WHERE id = 6");
  while($row=mysqli_fetch_array($resultado))
  {
$rango6 = "6";
$rango_6 = $row['nombre'];
  }

   $resultado = $link->query("SELECT * FROM rangos WHERE id = 5");
  while($row=mysqli_fetch_array($resultado))
  {
$rango5 = "5";
$rango_5 = $row['nombre'];
  }

   $resultado = $link->query("SELECT * FROM rangos WHERE id = 4");
  while($row=mysqli_fetch_array($resultado))
  {
$rango4 = "4";
$rango_4 = $row['nombre'];
  }

   $resultado = $link->query("SELECT * FROM rangos WHERE id = 3");
  while($row=mysqli_fetch_array($resultado))
  {
$rango3 = "3";
$rango_3 = $row['nombre'];
  }
// Cierre de configuración



    $editor = "
      <!-- Include Font Awesome. -->
  <link href='//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css' rel='stylesheet' type='text/css' />

  <!-- Include Editor style. -->
  <link href='$url/hk/froala/css/froala_editor.min.css' rel='stylesheet' type='text/css' />
  <link href='$url/hk/froala/css/froala_style.min.css' rel='stylesheet' type='text/css' />

  <!-- Include Code Mirror style -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css'>

  <!-- Include Editor Plugins style. -->
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/char_counter.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/code_view.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/colors.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/emoticons.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/file.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/fullscreen.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/image.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/image_manager.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/line_breaker.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/quick_insert.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/table.css'>
  <link rel='stylesheet' href='$url/hk/froala/css/plugins/video.css'>";

    $editorjs = "
  <!-- Include jQuery. -->
  <script type='text/javascript' src='//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>

  <!-- Include JS files. -->
  <script type='text/javascript' src='$url/hk/froala/js/froala_editor.min.js'></script>

  <!-- Include Code Mirror. -->
  <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js'></script>
  <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js'></script>

  <!-- Include Plugins. -->
  <script type='text/javascript' src='$url/hk/froala/js/plugins/align.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/char_counter.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/code_beautifier.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/code_view.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/colors.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/emoticons.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/entities.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/file.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/font_family.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/font_size.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/fullscreen.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/image.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/image_manager.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/inline_style.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/line_breaker.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/link.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/lists.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/paragraph_format.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/paragraph_style.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/quick_insert.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/quote.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/table.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/save.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/url.min.js'></script>
  <script type='text/javascript' src='$url/hk/froala/js/plugins/video.min.js'></script>

  <!-- Include Language file if we want to use it. -->
  <script type='text/javascript' src='$url/hk/froala/js/languages/es.js'></script>
    
    <script>
  $(function() {
    $('#edit').froalaEditor({
      language: 'es'
    })
  });
</script>

  <!-- Initialize the editor. -->
  <script>
      $(function() {
          $('#edit').froalaEditor()
      });
  </script>";
?>