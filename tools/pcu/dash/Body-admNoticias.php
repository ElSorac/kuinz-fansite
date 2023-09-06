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
            <p class="text-subtitle text-muted">Noticias <?=$nameserver?></p>
         </div>
         <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
               <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dash">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Noticias</li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
   <section class="d-flex justify-content-center">
      <div class="col-4 col-md-6 " id="c_noticia" style="display: none;">
         <div class="card">
            <div class="card-body">
               <h3>Crea una noticia nueva</h3>
               <hr>
               <form method="post">
                  <label for="titulo"><h6>Titulo de la noticia</h6></label>
                  <input type="text" name="titulo" class="form-control" maxlength="32" required value="">
                  <label for="url"><h6>URL de la imagen de la portada</h6></label>
                  <input type="text" name="url" class="form-control" value="" required>
                  <label for="descripcion"><h6>Descripcion corta de la noticia</h6></label>
                  <input type="text" name="descripcion" class="form-control" maxlength="48" value="">
                  <label for="fecha"><h6>Fecha noticia</h6></label>
                  <input type="date" name="fecha" class="form-control" required value="">
                  <label for="contenido"><h6>Contenido de la noticia</h6></label>
                  <textarea id="cont" name="contenido" required maxlength="1200" value=""></textarea>
                  <br>
                  <div class="d-flex justify-content-center">
                     <button class="btn btn-success" type="submit"> Crear noticia</button>
                  </div>
               </form>
               <?php
               if (isset($_POST['titulo']) && isset($_POST['url']) && isset($_POST['descripcion']) && isset($_POST['fecha']) && isset($_POST['contenido'])) {
                  $titulo = htmlentities(strip_tags($_POST['titulo']));
                  $url = strip_tags($_POST['url']);
                  $descripcion = htmlentities(strip_tags($_POST['descripcion']));
                  $fecha = strip_tags($_POST['fecha']);
                  $contenido = htmlentities(strip_tags($_POST['contenido']));

                  if (empty($_POST['titulo']) || empty($_POST['url']) || empty($_POST['descripcion']) || empty($_POST['fecha']) || empty($_POST['contenido'])) {
                     echo "No puedes dejar nada vacio";
                  } else {

                     $cons = $conn->prepare("INSERT INTO web_noticias (titulo,descripcion,contenido,img_portada,autor,fecha) VALUES (:titulo,:descripcion,:contenido,:img,:autor,:fecha)");
                     $cons->bindParam(':titulo', $titulo, PDO::PARAM_STR);
                     $cons->bindParam(':descripcion', $descripcion, PDO::PARAM_STR);
                     $cons->bindParam(':contenido', $contenido, PDO::PARAM_STR);
                     $cons->bindParam(':img', $url, PDO::PARAM_STR);
                     $cons->bindParam(':autor', $nombre, PDO::PARAM_STR);
                     $cons->bindParam(':fecha', $fecha, PDO::PARAM_STR);
                     $cons->execute();

                  }
               }
               ?>
            </div>
         </div>
   </section>
   <section>
      <div class="col-12 col-md-12">
      <div class="card">
               
               <div class="card-content">
                  <div class="card-body">
                     <h3>Noticias de la web</h3>
                     <div class="button">
                        Si deseas crear una noticia, has <button class="btn btn-sm icon btn-info" onclick="c_noticia.style.display = ''">Click aqui!</button>
                     </div>
                  </div>
                  <!-- table responsive -->
                  <div class="table-responsive">
                     <table class="table mb-0">
                        <thead>
                           <tr>
                              <th scope="col">#</th>
                              <th scope="col">Titulo</th>
                              <th scope="col">Descripcion</th>
                              <th scope="col">Autor</th>
                              <th scope="col">Fecha</th>
                              <th scope="col">Accion</th>
                           </tr>
                        </thead>
                        <tbody>
                           <?php
                           $k = $conn->prepare("SELECT * FROM web_noticias ORDER BY id DESC");
                           $k->execute();
                           while ($dataN = $k->fetch()) {
                           ?>
                           <tr>
                              <td><?=$dataN['id']?></td>
                              <td><?=$dataN['titulo']?></td>
                              <td><?=$dataN['descripcion']?></td>
                              <td><?=$dataN['autor']?></td>
                              <td><?=$dataN['fecha']?></td>
                              <td>
                                 <div class="button">
                                    <a href="/admEditarNoticia?noticia=<?=$dataN['id']?>" class="btn btn-sm icon btn-success">Editar</a>
                                    <a href="/admAcciones/accionEliminarNoticia?noticia=<?=$dataN['id']?>" class="btn btn-sm icon btn-danger">Eliminar</a>
                                 </div>
                              </td>
                           </tr>
                           <?php } ?>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div>
      </div>
   </section>
</div>
<script type='text/javascript' src='https://cdn.jsdelivr.net/npm/froala-editor@latest/js/froala_editor.pkgd.min.js'></script>
<script>
   var editor = new FroalaEditor('#cont');
</script>