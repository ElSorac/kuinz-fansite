<?php
#Cerramos conexiones sin logeo
if (isset($_SESSION['logeado']) != "Si") {
  exit();
}
?>
<link href='https://cdn.jsdelivr.net/npm/froala-editor@latest/css/froala_editor.pkgd.min.css' rel='stylesheet' type='text/css' />

<div class="page-heading">
   <div class="page-title">
      <div class="row">
         <div class="col-12 col-md-6 order-md-1 order-last">
            <h3>Noticias</h3>
            <p class="text-subtitle text-muted">Editar noticia de <?=$nameserver?></p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dash">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Editar noticia</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <?php
   if (isset($_GET['noticia'])) {
      $noticia = strip_tags($_GET['noticia']);

      if (empty($noticia)) {
         echo 'No hay nada que mostrar.';
         exit();
      }

      $c = $conn->prepare("SELECT * FROM web_noticias WHERE id = :id");
      $c->execute([
         ':id' => $noticia
      ]);
      $dataC = $c->fetchColumn();

      if ($dataC <= 0) {
         echo 'No existe esta noticia.';
         exit();
      }

      $n = $conn->prepare("SELECT * FROM web_noticias WHERE id = :id");
      $n->execute([
         ':id' => $noticia
      ]);
      $dataN = $n->fetch();

      $titulo = html_entity_decode($dataN['titulo']);
      $cont = html_entity_decode($dataN['contenido']);
      $desc = html_entity_decode($dataN['descripcion']);
      $portada= html_entity_decode($dataN['img_portada']);
      $autor = html_entity_decode($dataN['autor']);
      $fecha = html_entity_decode($dataN['fecha']);
   ?>
   <section>
      <div class="col-4 col-md-6">
         <div class="card">
            <div class="card-body">
               <form method="post">
                  <label for="titulo"><h6>Titulo de la noticia</h6></label>
                  <input type="text" name="titulo" class="form-control" maxlength="32" required value="<?=$titulo?>">
                  <label for="url"><h6>URL de la imagen de la portada</h6></label>
                  <input type="text" name="url" class="form-control" required value="<?=$portada?>">
                  <label for="descripcion"><h6>Descripcion corta de la noticia</h6></label>
                  <input type="text" name="descripcion" class="form-control" maxlength="48" required value="<?=$desc?>">
                  <label for="fecha"><h6>Fecha noticia</h6></label>
                  <input type="date" name="fecha" class="form-control" required value="<?=$fecha?>">
                  <label for="contenido"><h6>Contenido de la noticia </h6></label>
                  <textarea type="text" name="contenido" class="form-control" maxlength="1200" id="cont2"><?=$cont?></textarea>
                  <br>
                  <div class="d-flex justify-content-center">
                     <button class="btn btn-success" type="submit" style="margin-right: 2px;"> Actualizar noticia</button>
                     <a href="/admNoticias" class="btn btn-sm icon btn-info">Cancelar</a>
                  </div>
               </form>
               <?php
               if (isset($_POST['titulo']) && isset($_POST['url']) && isset($_POST['descripcion']) && isset($_POST['fecha']) && isset($_POST['contenido'])) {

                  $titulo = htmlentities(strip_tags($_POST['titulo']));
                  $url = strip_tags($_POST['url']);
                  $descripcion = htmlentities(strip_tags($_POST['descripcion']));
                  $fecha = strip_tags($_POST['fecha']);
                  $contenido = htmlentities($_POST['contenido']);

                  if (empty($_POST['titulo']) || empty($_POST['url']) || empty($_POST['descripcion']) || empty($_POST['fecha']) || empty($_POST['contenido'])) {
                     echo "No puedes dejar nada vacio";
                  } else {

                     $cons = $conn->prepare("UPDATE web_noticias SET titulo = :titulo, descripcion = :descripcion, contenido = :contenido, img_portada = :img, fecha = :fecha WHERE id = :id");
                     $cons->bindParam(':titulo', $titulo, PDO::PARAM_STR);
                     $cons->bindParam(':descripcion', $descripcion, PDO::PARAM_STR);
                     $cons->bindParam(':contenido', $contenido, PDO::PARAM_STR);
                     $cons->bindParam(':img', $url, PDO::PARAM_STR);
                     $cons->bindParam(':fecha', $fecha, PDO::PARAM_STR);
                     $cons->bindParam(':id', $noticia, PDO::PARAM_STR);
                     $cons->execute();

                     #Log admin
                     $razon = "Actualizo la noticia con el ID $noticia";
                     $envAccion = $conn->prepare("INSERT INTO logs_admin (responsable,jugador,accion,razon,fecha,ip) VALUES (:userses, :jugador, 'updatenoticia', :razon, NOW(), :ip) LIMIT 1");
                     $envAccion->bindParam(':jugador', $nombre, PDO::PARAM_STR);
                     $envAccion->bindParam(':userses', $autor, PDO::PARAM_STR);
                     $envAccion->bindParam(':razon', $razon, PDO::PARAM_STR);
                     $envAccion->bindParam(':ip', $miip, PDO::PARAM_STR);
                     $envAccion->execute();

                  }
               }
               ?>
            </div>
         </div>
   </section>
   <?php } ?>
</div>
<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/froala-editor@latest/js/froala_editor.pkgd.min.js'></script>
<script>

   var editor = new FroalaEditor('#cont');


   $(document).ready(function () {
      $('.dropdown-toggle').dropdown()
      $('#cont2').summernote({
         fontNames: [ 'Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Sacramento'],
         fontNamesIgnoreCheck: [ 'Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Sacramento'],
         toolbar: [
         ['font', ['bold', 'underline', 'clear']],
         ['fontname', ['fontname']],
         ['color', ['color']],
         ['para', ['ul', 'ol', 'paragraph']],
         ['table', ['table']],
         ['insert', ['link', 'picture', 'video']],
         ['view', ['codeview', 'help']],
         ],
         height: 500
         
      });
   });

</script>