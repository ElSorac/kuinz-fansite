<?php
  # conectare la base de datos
  
  require ('../../global.php');
  
  $action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
  
  if($action == 'ajax'){
  
      //consulta principal para recuperar los datos
  
      $query = $link->query("SELECT * FROM `kekocity_respuestas` ORDER BY id DESC");
          ?>
<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th>Keko</th>
      <th>Respuesta</th>
    </tr>
  </thead>
  <tbody>
    <?php
      while($row = mysqli_fetch_array($query)){
      
          ?>
    <tr>
      <td><?php echo "$row[keko_nombre]"; ?></td>
      <td><?php echo "$row[respuesta]"; ?></td>
    </tr>
    <?php
      }
      
      ?>
  </tbody>
</table>

<?php
  
  }
  
  ?>
</body>
</html>