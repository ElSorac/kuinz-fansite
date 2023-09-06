<?php
require_once '../global.php';
if (isset($_POST['user']) && isset($_POST['rango'])) {
    if (!empty($_POST['user']) && !empty($_POST['rango'])) {
       $user = $_POST['user'];
       $rangoid = $_POST['rango'];

       if ($myNumRank >= 4) {
        if (is_numeric($rangoid)) {
            $sql = "SELECT * FROM usuarios WHERE username = :username";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                ':username'=> $user
            ]);
            $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($usuario) {
                $sql = "SELECT * FROM equipo WHERE user_id = :user_id";
                $stmt = $conn->prepare($sql);
                $stmt->execute([
                    ':user_id'=> $usuario['ID']
                ]);
                $userEquipo= $stmt->fetch(PDO::FETCH_ASSOC);

                if ($userEquipo) {
                    $stmt= $conn->prepare("UPDATE equipo SET rango_id = $rangoid WHERE user_id  = :user_id");
                    $stmt->execute([
                        ':user_id'=> $usuario['ID']
                    ]);

                    if ($rangoid == 3) {
                        $stmt= $conn->prepare("UPDATE equipo SET moderador = 1, avanzado = 0 WHERE user_id  = :user_id");
                        $stmt->execute([
                            ':user_id'=> $usuario['ID']
                        ]);
                    }

                    if ($rangoid == 2) {
                        $stmt= $conn->prepare("UPDATE equipo SET avanzado = 1, moderador = 0 WHERE user_id  = :user_id");
                        $stmt->execute([
                            ':user_id'=> $usuario['ID']
                        ]);
                    }

                    #Enviamos log general
                    $accion = "Actualizo el rango de $user a $rangoid";
                    $stmt = $conn->prepare("INSERT INTO logs_generales (user_id,rango_id,accion) VALUES (:user_id,:rango_id,:accion)");
                    $stmt->execute([
                        ':user_id' => $myID,
                        ':rango_id' => $myNumRank,
                        ':accion' => $accion
                    ]);

                    //Redirigir
                    header('Location: ../equipo.php?status=0');
                    exit();
                } else {
                    $stmt = $conn->prepare("INSERT INTO equipo (user_id,rango_id) VALUES (:user_id,:rango_id)");
                    $stmt->execute([
                        ':user_id' => $usuario['ID'],
                        ':rango_id' => $rangoid
                    ]);
                    
                    if ($rangoid == 3) {
                        $stmt= $conn->prepare("UPDATE equipo SET moderador = 1, avanzado = 0 WHERE user_id  = :user_id");
                        $stmt->execute([
                            ':user_id'=> $usuario['ID']
                        ]);
                    }

                    if ($rangoid == 2) {
                        $stmt= $conn->prepare("UPDATE equipo SET avanzado = 1, moderador = 0 WHERE user_id  = :user_id");
                        $stmt->execute([
                            ':user_id'=> $usuario['ID']
                        ]);
                    }
                    
                    //Redirigir
                    header('Location: ../equipo.php?status=0');
                    exit();
                }
            } else {
                header('Location: ../equipo.php?status=2');
                exit();
            }
        } else {
            header('Location: ../equipo.php?status=500');
            exit();
        }
       } else {
            header('Location: ../equipo.php?status=3');
            exit();
       }
    } else {
        header('Location: ../equipo.php?status=1');
        exit();
    }

} else {
    header('Location: ../equipo.php?status=500');
    exit();
}
header('Location: ../equipo.php');
exit();
?>