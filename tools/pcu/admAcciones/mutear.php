<?php
require('../core/server.php');
if (isset($_SESSION['logeado']) != "Si") {
    header("Location: /login");
    exit();
} else {

    #Validacion de rangos
   $mi_id    = $_SESSION['id'];
   $consulta = $conn->query('SELECT Admin FROM usuarios WHERE ID = "' . $mi_id . '"');
   while ($datos = $consulta->fetch()) {
       $rangouser = $datos['Admin'];
   }
   #Prohibimos accion para usuarios
   if ($rangouser == "0") {
       header("Location: /dash");
       exit;
   }
   #Prohibimos accion para ayudante
   if ($rangouser == "1") {
    header("Location: /admCanalDudas?env=101");
    exit;
}
?>
<?php
    if (isset($_GET['user'])) {

        $jugador = $_GET['user'] ? substr($_GET['user'], 0, 60) : '';
        $user_ses = $_SESSION['usuario'];
        $razon = "Mal uso del canal de dudas.";

        $consU = $conn->query('SELECT * FROM usuarios WHERE Username = "' . $jugador . '"');
        while ($data = $consU->fetch()) {
            $rangoMuteado = $data['Admin'];
            $estadoMute =  $data['NMute'];
        }

        if ($estadoMute > 0) {
            header("Location: /admCanalDudas?env=2");
        } elseif ($rangouser <= $rangoMuteado) {
            header("Location: /admCanalDudas?env=8");
        } else {
            #Mutear por 10 minutos
            $sql_4 = $conn->prepare("INSERT INTO `action_queue` (`jugname`,`user_ses`,`razon`, `status`, `type`) VALUES (:jugador,:userses, :razon, '0', '9') LIMIT 1");
            $sql_4->bindParam(':jugador', $jugador, PDO::PARAM_STR);
            $sql_4->bindParam(':userses', $user_ses, PDO::PARAM_STR);
            $sql_4->bindParam(':razon', $razon, PDO::PARAM_STR);
            $sql_4->execute();
            header("Location: /admCanalDudas?env=1");
        }

    } else {
        header("Location: /admCanalDudas?env=404");
    }
?>
<?php } ?>