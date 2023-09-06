<?php
require_once '../global.php';
if (isset($_POST['user']) && isset($_POST['tipo']) && isset($_POST['cantidad'])) {
    $user = $_POST['user'];
    $tipo = $_POST['tipo'];
    $cantidad = $_POST['cantidad'];

    $saldoActual = 0;
    
    if (!empty($user) && !empty($tipo) && !empty($cantidad)) {
        // Consultar en la base de datos
        $sql = "SELECT * FROM usuarios WHERE username = :username";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':username'=> $user
        ]);
        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($usuario) {
            if ($tipo == "puntos" || $tipo == "fichas" || $tipo == "tokens") {
                $sql = "SELECT * FROM usuarios WHERE username = :username";
                $stmt = $conn->prepare($sql);
                $stmt->execute([
                    ':username'=> $user
                ]);
                while ($dataU = $stmt->fetch()) {
                    $saldoActual = $dataU[$tipo];
                }
                if ((is_numeric($cantidad))) {
                    if ($staff) {
                        #Enviamos premios
                        $sql = "UPDATE usuarios SET $tipo = ($saldoActual + :cantidad) WHERE username = :username";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute([
                            ':username'=> $user,
                            ':cantidad' => $cantidad
                        ]);
                        

                        #Enviamos log general
                        $accion = "Envio ($cantidad) de $tipo a $user";
                        $stmt = $conn->prepare("INSERT INTO logs_generales (user_id,rango_id,accion) VALUES (:user_id,:rango_id,:accion)");
                        $stmt->execute([
                            ':user_id' => $myID,
                            ':rango_id' => $myNumRank,
                            ':accion' => $accion
                        ]);

                        //Redirigir
                        header('Location: ../send-staff.php?status=0');
                        exit();
                    } else {
                        //Cantidad debe ser numeros y mayor a 1
                        header('Location: ../send-staff.php?status=4');
                        exit();
                    }
                } else {
                    //Cantidad debe ser numeros y mayor a 1
                    header('Location: ../send-staff.php?status=3');
                    exit();
                }
             } else {
                //Error procesar formulario
                header('Location: ../send-staff.php?status=500');
                exit();
             }
        } else {
            //No existe usuario
            header('Location: ../send-staff.php?status=2');
            exit();
        }
    } else {
        //Vacio alguna casilla
        header('Location: ../send-staff.php?status=1');
        exit();
    }
}

header('Location: ../send-staff.php?status=500');
exit();
?>