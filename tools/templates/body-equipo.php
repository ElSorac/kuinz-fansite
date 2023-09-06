<div class="row">
    <section class="main flex justify-center">
      <div class="card w-70 m-14">
        <div class="card-head">
          <h2>MODTOOLS - Kuinz Fansite <span class="f-right card-minititle">Equipo Kuinz</span></h2>
        </div>
        <div class="card-cont flex justify-center">
          <div class="flex flex-column">
            <table class="table-main bg-red" style="width: 60%; height: 100%;min-width: 530px;">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Nombre</th>
                  <th>Rango</th>
                  <th>Accion</th>
                </tr>
              </thead>
              <tbody>
                
              <?php
                #Pagination
                $comienza = 1;
                $maximo = 10;
                // Consulta para contar el número total de filas
                $sqlCount = "SELECT COUNT(*) as count FROM equipo";
                $stmt = $conn->prepare($sqlCount);
                $stmt->execute();
                $rowCount = $stmt->fetch()['count'];
                $pagesCount = ceil($rowCount / $maximo);

                if (isset($_GET['pag'])) {
                  $pag = $_GET['pag'] - 1;
                  $comienza = $pag * $maximo;
                }


                $stmt = $conn->prepare("SELECT * FROM equipo LIMIT $comienza,$maximo");
                $stmt->execute();
                while ($rowEquipo = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $userID = $rowEquipo['user_id'];
                # Obtener nombre del usuario
                $sql = "SELECT * FROM usuarios WHERE ID = :user_id";
                $stmtUser = $conn->prepare($sql);
                $stmtUser->execute([
                    ':user_id' => $userID
                ]);
                $userData = $stmtUser->fetch();
                $nameUser = $userData['username'];

                # Obtener nombre del rango utilizando la función getRango
                $idRango = $rowEquipo['rango_id'];
                $nombreRangoClass = getRango($idRango);

              ?>
              <tr>
                  <td class="table-data"><?=$rowEquipo['id'];?></td>
                  <td class="table-data"><?=$nameUser;?></td>
                  <td class="table-data"><?=$nombreRangoClass;?></td>
                  <td class="table-data"><button class="btn btn-green"><a href="permisos.php?user=<?=$nameUser?>">Permisos</a></button><button class="btn btn-red"><a href="app/expulsarequipo.php?user=<?=$nameUser?>">Expulsar</a></button></td>
              </tr>
              <?php } ?>
              
              </tbody>
            </table>
            <div class="paginacion">
                <a href="equipo.php?pag=1"><<</a>
                <?php
                if (isset($_GET['pag']) && $_GET['pag'] > 1) {
                ?>
                <a href="equipo.php?pag=<?=$_GET['pag']-1;?>"> <</a>
                <?php } else { ?>
                  <a class='paginacion-block'> <</a>
                <?php } ?>
                
                  <?php
                  for ($i=1; $i <= $pagesCount; $i++) { 
                  ?>
                  <a href="equipo.php?pag=<?=$i?>"><?=$i?></a>
                  <?php } ?>
                
                <?php
                if (!isset($_GET['pag'])) {
                ?>
                <a href="equipo.php?pag=2"> ></a>
                <?php
                } else {
                  if ($_GET['pag'] >= $pagesCount) {
                ?>
                <a class='paginacion-block'> ></a>
                <?php
                } else {
                ?>
                <a href="equipo.php?pag=<?=$_GET['pag']+1;?>"> ></a>
                <?php } } ?>
                <a href="equipo.php?pag=<?=$pagesCount?>"> >></a>
              </div>
          </div>
          <form action="/app/ascender.php" method="post" enctype="multipart/form-data" class="form-dash flex flex-column w-40"> 
            <h2>Ascender usuario</h2>
            <div class="form-cont flex flex-column">
              <label for="user">Usuario</label>
              <input type="text" name="user" id="" placeholder="Ingresa usuario">
              <label for="rango">Rango</label>
              <select name="rango">
                <option value="" selected disabled>Selecciona</option>
                <?php
                $stmt = $conn->prepare("SELECT * FROM rangos ORDER BY id ASC");
                $stmt->execute();
                while ($rowEquipo = $stmt->fetch(PDO::FETCH_ASSOC)) {
                ?>
                <option value="<?=$rowEquipo['id'];?>"> <?=$rowEquipo['nombre'];?> (<?=$rowEquipo['id'];?>)</option>
                <?php } ?>
              </select>
            </div>
            <div class="flex justify-center">
              <button class="btn btn-green w-40"> Enviar</button>
            </div>
          </form>
        </div>
      </div>
    </section>
  </div>
<?php
if (isset($_GET['status'])) {
    switch ($_GET['status']) {
        case 0:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> El comando fue ejecutado correctamente.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 1:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes dejar ninguna casilla vacia.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 2:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> El usuario no existe.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 3:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No estas autorizado para ascender.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 4:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes expulsar a alguien de rango mayor que tu.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 500:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Error al procesar formulario.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 69:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes expulsar este usuario.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        default:
            echo '';
            break;
    }
}
/*
        <form method="post">
        <input type="submit" name="actualizar" value="Actualizar Equipo">
      </form>
        if(isset($_POST['actualizar'])) {
          $sql = "UPDATE equipo SET moderador = 1 WHERE rango_id = 3";
          $stmt = $conn->prepare($sql);
          $stmt->execute();
        }
*/
?>