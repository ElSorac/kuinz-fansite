<?php
    require('core/server.php');
    #Validaciones de rango y login
    if (isset($_SESSION['logeado']) != "Si") {
        header("Location: ../login");
        exit();
    } else {

    #Validacion de rangos
    $mi_id    = $_SESSION['id'];
    $consulta = $conn->query('SELECT Admin FROM usuarios WHERE ID = "' . $mi_id . '"');
    while ($datos = $consulta->fetch()) {
        $rangouser = $datos['Admin'];
    }
    if ($rangouser < 1) {
        header("Location: dash");
        exit;
    }
    }
    
    $username = isset($_GET['U']) ? substr($_GET['U'], 0, 60) : '';
    
        #AND UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(fecha) <= 60*60*24
        
        #Hacemos consulta
        $consDuda = $conn->prepare("SELECT * FROM canal_dudas WHERE Nombre LIKE :usuario ORDER BY ID DESC");
        $consDuda->execute([
            ':usuario' => $username. '%'
        ]);
    
#Datos que mostrar
while ($datosDudas = $consDuda->fetch()) {

    #Datos
    $usuario = $datosDudas['Nombre'];
    $duda = $datosDudas['Mensaje'];
    $idpj = $datosDudas['IDJugador'];
    $estado = $datosDudas['Estado'];
    $fecha = substr($datosDudas['fecha'],0,20);
?>
    <tr>
    <td>
    <p class="mb-0"><i class="bi bi-person-circle"></i></p>
    </td>
    <td>
      <p class='mb-0'>
          <?=$idpj?>
      </p>
    </td>
    <td>
       <p class='mb-0'><?=$usuario?></p>
    </td>
    <td>
      <p class='mb-0'><?=$duda?></p>
    </td>
    <td><?=$fecha?></td>
    <td>
 
    <div class='button' style='margin:2px;'>
        <a href='/admAcciones/mutear?user=<?=$usuario?>' class='btn icon btn-primary' title='Mutear jugador por 10 minutos'><i class='bi bi-mic-mute'></i></a>
    </div>
    </td>
    <td>
    <div class='button' style='margin:2px;'>
            <a href='/admAcciones/banear?user=<?=$usuario?>' class='btn icon btn-danger' title='Banear jugador'><i class='bi bi-shield-slash-fill'></i></a>
    </div>
    </td>
    <td>
    <div class='button' style='margin:2px;'>
        <a href='/admUsuarios?perfil=<?=$usuario?>' class='btn icon btn-info' title='Buscar todas las dudas de este jugador'><i class='bi bi-search'></i></a>
    </div>
    </td>
 </tr>
<?php }?>
