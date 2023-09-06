<section class="main flex justify-center">
      <div class="card w-70 m-14">
        <div class="card-head">
          <h2>MODTOOLS - Kuinz Fansite <span class="f-right card-minititle">Logs Mensajes</span></h2>
        </div>
        <div class="card-cont flex justify-center">
          <div class="flex flex-column">
          <table class="table-main">
            <thead>
              <tr>
                <th>ID</th>
                 
                <th>Usuario</th>
                <th>Accion</th>
                <th>Fecha</th>
                  
              </tr>
            </thead>
            <tbody>
                <?php
                #Pagination
                $comienza = 1;
                $maximo = 20;
                $nombreArchivo = "logs-generales.php";
                
                // Consulta para contar el número total de filas
                $sqlCount = "SELECT COUNT(*) as count FROM usuarios_mensajes_privados";
                $stmt = $conn->prepare($sqlCount);
                $stmt->execute();
                $rowCount = $stmt->fetch()['count'];
                $pagesCount = ceil($rowCount / $maximo);

                if (isset($_GET['pag'])) {
                  $pag = $_GET['pag'] - 1;
                  $comienza = $pag * $maximo;
                }

                $stmt = $conn->prepare("SELECT * FROM logs ORDER BY fecha DESC LIMIT $comienza,$maximo");
                $stmt->execute();
                while ($rowEquipo = $stmt->fetch(PDO::FETCH_ASSOC)) {
                ?>
                <tr>
                    <td class="table-data"><?=$rowEquipo['id'];?></td>
                    <td class="table-data"><?=$rowEquipo['usuario'];?></td>
                    <td class="table-data"><?=$rowEquipo['accion'];?></td>
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