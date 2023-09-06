<?php
require_once '../global.php';
if ($autorizado) {
    if (isset($_GET['user'])) {
        if (!empty($_GET['user'])) {
            $user = $_GET['user'];
    
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
                    if ($myNumRank >= $userEquipo['rango_id']) {
                        if (!in_array($user, $userEspeciales)) {
                            $stmt = $conn->prepare("DELETE FROM equipo WHERE user_id = '".$userEquipo['user_id']."' LIMIT 1");
                            $stmt->execute();
        
                            header('Location: ../equipo.php?status=0');
                            exit();
                        } else {
                            header('Location: ../equipo.php?status=69');
                            exit();
                        }
                    } else {
                        header('Location: ../equipo.php?status=4');
                        exit();
                    }
                } else {
                    header('Location: ../equipo.php?status=3');
                    exit();
                }
            } else {
                header('Location: ../equipo.php?status=2');
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
} else {
    header('Location: ../index.php');
    exit();
}
?>