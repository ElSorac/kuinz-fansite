<div class="container">
   <div class="row">
      <div class="col-md-8">
         <?php
         #Vamos a sacar datos de la tabla Rangos
         $query = $link->query('SELECT * FROM rangos  WHERE id >= 3 AND id <= 5 ORDER BY id DESC');         

         while ($dataRangos = mysqli_fetch_array($query)) {
            $nameRank = $dataRangos['nombre'];
            $colorRank = $dataRangos['color'];
            $idRank =  $dataRangos['id'];
         ?>
         <!-- Comienza rango-->
         <div class="panel panel-default">
            <div class="panel-heading <?=$colorRank?>">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                  <img src="/images/badges/<?=strtolower($nameRank)?>.png">
                  </div>
                  <?=$nameRank?>
               </h3>
            </div>
            <div class="panel-body">
            <div class="panel-users">
            <?php
               // Consulta SQL para seleccionar los usuarios con rango 5
               $sql = "SELECT * FROM usuarios WHERE rank = $idRank";
               $resultado = $link->query($sql);

               // Verificar si hay resultados y mostrarlos uno por uno en un bucle while
               if ($resultado->num_rows > 0) {
                  while($row = $resultado->fetch_assoc()) {
                     $user = $row['username'];
                     $rankid = $row['rank'];

               ?>
               <div class="usercontenedor">
                  <center>
                     <div class="userperfileindex">
                        <img src="<?=$row['avatar']?>" alt="" style="width:100px;height:100px;">
                        <?php
                        if ($row['soyfundador'] == 1) {
                           echo "<img src='/images/placas/fundador.png' class='badge-equipo'>";
                        }
                        ?>
                     </div>
                     
                     <div class="nameuserperfil">
                        <a style="color: #fff;" href="perfil.php?user=<?=$user?>>"><?=$user?></a>
                        <?php
                        #Verificamos que este verificado
                        if ($row['verificado'] == 1) {
                           echo '<sup><i class="bi bi-patch-check-fill" style="color: #76DEFF;font-size: 13px;"></i></sup>';
                        }
                        ?>
                     </div>
                  </center>
               </div>
            <?php
                  }
               } else {
                  echo "No se encontraron resultados.";
               }
            ?>
               </div>
            </div>
         </div>
         <!--Termina rango-->
      <?php }?>
      </div>
      <div class="col-md-4">
         <?php echo $redes_sociales; ?>
         <?php echo $cartel_publicidad; ?>
      </div>
   </div>
</div>
<!-- /container -->