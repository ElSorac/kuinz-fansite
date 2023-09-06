<?php
#Cerramos conexiones sin logeo
if (isset($_SESSION['logeado']) != "Si") {
  exit();
}
?>
<?php
    //Cargamos la id nuestra
    $id = $_SESSION['id'];

    $miip = $_SERVER['REMOTE_ADDR'];

    //Hacemos consulta
    $consulta = $conn->prepare("SELECT * FROM usuarios WHERE ID = :id");
    $consulta->bindParam(':id', $id, PDO::PARAM_INT);
    $consulta->execute();
    $row = $consulta->fetch();

    //Datos usuario
    $nombre = $row['Username'];
    $mypassword = $row['Password'];
    $correo = $row['Email'];
    $saciones = $row['Sanciones'];
    $nivelAdmin = $row['Admin'];
    $edad = $row['Edad'];
    $sexo = $row['Sexo'];
    $skin = $row['Skin'];
    $vida = $row['Vida'];
    $chaleco = $row['Chaleco'];
    $dineroBanco = $row['Banco'];
    $dinero = $row['Money'];
    $monedas = $row['Moneda'];
    $nivel = $row['Nivel'];
    $reputacion = $row['Experiencia'];
    $horasjugadas = $row['horasjugadas'];
    $arrestado = $row['arrestado'];
    $radio = $row['Radio'];
    $numero = $row['Numero'];
    $guia = $row['Agenda'];
    $radio = $row['Radio'];
    $piezas = $row['Materiales'];
    $repuestos = $row['Repuestos'];
    $totems = $row['totems'];
    $crack = $row['Crack'];
    $caramelos = $row['Caramelos'];
    $remedios  = $row['Medicamentos'];
    $marihuana = $row['Marihuana'];
    $agenda = $row['Agenda'];
    $baneado = $row['Baneado'];
    $razonBan = $row['razon'];
    $online = $row['Online'];
    $vip = $row['VIP'];
    $blanca = $row['WP1'];
    $pistola = $row['WP2'];
    $escopeta = $row['WP3'];
    $subfusil = $row['WP4'];
    $asalto = $row['WP5'];
    $rifle = $row['WP6'];
    $granada = $row['WP8'];
    $regalo = $row['WP10'];
    $camara = $row['WP11'];
    $id_banda = $row['Faccion'];
    $id_rango = $row['Rango'];
    $mision = $row['mensajepersonal'];
    $nivelArmero = $row['NivelArmero'];
    $expArmero = $row['ExpArmero'];
    $nivelPescador = $row['NivelPescador'];
    $expPescador = $row['ExpPescador'];
    $mivelPiloto = $row['NivelPiloto'];
    $expPiloto = $row['ExpPiloto'];
    $nivelCamionero = $row['NivelCamionero'];
    $expCamionero = $row['ExpCamionero'];
    $nivelMecanico = $row['NivelPiloto'];
    $expMecanico = $row['ExpPiloto'];
    $nivelBasurero = $row['NivelBasurero'];
    $expBasurero = $row['ExpBasurero'];
    $nivelMinero = $row['NivelMinero'];
    $expMinero = $row['ExpMinero'];
    $nivelLadron = $row['NivelLadron'];
    $expLadron = $row['ExpLadron'];
    $nivelTransportista = $row['NivelTransportista'];
    $expTransportista = $row['ExpTransportista'];
    $estado = $row['Online'];
    $CasaID = $row['CasaID'];
    $CasaID2 = $row['CasaID2'];

    $dineroTotal = number_format($dinero  + $dineroBanco);

    if($nivelAdmin > 0){
        $soyAdmin = true;
    }

    //Sacar nombre rango
    if ($nivelAdmin == 0) {
        $miRango = "Usuario";
    } elseif ($nivelAdmin == 1) {
        $miRango = "Ayudante";
    } elseif ($nivelAdmin == 2) {
        $miRango = "Moderador de Dudas";
    } elseif ($nivelAdmin == 3) {
        $miRango = "Moderador del Juego";
    } elseif ($nivelAdmin == 4) {
        $miRango = "Moderador Global";
    } elseif ($nivelAdmin == 5) {
        $miRango = "Administrador";
    } elseif ($nivelAdmin == 6) {
        $miRango = "Encargado";
    } elseif ($nivelAdmin == 7) {
        $miRango = "Fundador";
    } elseif ($nivelAdmin > 8 || $nivelAdmin < 0 || $nivelAdmin == NULL) {
        $miRango = "Usuario";
    }

    //Hacemos consulta
    $consulta2 = $conn->prepare("SELECT * FROM log_ingresos WHERE Nombre = :nombre ORDER BY ID DESC LIMIT 1");
    $consulta2->bindParam(':nombre', $nombre);
    $consulta2->execute();
    $row2= $consulta2->fetch();
    
    $ultimaVez = substr($row2['Fecha'],0,22);

    //Vamos obtener los datos de la banda
    $cons = $conn->query('SELECT * FROM facciones WHERE id = "' .$id_banda. '"');
    while($rowBanda = $cons->fetch()) {
        $banda = $rowBanda['Nombre'];
        $rango1 = $rowBanda['Rango1'];
        $rango2 = $rowBanda['Rango2'];
        $rango3 = $rowBanda['Rango3'];
        $rango4 = $rowBanda['Rango4'];
        $rango5 = $rowBanda['Rango5'];
        $rango6 = $rowBanda['Rango6'];
        $rango7 = $rowBanda['Rango7'];
        $rango8 = $rowBanda['Rango8'];
    }

    //Verificamos que si no existe la banda salte lo siguiente.
    if ($id_banda < 0) {
        $banda = 'Ninguna';
    }

    //Verificamos el nombre del rango.
    if ($id_rango == 1) {
        $rango = $rango1;
    }
    elseif ($id_rango == 2) {
        $rango = $rango2;
    }
    elseif ($id_rango == 3) {
        $rango = $rango3;
    }
    elseif ($id_rango == 4) {
        $rango = $rango4;
    }
    elseif ($id_rango == 5) {
        $rango = $rango5;
    }
    elseif ($id_rango == 6) {
        $rango = $rango6;
    }
    elseif ($id_rango == 7) {
        $rango = $rango7;
    }
    elseif ($id_rango == 8) {
        $rango = $rango8;
    }
    elseif ($id_rango > 8 || $id_rango < 0) {
        $rango  = "Ninguno";
    }

    //Que tipo de VIP soy
    if ($vip == 0 || $vip > 2 || $vip == NULL || $vip < 0) {
        $soyvip = "No";
    } elseif ($vip == 1) {
        $soyvip = "VIP1";
    } elseif ($vip == 2) {
        $soyvip = "VIP2";
    }

    //Sacar estado en el juego
    if ($estado == 0 || $estado > 1 || $estado < 0 || $estado == NULL) {
        $status = 'danger';
        $conexion =  "<img src='/images/icons/desconectado.png' width='16px'> Desconectado";
    } else {
        $status = 'success';
        $conexion =  "<img src='/images/icons/conectado.png' width='16px'> Conectado";
    }

    //Ahora le asignamos el nombre del arma actual

    #Armas blancas
    if ($blanca == 0) { $arma_blanca = "No tiene"; } elseif ($blanca == 1) { $arma_blanca = "Manopla"; } elseif ($blanca == 2) { $arma_blanca = "Palo de golf"; } elseif ($blanca == 3) { $arma_blanca = "Porra"; } elseif ($blanca == 4) { $arma_blanca = "Cuchillo"; } elseif ($blanca == 5) { $arma_blanca = "Bate de beisbol"; } elseif ($blanca == 6) { $arma_blanca = "Pala"; } elseif ($blanca == 7) { $arma_blanca = "Palo de billar"; } elseif ($blanca == 8) { $arma_blanca = "Katana"; } elseif ($blanca == 9) { $arma_blanca = "Moto cierra"; } elseif ($blanca == 10) { $arma_blanca = "Consolador morado"; } elseif ($blanca == 11) { $arma_blanca = "Consolador"; } elseif ($blanca == 12) { $arma_blanca = "Vibrador"; } elseif ($blanca == 13) { $arma_blanca = "Vibrador de plata"; } elseif ($blanca == 14) { $arma_blanca = "Flores"; } elseif ($blanca == 15) { $arma_blanca = "Cane"; } elseif ($blanca == 16) { $arma_blanca = "Granada"; } elseif ($blanca == 17) { $arma_blanca = "Lacrimojena"; } elseif ($blanca == 18) { $arma_blanca = "Cocktel Molotov"; } elseif ($blanca == 22) { $arma_blanca = "9mm"; } elseif ($blanca == 23) { $arma_blanca = "9mm Silenciada"; } elseif ($blanca == 24) { $arma_blanca = "Desert Eagle"; } elseif ($blanca == 25) { $arma_blanca = "Escopeta Normal"; } elseif ($blanca == 26) { $arma_blanca = "Escopeta recortada"; } elseif ($blanca == 27) { $arma_blanca = "Escopeta de Combate"; } elseif ($blanca == 28) { $arma_blanca = "Micro Uzi"; } elseif ($blanca == 29) { $arma_blanca = "MP5"; } elseif ($blanca == 30) { $arma_blanca = "AK-47"; } elseif ($blanca == 31) { $arma_blanca = "M4"; } elseif ($blanca == 32) { $arma_blanca = "Tec-9"; } elseif ($blanca == 33) { $arma_blanca = "Rifle"; } elseif ($blanca == 34) { $arma_blanca = "Sniper Rifle"; } elseif ($blanca == 35) { $arma_blanca = "RPG"; } elseif ($blanca == 36) { $arma_blanca = "HS Rocket"; } elseif ($blanca == 37) { $arma_blanca = "Lanzallamas"; } elseif ($blanca == 38) { $arma_blanca = "Minigun"; } elseif ($blanca == 39) { $arma_blanca = "Satchel Charger"; } elseif ($blanca == 40) { $arma_blanca = "Detonador"; } elseif ($blanca == 41) { $arma_blanca = "Soray"; } elseif ($blanca == 42) { $arma_blanca = "Extintor"; } elseif ($blanca == 43) { $arma_blanca = "Camara"; } elseif ($blanca == 44) { $arma_blanca = "Vision nocturna"; } elseif ($blanca == 45) { $arma_blanca = "Thermal Googles"; } elseif ($blanca == 46) { $arma_blanca = "Paracaidas"; } else { $arma_blanca = "No tiene"; }

    #Pistolas
    if ($pistola == 0) { $a_pistola = "No tiene"; } elseif ($pistola == 1) { $a_pistola = "Manopla"; } elseif ($pistola == 2) { $a_pistola = "Palo de golf"; } elseif ($pistola == 3) { $a_pistola = "Porra"; } elseif ($pistola == 4) { $a_pistola = "Cuchillo"; } elseif ($pistola == 5) { $a_pistola = "Bate de beisbol"; } elseif ($pistola == 6) { $a_pistola = "Pala"; } elseif ($pistola == 7) { $a_pistola = "Palo de billar"; } elseif ($pistola == 8) { $a_pistola = "Katana"; } elseif ($pistola == 9) { $a_pistola = "Moto cierra"; } elseif ($pistola == 10) { $a_pistola = "Consolador morado"; } elseif ($pistola == 11) { $a_pistola = "Consolador"; } elseif ($pistola == 12) { $a_pistola = "Vibrador"; } elseif ($pistola == 13) { $a_pistola = "Vibrador de plata"; } elseif ($pistola == 14) { $a_pistola = "Flores"; } elseif ($pistola == 15) { $a_pistola = "Cane"; } elseif ($pistola == 16) { $a_pistola = "Granada"; } elseif ($pistola == 17) { $a_pistola = "Lacrimojena"; } elseif ($pistola == 18) { $a_pistola = "Cocktel Molotov"; } elseif ($pistola == 22) { $a_pistola = "9mm"; } elseif ($pistola == 23) { $a_pistola = "9mm Silenciada"; } elseif ($pistola == 24) { $a_pistola = "Desert Eagle"; } elseif ($pistola == 25) { $a_pistola = "Escopeta Normal"; } elseif ($pistola == 26) { $a_pistola = "Escopeta recortada"; } elseif ($pistola == 27) { $a_pistola = "Escopeta de Combate"; } elseif ($pistola == 28) { $a_pistola = "Micro Uzi"; } elseif ($pistola == 29) { $a_pistola = "MP5"; } elseif ($pistola == 30) { $a_pistola = "AK-47"; } elseif ($pistola == 31) { $a_pistola = "M4"; } elseif ($pistola == 32) { $a_pistola = "Tec-9"; } elseif ($pistola == 33) { $a_pistola = "Rifle"; } elseif ($pistola == 34) { $a_pistola = "Sniper Rifle"; } elseif ($pistola == 35) { $a_pistola = "RPG"; } elseif ($pistola == 36) { $a_pistola = "HS Rocket"; } elseif ($pistola == 37) { $a_pistola = "Lanzallamas"; } elseif ($pistola == 38) { $a_pistola = "Minigun"; } elseif ($pistola == 39) { $a_pistola = "Satchel Charger"; } elseif ($pistola == 40) { $a_pistola = "Detonador"; } elseif ($pistola == 41) { $a_pistola = "Soray"; } elseif ($pistola == 42) { $a_pistola = "Extintor"; } elseif ($pistola == 43) { $a_pistola = "Camara"; } elseif ($pistola == 44) { $a_pistola = "Vision nocturna"; } elseif ($pistola == 45) { $a_pistola = "Thermal Googles"; } elseif ($pistola == 46) { $a_pistola = "Paracaidas"; } else { $a_pistola = "No tiene"; }

    #Escopetas
    if ($escopeta == 0) { $a_escopeta = "No tiene"; } elseif ($escopeta == 1) { $a_escopeta = "Manopla"; } elseif ($escopeta == 2) { $a_escopeta = "Palo de golf"; } elseif ($escopeta == 3) { $a_escopeta = "Porra"; } elseif ($escopeta == 4) { $a_escopeta = "Cuchillo"; } elseif ($escopeta == 5) { $a_escopeta = "Bate de beisbol"; } elseif ($escopeta == 6) { $a_escopeta = "Pala"; } elseif ($escopeta == 7) { $a_escopeta = "Palo de billar"; } elseif ($escopeta == 8) { $a_escopeta = "Katana"; } elseif ($escopeta == 9) { $a_escopeta = "Moto cierra"; } elseif ($escopeta == 10) { $a_escopeta = "Consolador morado"; } elseif ($escopeta == 11) { $a_escopeta = "Consolador"; } elseif ($escopeta == 12) { $a_escopeta = "Vibrador"; } elseif ($escopeta == 13) { $a_escopeta = "Vibrador de plata"; } elseif ($escopeta == 14) { $a_escopeta = "Flores"; } elseif ($escopeta == 15) { $a_escopeta = "Cane"; } elseif ($escopeta == 16) { $a_escopeta = "Granada"; } elseif ($escopeta == 17) { $a_escopeta = "Lacrimojena"; } elseif ($escopeta == 18) { $a_escopeta = "Cocktel Molotov"; } elseif ($escopeta == 22) { $a_escopeta = "9mm"; } elseif ($escopeta == 23) { $a_escopeta = "9mm Silenciada"; } elseif ($escopeta == 24) { $a_escopeta = "Desert Eagle"; } elseif ($escopeta == 25) { $a_escopeta = "Escopeta Normal"; } elseif ($escopeta == 26) { $a_escopeta = "Escopeta recortada"; } elseif ($escopeta == 27) { $a_escopeta = "Escopeta de Combate"; } elseif ($escopeta == 28) { $a_escopeta = "Micro Uzi"; } elseif ($escopeta == 29) { $a_escopeta = "MP5"; } elseif ($escopeta == 30) { $a_escopeta = "AK-47"; } elseif ($escopeta == 31) { $a_escopeta = "M4"; } elseif ($escopeta == 32) { $a_escopeta = "Tec-9"; } elseif ($escopeta == 33) { $a_escopeta = "Rifle"; } elseif ($escopeta == 34) { $a_escopeta = "Sniper Rifle"; } elseif ($escopeta == 35) { $a_escopeta = "RPG"; } elseif ($escopeta == 36) { $a_escopeta = "HS Rocket"; } elseif ($escopeta == 37) { $a_escopeta = "Lanzallamas"; } elseif ($escopeta == 38) { $a_escopeta = "Minigun"; } elseif ($escopeta == 39) { $a_escopeta = "Satchel Charger"; } elseif ($escopeta == 40) { $a_escopeta = "Detonador"; } elseif ($escopeta == 41) { $a_escopeta = "Soray"; } elseif ($escopeta == 42) { $a_escopeta = "Extintor"; } elseif ($escopeta == 43) { $a_escopeta = "Camara"; } elseif ($escopeta == 44) { $a_escopeta = "Vision nocturna"; } elseif ($escopeta == 45) { $a_escopeta = "Thermal Googles"; } elseif ($escopeta == 46) { $a_escopeta = "Paracaidas"; } else { $a_escopeta = "No tiene"; }

    #Subfusil
    if ($subfusil == 0) { $a_subfusil = "No tiene"; } elseif ($subfusil == 1) { $a_subfusil = "Manopla"; } elseif ($subfusil == 2) { $a_subfusil = "Palo de golf"; } elseif ($subfusil == 3) { $a_subfusil = "Porra"; } elseif ($subfusil == 4) { $a_subfusil = "Cuchillo"; } elseif ($subfusil == 5) { $a_subfusil = "Bate de beisbol"; } elseif ($subfusil == 6) { $a_subfusil = "Pala"; } elseif ($subfusil == 7) { $a_subfusil = "Palo de billar"; } elseif ($subfusil == 8) { $a_subfusil = "Katana"; } elseif ($subfusil == 9) { $a_subfusil = "Moto cierra"; } elseif ($subfusil == 10) { $a_subfusil = "Consolador morado"; } elseif ($subfusil == 11) { $a_subfusil = "Consolador"; } elseif ($subfusil == 12) { $a_subfusil = "Vibrador"; } elseif ($subfusil == 13) { $a_subfusil = "Vibrador de plata"; } elseif ($subfusil == 14) { $a_subfusil = "Flores"; } elseif ($subfusil == 15) { $a_subfusil = "Cane"; } elseif ($subfusil == 16) { $a_subfusil = "Granada"; } elseif ($subfusil == 17) { $a_subfusil = "Lacrimojena"; } elseif ($subfusil == 18) { $a_subfusil = "Cocktel Molotov"; } elseif ($subfusil == 22) { $a_subfusil = "9mm"; } elseif ($subfusil == 23) { $a_subfusil = "9mm Silenciada"; } elseif ($subfusil == 24) { $a_subfusil = "Desert Eagle"; } elseif ($subfusil == 25) { $a_subfusil = "subfusil Normal"; } elseif ($subfusil == 26) { $a_subfusil = "subfusil recortada"; } elseif ($subfusil == 27) { $a_subfusil = "subfusil de Combate"; } elseif ($subfusil == 28) { $a_subfusil = "Micro Uzi"; } elseif ($subfusil == 29) { $a_subfusil = "MP5"; } elseif ($subfusil == 30) { $a_subfusil = "AK-47"; } elseif ($subfusil == 31) { $a_subfusil = "M4"; } elseif ($subfusil == 32) { $a_subfusil = "Tec-9"; } elseif ($subfusil == 33) { $a_subfusil = "Rifle"; } elseif ($subfusil == 34) { $a_subfusil = "Sniper Rifle"; } elseif ($subfusil == 35) { $a_subfusil = "RPG"; } elseif ($subfusil == 36) { $a_subfusil = "HS Rocket"; } elseif ($subfusil == 37) { $a_subfusil = "Lanzallamas"; } elseif ($subfusil == 38) { $a_subfusil = "Minigun"; } elseif ($subfusil == 39) { $a_subfusil = "Satchel Charger"; } elseif ($subfusil == 40) { $a_subfusil = "Detonador"; } elseif ($subfusil == 41) { $a_subfusil = "Soray"; } elseif ($subfusil == 42) { $a_subfusil = "Extintor"; } elseif ($subfusil == 43) { $a_subfusil = "Camara"; } elseif ($subfusil == 44) { $a_subfusil = "Vision nocturna"; } elseif ($subfusil == 45) { $a_subfusil = "Thermal Googles"; } elseif ($subfusil == 46) { $a_subfusil = "Paracaidas"; } else { $a_subfusil = "No tiene"; }

    #Asalto
    if ($asalto == 0) { $a_asalto = "No tiene"; } elseif ($asalto == 1) { $a_asalto = "Manopla"; } elseif ($asalto == 2) { $a_asalto = "Palo de golf"; } elseif ($asalto == 3) { $a_asalto = "Porra"; } elseif ($asalto == 4) { $a_asalto = "Cuchillo"; } elseif ($asalto == 5) { $a_asalto = "Bate de beisbol"; } elseif ($asalto == 6) { $a_asalto = "Pala"; } elseif ($asalto == 7) { $a_asalto = "Palo de billar"; } elseif ($asalto == 8) { $a_asalto = "Katana"; } elseif ($asalto == 9) { $a_asalto = "Moto cierra"; } elseif ($asalto == 10) { $a_asalto = "Consolador morado"; } elseif ($asalto == 11) { $a_asalto = "Consolador"; } elseif ($asalto == 12) { $a_asalto = "Vibrador"; } elseif ($asalto == 13) { $a_asalto = "Vibrador de plata"; } elseif ($asalto == 14) { $a_asalto = "Flores"; } elseif ($asalto == 15) { $a_asalto = "Cane"; } elseif ($asalto == 16) { $a_asalto = "Granada"; } elseif ($asalto == 17) { $a_asalto = "Lacrimojena"; } elseif ($asalto == 18) { $a_asalto = "Cocktel Molotov"; } elseif ($asalto == 22) { $a_asalto = "9mm"; } elseif ($asalto == 23) { $a_asalto = "9mm Silenciada"; } elseif ($asalto == 24) { $a_asalto = "Desert Eagle"; } elseif ($asalto == 25) { $a_asalto = "asalto Normal"; } elseif ($asalto == 26) { $a_asalto = "asalto recortada"; } elseif ($asalto == 27) { $a_asalto = "asalto de Combate"; } elseif ($asalto == 28) { $a_asalto = "Micro Uzi"; } elseif ($asalto == 29) { $a_asalto = "MP5"; } elseif ($asalto == 30) { $a_asalto = "AK-47"; } elseif ($asalto == 31) { $a_asalto = "M4"; } elseif ($asalto == 32) { $a_asalto = "Tec-9"; } elseif ($asalto == 33) { $a_asalto = "Rifle"; } elseif ($asalto == 34) { $a_asalto = "Sniper Rifle"; } elseif ($asalto == 35) { $a_asalto = "RPG"; } elseif ($asalto == 36) { $a_asalto = "HS Rocket"; } elseif ($asalto == 37) { $a_asalto = "Lanzallamas"; } elseif ($asalto == 38) { $a_asalto = "Minigun"; } elseif ($asalto == 39) { $a_asalto = "Satchel Charger"; } elseif ($asalto == 40) { $a_asalto = "Detonador"; } elseif ($asalto == 41) { $a_asalto = "Soray"; } elseif ($asalto == 42) { $a_asalto = "Extintor"; } elseif ($asalto == 43) { $a_asalto = "Camara"; } elseif ($asalto == 44) { $a_asalto = "Vision nocturna"; } elseif ($asalto == 45) { $a_asalto = "Thermal Googles"; } elseif ($asalto == 46) { $a_asalto = "Paracaidas"; } else { $a_asalto = "No tiene"; }

    #Rifle
    if ($rifle == 0) { $a_rifle = "No tiene"; } elseif ($rifle == 1) { $a_rifle = "Manopla"; } elseif ($rifle == 2) { $a_rifle = "Palo de golf"; } elseif ($rifle == 3) { $a_rifle = "Porra"; } elseif ($rifle == 4) { $a_rifle = "Cuchillo"; } elseif ($rifle == 5) { $a_rifle = "Bate de beisbol"; } elseif ($rifle == 6) { $a_rifle = "Pala"; } elseif ($rifle == 7) { $a_rifle = "Palo de billar"; } elseif ($rifle == 8) { $a_rifle = "Katana"; } elseif ($rifle == 9) { $a_rifle = "Moto cierra"; } elseif ($rifle == 10) { $a_rifle = "Consolador morado"; } elseif ($rifle == 11) { $a_rifle = "Consolador"; } elseif ($rifle == 12) { $a_rifle = "Vibrador"; } elseif ($rifle == 13) { $a_rifle = "Vibrador de plata"; } elseif ($rifle == 14) { $a_rifle = "Flores"; } elseif ($rifle == 15) { $a_rifle = "Cane"; } elseif ($rifle == 16) { $a_rifle = "Granada"; } elseif ($rifle == 17) { $a_rifle = "Lacrimojena"; } elseif ($rifle == 18) { $a_rifle = "Cocktel Molotov"; } elseif ($rifle == 22) { $a_rifle = "9mm"; } elseif ($rifle == 23) { $a_rifle = "9mm Silenciada"; } elseif ($rifle == 24) { $a_rifle = "Desert Eagle"; } elseif ($rifle == 25) { $a_rifle = "rifle Normal"; } elseif ($rifle == 26) { $a_rifle = "rifle recortada"; } elseif ($rifle == 27) { $a_rifle = "rifle de Combate"; } elseif ($rifle == 28) { $a_rifle = "Micro Uzi"; } elseif ($rifle == 29) { $a_rifle = "MP5"; } elseif ($rifle == 30) { $a_rifle = "AK-47"; } elseif ($rifle == 31) { $a_rifle = "M4"; } elseif ($rifle == 32) { $a_rifle = "Tec-9"; } elseif ($rifle == 33) { $a_rifle = "Rifle"; } elseif ($rifle == 34) { $a_rifle = "Sniper Rifle"; } elseif ($rifle == 35) { $a_rifle = "RPG"; } elseif ($rifle == 36) { $a_rifle = "HS Rocket"; } elseif ($rifle == 37) { $a_rifle = "Lanzallamas"; } elseif ($rifle == 38) { $a_rifle = "Minigun"; } elseif ($rifle == 39) { $a_rifle = "Satchel Charger"; } elseif ($rifle == 40) { $a_rifle = "Detonador"; } elseif ($rifle == 41) { $a_rifle = "Soray"; } elseif ($rifle == 42) { $a_rifle = "Extintor"; } elseif ($rifle == 43) { $a_rifle = "Camara"; } elseif ($rifle == 44) { $a_rifle = "Vision nocturna"; } elseif ($rifle == 45) { $a_rifle = "Thermal Googles"; } elseif ($rifle == 46) { $a_rifle = "Paracaidas"; } else { $a_rifle = "No tiene"; }
    
    #Granada
    if ($granada == 0) { $a_granada = "No tiene"; } elseif ($granada == 1) { $a_granada = "Manopla"; } elseif ($granada == 2) { $a_granada = "Palo de golf"; } elseif ($granada == 3) { $a_granada = "Porra"; } elseif ($granada == 4) { $a_granada = "Cuchillo"; } elseif ($granada == 5) { $a_granada = "Bate de beisbol"; } elseif ($granada == 6) { $a_granada = "Pala"; } elseif ($granada == 7) { $a_granada = "Palo de billar"; } elseif ($granada == 8) { $a_granada = "Katana"; } elseif ($granada == 9) { $a_granada = "Moto cierra"; } elseif ($granada == 10) { $a_granada = "Consolador morado"; } elseif ($granada == 11) { $a_granada = "Consolador"; } elseif ($granada == 12) { $a_granada = "Vibrador"; } elseif ($granada == 13) { $a_granada = "Vibrador de plata"; } elseif ($granada == 14) { $a_granada = "Flores"; } elseif ($granada == 15) { $a_granada = "Cane"; } elseif ($granada == 16) { $a_granada = "Granada"; } elseif ($granada == 17) { $a_granada = "Lacrimojena"; } elseif ($granada == 18) { $a_granada = "Cocktel Molotov"; } elseif ($granada == 22) { $a_granada = "9mm"; } elseif ($granada == 23) { $a_granada = "9mm Silenciada"; } elseif ($granada == 24) { $a_granada = "Desert Eagle"; } elseif ($granada == 25) { $a_granada = "granada Normal"; } elseif ($granada == 26) { $a_granada = "granada recortada"; } elseif ($granada == 27) { $a_granada = "granada de Combate"; } elseif ($granada == 28) { $a_granada = "Micro Uzi"; } elseif ($granada == 29) { $a_granada = "MP5"; } elseif ($granada == 30) { $a_granada = "AK-47"; } elseif ($granada == 31) { $a_granada = "M4"; } elseif ($granada == 32) { $a_granada = "Tec-9"; } elseif ($granada == 33) { $a_granada = "granada"; } elseif ($granada == 34) { $a_granada = "Sniper granada"; } elseif ($granada == 35) { $a_granada = "RPG"; } elseif ($granada == 36) { $a_granada = "HS Rocket"; } elseif ($granada == 37) { $a_granada = "Lanzallamas"; } elseif ($granada == 38) { $a_granada = "Minigun"; } elseif ($granada == 39) { $a_granada = "Satchel Charger"; } elseif ($granada == 40) { $a_granada = "Detonador"; } elseif ($granada == 41) { $a_granada = "Soray"; } elseif ($granada == 42) { $a_granada = "Extintor"; } elseif ($granada == 43) { $a_granada = "Camara"; } elseif ($granada == 44) { $a_granada = "Vision nocturna"; } elseif ($granada == 45) { $a_granada = "Thermal Googles"; } elseif ($granada == 46) { $a_granada = "Paracaidas"; } else { $a_granada = "No tiene"; }
    
    #Regalo
    if ($regalo == 0) { $a_regalo = "No tiene"; } elseif ($regalo == 1) { $a_regalo = "Manopla"; } elseif ($regalo == 2) { $a_regalo = "Palo de golf"; } elseif ($regalo == 3) { $a_regalo = "Porra"; } elseif ($regalo == 4) { $a_regalo = "Cuchillo"; } elseif ($regalo == 5) { $a_regalo = "Bate de beisbol"; } elseif ($regalo == 6) { $a_regalo = "Pala"; } elseif ($regalo == 7) { $a_regalo = "Palo de billar"; } elseif ($regalo == 8) { $a_regalo = "Katana"; } elseif ($regalo == 9) { $a_regalo = "Moto cierra"; } elseif ($regalo == 10) { $a_regalo = "Consolador morado"; } elseif ($regalo == 11) { $a_regalo = "Consolador"; } elseif ($regalo == 12) { $a_regalo = "Vibrador"; } elseif ($regalo == 13) { $a_regalo = "Vibrador de plata"; } elseif ($regalo == 14) { $a_regalo = "Flores"; } elseif ($regalo == 15) { $a_regalo = "Cane"; } elseif ($regalo == 16) { $a_regalo = "regalo"; } elseif ($regalo == 17) { $a_regalo = "Lacrimojena"; } elseif ($regalo == 18) { $a_regalo = "Cocktel Molotov"; } elseif ($regalo == 22) { $a_regalo = "9mm"; } elseif ($regalo == 23) { $a_regalo = "9mm Silenciada"; } elseif ($regalo == 24) { $a_regalo = "Desert Eagle"; } elseif ($regalo == 25) { $a_regalo = "regalo Normal"; } elseif ($regalo == 26) { $a_regalo = "regalo recortada"; } elseif ($regalo == 27) { $a_regalo = "regalo de Combate"; } elseif ($regalo == 28) { $a_regalo = "Micro Uzi"; } elseif ($regalo == 29) { $a_regalo = "MP5"; } elseif ($regalo == 30) { $a_regalo = "AK-47"; } elseif ($regalo == 31) { $a_regalo = "M4"; } elseif ($regalo == 32) { $a_regalo = "Tec-9"; } elseif ($regalo == 33) { $a_regalo = "regalo"; } elseif ($regalo == 34) { $a_regalo = "Sniper regalo"; } elseif ($regalo == 35) { $a_regalo = "RPG"; } elseif ($regalo == 36) { $a_regalo = "HS Rocket"; } elseif ($regalo == 37) { $a_regalo = "Lanzallamas"; } elseif ($regalo == 38) { $a_regalo = "Minigun"; } elseif ($regalo == 39) { $a_regalo = "Satchel Charger"; } elseif ($regalo == 40) { $a_regalo = "Detonador"; } elseif ($regalo == 41) { $a_regalo = "Soray"; } elseif ($regalo == 42) { $a_regalo = "Extintor"; } elseif ($regalo == 43) { $a_regalo = "Camara"; } elseif ($regalo == 44) { $a_regalo = "Vision nocturna"; } elseif ($regalo == 45) { $a_regalo = "Thermal Googles"; } elseif ($regalo == 46) { $a_regalo = "Paracaidas"; } else { $a_regalo = "No tiene"; }
    
    #Camara
    if ($camara == 0) { $a_camara = "No tiene"; } elseif ($camara == 1) { $a_camara = "Manopla"; } elseif ($camara == 2) { $a_camara = "Palo de golf"; } elseif ($camara == 3) { $a_camara = "Porra"; } elseif ($camara == 4) { $a_camara = "Cuchillo"; } elseif ($camara == 5) { $a_camara = "Bate de beisbol"; } elseif ($camara == 6) { $a_camara = "Pala"; } elseif ($camara == 7) { $a_camara = "Palo de billar"; } elseif ($camara == 8) { $a_camara = "Katana"; } elseif ($camara == 9) { $a_camara = "Moto cierra"; } elseif ($camara == 10) { $a_camara = "Consolador morado"; } elseif ($camara == 11) { $a_camara = "Consolador"; } elseif ($camara == 12) { $a_camara = "Vibrador"; } elseif ($camara == 13) { $a_camara = "Vibrador de plata"; } elseif ($camara == 14) { $a_camara = "Flores"; } elseif ($camara == 15) { $a_camara = "Cane"; } elseif ($camara == 16) { $a_camara = "camara"; } elseif ($camara == 17) { $a_camara = "Lacrimojena"; } elseif ($camara == 18) { $a_camara = "Cocktel Molotov"; } elseif ($camara == 22) { $a_camara = "9mm"; } elseif ($camara == 23) { $a_camara = "9mm Silenciada"; } elseif ($camara == 24) { $a_camara = "Desert Eagle"; } elseif ($camara == 25) { $a_camara = "camara Normal"; } elseif ($camara == 26) { $a_camara = "camara recortada"; } elseif ($camara == 27) { $a_camara = "camara de Combate"; } elseif ($camara == 28) { $a_camara = "Micro Uzi"; } elseif ($camara == 29) { $a_camara = "MP5"; } elseif ($camara == 30) { $a_camara = "AK-47"; } elseif ($camara == 31) { $a_camara = "M4"; } elseif ($camara == 32) { $a_camara = "Tec-9"; } elseif ($camara == 33) { $a_camara = "camara"; } elseif ($camara == 34) { $a_camara = "Sniper camara"; } elseif ($camara == 35) { $a_camara = "RPG"; } elseif ($camara == 36) { $a_camara = "HS Rocket"; } elseif ($camara == 37) { $a_camara = "Lanzallamas"; } elseif ($camara == 38) { $a_camara = "Minigun"; } elseif ($camara == 39) { $a_camara = "Satchel Charger"; } elseif ($camara == 40) { $a_camara = "Detonador"; } elseif ($camara == 41) { $a_camara = "Soray"; } elseif ($camara == 42) { $a_camara = "Extintor"; } elseif ($camara == 43) { $a_camara = "Camara"; } elseif ($camara == 44) { $a_camara = "Vision nocturna"; } elseif ($camara == 45) { $a_camara = "Thermal Googles"; } elseif ($camara == 46) { $a_camara = "Paracaidas"; } else { $a_camara = "No tiene"; }

    #Datos para logs
    $fecha_hoy = date("Y-m-d h:i:s", time());
    $user_session = $_SESSION['usuario'];
    $mi_ip = $_SERVER["REMOTE_ADDR"];

    #Cargamos datos del estado del servidor SA-MP
    require("./core/samp_query.php");
    try {
        $rQuery        = new QueryServer($serverIP, $serverPort);
        $aInformation  = $rQuery->GetInfo();
        $aServerRules  = $rQuery->GetRules();
        $aBasicPlayer  = $rQuery->GetPlayers();
        $aTotalPlayers = $rQuery->GetDetailedPlayers();
        $rQuery->Close();
    }
    catch (QueryServerException $pError) {
    }
    
?>