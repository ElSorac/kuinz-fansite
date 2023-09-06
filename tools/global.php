<?php
require_once('server/config.php');

#Sacamos datos de la cuenta en session
if (isset($_SESSION['session_name'])) {
    // Obtenemos datos usuario logeado
    $sql = "SELECT * FROM usuarios WHERE username = :username";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':username' => $_SESSION['session_name']
    ]);
    $myData = $stmt->fetch(PDO::FETCH_ASSOC);

    $myID = $myData['ID'];
    $myNombre = $myData['username'];
    $myMision = $myData['mision'];
    $myAvatar = $myData['avatar'];
    $myPortada = $myData['portada'];

    #Datos de rango
    $sql = "SELECT * FROM equipo WHERE user_id = :user_id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':user_id' => $myID
    ]);
    $myDataRango = $stmt->fetch(PDO::FETCH_ASSOC);
    $myNumRank = $myDataRango['rango_id'];

    #Vamos obtener nombre del rango
    $sql = "SELECT * FROM rangos WHERE id = :id_rank";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':id_rank' => $myNumRank
    ]);
    $DataRango = $stmt->fetch(PDO::FETCH_ASSOC);
    $myNombreRango = $DataRango['nombre'];

    function getRango($idRango) {
        global $conn;
        $sql = "SELECT * FROM rangos WHERE id = :id_rango";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':id_rango' => $idRango
        ]);
        $DataRango = $stmt->fetch();
        $nombreRangoClass = $DataRango['nombre'];
        return $nombreRangoClass;
    }


    #Mis permisos si soy parte del equipo
    $sql = "SELECT * FROM equipo WHERE user_id = :user_id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
    ':user_id'=> $myID
    ]);
    $soyEquipo = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($soyEquipo) {
        $supermod = $soyEquipo['supermod'];
        $avanzado = $soyEquipo['avanzado'];
        $periodista = $soyEquipo['comunicados'];
        $autorizado = $soyEquipo['autorizado'];
        $tiendas = $soyEquipo['tiendas'];
        $logs = $soyEquipo['logs'];
        $config = $soyEquipo['config'];
        $moderador = $soyEquipo['moderador'];
        $staff = $soyEquipo['staff'];
    }
    
}

// Verificar si el usuario tiene una sesión válida
if (isset($_COOKIE['session_token'])) {
    $session_token = $_COOKIE['session_token'];
    $sql = "SELECT * FROM session_panel WHERE token = ? AND expiry > NOW()";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$session_token]);
    $session = $stmt->fetch(PDO::FETCH_ASSOC);

    if (is_null($_SESSION['session_name']) && isset($_COOKIE['session_token'])) { //Si la session es undefined pero hay token entonces va relogear la
        header('Location: ../index.php?relogeado');
    }

    if (!$session) {
        // Eliminar cookies
        setcookie("session_token", "", time()-3600, "/");

        // Verificar si hay una sesión iniciada
        if (isset($_SESSION['session_id'])) {
            $userID = $_SESSION['session_id'];
        
            // Eliminar el token de la base de datos
            $sql = "DELETE FROM session_panel WHERE user_id = :id";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                ':id' => $userID
            ]);
        
            // Destruir la sesión
            session_unset();
            session_destroy();
        }

        header('Location: ../login.php');
        exit();
    } else {
        $stmt = $conn->prepare("SELECT * FROM session_panel WHERE token = :token");
        $stmt->execute([
            ':token' => $session_token
        ]);
        $dataSession = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($dataSession) {
            $_SESSION['session_id'] = $dataSession['user_id'];
            
            #Sacamos datos
            $stmt = $conn->prepare("SELECT * FROM usuarios WHERE ID = :id");
            $stmt->execute([
                ':id' => $_SESSION['session_id']
            ]);
            $dataU = $stmt->fetch(PDO::FETCH_ASSOC);
            $_SESSION['session_name'] = $dataU['username'];
            $_SESSION['logeado'] = true;
        }
    }
}

#Otras configuraciones
$fecha = date('Y-m-d H:i:s');


#Usuarios especiales
$userEspeciales = array("Sorac", "Krozox", "Carlos");

?>