<?php
#Cerramos conexiones sin logeo
if (isset($_SESSION['logeado']) != "Si") {
  exit();
}
?>
<?php
    //Cargamos la id nuestra
    $id = $_SESSION['id'];

    //Hacemos consulta
    $consulta = $conn->prepare("SELECT * FROM usuarios WHERE ID = :id");
    $consulta->bindParam(':id', $id);
    $consulta->execute();
    $row = $consulta->fetch();

    //Datos usuario
    $nombre = $row['Username'];
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

    $dineroTotal = number_format($dinero  + $dineroBanco);

    //Hacemos consulta
    $consulta2 = $conn->prepare("SELECT * FROM log_ingresos WHERE Nombre = :nombre ORDER BY ID DESC LIMIT 1");
    $consulta2->bindParam(':nombre', $nombre);
    $consulta2->execute();
    $row2= $consulta2->fetch();

    $ultimaVez = substr($row2['Fecha'],0,16);
?>
<body class="body noselect">
<div class="container">
    <div class="parent">
        <div class="skin-u"><img src="/images/skin/<?php echo $skin ?>.png"></div>
        <div class="data-u">
            <div class="title noselect">Datos de mi cuenta</div>
            <div class="hr"></div>
            <p><img src="/images/icons/tarjeta.png" class="noselect"> Nombre: <?php echo $nombre ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/fecha.png" class="noselect"> Ultimo vez: <strong><?php echo $ultimaVez ?></strong></p>
            <div class="hr"></div>
            <p><img src="/images/icons/conectado.png" class="noselect"> Conectado como <b>
                <?php 
                switch ($nivelAdmin) {
                    case 0:
                        echo 'Usuario';
                    break;
                    case 1:
                        echo 'Ayudante';
                    break;
                    case 2:
                        echo 'Mod Dudas';
                    break;
                    case 3:
                        echo 'Mod Juego';
                    break;
                    case 4:
                        echo 'Mod Global';
                    break;
                    case 5:
                        echo 'Administrador';
                    break;
                    case 6:
                        echo 'Encargado';
                    break;
                    case 7:
                        echo 'Fundador';
                    break;
                    };
                ?>
            </b></p>
            <div class="hr"></div>
            <p  style="visibility: hidden;">Mi pais: Colombia <sub><img src="/images/banderas/Colombia.png"></sub></p>
            <div class="hr" style="visibility: hidden;"></div>
        </div>
        <div class="u-info">
            <div class="title noselect">Mi personaje</div>
            <div class="hr"></div>
            <p><img src="/images/icons/dinero.png" class="noselect"> Dinero total: <span>$<?php echo $dineroTotal ?></span></p>
            <div class="hr"></div>
            <p><img src="/images/icons/nivel2.png" class="noselect"> Nivel: <?php echo $nivel ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/reputacion.png" class="noselect"> Reputacion: <?php echo $reputacion ?>/239</p>
            <div class="hr"></div>
            <p><img src="/images/icons/arrestado.png" class="noselect"> Arrestado: <?php if($arrestado == 0) { echo 'No hay arrestos';} else { echo $arrestado;?> veces<?php } ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/tiempo.png" class="noselect"> Horas de jueg: <?php echo $horasjugadas ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/tel.png" class="noselect"> Telefono: <?php if($numero == 0) {echo 'No tiene';}else{ echo $numero;}?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/corazon.png" class="noselect"> Salud: <?php echo $vida ?>/100</p>
            <div class="hr"></div>
            <p><img src="/images/icons/blindaje.png" class="noselect"> Chaleco antibalas: <?php echo $chaleco ?>/100</p>
            <div class="hr"></div>
        </div>
        <div class="inv-u">
            <div class="title noselect">Mi inventario</div>
            <div class="hr"></div>
            <p><img src="/images/icons/crack.png" class="noselect"> Crack: <?php echo $crack ?>g</p>
            <div class="hr"></div>
            <p><img src="/images/icons/pildora.png" class="noselect"> Medicamentos: <?php echo $remedios ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/marihuana.png" class="noselect"> Marihuana: <?php echo $marihuana ?>g</p>
            <div class="hr"></div>
            <p><img src="/images/icons/guia.png" class="noselect"> Guia telefonica: <?php if($guia == 0) { echo 'No';} else { echo 'Si';}?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/piezas.png" class="noselect"> Piezas de armas: <?php echo $piezas ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/herramientas.png" class="noselect"> Repuestos: <?php echo $repuestos ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/radiocomunicador.png" class="noselect"> Radio comunicador: <?php if($radio == 0) { echo 'No';} else { echo 'Si';}?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/totemx16.png" class="noselect"> Totems: <?php echo $totems ?></p>
            <div class="hr"></div>
            <p><img src="/images/icons/blindaje.png" class="noselect"> Monedas: <?php echo $monedas ?></p>
            <div class="hr"></div>
        </div>
        <div class="armas-u">
            <div class="title noselect">Mis armas</div>
            <div class="hr"></div>
            <p><img src="/images/icons/pistolas.png" class="noselect"> Pistola:
            <?php
                switch ($pistola) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/escopeta.png" class="noselect"> Escopeta: 
            <?php
                switch ($escopeta) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/subfusil.png" class="noselect"> Subfusil: 
            <?php
                switch ($subfusil) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/asalto.png" class="noselect"> Asalto: 
            <?php
                switch ($asalto) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/rifle.png" class="noselect"> Rifle: 
                <?php
                switch ($rifle) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/armas-blancas.png" class="noselect"> Arma blanca:
            <?php
                switch ($blanca) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/granada.png" class="noselect"> Granada: 
            <?php
                switch ($granada) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/regalos.png" class="noselect"> Regalos: 
            <?php
                switch ($regalo) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
            <p><img src="/images/icons/camara.png" class="noselect"> Camara: 
            <?php
                switch ($camara) {
                    case 0:
                        echo "No tiene";
                        break;
                    case 1:
                        echo "Manopla";
                        break;
                    case 2:
                        echo "Palo de golf";
                        break;
                    case 3:
                        echo "Porra";
                        break;
                    case 4:
                        echo "Cuchillo";
                        break;
                    case 5:
                        echo "Bate de beisboll";
                        break;
                    case 6:
                        echo "Pala";
                        break;
                    case 7:
                        echo "Palo de billar";
                        break;
                    case 8:
                        echo "Katana";
                        break;
                    case 9:
                        echo "Moto cierra";
                        break;
                    case 10:
                        echo "Consolador morado";
                        break;
                    case 11:
                        echo "Consolador";
                        break;
                    case 12:
                        echo "Vibrador";
                        break;
                    case 13:
                        echo "Vibrador de plata";
                        break;
                    case 14:
                        echo "Flores";
                        break;
                    case 15:
                        echo "Cane";
                        break;
                    case 16:
                        echo "Granada";
                        break;
                    case 17:
                        echo "Lacrimojena";
                        break;
                    case 18:
                        echo "Cocktel Molotov";
                        break;
                    case 22:
                        echo "9MM";
                        break;
                    case 23:
                        echo "9mm Silenciada";
                        break;
                    case 24:
                        echo "Desert Eagle";
                        break;
                    case 25:
                        echo "Escopeta Normal";
                        break;
                    case 26:
                        echo "Escopeta recortada";
                        break;
                    case 27:
                        echo "Escopeta de combate";
                        break;
                    case 28:
                        echo "Micro UZI";
                        break;
                    case 29:
                        echo "MP5";
                        break;
                    case 30:
                        echo "AK-47";
                        break;
                    case 31:
                        echo "M4";
                        break;
                    case 32:
                        echo "Tec-9";
                        break;
                    case 33:
                        echo "Rifle";
                        break;
                    case 34:
                        echo "Sniper Rifle";
                        break;
                    case 35:
                        echo "RPG";
                        break;
                    case 36:
                        echo "HS Rocket";
                        break;
                    case 37:
                        echo "Lanzallamas";
                        break;
                    case 38:
                        echo "Minigun";
                        break;
                    case 39:
                        echo "Satchel Charger";
                        break;
                    case 40:
                        echo "Detonador";
                        break;
                    case 41:
                        echo "Spray";
                        break;
                    case 42:
                        echo "Extintor";
                        break;
                    case 43:
                        echo "Camara";
                        break;
                    case 44:
                        echo "Vision nocturna";
                        break;
                    case 45:
                        echo "Thermal Googles";
                        break;
                    case 46:
                        echo "Paracaidas";
                        break;
                };
                ?>
            </p>
            <div class="hr"></div>
        </div>
        <div class="btns">
            <a href="#"><button class="btn-style">Foro</button></a>
            <a href="/dash"><button class="btn-style">Configuracion</button></a>
            <a href="/dash"><button class="btn-style">Dashboard</button></a>
            <a href="samp://<?php echo $ipCompleta?>"><button class="btn-style" type="submit">Entrar a jugar</button></a>
            <a href="/salir"><button class="btn-style" type="submit">Cerrar sesion</button></a>
        </div>
    </div>
</div>
<div class="container" style="display: none;">
    <div class="cont-autos">
        <div class="auto">
            <div class="auto-img">
                <img src="/images/autos/605.gif" alt="">
            </div>
            <div class="desc-auto">
                <p>Combustible: 87/110</p>
                <p>Daños: 0%</p>
                <p>Maletero:  5/6</p>
            </div>
        </div>
        <div class="auto">
            <div class="auto-img">
                <img src="/images/autos/605.gif" alt="">
            </div>
            <div class="desc-auto">
                <p>Combustible: 87/110</p>
                <p>Daños: 0%</p>
                <p>Maletero:  5/6</p>
            </div>
        </div>
        <div class="auto">
            <div class="auto-img">
                <img src="/images/autos/605.gif" alt="">
            </div>
            <div class="desc-auto">
                <p>Combustible: 87/110</p>
                <p>Daños: 0%</p>
                <p>Maletero:  5/6</p>
            </div>
        </div>
    </div>
</div>
<br>
