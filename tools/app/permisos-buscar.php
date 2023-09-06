<?php
require_once '../global.php';
if (isset($_GET['user'])) {
    if (!empty($_GET['user'])) {
       if ($autorizado) {
        $user = $_GET['user'];
        $sql = "SELECT * FROM usuarios WHERE username = :username";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':username'=> $user]);
        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($usuario) {
            $idUser = $usuario['ID'];
            $stmt = $conn->prepare("SELECT * FROM equipo WHERE user_id = :id");
            $stmt->execute([':id'=> $idUser]);
            $equipoUser = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($equipoUser) {
                header("Location: ../permisos.php?user=$user");
                exit();
            }else {
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
        header('Location: ../permisos.php?status=1');
        exit();
    }
} else {
    header('Location: ../permisos.php?status=500');
    exit();
}
header('Location: ../permisos.php');
exit();
?>