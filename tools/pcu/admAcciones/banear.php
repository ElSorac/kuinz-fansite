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
   #Prohibimos a ciertos rangos
   if ($rangouser == "0") { // usuarios
       header("Location: /dash");
       exit;
   }
   if ($rangouser == "1") {  // Ayudante
    header("Location: /admCanalDudas?env=101");
    exit;
    }
    if ($rangouser == "2") { // Mod dudas
        header("Location: /admCanalDudas?env=101");
        exit;
    }
    if ($rangouser == "3") { // Mod Juego
        header("Location: /admCanalDudas?env=101");
        exit;
    }
?>
<?php
    if (isset($_GET['user'])) {

        $jugador = $_GET['user'] ? substr($_GET['user'], 0, 60) : '';
        $user_ses = $_SESSION['usuario'];
        $razon = "Spam/Flood en canal dudas.";

        $consU = $conn->query('SELECT * FROM usuarios WHERE Username = "' . $jugador . '"');
        while ($data = $consU->fetch()) {
            $rangoMuteado = $data['Admin'];
            $estadoMute =  $data['NMute'];
            $estadoBan = $data['Baneado'];
        }

        if ($estadoBan > 0) {
            header("Location: /admCanalDudas?env=3");
            exit;
        } elseif ($rangoMuteado > 1) {
            header("Location: /admCanalDudas?env=8");
            exit;
        } else {
            #Mutear por 10 minutos
            $envAccion = $conn->prepare("INSERT INTO `action_queue` (`jugname`,`user_ses`,`razon`, `status`, `type`) VALUES (:jugador, :userses, :razon, '0', '8') LIMIT 1");
            $envAccion->bindParam(':jugador', $jugador, PDO::PARAM_STR);
            $envAccion->bindParam(':userses', $user_ses, PDO::PARAM_STR);
            $envAccion->bindParam(':razon', $razon, PDO::PARAM_STR);
            $envAccion->execute();

            header("Location: /admCanalDudas?env=4");
        }

    } else {
        header("Location: /admCanalDudas?env=100");
    }
?>
<?php } ?>