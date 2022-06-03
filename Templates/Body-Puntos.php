<!-- PUNTOS -->
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading blue">
          <h3 class="panel-title">
            <div class='contedor-badge'><img src="../images/puntos.png"></div>
            Compra puntos del fansite
          </h3>
        </div>
        <center><hr>Al momento de adquirir puntos, se agregara automaticamente a tu cuenta.<hr></center>
        <div class="panel-body">
          <table class="table table-striped">
            <thead>
              <tr>
                <th></th>
                <th>Cantidad de Puntos</th>
                <th>Precio</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td></td>
                <td>
                  <img src="../images/puntos.png" alt=""> 100 Puntos
                </td>
                <td><img src="../images/fichas.png" alt=""> 140 fichas</td>
                <td>
                  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                     <button type="submit" name="100_puntos" class="btn btn-primary">Comprar</button>
                  </form>
                </td>
              </tr>
              <tr>
                <td></td>
                <td>
                  <img src="../images/puntos.png" alt=""> 70 Puntos
                </td>
                <td><img src="../images/fichas.png" alt=""> 110 fichas</td>
                <td>
                  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                     <button type="submit" name="70_puntos" class="btn btn-primary">Comprar</button>
                  </form>
                </td>
              </tr>
              <tr>
                <td></td>
                <td>
                  <img src="../images/puntos.png" alt=""> 50 Puntos
                </td>
                <td><img src="../images/fichas.png" alt=""> 90 fichas</td>
                <td>
                  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                     <button type="submit" name="50_puntos" class="btn btn-primary">Comprar</button>
                  </form>
                </td>
              </tr>
              <tr>
                <td></td>
                <td>
                  <img src="../images/puntos.png" alt=""> 20 Puntos
                </td>
                <td><img src="../images/fichas.png" alt=""> 60 fichas</td>
                <td>
                  <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                     <button type="submit" name="20_puntos" class="btn btn-primary">Comprar</button>
                  </form>
                </td>
              </tr>
            </tbody>
          </table>
