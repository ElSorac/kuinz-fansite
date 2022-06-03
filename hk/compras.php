<?php

include "../Templates/Hk_Head.php";



$query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');

while($row = mysqli_fetch_array($query))

{

  $rangouser = $row['rank'];

}

if("$rangouser" == "2"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}

if("$rangouser" == "1"){

header("Location: " . $_SERVER['HTTP_REFERER']);

  exit;

}



include "../Templates/Hk_Nav.php";

?>

	  <div class="container">

     <div class="row">



    <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading blue">
          <h3 class="panel-title">
            <div class='contedor-badge'><img src="https://kekocity.com/imagesnew/game/carritoicono.png"></div>
            Ultimas compras en la <b>Tienda Normal</b>.
          </h3>
        </div>
        <center>

</center>




  <div class="panel-body">
 <table class="table table-striped table-hover ">
   <thead>
 <tr>
          <th>Usuario</th>
  
          <th>Furni</th>
          <th>Eliminar</th>


 </tr>
   </thead>
   <tbody>


<?php
$resultado = $link->query("SELECT * FROM usuarios_placas ORDER BY id DESC limit 50");
while ($row = mysqli_fetch_array($resultado))
{
?>
            <tr>

         
            <td><?php echo "$row[username]"; ?></td>

            <td><?php echo "$row[code_placa]"; ?></td>

            <td><a href="/hk/eliminar/comprados.php?id=<?php echo "$row[id]"; ?>"><button type="button" class="btn btn-sm btn-danger"><span class="MPicon-cross"></span></button></a></td>

 </tr>
                  <?php
} ?>
</tbody>
</table>

</div></div></div>


   <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading orange">
          <h3 class="panel-title">
            <div class='contedor-badge'><img src="https://kekocity.com/fly/placas/dev.png"></div>
            Ultimas compras en la <b>Tienda Dev</b>          </h3>
        </div>
        <center>

</center>




  <div class="panel-body">
 <table class="table table-striped table-hover ">
   <thead>
 <tr>
          <th>Usuario</th>
  
          <th>Furni</th>

<th>Eliminar</th>

      </tr>
   </thead>
   <tbody>


<?php
$resultado = $link->query("SELECT * FROM usuarios_placasdev ORDER BY id DESC limit 50");
while ($row = mysqli_fetch_array($resultado))
{
?>
            <tr>

         
            <td><?php echo "$row[username]"; ?></td>

            <td><?php echo "$row[code_placa]"; ?></td>

            <td><a href="/hk/eliminar/comprados-dev.php?id=<?php echo "$row[id]"; ?>"><button type="button" class="btn btn-sm btn-danger"><span class="MPicon-cross"></span></button></a></td>

 </tr>
                  <?php
} ?>
</tbody>
</table>

</div></div></div>


   <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading blue">
          <h3 class="panel-title">
            <div class='contedor-badge'><img src="https://kuinz-fansite.space/images/elite-k.png"></div>
            Ultimas compras en la <b>Tienda Elite</b>
          </h3>
        </div>
        <center>

</center>




  <div class="panel-body">
 <table class="table table-striped table-hover ">
   <thead>
 <tr>
          <th>Usuario</th>
  
          <th>Furni</th>

        <th>Eliminar</th>

      </tr>
   </thead>
   <tbody>


<?php
$resultado = $link->query("SELECT * FROM usuarios_placase ORDER BY id DESC limit 50");
while ($row = mysqli_fetch_array($resultado))
{
?>
            <tr>

         
            <td><?php echo "$row[username]"; ?></td>

            <td><?php echo "$row[code_placa]"; ?></td>

            <td><a href="/hk/eliminar/comprados-elite.php?id=<?php echo "$row[id]"; ?>"><button type="button" class="btn btn-sm btn-danger"><span class="MPicon-cross"></span></button></a></td>

 </tr>
                  <?php
} ?>
</tbody>
</table>

</div></div></div>


</div></div>


<?php 



include "../Templates/Footer.php";



?>



      