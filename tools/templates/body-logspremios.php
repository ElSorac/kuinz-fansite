<section class="main flex justify-center">
      <div class="card w-70 m-14">
        <div class="card-head">
          <h2>MODTOOLS - Kuinz Fansite <span class="f-right card-minititle">Logs de premios</span></h2>
        </div>
        <div class="card-cont flex justify-center">
          <div class="flex flex-column w-70">
          <table class="table-main">
            <thead>
              <tr>
                <th>Nombre</th>
                <th>Ganador</th>
                <th>Razon envio</th>
                <th>Tipo moneda</th>
                <th>Cantidad</th>
                <th>Fecha</th>
              </tr>
            </thead>
            <tbody>
                <?php
                #Pagination
                $comienza = 1;
                $maximo = 20;
                $nombreArchivo = "logs-premios.php";
                
                // Consulta para contar el número total de filas
                $sqlCount = "SELECT COUNT(*) as count FROM logs_premios";
                $stmt = $conn->prepare($sqlCount);
                $stmt->execute();
                $rowCount = $stmt->fetch()['count'];
                $pagesCount = ceil($rowCount / $maximo);

                if (isset($_GET['pag'])) {
                  $pag = $_GET['pag'] - 1;
                  $comienza = $pag * $maximo;
                }

                $stmt = $conn->prepare("SELECT * FROM logs_premios ORDER BY fecha DESC LIMIT $comienza,$maximo");
                $stmt->execute();
                while ($rowEquipo = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    $userID = $rowEquipo['user_id'];

                    #Vamos obtener nombre del usuario
                    $sql = "SELECT * FROM usuarios WHERE ID = :user_id";
                    $stmtUser = $conn->prepare($sql);
                    $stmtUser->execute([
                        ':user_id' => $userID
                    ]);
                    $userData = $stmtUser->fetch();
                    $nameUser= $userData['username'];

                    #Vamos obtener nombre del rango
                    $sql = "SELECT * FROM rangos WHERE id = :id_rank";
                    $stmtRank = $conn->prepare($sql);
                    $stmtRank->execute([
                        ':id_rank' => $rowEquipo['user_rank']
                    ]);
                    $DataRango = $stmtRank->fetch();
                    $nameRango = $DataRango['nombre'];
                ?>
                <tr>
                    <td class="table-data"><?=$nameUser?> <b>(<?=$nameRango?>)</b></td>
                    <td class="table-data"><?=$rowEquipo['ganador'];?></td>
                    <td class="table-data"><?=$rowEquipo['razon'];?></td>
                    <td class="table-data"><?=$rowEquipo['moneda'];?></td>
                    <td class="table-data"><?=$rowEquipo['cantidad'];?></td>
                    <td class="table-data"><?=$rowEquipo['fecha'];?></td>
                </tr>
                <?php } ?>
            </tbody>
          </table>
          <div class="paginacion">
              <a href="<?=$nombreArchivo?>?pag=1"><<</a>
              <?php
              if (isset($_GET['pag']) && $_GET['pag'] > 1) {
              ?>
              <a href="<?=$nombreArchivo?>?pag=<?=$_GET['pag']-1;?>"> <</a>
              <?php } else { ?>
                <a class='paginacion-block'> <</a>
              <?php } ?>
              
                <?php
                for ($i=1; $i <= $pagesCount; $i++) { 
                ?>
                <a href="<?=$nombreArchivo?>?pag=<?=$i?>"><?=$i?></a>
                <?php } ?>
              
              <?php
              if (!isset($_GET['pag'])) {
              ?>
              <a href="<?=$nombreArchivo?>?pag=2"> ></a>
              <?php
              } else {
                if ($_GET['pag'] >= $pagesCount) {
              ?>
              <a class='paginacion-block'> ></a>
              <?php
              } else {
              ?>
              <a href="<?=$nombreArchivo?>?pag=<?=$_GET['pag']+1;?>"> ></a>
              <?php } } ?>
              <a href="<?=$nombreArchivo?>?pag=<?=$pagesCount?>"> >></a>
            </div>
          </div>
        </div>
        
      </div>
    </section>