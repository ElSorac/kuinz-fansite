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
if("$rangouser" == "3"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "4"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "7"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}
if("$rangouser" == "6"){
header("Location: " . $_SERVER['HTTP_REFERER']);
  exit;
}

include "../Templates/Hk_Nav.php";
?>
	  <div class="container">
      <!-- Main component for a primary marketing message or call to action -->
     <div class="row">
<div class="col-md-8">
          <div class="panel panel-default">
                  <div class="panel-heading blue">
              <h3 class="panel-title"><?php echo $lang[291]; ?></h3>
            </div>
            <div class="panel-body">
<div class="container-fluid">
              <form method="post" action="actualizar/xat.php">
                            <?php
                      $resultado = $link->query("SELECT * FROM config WHERE id = 1");
                      while($row=mysqli_fetch_array($resultado))
                      {
                      ?>

					               <label><?php echo $lang[292]; ?></label>
                        <textarea name="xat" class='form-control' cols="80" required="" rows="10"><?php echo $row['xat']; ?></textarea>  <br>
                            <?php
                          }
                            ?>
                    <center><input class="btn btn-primary" type="submit" value="<?php echo $lang[192]; ?>" style="width: 120px;" /></center>
                      </form>
</div></div>
			</div>

                <div class="panel panel-default">
                  <div class="panel-heading blue">
              <h3 class="panel-title"><?php echo $lang[293]; ?></h3>
            </div>
            <div class="panel-body">
<div class="container-fluid">
                            <?php
                      $resultado = $link->query("SELECT * FROM config WHERE id = 1");
                      while($row=mysqli_fetch_array($resultado))
                      {
                      ?>

<center><?php echo $row['xat']; ?></center>
                            <?php
                          }
                            ?>
</div></div>
      </div>
          </div>

		</div>
      </div><!-- /container -->

<?php 

include "../Templates/Footer.php";

?>
