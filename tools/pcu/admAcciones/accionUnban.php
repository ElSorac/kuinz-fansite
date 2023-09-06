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
    header("Location: /admUsuarios");
    exit;
    }
    if ($rangouser == "2") { // Mod dudas
        header("Location: /admUsuarios");
        exit;
    }
    if ($rangouser == "3") { // Mod Juego
        header("Location: /admUsuarios");
        exit;
    }
    if ($rangouser == "4") { // Mod Global
        header("Location: /admUsuarios");
        exit;
    }
?>
<?php
if (isset($_GET['perfil']) && isset($_GET['razonunban'])) {
    
    #Definimos las variables con POST
    $usuario = htmlentities(strip_tags($_GET['perfil']));
    $razon = htmlentities(strip_tags($_GET['razonunban']));
    $user_ses = $_SESSION['usuario'];
    $ip = $_SERVER['REMOTE_ADDR'];

    #Llamamos datos del usuario ingresado para verificar si existe
    $cons = $conn->prepare("SELECT * FROM usuarios WHERE Username = :usuario");
    $cons->execute([
        ':usuario' => $usuario
    ]);
    $userExiste = $cons->fetchColumn();

    if ($userExiste < 0) {
        header("Location: ../admUsuarios.php?perfil=$usuario&env=1");
        exit();
    } else {
        #Llamaremos a los datos del usuario ingresado
        $consU = $conn->query('SELECT * FROM usuarios WHERE Username = "' . $usuario . '"');
        while ($data = $consU->fetch()) {
            $rangoUser = $data['Admin'];
            $estadoBan = $data['Baneado'];
        }
        if (empty($razon) || empty($usuario)) {
            echo "vacio";
            exit();
        } elseif ($estadoBan == 0) {
            echo "$usuario no esta baneado";
            exit();
        } else {
            #Enviamos accion de baneo
           $envAccion = $conn->prepare("UPDATE usuarios SET Baneado = 0, Banpor = 'Nadie', razon = 'Ninguna' WHERE Username = :jugador");
           $envAccion->bindParam(':jugador', $usuario, PDO::PARAM_STR);
           $envAccion->execute();
           header("Location: /admUsuarios?perfil=$usuario&env=3");

           #Log admin
           $envAccion = $conn->prepare("INSERT INTO logs_admin (responsable,jugador,accion,razon,fecha,ip) VALUES (:userses, :jugador, 'unban', :razon, NOW(), :ip) LIMIT 1");
           $envAccion->bindParam(':jugador', $usuario, PDO::PARAM_STR);
           $envAccion->bindParam(':userses', $user_ses, PDO::PARAM_STR);
           $envAccion->bindParam(':razon', $razon, PDO::PARAM_STR);
           $envAccion->bindParam(':ip', $ip, PDO::PARAM_STR);
           $envAccion->execute();
        }
    }
}}
?>