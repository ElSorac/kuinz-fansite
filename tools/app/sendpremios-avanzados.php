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
                    if ($avanzado) {
                        #Comenzamos con validaciones de tiempo
                        $sql = "SELECT * FROM avanzados WHERE user_id = :id";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute([
                            ':id'=> $myID
                        ]);
                        $dataA = $stmt->fetch(PDO::FETCH_ASSOC);

                        #Datos Avanzados validaciones
                        $myLimite = $dataA['limite'];
                        $myUltimoEnvio = $dataA['ultimo_envio'];
                        $hoy = date("Y-m-d H:i:s");

                        if ($myLimite > 0) {
                            if ($myNombre == $user) {
                                header('Location: ../send-avanzados.php?status=4');
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

                            if ($myLimite >= 1) {
                                $stmt = $conn->prepare("UPDATE avanzados SET ultimo_envio = :fecha, limite = :limite-1 WHERE user_id = :id");
                                $stmt->execute([
                                    ':id'=> $myID,
                                    ':fecha' => $hoy,
                                    ':limite' => $myLimite
                                ]);
                            }

                            //Redirigir
                            header('Location: ../send-avanzados.php?status=0');
                            exit();
                        } else {
                            if ((strtotime($hoy) - strtotime($myUltimoEnvio) >= 1200)) {
                                $stmt = $conn->prepare("UPDATE avanzados SET limite = :limite WHERE user_id = :id");
                                $stmt->execute([
                                    ':id'=> $myID,
                                    ':limite' => 2
                                ]);

                                #Limite recargado
                                header('Location: ../send-avanzados.php?status=6');
                                exit();
                            } else {
                                #No pasaron 20min
                                header('Location: ../send-avanzados.php?status=7');
                                exit();
                            }
                        }
                    } else {
                        //No autorizado
                        header('Location: ../send-avanzados.php?status=5');
                        exit();
                    }
                } else {
                    //Cantidad debe ser numeros y mayor a 1
                    header('Location: ../send-avanzados.php?status=3');
                    exit();
                }
             } else {
                //Error procesar formulario
                header('Location: ../send-avanzados.php?status=500');
                exit();
             }
        } else {
            //No existe usuario
            header('Location: ../send-avanzados.php?status=2');
            exit();
        }
    } else {
        //Vacio alguna casilla
        header('Location: ../send-avanzados.php?status=1');
        exit();
    }
}

header('Location: ../send-avanzados.php');
exit;
?>