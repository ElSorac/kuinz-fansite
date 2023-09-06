<?php
/*==================================================================
                    CONFIGURACION DE LA WEB
        PD: No tocar lo demas ya que podria arruinar la web.

                    Discord WebMaster: Sorac#9121

        Esta pagina web fue programada totalmente desde 0, todos
                      los derechos reservados.
==================================================================*/     

#Datos servidor
$title_web = "Sorac Webmaster - San Andreas Multiplayer (SA-MP En Español)";
$nameserver = "Sorac Webmaster";
$moneda_server = "Coin";
$dominio = "";

#IP Servidor
$ipCompleta = "150.230.29.4:7777";

#Datos para el SAMP-QUERY
$serverIP = "150.230.29.4";
$serverPort = "7777";

#Redes sociales
$link_discord = "#";
$link_facebook = "#";
$link_twitter = "#";
$link_youtube = "#";

#Datos conexion MySQL
$servername = "localhost";
$username = "root";
$password = "";
$database ="gm";

#Tiempo
$year = date("Y");

#Cambio de nombre, configura el tipo de moneda y precio
/*
Tipo 1 = Dinero del juego
Tipo 2 = Moneda del server
Tipo 3 = Totem
*/
$tipo = 1;
$costo = 100;

/*==================================================================
        APARTIR DESDE ACA ESTA PROHIBIDO TOCAR CUALQUIER COSA
==================================================================*/


try {
  $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
  // Se establece error de conexion del PDO
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  //echo "Conexion correcta.";
} catch(PDOException $e) {
  echo "Conexión fallida: " . $e->getMessage();
}

#Creamos session
session_start();

#Zona horaria por defecto de la pagina web
date_default_timezone_set("America/Bogota");
setlocale(LC_ALL, 'es_ES');
?>
