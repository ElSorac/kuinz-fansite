<!-- PUNTOS -->
<div class="container" style="/*position: absolute;z-index: 2;top: auto;left: 72em;*/">
  <div class="row">
    <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-heading blue">
          <h3 class="panel-title">
            <div class='contedor-badge'><img src="../images/elite-k.png"></div>
            Adquiere el pase Elite!
          </h3>
        </div>
        <center><hr>¿Que esperas para volverte Elite en Kuinz Fansite?</center>
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th></th>
                <th>Producto</th>
                <th>Precio</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td></td>
                <td>
                  <img src="../images/elite-k.png" alt=""> Pase Elite
                </td>
                <td><img src="../images/puntos.png" alt=""> 70 Puntos</td>
                <td>
                  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                     <button type="submit" name="pase_elite" class="btn btn-primary">Comprar</button>
                  </form>
                </td>
              </tr>
            </tbody>
          </table>
<!-- 100 puntos -->
<?php
if ($_SESSION['username'] && isset($_POST['pase_elite']))
{

    if ($_SESSION["logeado"] == "SI")
    {

        $query = $link->query('SELECT * FROM usuarios WHERE username = "' . $username . '"');
        $userData = mysqli_fetch_assoc($query); //info del user

        while ($row = mysqli_fetch_array($query))
        {
            $fichas_user = $row['fichas'];
            $puntos_user = $row['puntos'];
        }

        $precio = 70; // VALOR DE LOS PUNTOS
        //$cantidad = 100; //CANTIDAD DE PUNTOS A DAR DE PUNTOS
       if ($precio > $puntos_user || $userData['rank'] >= 2 || $userData['username'] == "Krozox" || $userData['username'] == "Carlos" || $userData['username'] == "Rutierrez")
        {

            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>No se pudo realizar esta acción.</div>";

        }
        else
        {

            $descuento = $puntos_user - $precio;
            //$operacion = $puntos_user + $cantidad;

            //CONSULTA DE QUITAR EL DINERO
            $consulta = "UPDATE usuarios SET puntos='$descuento' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado = $link->query($consulta);

            //CONSULTA DE DAR LO QUE COMPRAN
            $consulta2 = "UPDATE usuarios SET rank=2 WHERE username ='" . $_SESSION['username'] . "'";
            $resultado2 = $link->query($consulta2);

            if ($link->query($consulta2))
            {
                $accion = "Ha comprado el pase <b>Elite</b>.";

                $fecha = date ('d-M-Y h:i:s', time());

                $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha . "')";

                 $link->query($enviar_log);
                echo "
                <div class='alert alerta-si alert-dismissible'>
                  <button type='button' class='close' data-dismiss='alert'>×</button> Felicidades ahora eres miembro Elite de Kuinz Fansite.
               </div>                     ";

            }
            else
            {

                echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Ha habido un problema al realizar la compra...</div>";

            }
        }

    }
    else
    {

        echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>No has iniciado sesion...</div>";

    }

}
?>
<!-- fin -->

        </div>
      </div>
    </div>
  </div>
</div>


<!-- FIN PUNTOS Y COMIENZA TIENDA -->