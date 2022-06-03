<div class="container">
   <div class="row">
      <div class="col-md-8">
         <?php
$resultado = $link->query("SELECT * FROM rangos WHERE id = 3");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank3 = $row['id'];

}

$resultado = $link->query("SELECT * FROM rangos WHERE id = 4");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank4 = $row['id'];

}

$resultado = $link->query("SELECT * FROM rangos WHERE id = 5");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank5 = $row['id'];
}
$resultado = $link->query("SELECT * FROM rangos WHERE id = 6");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank6 = $row['id'];
}
$resultado = $link->query("SELECT * FROM rangos WHERE id = 7");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank7 = $row['id'];
}
$resultado = $link->query("SELECT * FROM rangos WHERE id = 8");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank8 = $row['id'];
}
$resultado = $link->query("SELECT * FROM rangos WHERE id = 9");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank9 = $row['id'];
}
$resultado = $link->query("SELECT * FROM rangos WHERE id = 10");
while ($row = mysqli_fetch_array($resultado))
{
    $idrank10 = $row['id'];
}
if (isset($idrank10) && $idrank10)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id = 10");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default">
            <div class="panel-heading <?php echo $row['color']; ?>
               ">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="https://www.kuinz-fansite.space/images/ranks.png">
                  </div>
                  <?php echo $row['nombre']; ?>
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM usuarios WHERE rank = 10");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php
        }

?> 
                        </div>
                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
         <?php
if (isset($idrank9) && $idrank9)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id = 9");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default">
            <div class="panel-heading <?php echo $row['color']; ?>
               ">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="https://www.kuinz-fansite.space/images/ranks.png">
                  </div>
                  <?php echo $row['nombre']; ?>
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM usuarios WHERE rank = 9");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php
        }

?>
                        </div>
                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
         <?php
if (isset($idrank8) && $idrank8)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id = 8");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default">
            <div class="panel-heading <?php echo $row['color']; ?>
               ">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="/images/placas/8.png" style="width: 40px; height: 36px;">
                  </div>
                  <?php echo $row['nombre']; ?> 
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM usuarios WHERE rank = 8");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php
        }

?>

        <br><?php echo "$row[megusta]"; ?> Seguidores
                        </div>
                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
         <?php
if (isset($idrank7) && $idrank7)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id = 7");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default">
            <div class="panel-heading <?php echo $row['color']; ?>
               ">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="/images/placas/7.png" style="width: 40px; height: 36px;">
                  </div>
                  <?php echo $row['nombre']; ?>
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM usuarios WHERE rank = 7");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">
            


        <?php
        }

?>

        <br><?php echo "$row[megusta]"; ?> Seguidores
                        </div>
                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
         <?php
if (isset($idrank6) && $idrank6)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id = 6");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default">
            <div class="panel-heading <?php echo $row['color']; ?>
               ">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="/images/placas/6.png" style="width: 36px; height: 36px;">
                  </div>
                  <?php echo $row['nombre']; ?>
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM (usuarios)WHERE rank =6");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php
        }

?>

        <br><?php echo "$row[megusta]"; ?> Seguidores
                        </div>
                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
         <?php
if (isset($idrank5) && $idrank5)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id =5");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default">
            <div class="panel-heading <?php echo $row['color']; ?>
               ">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="/images/placas/5.png" style="width: 36px; height: 36px;">
                  </div>
                  <?php echo $row['nombre']; ?>
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM (usuarios)WHERE rank =5");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php
        }

?>

        <br><?php echo "$row[megusta]"; ?> Seguidores
                        </div>

                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
         <?php
if (isset($idrank4) && $idrank4)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id =4");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default" style="display:none;">
            <div class="panel-heading <?php echo $row['color']; ?>
               " style="background-color:#A3A3A3;">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="/images/placas/4.png" width="45">
                  </div>
                  <?php echo $row['nombre']; ?>
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM (usuarios)WHERE rank =4");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php
        }

?>

        <br><?php echo "$row[megusta]"; ?> Seguidores
                        </div>
                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
         <?php
if (isset($idrank3) && $idrank3)
{
    $resultado = $link->query("SELECT * FROM rangos WHERE id =3");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
         <div class="panel panel-default"style="display:none;">
            <div class="panel-heading <?php echo $row['color']; ?>
               " style="background-color:#A3A3A3;">
               <h3 class="panel-title">
                  <div class='contedor-badge'>
                     <img src="/images/placas/3.png">
                  </div>
                  <?php echo $row['nombre']; ?>
               </h3>
            </div>
            <div class="panel-body">
               <?php
    }
    $resultado = $link->query("SELECT * FROM (usuarios)WHERE rank =3");
    while ($row = mysqli_fetch_array($resultado))
    {
?>
               <div class="panel-users">
                  <div class="usercontenedor">
                     <center>
                        <div class="userperfileindex">
                           <img src="<?php echo $row['avatar']; ?>" alt="" style="width:100px;height:100px;">
                        </div>
                        <div class="nameuserperfil">
                           <a style="color: #fff;" href="perfil.php?user=<?php echo $row['username']; ?>"> <?php echo $row['username']; ?>
                           </a><?php if ("$row[verificado]" == "Si")
        { ?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php
        }

?>

        <br><?php echo "$row[megusta]"; ?> Seguidores
                        </div>
                     </center>
                  </div>
               </div>
               <?php
    }
?>
            </div>
         </div>
         <?php
} ?>
      </div>
      <div class="col-md-4">
         <?php echo $redes_sociales; ?>
         <?php echo $cartel_publicidad; ?>
      </div>
   </div>
</div>
<!-- /container -->