<!-- 100 puntos -->
<?php
if ($_SESSION['username'] && isset($_POST['100_puntos']))
{

    if ($_SESSION["logeado"] == "SI")
    {

        $query = $link->query('SELECT * FROM usuarios WHERE username = "' . $username . '"');
        while ($row = mysqli_fetch_array($query))
        {
            $fichas_user = $row['fichas'];
            $puntos_user = $row['puntos'];
        }

        $precio = 140; // VALOR DE LOS PUNTOS
        $cantidad = 100; //CANTIDAD DE PUNTOS A DAR DE PUNTOS
        if ($precio > $fichas_user)
        {

            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Ha habido un problema al parecer no tienes las suficiente fichas.</div>";

        }
        else
        {

            $descuento = $fichas_user - $precio;
            $operacion = $puntos_user + $cantidad;

            //CONSULTA DE QUITAR EL DINERO
            $consulta = "UPDATE usuarios SET fichas='$descuento' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado = $link->query($consulta);

            //CONSULTA DE DAR LO QUE COMPRAN
            $consulta2 = "UPDATE usuarios SET puntos='$operacion' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado2 = $link->query($consulta2);

            if ($link->query($consulta2))
            {
                $accion = "Ha comprado <b>$cantidad puntos</b>.";

                $fecha = date ('d-M-Y h:i:s', time());

                $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha . "')";

                 $link->query($enviar_log);
                echo "
                <div class='alert alerta-si alert-dismissible'>
                  <button type='button' class='close' data-dismiss='alert'>×</button> Has realizado tu compra exitosamente.
               </div>
               <script>location = 'tienda.php';</script>
                     ";

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

<!-- 70 puntos -->
<?php
if ($_SESSION['username'] && isset($_POST['70_puntos']))
{

    if ($_SESSION["logeado"] == "SI")
    {

        $query = $link->query('SELECT * FROM usuarios WHERE username = "' . $username . '"');
        while ($row = mysqli_fetch_array($query))
        {
            $fichas_user = $row['fichas'];
            $puntos_user = $row['puntos'];
        }

        $precio = 110; // VALOR DE LOS PUNTOS
        $cantidad = 70; //CANTIDAD DE PUNTOS A DAR DE PUNTOS
        if ($precio > $fichas_user)
        {

            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Ha habido un problema al parecer no tienes las suficiente fichas.</div>";

        }
        else
        {

            $descuento = $fichas_user - $precio;
            $operacion = $puntos_user + $cantidad;

            //CONSULTA DE QUITAR EL DINERO
            $consulta = "UPDATE usuarios SET fichas='$descuento' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado = $link->query($consulta);

            //CONSULTA DE DAR LO QUE COMPRAN
            $consulta2 = "UPDATE usuarios SET puntos='$operacion' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado2 = $link->query($consulta2);

            if ($link->query($consulta2))
            {

                echo "
                <div class='alert alerta-si alert-dismissible'>
                  <button type='button' class='close' data-dismiss='alert'>×</button> Has realizado tu compra exitosamente.
               </div>
               <script>location = 'tienda.php';</script>
                     ";

            }
            else
            {
                $accion = "Ha comprado <b>$cantidad puntos</b>.";

                $fecha = date ('d-M-Y h:i:s', time());

                $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha . "')";

                 $link->query($enviar_log);
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

<!-- 50 puntos -->
<?php
if ($_SESSION['username'] && isset($_POST['50_puntos']))
{

    if ($_SESSION["logeado"] == "SI")
    {

        $query = $link->query('SELECT * FROM usuarios WHERE username = "' . $username . '"');
        while ($row = mysqli_fetch_array($query))
        {
            $fichas_user = $row['fichas'];
            $puntos_user = $row['puntos'];
        }

        $precio = 90; // VALOR DE LOS PUNTOS
        $cantidad = 50; //CANTIDAD DE PUNTOS A DAR DE PUNTOS
        if ($precio > $fichas_user)
        {

            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Ha habido un problema al parecer no tienes las suficiente fichas.</div>";

        }
        else
        {

            $descuento = $fichas_user - $precio;
            $operacion = $puntos_user + $cantidad;

            //CONSULTA DE QUITAR EL DINERO
            $consulta = "UPDATE usuarios SET fichas='$descuento' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado = $link->query($consulta);

            //CONSULTA DE DAR LO QUE COMPRAN
            $consulta2 = "UPDATE usuarios SET puntos='$operacion' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado2 = $link->query($consulta2);

            if ($link->query($consulta2))
            {
                $accion = "Ha comprado <b>$cantidad puntos</b>.";

                $fecha = date ('d-M-Y h:i:s', time());

                $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha . "')";

                 $link->query($enviar_log);
                echo "
                <div class='alert alerta-si alert-dismissible'>
                  <button type='button' class='close' data-dismiss='alert'>×</button> Has realizado tu compra exitosamente.
               </div>
               <script>location = 'tienda.php';</script>
                     ";

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

<!-- 20 puntos -->
<?php
if ($_SESSION['username'] && isset($_POST['20_puntos']))
{

    if ($_SESSION["logeado"] == "SI")
    {

        $query = $link->query('SELECT * FROM usuarios WHERE username = "' . $username . '"');
        while ($row = mysqli_fetch_array($query))
        {
            $fichas_user = $row['fichas'];
            $puntos_user = $row['puntos'];
        }

        $precio = 60; // VALOR DE LOS PUNTOS
        $cantidad = 20; //CANTIDAD DE PUNTOS A DAR DE PUNTOS
        if ($precio > $fichas_user)
        {

            echo "<div class='alert alerta-no alert-dismissible'><button type='button' class='close' data-dismiss='alert'>×</button>Ha habido un problema al parecer no tienes las suficiente fichas.</div>";

        }
        else
        {

            $descuento = $fichas_user - $precio;
            $operacion = $puntos_user + $cantidad;

            //CONSULTA DE QUITAR EL DINERO
            $consulta = "UPDATE usuarios SET fichas='$descuento' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado = $link->query($consulta);

            //CONSULTA DE DAR LO QUE COMPRAN
            $consulta2 = "UPDATE usuarios SET puntos='$operacion' WHERE username ='" . $_SESSION['username'] . "'";
            $resultado2 = $link->query($consulta2);

            if ($link->query($consulta2))
            {

                $accion = "Ha comprado <b>$cantidad puntos</b>.";

                $fecha = date ('d-M-Y h:i:s', time());

                $enviar_log = "INSERT INTO logs (usuario,accion,fecha) values ('" . $username . "','" . $accion . "','" . $fecha . "')";

                 $link->query($enviar_log);

                echo "
                <div class='alert alerta-si alert-dismissible'>
                  <button type='button' class='close' data-dismiss='alert'>×</button> Has realizado tu compra exitosamente.
               </div>
               <script>location = 'tienda.php';</script>
                     ";

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
    <?php include "Templates/Body-Elite.php"; ?>
  </div>
</div>


<!-- FIN PUNTOS Y COMIENZA TIENDA -->