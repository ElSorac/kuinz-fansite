<div>
<?php

include 'kernel/config.php';

$q=$_POST[q];

$sql="SELECT * FROM usuarios WHERE username LIKE '".$q."%'";
$res = $link->query($sql);

if( mysqli_num_rows($res) == 0){

echo '<div class="alert alert-no contenidoal" style="background-color:red;top: 3em; left: 3px;"><button type="button" class="close" data-dismiss="alert">×</button>No hay <b>Usuarios</b> con este nombre</div>';

echo '';

}else{

echo '<b>Resultados:</b><br />';

while($fila = mysqli_fetch_array($res)){?>
<a style="color: #fff; font size: 3;" href="perfil.php?user=<?php echo $fila['username'];?>">
<div class="usercontenedor">
<center>
<div class="userperfileindex">
<img src="<?php echo " $fila[avatar] "; ?>" alt="" style="width:100px;height:100px;">
</div>
<div class="nameuserperfil">
<a style="color: #fff; font size: 3;" href="perfil.php?user=<?php echo $fila['username'];?>"> <b><?php echo $fila['username'];?></b><?php if("$fila[verificado]"=="Si"){?>
    

            <img style="width:16px;" src="/images/verificado.png">


        <?php

        }

        ?>
</a><br><?php echo "$fila[megusta]"; ?> Seguidores
</div>
</center>
</div>
</a>

<?php
}

}

?>
</ul>

</div>
<div>

<?php

include 'kernel/config.php';

$q=$_POST[q];

$sql="SELECT * FROM furnis WHERE nombre LIKE '".$q."%'";
$res = $link->query($sql);

if( mysqli_num_rows($res) == 0){

echo '<div class="alert alert-no contenidoal" style="background-color:red;top: 8em; left: 3px;"><button type="button" class="close" data-dismiss="alert">×</button>No hay <b>Furnis</b> con este nombre.</div>';

echo '';

}else{

echo '<br><br>';

while($fila = mysqli_fetch_array($res)){?>
<div class="itemBox" style="background:url(<?php echo "$fila[encima]"; ?>) center no-repeat, url(<?php echo "$fila[imagen]"; ?>) #353333 50% no-repeat;"><div class="itemName"><?php echo "$fila[nombre]"; ?></div><div class="itemPrice">
<div class="icon"><img src="https://kekocity.com/images/cloud.png"></div><span class="iconR"><?php echo "$fila[creditos]"; ?></span></div></div>


<?php
}

}

?>
</div>



