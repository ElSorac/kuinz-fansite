<?php
  #Cerramos conexiones sin logeo
  if (isset($_SESSION['logeado']) != "Si") {
    exit();
  }
  function ObtenerMes($m){
    switch ($m) {
       case 'January':
          $mespost = "Enero";
          return $mespost;
       break;
       case 'February':
          $mespost = "Febrero";
          return $mespost;
       break;
       case 'March':
          $mespost = "Marzo";
          return $mespost;
       break;
       case 'Abril':
          $mespost = "April";
          return $mespost;
       break;
       case 'May':
          $mespost = "Mayo";
          return $mespost;
       break;
       case 'June':
          $mespost = "Junio";
          return $mespost;
       break;
       case 'July':
          $mespost = "Julio";
          return $mespost;
       break;
       case 'Agosto':
          $mespost = "August";
          return $mespost;
       break;
       case 'September':
          $mespost = "Septiembre";
          return $mespost;
       break;
       case 'Octuber':
          $mespost = "Octubre";
          return $mespost;
       break;
       case 'November':
          $mespost = "Noviembre";
          return $mespost;
       break;
       case 'December':
          $mespost = "Diciembre";
          return $mespost;
       break;
    }
  }
?>
<div class="page-heading">
  <div class="page-title">
    <div class="row">
      <div class="col-12 col-md-6 order-md-1 order-last">
        <h3>Noticias & Novedades de la comunidad</h3>
        <p class="text-subtitle text-muted">Enterate de lo mas importante de nuestra comunidad.</p>
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
  <?php
  $id_noticia = isset($_GET['post']) ? $_GET['post'] : "";
  if (empty($id_noticia)) {
  ?>
    <section class="section">
    <div class="row">
      <?php
             $consulta = $conn->prepare("SELECT * FROM web_noticias ORDER BY fecha DESC LIMIT 5");
             $consulta->execute();
             
             while ($row = $consulta->fetch()) {
             $titulo = html_entity_decode($row['titulo']);
             $cont = html_entity_decode($row['contenido']);
             $desc = html_entity_decode($row['descripcion']);
             $portada= html_entity_decode($row['img_portada']);
             $autor = html_entity_decode($row['autor']);
             $fecha = html_entity_decode($row['fecha']);
             

             //Acomodar fecha como gente normal
             $originalDate = $fecha;
             $newFecha = date("d/m/Y", strtotime($originalDate));

             //Obtenemos mes
             $dia = date("d", strtotime($originalDate));
             $mes= date("m", strtotime($originalDate));
             $year= date("Y", strtotime($originalDate));
             $dateObj   = DateTime::createFromFormat('!m', $mes);
             $m = strftime('%B', $dateObj->getTimestamp());
             
             ?>
      <div class="col-xl-4 col-md-6 col-sm-12">
           <div class="card">
             <div class="card-content">
               <div class="card-body">
                 <h4 class="card-title"><?=$titulo?></h4>
                 <p class="card-text">
                   <?=$desc?>
                 </p>
               </div>
               <img class="img-fluid w-100" src="<?=$portada?>">
             </div>
             <div class="card-footer d-flex justify-content-between">
               <span style="font-size:12px;"><i class="bi bi-calendar3"></i> Publicado por <?=$autor?> el <b><?=$dia?> de <?php echo ObtenerMes($m);?> del <?=$year?></b></span>
               <a class="btn btn-light-primary" href="/noticias?post=<?=$row['id'];?>">Leer más</a>
             </div>
           </div>
           
         </div>
         
         <?php } ?>
    </div>
  </section>
  <?php } else { 

    $c = $conn->prepare("SELECT * FROM web_noticias WHERE id = :id LIMIT 1");
    $c->execute([
       ':id' => $id_noticia
    ]);

    $dataC = $c->fetchColumn();
    if ($dataC <= 0) {
      echo 'No existe esta noticia.';
      exit();
    } else {
      $n = $conn->prepare("SELECT * FROM web_noticias WHERE id = :id LIMIT 1");
      $n->execute([
         ':id' => $id_noticia
      ]);
      $dataN = $n->fetch();

      $titulo = html_entity_decode($dataN['titulo']);
      $cont = html_entity_decode($dataN['contenido']);
      $desc = html_entity_decode($dataN['descripcion']);
      $portada= html_entity_decode($dataN['img_portada']);
      $autor = html_entity_decode($dataN['autor']);
      $fecha = html_entity_decode($dataN['fecha']);

      //Acomodar fecha como gente normal
      $originalDate = $fecha;
      $newFecha = date("d/m/Y", strtotime($originalDate));

      //Obtenemos mes
      $dia = date("d", strtotime($originalDate));
      $mes= date("m", strtotime($originalDate));
      $year= date("Y", strtotime($originalDate));
      $dateObj   = DateTime::createFromFormat('!m', $mes);
      $m = strftime('%B', $dateObj->getTimestamp());

      $l = $conn->prepare("SELECT sum(`likes`) as `likes`,sum(`dislikes`) as `dislikes`FROM web_noticias WHERE id = :id");
      $l->execute([
         ':id' => $id_noticia
      ]);
      

      ?>
    <section class="d-flex justify-content-center">
      <div class="col-xl-6 col-md-6 col-sm-12">
        <div class="card">
          <div class="card-content">
            <a class="btn btn-light-primary" href="/noticias" style="float: right; margin: 20px;">Volver atrás</a>
            <div class="card-body">
              <h4 class="card-title"><?=$titulo?></h4>
              
              <p  class="text-subtitle text-muted"><?=$desc?></p>
              <div class="card-text">
                
                <?=$cont?>
              </div>
              <div class="card-footer d-flex justify-content-between">
                <span><i class="bi bi-calendar3"></i> Publicado por <?=$autor?> el <b><?=$dia?> de <?php echo ObtenerMes($m);?> del <?=$year?></b></span>
                <span style="float: right;">
                  <form action="" method="post">
                    <button type="submit" name="megusta" class="btn icon btn-success btn-sm" style="font-size:10px;">+</button>
                    <button type="submit" name="nomegusta" class="btn icon btn-danger btn-sm" style="font-size:10px;">-</button>
                  </form>
                </span>
                <?php
                if (isset($_POST['megusta'])) {
                  
                  $cons = $conn->prepare("SELECT * FROM web_noticias_likes WHERE id_user = :id_user AND id_noticia = :id_noticia AND tipo = 1");
                  $cons->execute([
                    ':id_user' => $id,
                    ':id_noticia' => $id_noticia
                  ]);
                  $dataTotalLikes = $cons->fetchColumn();

                  $cons2 = $conn->prepare("SELECT * FROM web_noticias_likes WHERE id_user = :id_user AND id_noticia = :id_noticia AND tipo = 2");
                  $cons2->execute([
                    ':id_user' => $id,
                    ':id_noticia' => $id_noticia
                  ]);
                  $dataTotalDislikes = $cons2->fetchColumn();

                  if ($cons2 != 0) {
                    $r = $conn->prepare("SELECT * FROM web_noticias WHERE = :id");
                    $r->execute([
                      ':id' => $id_noticia
                    ]);

                    while ($rData = $r->fetch()) {
                      $dislikes = $rData['dislikes'];
                    }

                    $aumento = $dislikes - 1;

                    $update = $conn->prepare("UPDATE `web_noticias` SET `dislikes` = :dislikes WHERE `web_noticias`.`id` = :id;");
                    $update->execute([
                      ':dislikes' => $aumento,
                      ':id' => $id_noticia
                    ]);

                    //falta eliminar
                  }
                  
                  if ($cons == 0) {
                    $r = $conn->prepare("SELECT * FROM web_noticias WHERE = :id");
                    $r->execute([
                      ':id' => $id_noticia
                    ]);
                    while ($rData = $r->fetch()) {
                      $likes = $rData['likes'];
                    }

                    $aumento = $likes - 1;

                    $update = $conn->prepare("UPDATE web_noticias SET likes = :likes WHERE id = :id");
                    $update->execute([
                      ':likes' => $aumento,
                      ':id' => $id_noticia
                    ]);
                  }

                }
                ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  <?php } } ?>
</div>
