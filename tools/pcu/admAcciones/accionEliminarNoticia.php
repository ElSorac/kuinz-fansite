<?php
require('../core/server.php');

if (isset($_SESSION['logeado']) != "Si") {
    header("Location: /login");
    exit();
} else {

    #Validacion de rangos
   $mi_id    = $_SESSION['id'];
   $consulta = $conn->query('SELECT Admin FROM usuarios WHERE ID = "' . $mi_id . '"');
   while ($datos = $consulta->fetch()) {
       $rangouser = $datos['Admin'];
   }
   #Prohibimos a ciertos rangos
   if ($rangouser == 0 || $rangouser == 1 || $rangouser == 2 || $rangouser == 3 || $rangouser == 4 || $rangouser == 5) {
    header("Location: dash");
    exit;
    }
?>
<?php
   if (isset($_GET['noticia'])) {
      $noticia = strip_tags($_GET['noticia']);

      if (empty($noticia)) {
         echo 'Ocurrio un error.';
         exit();
      }else {

        $c = $conn->prepare("SELECT * FROM web_noticias WHERE id = :id");
        $c->execute([
            ':id' => $noticia
        ]);
        $dataC = $c->fetchColumn();

        if ($dataC <= 0) {
            echo 'No existe esta noticia.';
            exit();
         } else {
            
            $d = $conn->prepare("DELETE FROM web_noticias WHERE id = :id");
            $d->bindParam(':id',$noticia,PDO::PARAM_INT);
            $d->execute();

            header("Location: ../admNoticias");
         }
      }
    }
}
?>