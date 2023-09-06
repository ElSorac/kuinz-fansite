<?php
require_once '../global.php';
if (isset($_GET['user'],$_GET['pModerador'], $_GET['pAvanzado'], $_GET['pComunicados'], $_GET['pSupermod'], $_GET['pAutorizado'], $_GET['pTiendas'], $_GET['pLogs'], $_GET['pStaff'], $_GET['pConfig'])) {
    if ($_GET['pModerador'] <= 1 && $_GET['pModerador'] >= 0 &&
        $_GET['pAvanzado'] <= 1 && $_GET['pAvanzado'] >= 0 &&
        $_GET['pComunicados'] <= 1 && $_GET['pComunicados'] >= 0 &&
        $_GET['pSupermod'] <= 1 && $_GET['pSupermod'] >= 0 &&
        $_GET['pAutorizado'] <= 1 && $_GET['pAutorizado'] >= 0 &&
        $_GET['pTiendas'] <= 1 && $_GET['pTiendas'] >= 0 &&
        $_GET['pLogs'] <= 1 && $_GET['pLogs'] >= 0 &&
        $_GET['pStaff'] <= 1 && $_GET['pStaff'] >= 0 &&
        $_GET['pConfig'] <= 1 && $_GET['pConfig'] >= 0) {

      if ($autorizado) {
        // Definir las variables usando $_GET
        $getUser = $_GET['user'];
        $getModerador = $_GET['pModerador'];
        $getAvanzado = $_GET['pAvanzado'] ;
        $getComunicados = $_GET['pComunicados'];
        $getSupermod = $_GET['pSupermod'];
        $getAutorizado = $_GET['pAutorizado'];
        $getTiendas = $_GET['pTiendas'];
        $getLogs = $_GET['pLogs'];
        $getStaff = $_GET['pStaff'];
        $getConfig = $_GET['pConfig'];

        #Consulta
        $sql = "SELECT * FROM usuarios WHERE username = :username";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':username'=> $getUser]);
        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($usuario) {

            #Consultamos a la tabla equipo
            $idUser = $usuario['ID'];
            $stmt = $conn->prepare("SELECT * FROM equipo WHERE user_id = :id");
            $stmt->execute([':id'=> $idUser]);
            $equipoUser = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($equipoUser) {
                #Permisos Actuales
                $pModerador = $equipoUser['moderador'];
                $pAvanzado = $equipoUser['avanzado'];
                $pComunicados = $equipoUser['comunicados'];
                $pSupermod = $equipoUser['supermod'];
                $pAutorizado = $equipoUser['autorizado'];
                $pTiendas = $equipoUser['tiendas'];
                $pLogs = $equipoUser['logs'];
                $pStaff = $equipoUser['staff'];
                $pConfig = $equipoUser['config'];

                if ($autorizado && !$staff) {
                    // Crear array con permisos actuales y nuevos
                    $permisos = array(
                        'moderador' => array('actual' => $pModerador, 'nuevo' => $getModerador),
                        'avanzado' => array('actual' => $pAvanzado, 'nuevo' => $getAvanzado),
                        'comunicados' => array('actual' => $pComunicados, 'nuevo' => $getComunicados),
                        'supermod' => array('actual' => $pSupermod, 'nuevo' => $getSupermod),
                        'autorizado' => array('actual' => $pAutorizado, 'nuevo' => $getAutorizado),
                        'tiendas' => array('actual' => $pTiendas, 'nuevo' => $getTiendas),
                    );

                    // Recorrer array y actualizar base de datos si hay cambios
                    foreach ($permisos as $permiso => $datos) {
                        if ($datos['nuevo'] != $datos['actual']) {
                            $stmt = $conn->prepare("UPDATE equipo SET $permiso = :nuevo WHERE user_id = :user");
                            $stmt->bindParam(':nuevo', $datos['nuevo']);
                            $stmt->bindParam(':user', $idUser);
                            $stmt->execute();
                        }
                    }

                    #Enviamos log general
                    $accion = "Actualizo los permisos de $getUser";
                    $stmt = $conn->prepare("INSERT INTO logs_generales (user_id,rango_id,accion) VALUES (:user_id,:rango_id,:accion)");
                    $stmt->execute([
                        ':user_id' => $myID,
                        ':rango_id' => $myNumRank,
                        ':accion' => $accion
                    ]);
                    header("Location: ../permisos.php?user=$getUser&status=0");
                    exit();
                } else {
                    // Crear array con permisos actuales y nuevos
                    $permisos = array(
                        'moderador' => array('actual' => $pModerador, 'nuevo' => $getModerador),
                        'avanzado' => array('actual' => $pAvanzado, 'nuevo' => $getAvanzado),
                        'comunicados' => array('actual' => $pComunicados, 'nuevo' => $getComunicados),
                        'supermod' => array('actual' => $pSupermod, 'nuevo' => $getSupermod),
                        'autorizado' => array('actual' => $pAutorizado, 'nuevo' => $getAutorizado),
                        'tiendas' => array('actual' => $pTiendas, 'nuevo' => $getTiendas),
                        'logs' => array('actual' => $pLogs, 'nuevo' => $getLogs),
                        'staff' => array('actual' => $pStaff, 'nuevo' => $getStaff),
                        'config' => array('actual' => $pConfig, 'nuevo' => $getConfig),
                    );

                    // Recorrer array y actualizar base de datos si hay cambios
                    foreach ($permisos as $permiso => $datos) {
                        if ($datos['nuevo'] != $datos['actual']) {
                            $stmt = $conn->prepare("UPDATE equipo SET $permiso = :nuevo WHERE user_id = :user");
                            $stmt->bindParam(':nuevo', $datos['nuevo']);
                            $stmt->bindParam(':user', $idUser);
                            $stmt->execute();
                        }
                    }

                    #Enviamos log general
                    $accion = "Actualizo los permisos de $getUser";
                    $stmt = $conn->prepare("INSERT INTO logs_generales (user_id,rango_id,accion) VALUES (:user_id,:rango_id,:accion)");
                    $stmt->execute([
                        ':user_id' => $myID,
                        ':rango_id' => $myNumRank,
                        ':accion' => $accion
                    ]);
                    header("Location: ../permisos.php?user=$getUser&status=0");
                    exit();
                }
            } else {
                header('Location: ../permisos.php?status=4');
                exit();
            }
        } else {
            header('Location: ../permisos.php?status=2');
            exit();
        }
      } else {
        header('Location: ../permisos.php?status=3');
        exit();
      }

  } else {
    header('Location: ../permisos.php?status=501');
    exit();
  }

} else {
    header('Location: ../permisos.php?status=500');
    exit();
}
?>