<?php
require_once '../global.php';
if (isset($_POST['user']) && isset($_POST['organizador']) && isset($_POST['razon']) && isset($_POST['tipo']) && isset($_POST['cantidad']) && isset($_POST['c-fichas']) && isset($_POST['c-puntos'])) {
    $user = $_POST['user'];
    $organizador = $_POST['organizador'];
    $razon = $_POST['razon'];
    $tipo = $_POST['tipo'];
    $cantidad = $_POST['cantidad'];
    $cfichas = $_POST['c-fichas'];
    $cpuntos = $_POST['c-puntos'];

    $saldoActual = 0;
    
    if (!empty($user) && !empty($razon) && !empty($tipo) && !empty($cantidad)) {
        // Consultar en la base de datos
        $sql = "SELECT * FROM usuarios WHERE username = :username";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':username'=> $user
        ]);
        $usuario = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($usuario) {
            if ($tipo == "puntos" || $tipo == "fichas") {
                $sql = "SELECT * FROM usuarios WHERE username = :username";
                $stmt = $conn->prepare($sql);
                $stmt->execute([
                    ':username'=> $user
                ]);
                while ($dataU = $stmt->fetch()) {
                    $saldoActual = $dataU[$tipo];
                }
                if ((is_numeric($cantidad)) && ($cantidad > 0 && $cantidad < 31)) {
                    if ($myNombre == $user) {
                        header('Location: ../send-premios.php?status=4');
                        exit();
                    }
                    #Enviamos premios
                    $sql = "UPDATE usuarios SET $tipo = ($saldoActual + :cantidad) WHERE username = :username";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute([
                        ':username'=> $user,
                        ':cantidad' => $cantidad
                    ]);

                    #Enviamos mensaje
                    $mensaje = "Ganaste un evento ($razon) realizado por $organizador($myNombreRango) y recibiste $cantidad de $tipo";
                    $asunto = $razon;

                    $stmt = $conn->prepare("INSERT INTO usuarios_mensajes_privados (user_enviado,rango,user_recibido,asunto,mensaje,fecha,razon,organizador) VALUES (:minombre,:mirango,:ganador,:asunto,:mensaje,:fecha,:razon,:organizador)");
                    $stmt->execute([
                        ':minombre' => $myNombre,
                        ':mirango' => $myNombreRango,
                        ':ganador' => $user,
                        ':asunto' => $asunto,
                        ':mensaje' => $mensaje,
                        ':fecha' => $fecha,
                        ':razon' => $razon,
                        ':organizador' => $organizador
                    ]);

                    #Enviamos log
                    $stmt = $conn->prepare("INSERT INTO logs_premios (user_id,ganador,razon,user_rank,moneda,cantidad) VALUES (:user_id,:ganador,:razon,:user_rank,:tipo,:cantidad)");
                    $stmt->execute([
                        ':user_id' => $myID,
                        ':ganador' => $user,
                        ':razon' => $razon,
                        ':user_rank' => $myNumRank,
                        ':tipo' => $tipo,
                        ':cantidad' => $cantidad
                    ]);

                    //Redirigir
                    header('Location: ../send-premios.php?status=0');
                    exit();
                } else {
                    //Cantidad debe ser numeros y mayor a 1
                    header('Location: ../send-premios.php?status=3');
                    exit();
                }
             } else {
                //Error procesar formulario
                header('Location: ../send-premios.php?status=500');
                exit();
             }
        } else {
            //No existe usuario
            header('Location: ../send-premios.php?status=2');
            exit();
        }
    } else {
        //Vacio alguna casilla
        header('Location: ../send-premios.php?status=1');
        exit();
    }
}

header('Location: ../send-premios.php');
exit;
?>