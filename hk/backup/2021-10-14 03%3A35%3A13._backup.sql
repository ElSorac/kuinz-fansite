

CREATE TABLE `baneo` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(180) DEFAULT NULL,
  `razon` varchar(500) NOT NULL,
  `ban_i` date DEFAULT NULL,
  `ban_f` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;




CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `imagen` varchar(700) NOT NULL,
  `principal` varchar(11) NOT NULL,
  `mostrarboton` varchar(50) DEFAULT 'No',
  `url_promo` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO banner VALUES("1","�Actualizaci�n - Kuinz Fansite!","�Enhorabuena!    ya ha llegado el halloween a kuinz... =)","https://i.imgur.com/z8zhIWa.png","active","","#");



CREATE TABLE `book_comentarios` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `comentario` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE `chat` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `comentario` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE `comentarios` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nameweb` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `pclaves` varchar(600) NOT NULL,
  `descripcion` varchar(4000) NOT NULL,
  `logo` varchar(1000) NOT NULL,
  `facebook` varchar(4000) NOT NULL,
  `facebookimg` varchar(500) NOT NULL,
  `mantenimiento` varchar(50) NOT NULL,
  `iniciar_sesion` varchar(50) NOT NULL,
  `registro` varchar(50) NOT NULL,
  `publicidad` varchar(50) NOT NULL,
  `codigo` text NOT NULL,
  `radio` varchar(9000) NOT NULL,
  `nombre_radio` varchar(100) NOT NULL,
  `radio_op` varchar(50) NOT NULL,
  `xat` text NOT NULL,
  `equipo` varchar(1000) NOT NULL,
  `tema` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO config VALUES("1","Kuinz","https://www.kuinz-fansite.space","KekoCity, KC, Ciudad, Online,FANSITE","Kuinz es un fansite de la comunidad kekocity.com este es el �nico fansite que tiene la comunidad.  Fundado por Rutierrez & Krozox","../images/logo-h.png","https://www.facebook.com/kuinz.fansite/","https://v2.kekocity.com/uploads/02/7/c/2/c/87c2cc8be9fe3782d8aebd9a34854dee.png","0","1","1","0","x","x","x","0"," �x",".","      <link href="../../styles/css/bootstrap_min.css" rel="stylesheet">");



CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicacion` varchar(4000) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `avatar` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO eventos VALUES("18","<h2>El juego del calamar <br><br>
  1 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=43" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=43"></iframe><br><br>
  
  2 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=44" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=44"></iframe><br><br>
  
    3 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=45" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=45"></iframe><br><br>
  
    4 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=46" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=46"></iframe><br><br>
  
    5 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=47" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=47"></iframe><br><br>
  
    6 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=48" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=48"></iframe><br><br>
  
    7 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=44" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=49"></iframe><br><br>
  
  
    8 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=50" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=50"></iframe><br><br>
  
    9 Episodio <br><br>
<iframe class="no-you" width="100%" height="315" data-src="https://voker2.club/boo17.php?q=51" frameborder="0" scrolling="no" allow="autoplay; encrypted-media" allowfullscreen="" src="https://voker2.club/boo17.php?q=51"></iframe><br><br>","2021-09-28","Serie","https://www.kuinz-fansite.space/images/avatars/noavatar.png");



CREATE TABLE `furnis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(4000) NOT NULL,
  `encima` varchar(2000) NOT NULL,
  `nombre` varchar(4000) NOT NULL,
  `creditos` varchar(26) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT 'https://kekocity.com/fly/i/fursv5/9944/4013054.png',
  `seccion` varchar(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

INSERT INTO furnis VALUES("1","https://v2.kekocity.com/fly/i/fursv5/2144/4010451.png","https://v2.kekocity.com/fly/i/fursv5/2144/4010451encima.gif","Kekobol Amarillo","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("2","https://v2.kekocity.com/fly/i/fursv5/2142/4010453encima.png","https://v2.kekocity.com/fly/i/fursv5/2142/4010453encima.gif","Kekobol Cyan","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("3","https://v2.kekocity.com/fly/i/fursv5/1471/1595.png
","https://v2.kekocity.com/fly/i/fursv5/1471/1595encima.gif","Kekobol Azul","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("4","https://v2.kekocity.com/fly/i/fursv5/29563/4018613.gif","","Roca Rock","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("5","https://v2.kekocity.com/fly/i/fursv5/8424/4012531.gif","","Dragon Inca","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("6","https://v2.kekocity.com/fly/i/fursv5/2167/4010457.gif","","Copa de los campeones","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("7","https://v2.kekocity.com/fly/i/fursv5/9894/4013041.gif","","Godzilla Rob�tico","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("8","https://v2.kekocity.com/fly/i/fursv5/9922/4013045.png","","Brontosaruo Cyan","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("9","https://v2.kekocity.com/fly/i/fursv5/2164/4010456.gif","","Ovni","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("10","https://v2.kekocity.com/fly/i/fursv5/2056/4010309.png","","Cama real","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("11","https://v2.kekocity.com/fly/i/fursv5/2162/4010454.gif","","M�quina de cacao","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("12","https://v2.kekocity.com/fly/i/fursv5/1561/400279encima.png","","Lampara VIP","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("13","https://v2.kekocity.com/fly/i/fursv5/1430/5636.png","","Cabeza The Dragon","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("14","https://v2.kekocity.com/fly/i/fursv5/4998/4011381.png","","Cabeza de fara�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("15","https://v2.kekocity.com/fly/i/fursv5/1316/5482.png","","F�sil Caracola","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("16","https://v2.kekocity.com/fly/i/fursv5/1040/5258.gif","","Serpiente Encantada","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("17","https://v2.kekocity.com/fly/i/fursv5/831/5089.png","","Luz de sal","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("18","https://v2.kekocity.com/fly/i/fursv5/332/107.gif","","Equipo Musical","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("19","https://v2.kekocity.com/fly/i/fursv5/762/50703.png","","Pilar Azul","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("20","https://v2.kekocity.com/fly/i/fursv5/18041/4015533.png","","Pilar Dorado","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("21","https://v2.kekocity.com/fly/i/fursv5/18045/4015535.png","","Pilar Gris","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("22","https://v2.kekocity.com/fly/i/fursv5/18055/4015537.png","","Pilar Rojo","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("23","https://v2.kekocity.com/fly/i/fursv5/18059/4015539.png","","Pilar Marr�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("24","https://v2.kekocity.com/fly/i/fursv5/2140/4010452.png","https://v2.kekocity.com/fly/i/fursv5/2140/4010452encima.gif","Kekobol Rojo","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("25","https://v2.kekocity.com/fly/i/fursv5/1408/5594.png","https://v2.kekocity.com/fly/i/fursv5/1408/5594encima.gif","Kekobol Verde","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("26","https://v2.kekocity.com/fly/i/fursv5/2160/4010377.png","https://v2.kekocity.com/fly/i/fursv5/2160/4010377encima.gif","Kekobol Coraz�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("27","https://v2.kekocity.com/fly/i/fursv5/1747/400890.png","https://v2.kekocity.com/fly/i/fursv5/1747/400890encima.gif","Bola de plasma","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("28","https://v2.kekocity.com/fly/i/fursv5/1808/4010055.png","https://v2.kekocity.com/fly/i/fursv5/1808/4010055encima.gif","LIMITED ElectroBall","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("29","https://v2.kekocity.com/fly/i/fursv5/1653/400409encima.gif","","LIMITED Dragon Rub�","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("30","https://v2.kekocity.com/fly/i/fursv5/1428/5613.png","","El trono","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("31","https://v2.kekocity.com/fly/i/fursv5/1318/400054.gif","","La font del drac","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("32","https://v2.kekocity.com/fly/i/fursv5/1295/400049.gif","","Bolas de drac","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("33","https://v2.kekocity.com/fly/i/fursv5/1397/5584.png","","Keko C�sped","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("34","https://v2.kekocity.com/fly/i/fursv5/1521/400199.png","","Gong","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("35","https://v2.kekocity.com/fly/i/fursv5/1576/400298.png","","Luz de sal Lila","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("36","https://v2.kekocity.com/fly/i/fursv5/1628/400348.png","","Luz de sal Roja","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("37","https://v2.kekocity.com/fly/i/fursv5/1434/5642.png","","The dragon cuerpo","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("38","https://v2.kekocity.com/fly/i/fursv5/1436/5640.png","","The dragon cola","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("39","https://v2.kekocity.com/fly/i/fursv5/1511/400218encima.png","","Bonsai Exclusivo","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("40","https://v2.kekocity.com/fly/i/fursv5/392/4051encima.png","","Acuario","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("41","https://v2.kekocity.com/fly/i/fursv5/29567/2encima.png","","Fuente de madera","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("42","https://v2.kekocity.com/fly/i/fursv5/2138/4010443.png","","Puerta Laser Dorada","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("43","https://v2.kekocity.com/fly/i/fursv5/30206/4018724.png","","Puerta de fara�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("44","https://v2.kekocity.com/fly/i/fursv5/90/17.png","","Sill�n Galante","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("45","https://v2.kekocity.com/fly/i/fursv5/813/400004.png","","Farola Gigante","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("46","https://v2.kekocity.com/fly/i/fursv5/800/5125.png","","Alfrombra Azul","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("47","https://v2.kekocity.com/fly/i/fursv5/1714/400777.png","","M�quina industrial","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("48","https://v2.kekocity.com/fly/i/fursv5/2094/4010357.png","","Alfombra de amor","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("49","https://v2.kekocity.com/fly/i/fursv5/2101/4010362.png","","Rock Love","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("50","https://v2.kekocity.com/fly/i/fursv5/2103/4010363.gif","","Vela amor","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("51","https://v2.kekocity.com/fly/i/fursv5/2105/4010364.png","","Osito amor","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("52","https://v2.kekocity.com/fly/i/fursv5/2107/4010368.png","","Piramide del amor","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("53","https://v2.kekocity.com/fly/i/fursv5/2109/4010384.png","","Baldosa amorosa","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("54","https://v2.kekocity.com/fly/i/fursv5/2092/4010353.png","","Silla del amor","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("55","https://v2.kekocity.com/fly/i/fursv5/2090/4010351.png","","Coraz�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("56","https://v2.kekocity.com/fly/i/fursv5/2088/4010349.png","","Coraz�n de bombones","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","7");
INSERT INTO furnis VALUES("57","https://v2.kekocity.com/fly/i/fursv5/1854/4010091.png","https://v2.kekocity.com/fly/i/fursv5/1854/4010091encima.png","Podium para disco","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("58","https://v2.kekocity.com/fly/i/fursv5/1354/5532.png","","Mesa de poker","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("59","https://v2.kekocity.com/fly/i/fursv5/1862/4010145.png","","Kriptonita","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("60","https://v2.kekocity.com/fly/i/fursv5/803/300000mini.png","","Bullgod Ingles","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("61","https://v2.kekocity.com/fly/i/fursv5/29909/4018711.png","","Lapida","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("62","https://v2.kekocity.com/fly/i/fursv5/29895/4018705.png","","Puerta de madera","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("63","https://v2.kekocity.com/fly/i/fursv5/29585/4018619.png","","Dragon Oriental Azul","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("64","https://v2.kekocity.com/fly/i/fursv5/29571/4018615.png","","Dragon Oriental","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("65","https://v2.kekocity.com/fly/i/fursv5/29487/4018583.png","","Huevo Turquesa","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("66","https://v2.kekocity.com/fly/i/fursv5/29485/4018582.png","","Huevo Verde","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("67","https://v2.kekocity.com/fly/i/fursv5/29453/4018578.png","","Huevo Azul","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("68","https://v2.kekocity.com/fly/i/fursv5/29387/4018557.png","","Huevo Rosa","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("69","https://v2.kekocity.com/fly/i/fursv5/29135/4018516.gif","","DJ","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("70","https://v2.kekocity.com/fly/i/fursv5/22673/4016767.png","","Ascensor","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("71","https://v2.kekocity.com/fly/i/fursv5/17901/4015488.gif","","Baldosa Matrix","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("72","https://v2.kekocity.com/fly/i/fursv5/17813/4015467.png","","Bloque de ladrillo","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("73","https://v2.kekocity.com/fly/i/fursv5/11809/4013598.png","","Sombrilla Mandarina","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("74","https://v2.kekocity.com/fly/i/fursv5/11801/4013594.png","","Sombrilla Verde","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("75","https://v2.kekocity.com/fly/i/fursv5/11793/4013590.png","","Sombrilla Azul","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("76","https://v2.kekocity.com/fly/i/fursv5/11785/4013586.png","","Sombrilla Roja","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("77","https://v2.kekocity.com/fly/i/fursv5/10441/4013195.png","https://v2.kekocity.com/fly/i/fursv5/10441/4013195encima.png","Cabina Carbomagn�tica","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("78","https://v2.kekocity.com/fly/i/fursv5/10869/4013318.png","","Espada Legendaria","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("79","https://v2.kekocity.com/fly/i/fursv5/9926/4013047.png","","Dromaeosaurus","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("80","https://v2.kekocity.com/fly/i/fursv5/2480/4010598encima.png","","Excalivur","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("81","https://v2.kekocity.com/fly/i/fursv5/8750/4012611.gif","","Eiffel Tour","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("82","https://v2.kekocity.com/fly/i/fursv5/8762/4012613.png","","Torre Eiffel Dorada","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("83","https://v2.kekocity.com/fly/i/fursv5/11115/4013387.png","","Cabeza Keklong","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("84","https://v2.kekocity.com/fly/i/fursv5/11119/4013389.png","","Cuerpo Keklong","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("85","https://v2.kekocity.com/fly/i/fursv5/11123/4013391.png","","Cola Keklong","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("86","https://v2.kekocity.com/fly/i/fursv5/11037/4013362.png","","Cabeza Drag�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("87","https://v2.kekocity.com/fly/i/fursv5/11041/4013364.png","","Cuerpo Drag�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("88","https://v2.kekocity.com/fly/i/fursv5/11045/4013366.png","","Cola Drag�n","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("89","https://v2.kekocity.com/fly/i/fursv5/8812/4012634.png","","Crystalina Morada","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("90","https://v2.kekocity.com/fly/i/fursv5/8814/4012635.png","","Crystalina Turquesa","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("91","https://v2.kekocity.com/fly/i/fursv5/8894/4012658.gif","","Hamaca Dorada","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("92","https://v2.kekocity.com/fly/i/fursv5/1692/400664.png","","LIMITED Hamaca magenta","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","3");
INSERT INTO furnis VALUES("93","https://v2.kekocity.com/fly/i/fursv5/8822/4012639.gif","","La tumba del maestro","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("94","https://v2.kekocity.com/fly/i/fursv5/9012/4012707.png","","F�sil Concha","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("95","https://v2.kekocity.com/fly/i/fursv5/2535/4010621encima.gif","","Fuente Fushi de bamb�","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("96","https://v2.kekocity.com/fly/i/fursv5/5660/4011618.gif","","Fuente Oto�o","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("97","https://v2.kekocity.com/fly/i/fursv5/29581/4018617.png","","Logo KekoCity","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("98","https://v2.kekocity.com/fly/i/fursv5/4292/4011151.png","","Esquinera Egipcia","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","12");
INSERT INTO furnis VALUES("99","https://v2.kekocity.com/fly/i/fursv5/2546/4010627encima.gif","","Tempus Dorado","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("100","https://v2.kekocity.com/fly/i/fursv5/5648/4011614.png","","Taburete Naranja","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("101","https://v2.kekocity.com/fly/i/fursv5/5242/4011483.png","","Caja Fuerte","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("102","https://v2.kekocity.com/fly/i/fursv5/4453/4011211.png","","Marc Galluci","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","2");
INSERT INTO furnis VALUES("103","https://v2.kekocity.com/fly/i/fursv5/5334/4011524.png","","Teleport Ceberus","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","1");
INSERT INTO furnis VALUES("104","https://v2.kekocity.com/fly/i/fursv5/31490/4019310.png","https://v2.kekocity.com/fly/i/fursv5/31490/4019310encima.gif","KekoBol Negro","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","4");
INSERT INTO furnis VALUES("105","https://v2.kekocity.com/fly/i/fursv5/30828/4018947encima.png","https://v2.kekocity.com/fly/i/fursv5/30828/4018947.gif","KekoBol Estrella","No definido","https://kekocity.com/fly/i/fursv5/9944/4013054.png","6");



CREATE TABLE `images` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;

INSERT INTO images VALUES("1","https://i.imgur.com/n8S0F7N.jpg","23/07/2021");
INSERT INTO images VALUES("2","https://i.imgur.com/2cvXtOR.png","23/07/2021");
INSERT INTO images VALUES("3","https://i.imgur.com/tUVG5ER.png","23/07/2021");
INSERT INTO images VALUES("4","https://i.imgur.com/YA2SVhk.jpg","23/07/2021");
INSERT INTO images VALUES("5","https://i.imgur.com/Q1JvOz4.png","23/07/2021");
INSERT INTO images VALUES("6","https://i.imgur.com/sN5onEM.png","23/07/2021");
INSERT INTO images VALUES("7","https://i.imgur.com/EOmxmn4.png","23/07/2021");
INSERT INTO images VALUES("8","https://i.imgur.com/m6vqqQY.png","23/07/2021");
INSERT INTO images VALUES("9","https://i.imgur.com/KADDz9K.jpg","23/07/2021");
INSERT INTO images VALUES("10","https://i.imgur.com/5bZ5iMd.jpg","23/07/2021");
INSERT INTO images VALUES("11","https://i.imgur.com/NeCRkIh.jpg","23/07/2021");
INSERT INTO images VALUES("12","https://i.imgur.com/9qzFGhv.jpg","26/07/2021");
INSERT INTO images VALUES("13","https://i.imgur.com/lEj0jRz.jpg","27/07/2021");
INSERT INTO images VALUES("14","https://i.imgur.com/lIT4EWM.jpg","27/07/2021");
INSERT INTO images VALUES("15","https://i.imgur.com/GWNjCjX.jpg","27/07/2021");
INSERT INTO images VALUES("16","https://i.imgur.com/L4W0kLl.jpg","28/07/2021");
INSERT INTO images VALUES("17","https://i.imgur.com/j9iHAHM.jpg","28/07/2021");
INSERT INTO images VALUES("18","https://i.imgur.com/FQmd5tC.jpg","28/07/2021");
INSERT INTO images VALUES("19","https://i.imgur.com/S49fffl.jpg","28/07/2021");
INSERT INTO images VALUES("20","https://i.imgur.com/N8VHEaT.jpg","29/07/2021");
INSERT INTO images VALUES("21","https://i.imgur.com/uPtso1Y.jpg","29/07/2021");
INSERT INTO images VALUES("22","https://i.imgur.com/ROq2q7E.jpg","01/08/2021");
INSERT INTO images VALUES("23","https://i.imgur.com/r4uLv6k.jpg","01/08/2021");
INSERT INTO images VALUES("24","https://i.imgur.com/7A4E8LK.jpg","01/08/2021");
INSERT INTO images VALUES("25","https://i.imgur.com/HP88fOW.jpg","01/08/2021");
INSERT INTO images VALUES("26","https://i.imgur.com/Zux3exg.jpg","01/08/2021");
INSERT INTO images VALUES("27","https://i.imgur.com/WX7MHE1.jpg","01/08/2021");
INSERT INTO images VALUES("28","https://i.imgur.com/u67l490.jpg","02/08/2021");
INSERT INTO images VALUES("29","https://i.imgur.com/BPgvJo3.jpg","02/08/2021");
INSERT INTO images VALUES("30","https://i.imgur.com/6Wauk64.png","03/08/2021");
INSERT INTO images VALUES("31","https://i.imgur.com/KlwBjRn.png","03/08/2021");
INSERT INTO images VALUES("32","https://i.imgur.com/lL1g8dz.jpg","04/08/2021");
INSERT INTO images VALUES("33","https://i.imgur.com/CSYrSvz.jpg","04/08/2021");
INSERT INTO images VALUES("34","https://i.imgur.com/M7uZx7T.png","05/08/2021");
INSERT INTO images VALUES("35","https://i.imgur.com/chlMhoz.jpg","06/08/2021");
INSERT INTO images VALUES("36","https://i.imgur.com/z4ku043.jpg","06/08/2021");
INSERT INTO images VALUES("37","https://i.imgur.com/Pzjkj8z.jpg","06/08/2021");
INSERT INTO images VALUES("38","https://i.imgur.com/hV0biaK.png","07/08/2021");
INSERT INTO images VALUES("39","https://i.imgur.com/hW1x29F.png","07/08/2021");
INSERT INTO images VALUES("40","https://i.imgur.com/vzBVY1c.png","07/08/2021");
INSERT INTO images VALUES("41","https://i.imgur.com/t1Oq0MX.jpg","08/08/2021");
INSERT INTO images VALUES("42","https://i.imgur.com/3zhL5rm.jpg","08/08/2021");
INSERT INTO images VALUES("43","https://i.imgur.com/yMwyQY6.jpg","09/08/2021");
INSERT INTO images VALUES("44","https://i.imgur.com/FcPBOnv.jpg","09/08/2021");
INSERT INTO images VALUES("45","https://i.imgur.com/m6oGCkm.jpg","09/08/2021");
INSERT INTO images VALUES("46","https://i.imgur.com/2HW4JQ4.jpg","09/08/2021");
INSERT INTO images VALUES("47","https://i.imgur.com/4uIkLlU.jpg","09/08/2021");
INSERT INTO images VALUES("48","https://i.imgur.com/YANxq8y.png","12/08/2021");
INSERT INTO images VALUES("49","https://i.imgur.com/y94fNJK.jpg","13/08/2021");
INSERT INTO images VALUES("50","https://i.imgur.com/K7QIA6p.jpg","13/08/2021");
INSERT INTO images VALUES("51","https://i.imgur.com/OMQKsLu.jpg","13/08/2021");
INSERT INTO images VALUES("52","https://i.imgur.com/AsrSJg1.jpg","13/08/2021");
INSERT INTO images VALUES("53","https://i.imgur.com/pAvnyA2.jpg","15/08/2021");
INSERT INTO images VALUES("54","https://i.imgur.com/a9Cgt4b.jpg","15/08/2021");
INSERT INTO images VALUES("55","https://i.imgur.com/Sdce5ho.jpg","18/08/2021");
INSERT INTO images VALUES("56","https://i.imgur.com/paIm0Dv.jpg","19/08/2021");
INSERT INTO images VALUES("57","https://i.imgur.com/FMiXaDq.png","20/08/2021");
INSERT INTO images VALUES("58","https://i.imgur.com/1KgGOC2.jpg","20/08/2021");
INSERT INTO images VALUES("59","https://i.imgur.com/t3dEvT4.jpg","21/08/2021");
INSERT INTO images VALUES("60","https://i.imgur.com/JTQZXCJ.jpg","24/08/2021");
INSERT INTO images VALUES("61","https://i.imgur.com/7BRNK70.jpg","26/08/2021");
INSERT INTO images VALUES("62","https://i.imgur.com/0XB3H9K.jpg","26/08/2021");
INSERT INTO images VALUES("63","https://i.imgur.com/BVmay4p.jpg","26/08/2021");
INSERT INTO images VALUES("64","https://i.imgur.com/qY7nMyD.jpg","27/08/2021");
INSERT INTO images VALUES("65","https://i.imgur.com/fE1kBVs.jpg","27/08/2021");
INSERT INTO images VALUES("66","https://i.imgur.com/CYQP7mp.jpg","27/08/2021");
INSERT INTO images VALUES("67","https://i.imgur.com/svhnm9G.png","27/08/2021");
INSERT INTO images VALUES("68","https://i.imgur.com/IzKkxVd.png","27/08/2021");
INSERT INTO images VALUES("69","https://i.imgur.com/B09Srla.jpg","27/08/2021");
INSERT INTO images VALUES("70","https://i.imgur.com/mEbMJZg.jpg","27/08/2021");
INSERT INTO images VALUES("71","https://i.imgur.com/izNdPXA.jpg","27/08/2021");
INSERT INTO images VALUES("72","https://i.imgur.com/aJPWS06.jpg","27/08/2021");
INSERT INTO images VALUES("73","https://i.imgur.com/RdzX0RH.png","28/08/2021");
INSERT INTO images VALUES("74","https://i.imgur.com/J6Cbt5d.png","28/08/2021");
INSERT INTO images VALUES("75","https://i.imgur.com/KynS5ob.jpg","29/08/2021");
INSERT INTO images VALUES("76","https://i.imgur.com/nSaUxrA.jpg","29/08/2021");
INSERT INTO images VALUES("77","https://i.imgur.com/zbRCzhI.jpg","29/08/2021");
INSERT INTO images VALUES("78","https://i.imgur.com/Mpddrk7.jpg","29/08/2021");
INSERT INTO images VALUES("79","https://i.imgur.com/c0sukNZ.jpg","29/08/2021");
INSERT INTO images VALUES("80","https://i.imgur.com/s6iduP5.jpg","29/08/2021");
INSERT INTO images VALUES("81","https://i.imgur.com/1JsjndC.png","31/08/2021");
INSERT INTO images VALUES("82","https://i.imgur.com/KtdRmZQ.jpg","31/08/2021");
INSERT INTO images VALUES("83","https://i.imgur.com/MpZr1Fd.gif","01/09/2021");
INSERT INTO images VALUES("84","https://i.imgur.com/VcRkbIV.gif","01/09/2021");
INSERT INTO images VALUES("85","https://i.imgur.com/xJwlDNx.gif","01/09/2021");
INSERT INTO images VALUES("86","https://i.imgur.com/gdfDu0a.gif","01/09/2021");
INSERT INTO images VALUES("87","https://i.imgur.com/ugAwYac.gif","02/09/2021");
INSERT INTO images VALUES("88","https://i.imgur.com/mkfHeD7.png","02/09/2021");
INSERT INTO images VALUES("89","https://i.imgur.com/l46Gpj1.png","03/09/2021");
INSERT INTO images VALUES("90","https://i.imgur.com/1MSsjct.jpg","03/09/2021");
INSERT INTO images VALUES("91","https://i.imgur.com/IpSeQWS.gif","04/09/2021");
INSERT INTO images VALUES("92","https://i.imgur.com/7JUG2Ma.gif","04/09/2021");
INSERT INTO images VALUES("93","https://i.imgur.com/eFDUBwD.jpg","04/09/2021");
INSERT INTO images VALUES("94","https://i.imgur.com/4QZQzGW.jpg","04/09/2021");
INSERT INTO images VALUES("95","https://i.imgur.com/e18SiOm.jpg","05/09/2021");
INSERT INTO images VALUES("96","https://i.imgur.com/ZF2jzRD.jpg","05/09/2021");
INSERT INTO images VALUES("97","https://i.imgur.com/Fp1Dclw.jpg","05/09/2021");
INSERT INTO images VALUES("98","https://i.imgur.com/BsGWP0J.jpg","06/09/2021");
INSERT INTO images VALUES("99","https://i.imgur.com/melOlhH.jpg","06/09/2021");
INSERT INTO images VALUES("100","https://i.imgur.com/6lQZDDT.jpg","06/09/2021");
INSERT INTO images VALUES("101","https://i.imgur.com/qGcn6ut.jpg","06/09/2021");
INSERT INTO images VALUES("102","https://i.imgur.com/EUYGWtI.jpg","06/09/2021");
INSERT INTO images VALUES("103","https://i.imgur.com/5blkIBw.jpg","06/09/2021");
INSERT INTO images VALUES("104","https://i.imgur.com/xkMkK1e.jpg","06/09/2021");
INSERT INTO images VALUES("105","https://i.imgur.com/PNm0uSh.jpg","06/09/2021");
INSERT INTO images VALUES("106","https://i.imgur.com/F4KKX6S.png","07/09/2021");
INSERT INTO images VALUES("107","https://i.imgur.com/foBZ8Yh.png","07/09/2021");
INSERT INTO images VALUES("108","https://i.imgur.com/lg1eAMh.jpg","07/09/2021");
INSERT INTO images VALUES("109","https://i.imgur.com/wg6xzQF.jpg","07/09/2021");
INSERT INTO images VALUES("110","https://i.imgur.com/H0WnQsB.jpg","08/09/2021");
INSERT INTO images VALUES("111","https://i.imgur.com/GIkBixf.jpg","08/09/2021");
INSERT INTO images VALUES("112","https://i.imgur.com/dOatYOQ.jpg","08/09/2021");
INSERT INTO images VALUES("113","https://i.imgur.com/eUgCW7A.jpg","08/09/2021");
INSERT INTO images VALUES("114","https://i.imgur.com/3BwB1rd.jpg","08/09/2021");
INSERT INTO images VALUES("115","https://i.imgur.com/cRYH0bn.png","09/09/2021");
INSERT INTO images VALUES("116","https://i.imgur.com/Ek7eVDQ.png","11/09/2021");
INSERT INTO images VALUES("117","https://i.imgur.com/NxZjkFp.png","11/09/2021");
INSERT INTO images VALUES("118","https://i.imgur.com/0fgwJr8.jpg","11/09/2021");
INSERT INTO images VALUES("119","https://i.imgur.com/JGiwztm.jpg","11/09/2021");
INSERT INTO images VALUES("120","https://i.imgur.com/Xv2kPEk.png","11/09/2021");
INSERT INTO images VALUES("121","https://i.imgur.com/ur6z3K2.jpg","11/09/2021");
INSERT INTO images VALUES("122","https://i.imgur.com/GqNFPX6.jpg","11/09/2021");
INSERT INTO images VALUES("123","https://i.imgur.com/V8woZYR.jpg","12/09/2021");
INSERT INTO images VALUES("124","https://i.imgur.com/bATVrPu.jpg","12/09/2021");
INSERT INTO images VALUES("125","https://i.imgur.com/rcaX80i.jpg","12/09/2021");
INSERT INTO images VALUES("126","https://i.imgur.com/rqMowDH.gif","12/09/2021");
INSERT INTO images VALUES("127","https://i.imgur.com/bmhikhy.jpg","12/09/2021");
INSERT INTO images VALUES("128","https://i.imgur.com/9aBpYle.jpg","12/09/2021");
INSERT INTO images VALUES("129","https://i.imgur.com/gkLGIGw.jpg","12/09/2021");
INSERT INTO images VALUES("130","https://i.imgur.com/3xMlblf.jpg","12/09/2021");
INSERT INTO images VALUES("131","https://i.imgur.com/y1BZPh7.jpg","12/09/2021");
INSERT INTO images VALUES("132","https://i.imgur.com/pFqjVf9.png","13/09/2021");
INSERT INTO images VALUES("133","https://i.imgur.com/Dq7z4wh.jpg","13/09/2021");
INSERT INTO images VALUES("134","https://i.imgur.com/C34KS2S.png","13/09/2021");
INSERT INTO images VALUES("135","https://i.imgur.com/xlJscJM.png","13/09/2021");
INSERT INTO images VALUES("136","https://i.imgur.com/cQhz156.jpg","13/09/2021");
INSERT INTO images VALUES("137","https://i.imgur.com/5E8wrxj.png","14/09/2021");
INSERT INTO images VALUES("138","https://i.imgur.com/D5FJM1Y.png","14/09/2021");
INSERT INTO images VALUES("139","https://i.imgur.com/DCKdYJR.png","14/09/2021");
INSERT INTO images VALUES("140","https://i.imgur.com/knN8Mjj.jpg","15/09/2021");
INSERT INTO images VALUES("141","https://i.imgur.com/hOoiZsZ.png","15/09/2021");
INSERT INTO images VALUES("142","https://i.imgur.com/qXBoZ6s.jpg","15/09/2021");
INSERT INTO images VALUES("143","https://i.imgur.com/X2CBye3.jpg","15/09/2021");
INSERT INTO images VALUES("144","https://i.imgur.com/QT5fs5U.gif","16/09/2021");
INSERT INTO images VALUES("145","https://i.imgur.com/MlAXfZI.jpg","16/09/2021");
INSERT INTO images VALUES("146","https://i.imgur.com/hJJKJkF.jpg","17/09/2021");
INSERT INTO images VALUES("147","https://i.imgur.com/Svg4R14.jpg","17/09/2021");
INSERT INTO images VALUES("148","https://i.imgur.com/FXo9WPi.jpg","17/09/2021");
INSERT INTO images VALUES("149","https://i.imgur.com/HqqEVSD.jpg","17/09/2021");
INSERT INTO images VALUES("150","https://i.imgur.com/xrouNek.jpg","17/09/2021");
INSERT INTO images VALUES("151","https://i.imgur.com/9xsGMQE.jpg","17/09/2021");
INSERT INTO images VALUES("152","https://i.imgur.com/kyDi0EF.jpg","17/09/2021");
INSERT INTO images VALUES("153","https://i.imgur.com/ixBB5To.jpg","17/09/2021");
INSERT INTO images VALUES("154","https://i.imgur.com/mcavhdh.png","17/09/2021");
INSERT INTO images VALUES("155","https://i.imgur.com/iuiyOtj.png","17/09/2021");
INSERT INTO images VALUES("156","https://i.imgur.com/J3Sjjup.png","18/09/2021");
INSERT INTO images VALUES("157","https://i.imgur.com/YuPxD46.png","18/09/2021");
INSERT INTO images VALUES("158","https://i.imgur.com/5GfhYRh.jpg","19/09/2021");
INSERT INTO images VALUES("159","https://i.imgur.com/xbk3Xwj.jpg","19/09/2021");
INSERT INTO images VALUES("160","https://i.imgur.com/kz8TB1j.jpg","19/09/2021");
INSERT INTO images VALUES("161","https://i.imgur.com/AdI6V7r.png","21/09/2021");
INSERT INTO images VALUES("162","https://i.imgur.com/utFF1Po.jpg","21/09/2021");
INSERT INTO images VALUES("163","https://i.imgur.com/ls4WSwZ.jpg","21/09/2021");
INSERT INTO images VALUES("164","https://i.imgur.com/jxhThaP.jpg","21/09/2021");
INSERT INTO images VALUES("165","https://i.imgur.com/FZ0v3D4.jpg","21/09/2021");
INSERT INTO images VALUES("166","https://i.imgur.com/petnL3L.jpg","21/09/2021");
INSERT INTO images VALUES("167","https://i.imgur.com/Ssu27vZ.jpg","21/09/2021");
INSERT INTO images VALUES("168","https://i.imgur.com/HmNf64H.jpg","21/09/2021");
INSERT INTO images VALUES("169","https://i.imgur.com/TFxWela.png","21/09/2021");
INSERT INTO images VALUES("170","https://i.imgur.com/7RNYpc4.jpg","21/09/2021");
INSERT INTO images VALUES("171","https://i.imgur.com/barGh7x.jpg","21/09/2021");
INSERT INTO images VALUES("172","https://i.imgur.com/JLaskVE.jpg","21/09/2021");
INSERT INTO images VALUES("173","https://i.imgur.com/QRTETRJ.png","21/09/2021");
INSERT INTO images VALUES("174","https://i.imgur.com/8w5JGao.jpg","21/09/2021");
INSERT INTO images VALUES("175","https://i.imgur.com/niDtZTG.png","21/09/2021");
INSERT INTO images VALUES("176","https://i.imgur.com/QugU3Hi.png","22/09/2021");
INSERT INTO images VALUES("177","https://i.imgur.com/RvMJGXf.png","22/09/2021");
INSERT INTO images VALUES("178","https://i.imgur.com/UrjqWl6.jpg","22/09/2021");
INSERT INTO images VALUES("179","https://i.imgur.com/7yPuKeT.jpg","22/09/2021");
INSERT INTO images VALUES("180","https://i.imgur.com/bsP48U0.png","22/09/2021");
INSERT INTO images VALUES("181","https://i.imgur.com/upVtErO.jpg","23/09/2021");
INSERT INTO images VALUES("182","https://i.imgur.com/cECsP9r.jpg","23/09/2021");
INSERT INTO images VALUES("183","https://i.imgur.com/ciwgoJw.jpg","23/09/2021");
INSERT INTO images VALUES("184","https://i.imgur.com/0OyBiPP.jpg","23/09/2021");
INSERT INTO images VALUES("185","https://i.imgur.com/1Dl35na.jpg","23/09/2021");
INSERT INTO images VALUES("186","https://i.imgur.com/INKYq7Y.jpg","23/09/2021");
INSERT INTO images VALUES("187","https://i.imgur.com/rRRVXt0.jpg","23/09/2021");
INSERT INTO images VALUES("188","https://i.imgur.com/Cm8klRA.jpg","23/09/2021");
INSERT INTO images VALUES("189","https://i.imgur.com/mjb5v2b.png","23/09/2021");
INSERT INTO images VALUES("190","https://i.imgur.com/Tuvt88A.jpg","23/09/2021");
INSERT INTO images VALUES("191","https://i.imgur.com/8NmxI0y.jpg","23/09/2021");
INSERT INTO images VALUES("192","https://i.imgur.com/hAQIqxZ.jpg","23/09/2021");
INSERT INTO images VALUES("193","https://i.imgur.com/koZy1wF.jpg","23/09/2021");
INSERT INTO images VALUES("194","https://i.imgur.com/W9l4q6T.jpg","23/09/2021");
INSERT INTO images VALUES("195","https://i.imgur.com/c3Aixfi.jpg","23/09/2021");
INSERT INTO images VALUES("196","https://i.imgur.com/PfCvyFi.jpg","23/09/2021");
INSERT INTO images VALUES("197","https://i.imgur.com/MxHD3YW.jpg","24/09/2021");
INSERT INTO images VALUES("198","https://i.imgur.com/rI8hAj8.jpg","24/09/2021");
INSERT INTO images VALUES("199","https://i.imgur.com/xHasLg8.jpg","24/09/2021");
INSERT INTO images VALUES("200","https://i.imgur.com/KrU7HnY.jpg","24/09/2021");
INSERT INTO images VALUES("201","https://i.imgur.com/DY2CKec.jpg","24/09/2021");
INSERT INTO images VALUES("202","https://i.imgur.com/5NdB27y.jpg","24/09/2021");
INSERT INTO images VALUES("203","https://i.imgur.com/BNke5dZ.jpg","24/09/2021");
INSERT INTO images VALUES("204","https://i.imgur.com/fp1phno.jpg","24/09/2021");
INSERT INTO images VALUES("205","https://i.imgur.com/0av3U0f.jpg","25/09/2021");
INSERT INTO images VALUES("206","https://i.imgur.com/pL0Symk.jpg","25/09/2021");
INSERT INTO images VALUES("207","https://i.imgur.com/EJBQJjx.jpg","25/09/2021");
INSERT INTO images VALUES("208","https://i.imgur.com/ox1Owtr.jpg","25/09/2021");
INSERT INTO images VALUES("209","https://i.imgur.com/BG4us0g.jpg","25/09/2021");
INSERT INTO images VALUES("210","https://i.imgur.com/5ayWLYL.jpg","25/09/2021");
INSERT INTO images VALUES("211","https://i.imgur.com/LtUjCZg.png","25/09/2021");
INSERT INTO images VALUES("212","https://i.imgur.com/x0OBhbn.jpg","25/09/2021");
INSERT INTO images VALUES("213","https://i.imgur.com/dli2Nix.jpg","25/09/2021");
INSERT INTO images VALUES("214","https://i.imgur.com/AXGbpeh.jpg","25/09/2021");
INSERT INTO images VALUES("215","https://i.imgur.com/vTy9oF4.jpg","25/09/2021");
INSERT INTO images VALUES("216","https://i.imgur.com/NG0JuzZ.jpg","25/09/2021");
INSERT INTO images VALUES("217","https://i.imgur.com/7Ds980L.jpg","25/09/2021");
INSERT INTO images VALUES("218","https://i.imgur.com/Iggv095.jpg","25/09/2021");
INSERT INTO images VALUES("219","https://i.imgur.com/QEWKjiS.jpg","25/09/2021");
INSERT INTO images VALUES("220","https://i.imgur.com/LTWdU0X.gif","25/09/2021");
INSERT INTO images VALUES("221","https://i.imgur.com/zgpruLm.jpg","25/09/2021");
INSERT INTO images VALUES("222","https://i.imgur.com/ciqF0KE.jpg","25/09/2021");
INSERT INTO images VALUES("223","https://i.imgur.com/Nw0dYVj.png","25/09/2021");
INSERT INTO images VALUES("224","https://i.imgur.com/bx9jxpq.jpg","25/09/2021");
INSERT INTO images VALUES("225","https://i.imgur.com/0ywVuMJ.jpg","25/09/2021");
INSERT INTO images VALUES("226","https://i.imgur.com/EEQIX5m.jpg","25/09/2021");
INSERT INTO images VALUES("227","https://i.imgur.com/unyXaH0.jpg","26/09/2021");
INSERT INTO images VALUES("228","https://i.imgur.com/YJJTqA7.jpg","26/09/2021");
INSERT INTO images VALUES("229","https://i.imgur.com/sZTqtHu.jpg","27/09/2021");
INSERT INTO images VALUES("230","https://i.imgur.com/C3tJMgI.jpg","27/09/2021");
INSERT INTO images VALUES("231","https://i.imgur.com/7e7DRW0.jpg","27/09/2021");
INSERT INTO images VALUES("232","https://i.imgur.com/Tic1owc.jpg","27/09/2021");
INSERT INTO images VALUES("233","https://i.imgur.com/ClEcyDH.jpg","27/09/2021");
INSERT INTO images VALUES("234","https://i.imgur.com/wcOmmoy.jpg","27/09/2021");
INSERT INTO images VALUES("235","https://i.imgur.com/yZgDxVW.jpg","27/09/2021");
INSERT INTO images VALUES("236","https://i.imgur.com/uDknjxJ.jpg","27/09/2021");
INSERT INTO images VALUES("237","https://i.imgur.com/lr0tH5d.png","27/09/2021");
INSERT INTO images VALUES("238","https://i.imgur.com/b8Wz9y0.jpg","27/09/2021");
INSERT INTO images VALUES("239","https://i.imgur.com/kvpXtk1.png","27/09/2021");
INSERT INTO images VALUES("240","https://i.imgur.com/H4KsUIK.jpg","28/09/2021");
INSERT INTO images VALUES("241","https://i.imgur.com/xzhgi4H.jpg","28/09/2021");
INSERT INTO images VALUES("242","https://i.imgur.com/MUgW7eD.jpg","28/09/2021");
INSERT INTO images VALUES("243","https://i.imgur.com/8TY8T3j.jpg","28/09/2021");
INSERT INTO images VALUES("244","https://i.imgur.com/RH8vMiF.jpg","28/09/2021");
INSERT INTO images VALUES("245","https://i.imgur.com/NdECvPP.png","28/09/2021");
INSERT INTO images VALUES("246","https://i.imgur.com/Vb8HTyS.jpg","28/09/2021");
INSERT INTO images VALUES("247","https://i.imgur.com/ow9MTFB.jpg","28/09/2021");
INSERT INTO images VALUES("248","https://i.imgur.com/8Pv2Bkq.png","28/09/2021");
INSERT INTO images VALUES("249","https://i.imgur.com/duNi0TB.png","29/09/2021");
INSERT INTO images VALUES("250","https://i.imgur.com/DyF6b5u.gif","29/09/2021");
INSERT INTO images VALUES("251","https://i.imgur.com/9XuXgdq.gif","29/09/2021");
INSERT INTO images VALUES("252","https://i.imgur.com/U5T0gKK.gif","29/09/2021");
INSERT INTO images VALUES("253","https://i.imgur.com/4YYwLvw.jpg","30/09/2021");
INSERT INTO images VALUES("254","https://i.imgur.com/iCU5oxz.jpg","30/09/2021");
INSERT INTO images VALUES("255","https://i.imgur.com/94Q6qNS.jpg","30/09/2021");
INSERT INTO images VALUES("256","https://i.imgur.com/kgfH15U.jpg","30/09/2021");
INSERT INTO images VALUES("257","https://i.imgur.com/DFDOPXJ.jpg","30/09/2021");
INSERT INTO images VALUES("258","https://i.imgur.com/CqnEsVA.jpg","30/09/2021");
INSERT INTO images VALUES("259","https://i.imgur.com/6QOzexQ.jpg","30/09/2021");
INSERT INTO images VALUES("260","https://i.imgur.com/4ge1V2D.jpg","01/10/2021");
INSERT INTO images VALUES("261","https://i.imgur.com/17EXALK.jpg","01/10/2021");
INSERT INTO images VALUES("262","https://i.imgur.com/fyprk93.jpg","01/10/2021");
INSERT INTO images VALUES("263","https://i.imgur.com/Tdw0A8z.jpg","02/10/2021");
INSERT INTO images VALUES("264","https://i.imgur.com/eKiCbrx.jpg","03/10/2021");
INSERT INTO images VALUES("265","https://i.imgur.com/7ogpQOo.jpg","03/10/2021");
INSERT INTO images VALUES("266","https://i.imgur.com/iwwsLom.jpg","03/10/2021");
INSERT INTO images VALUES("267","https://i.imgur.com/JQhS9Cq.jpg","03/10/2021");
INSERT INTO images VALUES("268","https://i.imgur.com/uJjhcUS.jpg","03/10/2021");
INSERT INTO images VALUES("269","https://i.imgur.com/woLPd9G.jpg","03/10/2021");
INSERT INTO images VALUES("270","https://i.imgur.com/7dIoKSG.png","04/10/2021");
INSERT INTO images VALUES("271","https://i.imgur.com/onwMate.png","04/10/2021");
INSERT INTO images VALUES("272","https://i.imgur.com/fdeMAxm.png","04/10/2021");
INSERT INTO images VALUES("273","https://i.imgur.com/4psRSxn.jpg","06/10/2021");
INSERT INTO images VALUES("274","https://i.imgur.com/eivmK4k.jpg","06/10/2021");
INSERT INTO images VALUES("275","https://i.imgur.com/S81FksD.jpg","06/10/2021");
INSERT INTO images VALUES("276","https://i.imgur.com/LlqT02Y.jpg","06/10/2021");
INSERT INTO images VALUES("277","https://i.imgur.com/0avwow3.jpg","06/10/2021");
INSERT INTO images VALUES("278","https://i.imgur.com/0UfdLKX.jpg","07/10/2021");
INSERT INTO images VALUES("279","https://i.imgur.com/EkHU9Tk.jpg","07/10/2021");
INSERT INTO images VALUES("280","https://i.imgur.com/wEr7GSe.jpg","07/10/2021");
INSERT INTO images VALUES("281","https://i.imgur.com/JJMGOEV.jpg","07/10/2021");
INSERT INTO images VALUES("282","https://i.imgur.com/TeEXT60.jpg","09/10/2021");
INSERT INTO images VALUES("283","https://i.imgur.com/wdUxPzf.jpg","09/10/2021");
INSERT INTO images VALUES("284","https://i.imgur.com/0xHsAhJ.png","11/10/2021");
INSERT INTO images VALUES("285","https://i.imgur.com/VScVaGO.jpg","13/10/2021");
INSERT INTO images VALUES("286","https://i.imgur.com/5LwaWqK.png","13/10/2021");
INSERT INTO images VALUES("287","https://i.imgur.com/MQTWaKH.png","13/10/2021");
INSERT INTO images VALUES("288","https://i.imgur.com/HmRGnmR.png","13/10/2021");
INSERT INTO images VALUES("289","https://i.imgur.com/HOXp9ku.jpg","13/10/2021");
INSERT INTO images VALUES("290","https://i.imgur.com/VoUsnGl.jpg","13/10/2021");
INSERT INTO images VALUES("291","https://i.imgur.com/mS0hLvL.png","13/10/2021");
INSERT INTO images VALUES("292","https://i.imgur.com/EwoDXec.jpg","13/10/2021");
INSERT INTO images VALUES("293","https://i.imgur.com/qjlhsaO.jpg","14/10/2021");
INSERT INTO images VALUES("294","https://i.imgur.com/tNmXSTq.jpg","14/10/2021");
INSERT INTO images VALUES("295","https://i.imgur.com/J95zlOr.jpg","14/10/2021");
INSERT INTO images VALUES("296","https://i.imgur.com/MXRuvHu.jpg","14/10/2021");
INSERT INTO images VALUES("297","https://i.imgur.com/IJtRVMa.jpg","14/10/2021");
INSERT INTO images VALUES("298","https://i.imgur.com/iwPlntR.jpg","14/10/2021");
INSERT INTO images VALUES("299","https://i.imgur.com/JyU0Bvw.jpg","14/10/2021");
INSERT INTO images VALUES("300","https://i.imgur.com/w91odo0.jpg","14/10/2021");
INSERT INTO images VALUES("301","https://i.imgur.com/3MRZA5B.jpg","14/10/2021");



CREATE TABLE `images_helpers` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=816 DEFAULT CHARSET=latin1;

INSERT INTO images_helpers VALUES("4","https://i.imgur.com/XGwq4u5.png","02/10/2021");
INSERT INTO images_helpers VALUES("811","https://i.imgur.com/X0T4HlW.png","14/10/2021");
INSERT INTO images_helpers VALUES("812","https://i.imgur.com/F4CQ7Kv.png","14/10/2021");
INSERT INTO images_helpers VALUES("813","https://i.imgur.com/AM3fTx8.png","14/10/2021");
INSERT INTO images_helpers VALUES("814","https://i.imgur.com/JtAGwdz.png","14/10/2021");
INSERT INTO images_helpers VALUES("334","https://i.imgur.com/WZgybIl.png","09/10/2021");
INSERT INTO images_helpers VALUES("335","https://i.imgur.com/bC8wAOK.png","09/10/2021");
INSERT INTO images_helpers VALUES("336","https://i.imgur.com/liYXCce.png","09/10/2021");
INSERT INTO images_helpers VALUES("337","https://i.imgur.com/Ef0EKSJ.png","09/10/2021");
INSERT INTO images_helpers VALUES("338","https://i.imgur.com/3P3pbps.png","09/10/2021");
INSERT INTO images_helpers VALUES("339","https://i.imgur.com/7SDZVmK.png","09/10/2021");
INSERT INTO images_helpers VALUES("340","https://i.imgur.com/JnRuk6y.png","09/10/2021");
INSERT INTO images_helpers VALUES("341","https://i.imgur.com/6rHCpcc.png","09/10/2021");
INSERT INTO images_helpers VALUES("342","https://i.imgur.com/g8UkCYE.png","09/10/2021");
INSERT INTO images_helpers VALUES("343","https://i.imgur.com/pXNhteZ.png","09/10/2021");
INSERT INTO images_helpers VALUES("344","https://i.imgur.com/hOB30eW.png","09/10/2021");
INSERT INTO images_helpers VALUES("345","https://i.imgur.com/LYiqIJk.png","09/10/2021");
INSERT INTO images_helpers VALUES("346","https://i.imgur.com/HI4nDgm.png","09/10/2021");
INSERT INTO images_helpers VALUES("347","https://i.imgur.com/IYm9Q9l.png","09/10/2021");
INSERT INTO images_helpers VALUES("348","https://i.imgur.com/Hghgsbr.png","09/10/2021");
INSERT INTO images_helpers VALUES("349","https://i.imgur.com/GxfmNHb.png","09/10/2021");
INSERT INTO images_helpers VALUES("350","https://i.imgur.com/FOivLWz.png","09/10/2021");
INSERT INTO images_helpers VALUES("351","https://i.imgur.com/ZRIF2sZ.png","09/10/2021");
INSERT INTO images_helpers VALUES("352","https://i.imgur.com/WMEvycE.png","09/10/2021");
INSERT INTO images_helpers VALUES("353","https://i.imgur.com/FTpuFmB.png","09/10/2021");
INSERT INTO images_helpers VALUES("354","https://i.imgur.com/S4CVQac.png","09/10/2021");
INSERT INTO images_helpers VALUES("355","https://i.imgur.com/tdTO3xJ.png","09/10/2021");
INSERT INTO images_helpers VALUES("356","https://i.imgur.com/9e6pD6P.png","09/10/2021");
INSERT INTO images_helpers VALUES("357","https://i.imgur.com/WAl5Uyb.png","09/10/2021");
INSERT INTO images_helpers VALUES("358","https://i.imgur.com/KbeZ0lZ.png","09/10/2021");
INSERT INTO images_helpers VALUES("359","https://i.imgur.com/nnJYlZz.png","09/10/2021");
INSERT INTO images_helpers VALUES("360","https://i.imgur.com/ioEabbK.png","09/10/2021");
INSERT INTO images_helpers VALUES("361","https://i.imgur.com/OdzqI9R.png","09/10/2021");
INSERT INTO images_helpers VALUES("362","https://i.imgur.com/qhsnQC6.png","09/10/2021");
INSERT INTO images_helpers VALUES("363","https://i.imgur.com/ViG6AGn.png","09/10/2021");
INSERT INTO images_helpers VALUES("364","https://i.imgur.com/jMBz0ZI.png","09/10/2021");
INSERT INTO images_helpers VALUES("365","https://i.imgur.com/nQ41JOE.png","09/10/2021");
INSERT INTO images_helpers VALUES("366","https://i.imgur.com/yRQtLJG.png","09/10/2021");
INSERT INTO images_helpers VALUES("367","https://i.imgur.com/HeP6Gx5.png","09/10/2021");
INSERT INTO images_helpers VALUES("368","https://i.imgur.com/g7CMqwc.png","09/10/2021");
INSERT INTO images_helpers VALUES("369","https://i.imgur.com/tveIG5U.png","09/10/2021");
INSERT INTO images_helpers VALUES("370","https://i.imgur.com/AD9bZha.png","09/10/2021");
INSERT INTO images_helpers VALUES("371","https://i.imgur.com/XML9FBf.png","09/10/2021");
INSERT INTO images_helpers VALUES("372","https://i.imgur.com/rd68MlH.png","09/10/2021");
INSERT INTO images_helpers VALUES("373","https://i.imgur.com/Ly7nkvq.png","09/10/2021");
INSERT INTO images_helpers VALUES("374","https://i.imgur.com/N8ElCjr.png","09/10/2021");
INSERT INTO images_helpers VALUES("375","https://i.imgur.com/fpQGbjm.png","09/10/2021");
INSERT INTO images_helpers VALUES("376","https://i.imgur.com/lbyyuOJ.png","09/10/2021");
INSERT INTO images_helpers VALUES("377","https://i.imgur.com/fdHYKYs.png","09/10/2021");
INSERT INTO images_helpers VALUES("378","https://i.imgur.com/PTTLYGN.png","09/10/2021");
INSERT INTO images_helpers VALUES("379","https://i.imgur.com/fv7KkQa.png","09/10/2021");
INSERT INTO images_helpers VALUES("380","https://i.imgur.com/w8TEwKZ.png","09/10/2021");
INSERT INTO images_helpers VALUES("381","https://i.imgur.com/pzBaJi3.png","09/10/2021");
INSERT INTO images_helpers VALUES("382","https://i.imgur.com/xT1v8e1.png","09/10/2021");
INSERT INTO images_helpers VALUES("383","https://i.imgur.com/SzJvNsC.png","09/10/2021");
INSERT INTO images_helpers VALUES("384","https://i.imgur.com/l5YzhjR.png","09/10/2021");
INSERT INTO images_helpers VALUES("385","https://i.imgur.com/mQmMisL.png","09/10/2021");
INSERT INTO images_helpers VALUES("386","https://i.imgur.com/AMBvYHL.png","09/10/2021");
INSERT INTO images_helpers VALUES("387","https://i.imgur.com/MlINvj9.png","09/10/2021");
INSERT INTO images_helpers VALUES("388","https://i.imgur.com/nkG8gCP.png","09/10/2021");
INSERT INTO images_helpers VALUES("389","https://i.imgur.com/NZ9tw1M.png","09/10/2021");
INSERT INTO images_helpers VALUES("390","https://i.imgur.com/kKjeWcf.png","09/10/2021");
INSERT INTO images_helpers VALUES("391","https://i.imgur.com/tW7v5a1.png","09/10/2021");
INSERT INTO images_helpers VALUES("392","https://i.imgur.com/HJYAfY9.png","09/10/2021");
INSERT INTO images_helpers VALUES("393","https://i.imgur.com/Tkrxk18.png","09/10/2021");
INSERT INTO images_helpers VALUES("394","https://i.imgur.com/B0XXON1.png","09/10/2021");
INSERT INTO images_helpers VALUES("395","https://i.imgur.com/o4e1m4x.png","09/10/2021");
INSERT INTO images_helpers VALUES("396","https://i.imgur.com/q83eUeI.png","09/10/2021");
INSERT INTO images_helpers VALUES("397","https://i.imgur.com/v1k8IP6.png","09/10/2021");
INSERT INTO images_helpers VALUES("398","https://i.imgur.com/e63tlYz.png","09/10/2021");
INSERT INTO images_helpers VALUES("399","https://i.imgur.com/l2BUCIu.png","09/10/2021");
INSERT INTO images_helpers VALUES("400","https://i.imgur.com/Xs6FvjP.png","09/10/2021");
INSERT INTO images_helpers VALUES("401","https://i.imgur.com/MM7SoZQ.png","09/10/2021");
INSERT INTO images_helpers VALUES("402","https://i.imgur.com/duTPOqZ.png","09/10/2021");
INSERT INTO images_helpers VALUES("403","https://i.imgur.com/mt2noRd.png","09/10/2021");
INSERT INTO images_helpers VALUES("404","https://i.imgur.com/wNN9ueo.png","09/10/2021");
INSERT INTO images_helpers VALUES("405","https://i.imgur.com/ygqnUp0.png","09/10/2021");
INSERT INTO images_helpers VALUES("406","https://i.imgur.com/ek075Ao.png","09/10/2021");
INSERT INTO images_helpers VALUES("407","https://i.imgur.com/1H7Dx7z.png","09/10/2021");
INSERT INTO images_helpers VALUES("408","https://i.imgur.com/aWrApuz.png","09/10/2021");
INSERT INTO images_helpers VALUES("409","https://i.imgur.com/M5UzDuQ.png","09/10/2021");
INSERT INTO images_helpers VALUES("410","https://i.imgur.com/lRDdBR2.png","09/10/2021");
INSERT INTO images_helpers VALUES("411","https://i.imgur.com/l3Y0Flc.png","09/10/2021");
INSERT INTO images_helpers VALUES("412","https://i.imgur.com/xfP1jnk.png","09/10/2021");
INSERT INTO images_helpers VALUES("417","https://i.imgur.com/qESkqNN.png","09/10/2021");
INSERT INTO images_helpers VALUES("414","https://i.imgur.com/j1oaQV3.png","09/10/2021");
INSERT INTO images_helpers VALUES("416","https://i.imgur.com/TUazp36.png","09/10/2021");
INSERT INTO images_helpers VALUES("418","https://i.imgur.com/UejbSb1.png","09/10/2021");
INSERT INTO images_helpers VALUES("419","https://i.imgur.com/QGvejRr.png","09/10/2021");
INSERT INTO images_helpers VALUES("420","https://i.imgur.com/szL4ucz.png","09/10/2021");
INSERT INTO images_helpers VALUES("421","https://i.imgur.com/7ZaT0IU.png","09/10/2021");
INSERT INTO images_helpers VALUES("422","https://i.imgur.com/6odxl6a.png","09/10/2021");
INSERT INTO images_helpers VALUES("423","https://i.imgur.com/VT2NENR.png","09/10/2021");
INSERT INTO images_helpers VALUES("424","https://i.imgur.com/g1SNiEC.png","10/10/2021");
INSERT INTO images_helpers VALUES("425","https://i.imgur.com/zzbuxcd.png","10/10/2021");
INSERT INTO images_helpers VALUES("426","https://i.imgur.com/ZYPFjtJ.png","10/10/2021");
INSERT INTO images_helpers VALUES("427","https://i.imgur.com/CaHqeqE.png","10/10/2021");
INSERT INTO images_helpers VALUES("428","https://i.imgur.com/zfk4O9w.png","10/10/2021");
INSERT INTO images_helpers VALUES("429","https://i.imgur.com/Y9eoBOr.png","10/10/2021");
INSERT INTO images_helpers VALUES("430","https://i.imgur.com/eaM29SH.png","10/10/2021");
INSERT INTO images_helpers VALUES("431","https://i.imgur.com/POyd1dD.png","10/10/2021");
INSERT INTO images_helpers VALUES("432","https://i.imgur.com/Bi0LJPL.png","10/10/2021");
INSERT INTO images_helpers VALUES("433","https://i.imgur.com/pvZOsHd.png","10/10/2021");
INSERT INTO images_helpers VALUES("434","https://i.imgur.com/RS5aA2z.png","10/10/2021");
INSERT INTO images_helpers VALUES("435","https://i.imgur.com/flmnUKF.png","10/10/2021");
INSERT INTO images_helpers VALUES("436","https://i.imgur.com/WXnrC4I.png","10/10/2021");
INSERT INTO images_helpers VALUES("437","https://i.imgur.com/GF9FViL.png","10/10/2021");
INSERT INTO images_helpers VALUES("438","https://i.imgur.com/qIn7k4T.png","10/10/2021");
INSERT INTO images_helpers VALUES("439","https://i.imgur.com/O2mMqQZ.png","10/10/2021");
INSERT INTO images_helpers VALUES("440","https://i.imgur.com/yPZzybu.png","10/10/2021");
INSERT INTO images_helpers VALUES("441","https://i.imgur.com/eUrpcFg.png","10/10/2021");
INSERT INTO images_helpers VALUES("442","https://i.imgur.com/SfxvocO.png","10/10/2021");
INSERT INTO images_helpers VALUES("443","https://i.imgur.com/8dzgM8P.png","10/10/2021");
INSERT INTO images_helpers VALUES("444","https://i.imgur.com/TXVraRE.png","10/10/2021");
INSERT INTO images_helpers VALUES("445","https://i.imgur.com/O1wA5QY.png","10/10/2021");
INSERT INTO images_helpers VALUES("446","https://i.imgur.com/Xz1Ilbt.png","10/10/2021");
INSERT INTO images_helpers VALUES("447","https://i.imgur.com/JGjmqQJ.png","10/10/2021");
INSERT INTO images_helpers VALUES("448","https://i.imgur.com/6LpFk7Z.png","10/10/2021");
INSERT INTO images_helpers VALUES("449","https://i.imgur.com/dyjQxpL.png","10/10/2021");
INSERT INTO images_helpers VALUES("450","https://i.imgur.com/tI7o4GY.png","10/10/2021");
INSERT INTO images_helpers VALUES("451","https://i.imgur.com/KGfb2ne.png","10/10/2021");
INSERT INTO images_helpers VALUES("452","https://i.imgur.com/Ts4jmcf.png","10/10/2021");
INSERT INTO images_helpers VALUES("453","https://i.imgur.com/F5B9nWa.png","10/10/2021");
INSERT INTO images_helpers VALUES("454","https://i.imgur.com/Te4PW7i.png","10/10/2021");
INSERT INTO images_helpers VALUES("455","https://i.imgur.com/CjohgtK.png","10/10/2021");
INSERT INTO images_helpers VALUES("456","https://i.imgur.com/Y9LwNlz.png","10/10/2021");
INSERT INTO images_helpers VALUES("457","https://i.imgur.com/MjqCi92.png","10/10/2021");
INSERT INTO images_helpers VALUES("458","https://i.imgur.com/5GOsGRl.png","10/10/2021");
INSERT INTO images_helpers VALUES("459","https://i.imgur.com/ijd77Lb.png","10/10/2021");
INSERT INTO images_helpers VALUES("460","https://i.imgur.com/OdeqneN.png","10/10/2021");
INSERT INTO images_helpers VALUES("461","https://i.imgur.com/Tho37qA.png","10/10/2021");
INSERT INTO images_helpers VALUES("462","https://i.imgur.com/MHtISFe.png","10/10/2021");
INSERT INTO images_helpers VALUES("463","https://i.imgur.com/fnpp5xh.png","10/10/2021");
INSERT INTO images_helpers VALUES("464","https://i.imgur.com/8LvMIaW.png","10/10/2021");
INSERT INTO images_helpers VALUES("465","https://i.imgur.com/dblCtAl.png","10/10/2021");
INSERT INTO images_helpers VALUES("466","https://i.imgur.com/t4xVvpn.png","10/10/2021");
INSERT INTO images_helpers VALUES("467","https://i.imgur.com/mN3MVPi.png","10/10/2021");
INSERT INTO images_helpers VALUES("468","https://i.imgur.com/6wZeMAz.png","10/10/2021");
INSERT INTO images_helpers VALUES("469","https://i.imgur.com/7YKyiGs.png","10/10/2021");
INSERT INTO images_helpers VALUES("470","https://i.imgur.com/HVHwPce.png","10/10/2021");
INSERT INTO images_helpers VALUES("471","https://i.imgur.com/4Qz1AMv.png","10/10/2021");
INSERT INTO images_helpers VALUES("472","https://i.imgur.com/3aIKWQl.png","10/10/2021");
INSERT INTO images_helpers VALUES("473","https://i.imgur.com/kasnxXu.png","10/10/2021");
INSERT INTO images_helpers VALUES("474","https://i.imgur.com/m2CvlOV.png","10/10/2021");
INSERT INTO images_helpers VALUES("475","https://i.imgur.com/wTH9xkm.png","11/10/2021");
INSERT INTO images_helpers VALUES("476","https://i.imgur.com/dR0iZeV.png","11/10/2021");
INSERT INTO images_helpers VALUES("477","https://i.imgur.com/9NEY3l0.png","11/10/2021");
INSERT INTO images_helpers VALUES("478","https://i.imgur.com/Sf2Jam7.png","11/10/2021");
INSERT INTO images_helpers VALUES("479","https://i.imgur.com/v1bRxOO.png","11/10/2021");
INSERT INTO images_helpers VALUES("480","https://i.imgur.com/0UjGITW.png","11/10/2021");
INSERT INTO images_helpers VALUES("481","https://i.imgur.com/SaEYlLX.png","11/10/2021");
INSERT INTO images_helpers VALUES("482","https://i.imgur.com/Sw3Ra7E.png","11/10/2021");
INSERT INTO images_helpers VALUES("483","https://i.imgur.com/xE4qYsO.png","11/10/2021");
INSERT INTO images_helpers VALUES("484","https://i.imgur.com/7gw2vpq.png","11/10/2021");
INSERT INTO images_helpers VALUES("485","https://i.imgur.com/AOpD0i7.png","11/10/2021");
INSERT INTO images_helpers VALUES("486","https://i.imgur.com/gR2UBju.png","11/10/2021");
INSERT INTO images_helpers VALUES("487","https://i.imgur.com/CKWu76n.png","11/10/2021");
INSERT INTO images_helpers VALUES("488","https://i.imgur.com/cbJ416I.png","11/10/2021");
INSERT INTO images_helpers VALUES("489","https://i.imgur.com/Auhionc.png","11/10/2021");
INSERT INTO images_helpers VALUES("490","https://i.imgur.com/QnHMrNL.png","11/10/2021");
INSERT INTO images_helpers VALUES("491","https://i.imgur.com/pYywA6Q.png","11/10/2021");
INSERT INTO images_helpers VALUES("492","https://i.imgur.com/huJtczj.png","11/10/2021");
INSERT INTO images_helpers VALUES("493","https://i.imgur.com/FU5F6pf.png","11/10/2021");
INSERT INTO images_helpers VALUES("494","https://i.imgur.com/TkV2lon.png","11/10/2021");
INSERT INTO images_helpers VALUES("495","https://i.imgur.com/U0SaKPv.png","11/10/2021");
INSERT INTO images_helpers VALUES("496","https://i.imgur.com/FSKvdgP.png","11/10/2021");
INSERT INTO images_helpers VALUES("497","https://i.imgur.com/Ouq0gK0.png","11/10/2021");
INSERT INTO images_helpers VALUES("498","https://i.imgur.com/h6NmArs.png","11/10/2021");
INSERT INTO images_helpers VALUES("499","https://i.imgur.com/F4ULcsK.png","11/10/2021");
INSERT INTO images_helpers VALUES("500","https://i.imgur.com/Ln37urk.png","11/10/2021");
INSERT INTO images_helpers VALUES("501","https://i.imgur.com/FiOsWCf.png","11/10/2021");
INSERT INTO images_helpers VALUES("502","https://i.imgur.com/2L6be9w.png","11/10/2021");
INSERT INTO images_helpers VALUES("503","https://i.imgur.com/vHlNqLx.png","11/10/2021");
INSERT INTO images_helpers VALUES("504","https://i.imgur.com/GPQYSJR.png","11/10/2021");
INSERT INTO images_helpers VALUES("505","https://i.imgur.com/ucQOgIn.png","11/10/2021");
INSERT INTO images_helpers VALUES("506","https://i.imgur.com/dM9FuP5.png","11/10/2021");
INSERT INTO images_helpers VALUES("507","https://i.imgur.com/zEMWszg.png","11/10/2021");
INSERT INTO images_helpers VALUES("508","https://i.imgur.com/hT4zdzi.png","11/10/2021");
INSERT INTO images_helpers VALUES("509","https://i.imgur.com/gPHmC9G.png","11/10/2021");
INSERT INTO images_helpers VALUES("510","https://i.imgur.com/8KWwg1L.png","11/10/2021");
INSERT INTO images_helpers VALUES("511","https://i.imgur.com/YH8y2ht.png","11/10/2021");
INSERT INTO images_helpers VALUES("512","https://i.imgur.com/7sqzxaV.png","11/10/2021");
INSERT INTO images_helpers VALUES("513","https://i.imgur.com/a9g8ttD.png","11/10/2021");
INSERT INTO images_helpers VALUES("514","https://i.imgur.com/tiUqEPv.png","11/10/2021");
INSERT INTO images_helpers VALUES("515","https://i.imgur.com/DhzUDY7.png","11/10/2021");
INSERT INTO images_helpers VALUES("516","https://i.imgur.com/4vZRMQK.png","11/10/2021");
INSERT INTO images_helpers VALUES("517","https://i.imgur.com/PZyA5cc.png","11/10/2021");
INSERT INTO images_helpers VALUES("518","https://i.imgur.com/uluxHHA.png","11/10/2021");
INSERT INTO images_helpers VALUES("519","https://i.imgur.com/z0jG8vz.png","11/10/2021");
INSERT INTO images_helpers VALUES("520","https://i.imgur.com/HundoCY.png","11/10/2021");
INSERT INTO images_helpers VALUES("521","https://i.imgur.com/4DpIbFo.png","11/10/2021");
INSERT INTO images_helpers VALUES("522","https://i.imgur.com/lvdl1mq.png","11/10/2021");
INSERT INTO images_helpers VALUES("523","https://i.imgur.com/yy8LxA0.png","11/10/2021");
INSERT INTO images_helpers VALUES("524","https://i.imgur.com/KTWZOWp.png","11/10/2021");
INSERT INTO images_helpers VALUES("525","https://i.imgur.com/irxcQiM.png","11/10/2021");
INSERT INTO images_helpers VALUES("526","https://i.imgur.com/9SlhIbY.png","11/10/2021");
INSERT INTO images_helpers VALUES("527","https://i.imgur.com/lpCl40N.png","11/10/2021");
INSERT INTO images_helpers VALUES("528","https://i.imgur.com/IZ8RWPP.png","11/10/2021");
INSERT INTO images_helpers VALUES("529","https://i.imgur.com/KYOsBYa.png","11/10/2021");
INSERT INTO images_helpers VALUES("530","https://i.imgur.com/va6wA7O.png","11/10/2021");
INSERT INTO images_helpers VALUES("531","https://i.imgur.com/2xKKA6X.png","11/10/2021");
INSERT INTO images_helpers VALUES("532","https://i.imgur.com/USnTbMO.png","11/10/2021");
INSERT INTO images_helpers VALUES("533","https://i.imgur.com/eYCvqVn.png","11/10/2021");
INSERT INTO images_helpers VALUES("534","https://i.imgur.com/GMkkcMs.png","11/10/2021");
INSERT INTO images_helpers VALUES("535","https://i.imgur.com/KNJFdn2.png","11/10/2021");
INSERT INTO images_helpers VALUES("536","https://i.imgur.com/hJ0TGbk.png","11/10/2021");
INSERT INTO images_helpers VALUES("537","https://i.imgur.com/kLu3A7T.png","11/10/2021");
INSERT INTO images_helpers VALUES("538","https://i.imgur.com/v79QvHS.png","11/10/2021");
INSERT INTO images_helpers VALUES("539","https://i.imgur.com/2hskJNa.png","11/10/2021");
INSERT INTO images_helpers VALUES("540","https://i.imgur.com/pqn5qJa.png","11/10/2021");
INSERT INTO images_helpers VALUES("541","https://i.imgur.com/3dsTHPq.png","11/10/2021");
INSERT INTO images_helpers VALUES("542","https://i.imgur.com/FCQ97ZR.png","11/10/2021");
INSERT INTO images_helpers VALUES("543","https://i.imgur.com/vWOkPEe.png","11/10/2021");
INSERT INTO images_helpers VALUES("544","https://i.imgur.com/Y4i2iSp.png","11/10/2021");
INSERT INTO images_helpers VALUES("545","https://i.imgur.com/TVQopQy.png","11/10/2021");
INSERT INTO images_helpers VALUES("546","https://i.imgur.com/yLtsaiV.png","11/10/2021");
INSERT INTO images_helpers VALUES("547","https://i.imgur.com/qXSnmnz.png","11/10/2021");
INSERT INTO images_helpers VALUES("548","https://i.imgur.com/L6WQhkD.png","11/10/2021");
INSERT INTO images_helpers VALUES("549","https://i.imgur.com/AeaKzGx.png","11/10/2021");
INSERT INTO images_helpers VALUES("550","https://i.imgur.com/EsI4P47.png","11/10/2021");
INSERT INTO images_helpers VALUES("551","https://i.imgur.com/NiuzZbX.png","11/10/2021");
INSERT INTO images_helpers VALUES("552","https://i.imgur.com/OuGYq7r.png","11/10/2021");
INSERT INTO images_helpers VALUES("553","https://i.imgur.com/yCAH3Kv.png","11/10/2021");
INSERT INTO images_helpers VALUES("554","https://i.imgur.com/ixWr9yt.png","11/10/2021");
INSERT INTO images_helpers VALUES("555","https://i.imgur.com/6Br3nFF.png","11/10/2021");
INSERT INTO images_helpers VALUES("556","https://i.imgur.com/dLlUzKb.png","11/10/2021");
INSERT INTO images_helpers VALUES("557","https://i.imgur.com/2msrMI3.png","11/10/2021");
INSERT INTO images_helpers VALUES("558","https://i.imgur.com/RYqn1Hq.png","11/10/2021");
INSERT INTO images_helpers VALUES("559","https://i.imgur.com/oyzDqAM.png","11/10/2021");
INSERT INTO images_helpers VALUES("560","https://i.imgur.com/RynjeOv.png","11/10/2021");
INSERT INTO images_helpers VALUES("561","https://i.imgur.com/S4GL8Xz.png","11/10/2021");
INSERT INTO images_helpers VALUES("562","https://i.imgur.com/2hNZB2t.png","11/10/2021");
INSERT INTO images_helpers VALUES("563","https://i.imgur.com/saQ3lIX.png","11/10/2021");
INSERT INTO images_helpers VALUES("564","https://i.imgur.com/4FcuOW9.png","11/10/2021");
INSERT INTO images_helpers VALUES("565","https://i.imgur.com/hBfcmjQ.png","11/10/2021");
INSERT INTO images_helpers VALUES("566","https://i.imgur.com/Byyyovj.png","11/10/2021");
INSERT INTO images_helpers VALUES("567","https://i.imgur.com/aYFKJRN.png","11/10/2021");
INSERT INTO images_helpers VALUES("568","https://i.imgur.com/vMQ5Gnr.png","11/10/2021");
INSERT INTO images_helpers VALUES("569","https://i.imgur.com/xrCm6o8.png","11/10/2021");
INSERT INTO images_helpers VALUES("570","https://i.imgur.com/oxjV5Xk.png","11/10/2021");
INSERT INTO images_helpers VALUES("571","https://i.imgur.com/7e1YKnj.png","11/10/2021");
INSERT INTO images_helpers VALUES("572","https://i.imgur.com/sW6ernd.png","11/10/2021");
INSERT INTO images_helpers VALUES("573","https://i.imgur.com/ERuK2U2.png","11/10/2021");
INSERT INTO images_helpers VALUES("574","https://i.imgur.com/Qxgk6iY.png","11/10/2021");
INSERT INTO images_helpers VALUES("575","https://i.imgur.com/XwxqYlL.png","11/10/2021");
INSERT INTO images_helpers VALUES("576","https://i.imgur.com/7u6I7vj.png","11/10/2021");
INSERT INTO images_helpers VALUES("577","https://i.imgur.com/XD21HMd.png","11/10/2021");
INSERT INTO images_helpers VALUES("578","https://i.imgur.com/ajUw7lV.png","11/10/2021");
INSERT INTO images_helpers VALUES("579","https://i.imgur.com/GubitAp.png","11/10/2021");
INSERT INTO images_helpers VALUES("580","https://i.imgur.com/7EDlrSi.png","11/10/2021");
INSERT INTO images_helpers VALUES("581","https://i.imgur.com/IwPQP5x.png","11/10/2021");
INSERT INTO images_helpers VALUES("582","https://i.imgur.com/3vPcOd2.png","11/10/2021");
INSERT INTO images_helpers VALUES("583","https://i.imgur.com/XrvfAh3.png","11/10/2021");
INSERT INTO images_helpers VALUES("584","https://i.imgur.com/RMZsN2c.png","11/10/2021");
INSERT INTO images_helpers VALUES("585","https://i.imgur.com/fUMkg0U.png","11/10/2021");
INSERT INTO images_helpers VALUES("586","https://i.imgur.com/TRw2TRm.png","11/10/2021");
INSERT INTO images_helpers VALUES("587","https://i.imgur.com/D66lTt9.png","11/10/2021");
INSERT INTO images_helpers VALUES("588","https://i.imgur.com/2m2vMNO.png","11/10/2021");
INSERT INTO images_helpers VALUES("589","https://i.imgur.com/TTUYeVD.png","11/10/2021");
INSERT INTO images_helpers VALUES("590","https://i.imgur.com/3FkVXPl.png","11/10/2021");
INSERT INTO images_helpers VALUES("591","https://i.imgur.com/JMQQey4.png","11/10/2021");
INSERT INTO images_helpers VALUES("592","https://i.imgur.com/3X2Kfxf.png","11/10/2021");
INSERT INTO images_helpers VALUES("593","https://i.imgur.com/kNDnBoP.png","11/10/2021");
INSERT INTO images_helpers VALUES("594","https://i.imgur.com/bDmGFtb.png","11/10/2021");
INSERT INTO images_helpers VALUES("595","https://i.imgur.com/nHLrl5O.png","11/10/2021");
INSERT INTO images_helpers VALUES("596","https://i.imgur.com/rTv05mk.png","11/10/2021");
INSERT INTO images_helpers VALUES("597","https://i.imgur.com/oOvFKH9.png","11/10/2021");
INSERT INTO images_helpers VALUES("598","https://i.imgur.com/XUVY0hy.png","11/10/2021");
INSERT INTO images_helpers VALUES("599","https://i.imgur.com/570k0wo.png","11/10/2021");
INSERT INTO images_helpers VALUES("600","https://i.imgur.com/ZN5PdaK.png","11/10/2021");
INSERT INTO images_helpers VALUES("601","https://i.imgur.com/nmg6rPz.png","11/10/2021");
INSERT INTO images_helpers VALUES("602","https://i.imgur.com/d35HRsc.png","11/10/2021");
INSERT INTO images_helpers VALUES("603","https://i.imgur.com/CaEnF7F.png","12/10/2021");
INSERT INTO images_helpers VALUES("604","https://i.imgur.com/wnX1NYI.png","12/10/2021");
INSERT INTO images_helpers VALUES("605","https://i.imgur.com/cXPUFGV.png","12/10/2021");
INSERT INTO images_helpers VALUES("606","https://i.imgur.com/RX794qx.png","12/10/2021");
INSERT INTO images_helpers VALUES("607","https://i.imgur.com/jchWBO5.png","12/10/2021");
INSERT INTO images_helpers VALUES("608","https://i.imgur.com/DZFEnpm.png","12/10/2021");
INSERT INTO images_helpers VALUES("609","https://i.imgur.com/kGqsUo0.png","12/10/2021");
INSERT INTO images_helpers VALUES("610","https://i.imgur.com/gezPKvz.png","12/10/2021");
INSERT INTO images_helpers VALUES("611","https://i.imgur.com/UYxBZXh.png","12/10/2021");
INSERT INTO images_helpers VALUES("612","https://i.imgur.com/qVkqS6D.png","12/10/2021");
INSERT INTO images_helpers VALUES("613","https://i.imgur.com/DpP3NYm.png","12/10/2021");
INSERT INTO images_helpers VALUES("614","https://i.imgur.com/7Z1VUok.png","12/10/2021");
INSERT INTO images_helpers VALUES("615","https://i.imgur.com/6HGQT7u.png","12/10/2021");
INSERT INTO images_helpers VALUES("616","https://i.imgur.com/HCq5uzj.png","12/10/2021");
INSERT INTO images_helpers VALUES("617","https://i.imgur.com/Y3BPc5H.png","12/10/2021");
INSERT INTO images_helpers VALUES("618","https://i.imgur.com/gfuId2e.png","12/10/2021");
INSERT INTO images_helpers VALUES("619","https://i.imgur.com/d8zVuoH.png","12/10/2021");
INSERT INTO images_helpers VALUES("620","https://i.imgur.com/Nvsc1EP.png","12/10/2021");
INSERT INTO images_helpers VALUES("621","https://i.imgur.com/aNsxLSV.png","12/10/2021");
INSERT INTO images_helpers VALUES("622","https://i.imgur.com/aubBgIi.png","12/10/2021");
INSERT INTO images_helpers VALUES("623","https://i.imgur.com/arVGzOt.png","12/10/2021");
INSERT INTO images_helpers VALUES("624","https://i.imgur.com/ed7C7Sx.png","12/10/2021");
INSERT INTO images_helpers VALUES("625","https://i.imgur.com/PvkPOXF.png","12/10/2021");
INSERT INTO images_helpers VALUES("626","https://i.imgur.com/mrAE9Ts.png","12/10/2021");
INSERT INTO images_helpers VALUES("627","https://i.imgur.com/77qNRQy.png","12/10/2021");
INSERT INTO images_helpers VALUES("628","https://i.imgur.com/3u23kqi.png","12/10/2021");
INSERT INTO images_helpers VALUES("629","https://i.imgur.com/uyHy67e.png","12/10/2021");
INSERT INTO images_helpers VALUES("630","https://i.imgur.com/94LagvA.png","12/10/2021");
INSERT INTO images_helpers VALUES("631","https://i.imgur.com/JUIb7rb.png","12/10/2021");
INSERT INTO images_helpers VALUES("632","https://i.imgur.com/Nzz1Gx4.png","12/10/2021");
INSERT INTO images_helpers VALUES("633","https://i.imgur.com/sKzB8l7.png","12/10/2021");
INSERT INTO images_helpers VALUES("634","https://i.imgur.com/ivgu2CI.png","12/10/2021");
INSERT INTO images_helpers VALUES("635","https://i.imgur.com/2OgxcAe.png","12/10/2021");
INSERT INTO images_helpers VALUES("636","https://i.imgur.com/LaqwZgP.png","12/10/2021");
INSERT INTO images_helpers VALUES("637","https://i.imgur.com/e0yjdbz.png","12/10/2021");
INSERT INTO images_helpers VALUES("638","https://i.imgur.com/liEHIGd.png","12/10/2021");
INSERT INTO images_helpers VALUES("639","https://i.imgur.com/uLzopT6.png","12/10/2021");
INSERT INTO images_helpers VALUES("640","https://i.imgur.com/lt3FaY2.png","12/10/2021");
INSERT INTO images_helpers VALUES("641","https://i.imgur.com/YXQU4qZ.png","12/10/2021");
INSERT INTO images_helpers VALUES("642","https://i.imgur.com/9YQzfq3.png","12/10/2021");
INSERT INTO images_helpers VALUES("643","https://i.imgur.com/i7sJCzK.png","12/10/2021");
INSERT INTO images_helpers VALUES("644","https://i.imgur.com/HrsWKwY.png","12/10/2021");
INSERT INTO images_helpers VALUES("645","https://i.imgur.com/SRe5u1X.png","12/10/2021");
INSERT INTO images_helpers VALUES("646","https://i.imgur.com/1csqnna.png","12/10/2021");
INSERT INTO images_helpers VALUES("647","https://i.imgur.com/5Pnt4t9.png","12/10/2021");
INSERT INTO images_helpers VALUES("648","https://i.imgur.com/qAyzlye.png","12/10/2021");
INSERT INTO images_helpers VALUES("649","https://i.imgur.com/UeNhrPg.png","12/10/2021");
INSERT INTO images_helpers VALUES("650","https://i.imgur.com/qIBcNZ6.png","12/10/2021");
INSERT INTO images_helpers VALUES("651","https://i.imgur.com/xjLLRbN.png","12/10/2021");
INSERT INTO images_helpers VALUES("652","https://i.imgur.com/PTisYwl.png","12/10/2021");
INSERT INTO images_helpers VALUES("653","https://i.imgur.com/9myJ2Xa.png","12/10/2021");
INSERT INTO images_helpers VALUES("654","https://i.imgur.com/UAGofWr.png","12/10/2021");
INSERT INTO images_helpers VALUES("655","https://i.imgur.com/JwRS5ac.png","12/10/2021");
INSERT INTO images_helpers VALUES("656","https://i.imgur.com/td7S5dn.png","12/10/2021");
INSERT INTO images_helpers VALUES("657","https://i.imgur.com/zDmVLRN.png","12/10/2021");
INSERT INTO images_helpers VALUES("658","https://i.imgur.com/Lj0Co7r.png","12/10/2021");
INSERT INTO images_helpers VALUES("659","https://i.imgur.com/tRKvQrG.png","12/10/2021");
INSERT INTO images_helpers VALUES("660","https://i.imgur.com/VQyrq8K.png","12/10/2021");
INSERT INTO images_helpers VALUES("661","https://i.imgur.com/ghWtYb8.png","12/10/2021");
INSERT INTO images_helpers VALUES("662","https://i.imgur.com/3dS6PlB.png","12/10/2021");
INSERT INTO images_helpers VALUES("663","https://i.imgur.com/CQpHNxz.png","12/10/2021");
INSERT INTO images_helpers VALUES("664","https://i.imgur.com/Y3WlYpg.png","12/10/2021");
INSERT INTO images_helpers VALUES("665","https://i.imgur.com/icm93rJ.png","12/10/2021");
INSERT INTO images_helpers VALUES("666","https://i.imgur.com/Wjw5tCc.png","12/10/2021");
INSERT INTO images_helpers VALUES("667","https://i.imgur.com/efFa8ys.png","12/10/2021");
INSERT INTO images_helpers VALUES("668","https://i.imgur.com/5G5VbY1.png","12/10/2021");
INSERT INTO images_helpers VALUES("669","https://i.imgur.com/R1jaGw8.png","12/10/2021");
INSERT INTO images_helpers VALUES("670","https://i.imgur.com/mfBjJ9B.png","12/10/2021");
INSERT INTO images_helpers VALUES("671","https://i.imgur.com/yEfZ8Sm.png","12/10/2021");
INSERT INTO images_helpers VALUES("672","https://i.imgur.com/oYZXGqY.png","12/10/2021");
INSERT INTO images_helpers VALUES("673","https://i.imgur.com/1skhpWC.png","12/10/2021");
INSERT INTO images_helpers VALUES("674","https://i.imgur.com/NOe1TDL.png","12/10/2021");
INSERT INTO images_helpers VALUES("675","https://i.imgur.com/EQnbJTk.png","12/10/2021");
INSERT INTO images_helpers VALUES("676","https://i.imgur.com/cOkMWrY.png","12/10/2021");
INSERT INTO images_helpers VALUES("677","https://i.imgur.com/h84O0VA.png","12/10/2021");
INSERT INTO images_helpers VALUES("678","https://i.imgur.com/D0tpxPK.png","12/10/2021");
INSERT INTO images_helpers VALUES("679","https://i.imgur.com/uaxQp81.png","12/10/2021");
INSERT INTO images_helpers VALUES("680","https://i.imgur.com/3MBv78U.png","12/10/2021");
INSERT INTO images_helpers VALUES("681","https://i.imgur.com/HunNV1r.png","12/10/2021");
INSERT INTO images_helpers VALUES("682","https://i.imgur.com/bJmnh35.png","12/10/2021");
INSERT INTO images_helpers VALUES("683","https://i.imgur.com/5gmSw7J.png","12/10/2021");
INSERT INTO images_helpers VALUES("684","https://i.imgur.com/jPx7GON.png","12/10/2021");
INSERT INTO images_helpers VALUES("685","https://i.imgur.com/UXYMhPB.png","12/10/2021");
INSERT INTO images_helpers VALUES("686","https://i.imgur.com/K4uirYO.png","12/10/2021");
INSERT INTO images_helpers VALUES("687","https://i.imgur.com/fH5HJ7a.png","12/10/2021");
INSERT INTO images_helpers VALUES("688","https://i.imgur.com/PgsIdn5.png","12/10/2021");
INSERT INTO images_helpers VALUES("689","https://i.imgur.com/5WJyCSk.png","12/10/2021");
INSERT INTO images_helpers VALUES("690","https://i.imgur.com/n0IoDZy.png","12/10/2021");
INSERT INTO images_helpers VALUES("691","https://i.imgur.com/qYMdnTd.png","12/10/2021");
INSERT INTO images_helpers VALUES("692","https://i.imgur.com/K1q5n7W.png","12/10/2021");
INSERT INTO images_helpers VALUES("693","https://i.imgur.com/EEbLZpQ.png","13/10/2021");
INSERT INTO images_helpers VALUES("694","https://i.imgur.com/aG4FHNh.png","13/10/2021");
INSERT INTO images_helpers VALUES("695","https://i.imgur.com/BbmoSa7.png","13/10/2021");
INSERT INTO images_helpers VALUES("696","https://i.imgur.com/4m7mY4n.png","13/10/2021");
INSERT INTO images_helpers VALUES("697","https://i.imgur.com/a0rP42f.png","13/10/2021");
INSERT INTO images_helpers VALUES("698","https://i.imgur.com/ob9HkcY.png","13/10/2021");
INSERT INTO images_helpers VALUES("699","https://i.imgur.com/yPL0Wz1.png","13/10/2021");
INSERT INTO images_helpers VALUES("700","https://i.imgur.com/VCLiArS.png","13/10/2021");
INSERT INTO images_helpers VALUES("701","https://i.imgur.com/OfhwS59.png","13/10/2021");
INSERT INTO images_helpers VALUES("702","https://i.imgur.com/Y0R0heK.png","13/10/2021");
INSERT INTO images_helpers VALUES("703","https://i.imgur.com/WcJwFSV.png","13/10/2021");
INSERT INTO images_helpers VALUES("704","https://i.imgur.com/LDaEINQ.png","13/10/2021");
INSERT INTO images_helpers VALUES("705","https://i.imgur.com/mlYDJfQ.png","13/10/2021");
INSERT INTO images_helpers VALUES("706","https://i.imgur.com/MyAdHmW.png","13/10/2021");
INSERT INTO images_helpers VALUES("707","https://i.imgur.com/9Iveln0.png","13/10/2021");
INSERT INTO images_helpers VALUES("708","https://i.imgur.com/2UBTmK5.png","13/10/2021");
INSERT INTO images_helpers VALUES("709","https://i.imgur.com/6RBK3Wl.png","13/10/2021");
INSERT INTO images_helpers VALUES("710","https://i.imgur.com/PDCkqBB.png","13/10/2021");
INSERT INTO images_helpers VALUES("711","https://i.imgur.com/os2VaF0.png","13/10/2021");
INSERT INTO images_helpers VALUES("712","https://i.imgur.com/mpBG5dy.png","13/10/2021");
INSERT INTO images_helpers VALUES("713","https://i.imgur.com/iakEtuO.png","13/10/2021");
INSERT INTO images_helpers VALUES("714","https://i.imgur.com/WYu9xOy.png","13/10/2021");
INSERT INTO images_helpers VALUES("715","https://i.imgur.com/m6GI5B7.png","13/10/2021");
INSERT INTO images_helpers VALUES("716","https://i.imgur.com/BEuPQpb.png","13/10/2021");
INSERT INTO images_helpers VALUES("717","https://i.imgur.com/yXyc2Be.png","13/10/2021");
INSERT INTO images_helpers VALUES("718","https://i.imgur.com/2Eqsx3p.png","13/10/2021");
INSERT INTO images_helpers VALUES("719","https://i.imgur.com/IbG3Yyp.png","13/10/2021");
INSERT INTO images_helpers VALUES("720","https://i.imgur.com/sohj0Yd.png","13/10/2021");
INSERT INTO images_helpers VALUES("721","https://i.imgur.com/RKGChKO.png","13/10/2021");
INSERT INTO images_helpers VALUES("722","https://i.imgur.com/x4DSRrj.png","13/10/2021");
INSERT INTO images_helpers VALUES("723","https://i.imgur.com/eFTzGlN.png","13/10/2021");
INSERT INTO images_helpers VALUES("724","https://i.imgur.com/pgYbzRR.png","13/10/2021");
INSERT INTO images_helpers VALUES("725","https://i.imgur.com/m8YmDKl.png","13/10/2021");
INSERT INTO images_helpers VALUES("726","https://i.imgur.com/cVRQXHf.png","13/10/2021");
INSERT INTO images_helpers VALUES("727","https://i.imgur.com/gPwGVw8.png","13/10/2021");
INSERT INTO images_helpers VALUES("728","https://i.imgur.com/yUNVBfZ.png","13/10/2021");
INSERT INTO images_helpers VALUES("729","https://i.imgur.com/yrV59Zw.png","13/10/2021");
INSERT INTO images_helpers VALUES("730","https://i.imgur.com/7w8vuX7.png","13/10/2021");
INSERT INTO images_helpers VALUES("731","https://i.imgur.com/ssJaGqi.png","13/10/2021");
INSERT INTO images_helpers VALUES("732","https://i.imgur.com/K1JwlZM.png","13/10/2021");
INSERT INTO images_helpers VALUES("733","https://i.imgur.com/jhu69yy.png","13/10/2021");
INSERT INTO images_helpers VALUES("734","https://i.imgur.com/5LepG9o.png","13/10/2021");
INSERT INTO images_helpers VALUES("735","https://i.imgur.com/nBPjUjG.png","13/10/2021");
INSERT INTO images_helpers VALUES("736","https://i.imgur.com/H4qEGDc.png","13/10/2021");
INSERT INTO images_helpers VALUES("737","https://i.imgur.com/CsWAXcc.png","13/10/2021");
INSERT INTO images_helpers VALUES("738","https://i.imgur.com/ZTOZIdU.png","13/10/2021");
INSERT INTO images_helpers VALUES("739","https://i.imgur.com/psI6Gb6.png","13/10/2021");
INSERT INTO images_helpers VALUES("740","https://i.imgur.com/X6YlNoU.png","13/10/2021");
INSERT INTO images_helpers VALUES("741","https://i.imgur.com/Fw514CY.png","13/10/2021");
INSERT INTO images_helpers VALUES("742","https://i.imgur.com/qn83ZDQ.png","13/10/2021");
INSERT INTO images_helpers VALUES("743","https://i.imgur.com/vdgyq6Z.png","13/10/2021");
INSERT INTO images_helpers VALUES("744","https://i.imgur.com/otL24GU.png","13/10/2021");
INSERT INTO images_helpers VALUES("745","https://i.imgur.com/VYJeH77.png","13/10/2021");
INSERT INTO images_helpers VALUES("746","https://i.imgur.com/r3qdnVS.png","13/10/2021");
INSERT INTO images_helpers VALUES("747","https://i.imgur.com/dPJbKdM.png","13/10/2021");
INSERT INTO images_helpers VALUES("748","https://i.imgur.com/QMcTJWO.png","13/10/2021");
INSERT INTO images_helpers VALUES("749","https://i.imgur.com/9sm2uln.png","13/10/2021");
INSERT INTO images_helpers VALUES("750","https://i.imgur.com/ZAD3quS.png","13/10/2021");
INSERT INTO images_helpers VALUES("751","https://i.imgur.com/5f5uRxC.png","13/10/2021");
INSERT INTO images_helpers VALUES("753","https://i.imgur.com/s95xmoB.png","13/10/2021");
INSERT INTO images_helpers VALUES("754","https://i.imgur.com/7MAw5Zt.png","13/10/2021");
INSERT INTO images_helpers VALUES("755","https://i.imgur.com/rQSHfJk.png","13/10/2021");
INSERT INTO images_helpers VALUES("756","https://i.imgur.com/4fHqC35.png","13/10/2021");
INSERT INTO images_helpers VALUES("757","https://i.imgur.com/IhYbBAF.png","13/10/2021");
INSERT INTO images_helpers VALUES("758","https://i.imgur.com/zDmU5CQ.png","13/10/2021");
INSERT INTO images_helpers VALUES("759","https://i.imgur.com/RQuDheK.png","13/10/2021");
INSERT INTO images_helpers VALUES("760","https://i.imgur.com/kuWtEXO.png","13/10/2021");
INSERT INTO images_helpers VALUES("761","https://i.imgur.com/IPhGoaQ.png","13/10/2021");
INSERT INTO images_helpers VALUES("762","https://i.imgur.com/CoPzvc8.png","13/10/2021");
INSERT INTO images_helpers VALUES("763","https://i.imgur.com/C5Az4Zk.png","13/10/2021");
INSERT INTO images_helpers VALUES("764","https://i.imgur.com/PAxAi42.png","13/10/2021");
INSERT INTO images_helpers VALUES("765","https://i.imgur.com/zqCyxp0.png","13/10/2021");
INSERT INTO images_helpers VALUES("766","https://i.imgur.com/1SwaxeP.png","13/10/2021");
INSERT INTO images_helpers VALUES("767","https://i.imgur.com/ZX2YAu4.png","13/10/2021");
INSERT INTO images_helpers VALUES("769","https://i.imgur.com/UTEW5L0.png","13/10/2021");
INSERT INTO images_helpers VALUES("770","https://i.imgur.com/WCRXa4N.png","13/10/2021");
INSERT INTO images_helpers VALUES("771","https://i.imgur.com/zavjMB7.png","13/10/2021");
INSERT INTO images_helpers VALUES("772","https://i.imgur.com/ZDHl9YT.png","13/10/2021");
INSERT INTO images_helpers VALUES("773","https://i.imgur.com/lRJruW7.png","13/10/2021");
INSERT INTO images_helpers VALUES("774","https://i.imgur.com/yoYlmhh.png","13/10/2021");
INSERT INTO images_helpers VALUES("775","https://i.imgur.com/IbJigbT.png","13/10/2021");
INSERT INTO images_helpers VALUES("776","https://i.imgur.com/25x1cpw.png","13/10/2021");
INSERT INTO images_helpers VALUES("777","https://i.imgur.com/ZtEeHpa.png","13/10/2021");
INSERT INTO images_helpers VALUES("778","https://i.imgur.com/3bdAkFJ.png","13/10/2021");
INSERT INTO images_helpers VALUES("779","https://i.imgur.com/rRulptt.png","13/10/2021");
INSERT INTO images_helpers VALUES("780","https://i.imgur.com/DNoIgr1.png","13/10/2021");
INSERT INTO images_helpers VALUES("781","https://i.imgur.com/Vzwv3WM.png","13/10/2021");
INSERT INTO images_helpers VALUES("782","https://i.imgur.com/n6WY3Qp.png","13/10/2021");
INSERT INTO images_helpers VALUES("783","https://i.imgur.com/gYFdYkd.png","13/10/2021");
INSERT INTO images_helpers VALUES("784","https://i.imgur.com/YMblH8B.png","13/10/2021");
INSERT INTO images_helpers VALUES("785","https://i.imgur.com/zdU5hSr.png","13/10/2021");
INSERT INTO images_helpers VALUES("786","https://i.imgur.com/xrXVe8B.png","13/10/2021");
INSERT INTO images_helpers VALUES("787","https://i.imgur.com/KYLBaKh.png","13/10/2021");
INSERT INTO images_helpers VALUES("788","https://i.imgur.com/g2FIhXa.png","13/10/2021");
INSERT INTO images_helpers VALUES("789","https://i.imgur.com/t8yVka4.png","13/10/2021");
INSERT INTO images_helpers VALUES("790","https://i.imgur.com/S7kj83d.png","13/10/2021");
INSERT INTO images_helpers VALUES("791","https://i.imgur.com/q28hKzf.png","13/10/2021");
INSERT INTO images_helpers VALUES("792","https://i.imgur.com/BYuHZeu.png","13/10/2021");
INSERT INTO images_helpers VALUES("793","https://i.imgur.com/sWpMloD.png","13/10/2021");
INSERT INTO images_helpers VALUES("794","https://i.imgur.com/3TbFScO.png","13/10/2021");
INSERT INTO images_helpers VALUES("795","https://i.imgur.com/2qCuYQl.png","13/10/2021");
INSERT INTO images_helpers VALUES("800","https://i.imgur.com/qe8JusX.png","13/10/2021");
INSERT INTO images_helpers VALUES("804","https://i.imgur.com/Gn4UpTi.png","14/10/2021");
INSERT INTO images_helpers VALUES("805","https://i.imgur.com/rg8tByS.png","14/10/2021");
INSERT INTO images_helpers VALUES("806","https://i.imgur.com/PEyaOsa.png","14/10/2021");
INSERT INTO images_helpers VALUES("807","https://i.imgur.com/t2i0y6P.png","14/10/2021");
INSERT INTO images_helpers VALUES("808","https://i.imgur.com/w93kKWs.png","14/10/2021");
INSERT INTO images_helpers VALUES("809","https://i.imgur.com/f5XKGdh.png","14/10/2021");
INSERT INTO images_helpers VALUES("810","https://i.imgur.com/T4TwEiH.png","14/10/2021");



CREATE TABLE `kekocity_respuestas` (
  `ID` int(120) NOT NULL,
  `keko_nombre` varchar(1200) NOT NULL,
  `respuesta` varchar(1200) NOT NULL,
  `pregunta` varchar(1200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE `kekoguias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(50) CHARACTER SET utf8 NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `resumen` varchar(126) CHARACTER SET utf8 NOT NULL,
  `categoria` varchar(500) CHARACTER SET utf8 NOT NULL,
  `fecha` varchar(12) CHARACTER SET utf8 NOT NULL,
  `imagen` varchar(4000) CHARACTER SET utf8 NOT NULL,
  `noticia` varchar(4000) CHARACTER SET utf8 NOT NULL,
  `megusta` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `no_megusta` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO kekoguias VALUES("5","Krozox","�Qu� es el KekoBook?"," https://i.imgur.com/PyCN3Gb.png","280px","2021-09-20","https://images-kuinz.online/i/descarga%20%2827%29.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/imagesnew/home/logoarribawow35.png" style="width: 132px; height: 37.4px;"></p><p>El<span style="color: rgb(0, 0, 0);">&nbsp;</span><strong><span style="color: rgb(0, 0, 0);">KekoBook</span> &nbsp;</strong>es mayormente conocido como la<span style="color: rgb(184, 49, 47);">&nbsp;<strong>R</strong><strong>ed social de KekoCity</strong></span>, en el puedes ver contenido publicado por tus amigos, ya sean; imagenes,v&iacute;deos, &nbsp;pr&oacute;ximos eventos publicados por el equipo de KekoCity, entre otros.</p><p>El mismo tambi&eacute;n nos ofrece el listado completo del equipo de la ciudad, situado a la izquierda de tu pantalla.</p><p>&iexcl;Ent&eacute;rate de la &uacute;ltimas novedades!&nbsp;</p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("6","Krozox","�Qu� es el KekoCop?"," https://i.imgur.com/PyCN3Gb.png","400px","2021-09-20","https://images-kuinz.online/i/descarga%20%2827%29.png","<p><br></p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/mod1.png" style="width: 50px; height: 50px;"></p><p><span style="color: rgb(184, 49, 47);"><span style="font-size: 14px;"><u><strong>&iquest;Qu&eacute; es?</strong></u></span></span></p><p><span style="color: rgb(0, 0, 0);">El KekoCop es el nombre de la placa de los Moderadores de nivel 1, actualmente conocidos como Moderadores Becarios (Mod1).</span></p><p><span style="color: rgb(184, 49, 47);"><span style="font-size: 14px;"><u><strong>&iquest;Cu&aacute;l es la funci&oacute;n de un Mod1?</strong></u></span></span></p><p><span style="color: rgb(0, 0, 0);">La funci&oacute;n de un Moderador Becario es realizar eventos a sus rangos inferiores, es decir; Helpers, Becarios y Organizadores de eventos (Fenix Legendary / Umbrella Academy). Los mismos tambi&eacute;n se encargan de atender denuncias, moderar a los usuarios en caso de que est&eacute;n incumpliendo las normas, si realizan correctamente su trabajo, ser&aacute;n ascendidos a moderador de nivel 2. &nbsp;</span></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("7","Lauty","�Qu� es KekoSwat?","https://i.imgur.com/AKLa9yB.png","400px","2021-09-20","https://images-kuinz.online/i/look%20jeje%20%281%29.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/mod2.png" style="width: 51px; height: 51px;"></p><p><strong><u><span style="color: rgb(184, 49, 47);">&iquest;Qu&eacute; es?</span></u></strong></p><p><span style="color: rgb(0, 0, 0);">El KekoSwat es el nombre de la placa de los Moderadores de nivel 2, actualmente conocidos como Moderadores (Mod2).</span></p><p><strong><span style="color: rgb(184, 49, 47);"><u><u>&iquest;Cu&aacute;l es la funci&oacute;n de un Mod2?</u></u></span></strong></p><p><span style="color: rgb(0, 0, 0);">La funci&oacute;n de un Moderador es realizar eventos a sus rangos inferiores, es decir; Helpers, Becarios y Organizadores de eventos (Fenix Legendary / Umbrella Academy). Los mismos tambi&eacute;n se encargan de abrir centrales de ayuda, atender denuncias, moderar a los usuarios y sancionar en caso de que est&eacute;n incumpliendo las normas, si realizan correctamente su trabajo, ser&aacute;n ascendidos a moderador de nivel 3 (Encargado).</span></p>","0","0");
INSERT INTO kekoguias VALUES("9","Lauty","�Qu�  son los Encargados?","","400px","2021-09-20","https://images-kuinz.online/i/look%20jeje%20%281%29.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/mod3.png" style="width: 52px; height: 51px;"></p><p><span style="color: rgb(41, 105, 176);"><u><strong>&iquest;Qu&eacute; son?</strong></u></span></p><p>El Moderador de Oro es el nombre de la placa de los Encargados (Mod3).</p><p><span style="color: rgb(41, 105, 176);"><u><u><strong>&iquest;Cu&aacute;l es la funci&oacute;n de un Mod3?</strong></u></u></span></p><p>La &nbsp;primera funci&oacute;n de un Encargado (Mod3) es supervisar el equipo de<strong>&nbsp;Becarios , Helper&#39;s &nbsp;</strong>y<strong>&nbsp;Fenix Legendary,&nbsp;</strong>estos &nbsp;tambi&eacute;n se encargan de abrir centrales de ayuda, atender denuncias, moderar a los usuarios y sancionar en caso de que est&eacute;n incumpliendo las normas. Trabajan en conjunto y todo ascenso u descenso es acordado, tambi&eacute;n realizan entrevistas junto el equipo <strong>Staff</strong>.</p>","0","0");
INSERT INTO kekoguias VALUES("10","Krozox","�Qu� es un Staff?","","400px","2021-09-20","https://images-kuinz.online/i/descarga%20%2827%29.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/mod4.png" style="width: 52px; height: 51px;"></p><p><span style="color: rgb(44, 130, 201);"><u><strong>&iquest;Qu&eacute; son?</strong></u></span></p><p>El Staff (Mod4) es considerado el rango mas alto en el listado del equipo, y esta identificado con la placa anterior.</p><p><span style="color: rgb(44, 130, 201);"><u><u><strong>&iquest;Cu&aacute;l es la funci&oacute;n de un Mod4?</strong></u></u></span></p><p>La funci&oacute;n de un Staff son todas las anteriores, &nbsp;solo que estos tienen mas funciones, &nbsp;pueden dar <span style="color: rgb(184, 49, 47);"><strong>ipban</strong></span>, otorgar<span style="color: rgb(184, 49, 47);">&nbsp;<strong>placas especiales</strong></span> a los usuarios, entre otros. Los mismos tienen el control total de todos los rangos inferiores, es decir; <strong>Mod3</strong>,<strong>Mod2</strong>,<strong>Mod1</strong>, <strong>Helpers&nbsp;</strong>/ <strong>Becarios&nbsp;</strong>y <strong>Organizadores&nbsp;</strong><strong>de&nbsp;</strong><strong>eventos&nbsp;</strong>(Fenix Legendary / Umbrella Academy), los ascensos de moderadores son acordados por ellos en conjunto. Los staff est&aacute;n a cargo de la seguridad del juego; pueden entrar a salas sin hacer petici&oacute;n de timbre o contrase&ntilde;a para hacer supervisi&oacute;n.</p><p><br></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("22","Dracki","�Como llamar a un KekoHelper?","","400px","2021-09-21","https://v2.kekocity.com/uploads/02/7/c/2/a/e7c2a0b71e5ef05fc708dc7a78a5635d.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/helper.png" style="width: 50px;"></p><p><span style="color: rgb(44, 130, 201);">&iquest;Como llamar a un KekoHelper?</span></p><p>Para llamar a un KekoHelper primero debes ir a la parte superior a la derecha de tu pantalla donde le dar&agrave;s clic al siguiente icono :<img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/game/iconocandado.png" style="width: 25px;"></p><p>Ahora luego cuando le das clic ahi a la parte izquierda de tu pantalla te aparece un perfil le dar&agrave;s clic a la opci&ograve;n que dice : &iquest;Necesitas ayuda inmediata? Solicita ayuda a un Helper &nbsp;haciendo clic aqui, para saber mejor tiene este icono :</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/images/ayudaa.png" style="width: 65px;"></p><p>Luego te enviar&agrave; a un helper inmediatamente y podr&agrave;s resolver tus dudas/denuncias.</p>","0","0");
INSERT INTO kekoguias VALUES("11","Lauty","Apuestas en KekoCity.","https://i.imgur.com/8hpvPcY.png","300px","2021-09-20","https://images-kuinz.online/i/look%20jeje%20%281%29.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/maskeko/images/cat_5.png" style="width: 24px; height: 24px;"></p><p><span style="color: rgb(184, 49, 47);"><strong class=""><u class="">&iquest;Las apuestas son Ilegale</u></strong><strong class=""><u class="">s?</u></strong></span></p><p>Las apuestas en KekoCity est&aacute;n denominadas como<span style="color: rgb(251, 160, 38);">&nbsp;</span><span style="color: rgb(0, 0, 0);"><strong>ALEGALES</strong>.</span></p><p><span style="color: rgb(184, 49, 47);"><u><strong>&iquest;Qu&eacute; quiere decir esto?</strong></u></span></p><p>Esto significa que si usted es timado en una de estas, el moderador <strong>NO</strong>&nbsp; se har&aacute; responsable, por lo que se recomienda no apostar y participar en las &nbsp;apuestas supervisadas realizadas un moderador de la ciudad.</p>","0","0");
INSERT INTO kekoguias VALUES("12","Lauty","KekoLog","","280px","2021-09-20","https://images-kuinz.online/i/look%20jeje%20%281%29.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/game/icono.png" style="width: 46px; height: 46px;"></p><p><span style="color: rgb(41, 105, 176);"><strong>&iquest;Qu&eacute; es el Log?</strong></span></p><p>El <strong>KekoLog</strong>&nbsp; en resumen es el historial de chat &nbsp;sobre todo lo que fue conversado en una sala.</p><p><span style="color: rgb(41, 105, 176);"><strong>&iquest;Quienes pueden acceder al KekoLog?</strong></span></p><p><span style="color: rgb(0, 0, 0);">Los moderadores de la ciudad, los mismos se encargan de leer &nbsp;para la <strong>protecci&oacute;n</strong> y <strong>seguridad</strong> del usuario.</span></p>","0","0");
INSERT INTO kekoguias VALUES("13","Krozox","�Qu� es un Helper?","","400px","2021-09-20","https://images-kuinz.online/i/descarga%20%2827%29.png","<p><br></p><p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/help.png" style="width: 51px; height: 51px;"></p><p><span style="color: rgb(184, 49, 47);"><u><strong>&iquest;Qu&eacute; son?</strong></u></span></p><p>Los Helpers son el equipo de ayuda de la comunidad y est&aacute;n identificados con la placa anterior.</p><p><span style="color: rgb(184, 49, 47);"><u><u><strong>&iquest;Cu&aacute;l es la funci&oacute;n de un Helper?</strong></u></u></span></p><p>La funci&oacute;n de un Helper es casi la misma funci&oacute;n que ejerce un becario;<span style="color: rgb(0, 0, 0);">&nbsp;<strong>realizar eventos</strong></span>, participar en las aperturas de <span style="color: rgb(0, 0, 0);"><strong>centrales de ayuda</strong></span> que hacen los moderadores a diario. Tambi&eacute;n pueden <span style="color: rgb(0, 0, 0);"><strong>solventar duda</strong><strong>s</strong></span> por medio de la aplicaci&oacute;n que viene incluida con su rango.</p>","0","0");
INSERT INTO kekoguias VALUES("14","Krozox","�Qu� es un Becario?","","400px","2021-09-20","https://images-kuinz.online/i/descarga%20%2827%29.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/b.png" style="width: 48px; height: 48px;"></p><p><span style="color: rgb(184, 49, 47);"><u><strong>&iquest;Qu&eacute; son?</strong></u></span></p><p>Los Becarios est&aacute;n identificados con la placa anterior, se consideran aspirantes a Helper.</p><p><span style="color: rgb(184, 49, 47);"><u><u><strong>&iquest;Cu&aacute;l es la funci&oacute;n de un Becarios?</strong></u></u></span></p><p>La funci&oacute;n de un Becario es <span style="color: rgb(0, 0, 0);"><strong>realizar eventos</strong></span>, participar en las aperturas de <span style="color: rgb(0, 0, 0);"><strong>centrales de ayuda</strong></span> que hacen los moderadores a diario y realizar publicidad del juego en las<strong>&nbsp;<span style="color: rgb(0, 0, 0);">redes sociales</span></strong>.</p>","0","0");
INSERT INTO kekoguias VALUES("15","lChino"," �Qu� es el bazar?","","400px","2021-09-20","https://v2.kekocity.com/uploads/02/6/5/9/a/8659a24ae2ec6db54e722e0ff9659205.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/imagesnew/game/carritoicono.png" style="height: 28px; width: 28px;"></p><p><span style="color: rgb(184, 49, 47);"><u><strong>&iquest;Qu&eacute; es?</strong></u></span></p><p>Bazar conocido como la tienda &nbsp;de KekoCity, es para comprar muebles y decorar tu salas a tu gusto.</p><p><span style="color: rgb(184, 49, 47);"><u><strong>&iquest;D&oacute;nde se ubica?</strong></u></span></p><p>Est&aacute; ubicado en la barra superior a la derecha en el icono del carrito de compras.</p><p><span style="color: rgb(184, 49, 47);"><u><strong>&iquest;Para que sirve?</strong></u></span></p><p>Sirve para muchas cosas en la cual para comprar cosas como exclusivos, bloques, rares, plantas, fuentes y m&aacute;s... Para comprar tan s&oacute;lo necesitas coins/clouds para comprar cosas de las tiendas del (BAZAR), La tienda (VIP) es para comprar cosas de ah&iacute; como vez tambi&eacute;n permite para colocarte cosas de ropa (VIP) &iexcl;Decora tu sala como gustes y desees!<strong><br></strong></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("20","Lauty","�Qu� son los Clouds?","","200px","2021-09-21","https://images-kuinz.online/i/look%20jeje%20%281%29.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/images/cloud.png" style="width: 25px; height: 25px;"></p><p>Los <span style="color: rgb(250, 197, 28);"><strong>clouds</strong></span> son la moneda exclusiva de Kekocity. &nbsp;&nbsp;</p><p>Con esta, podr&aacute;s comprar furnis exclusivos y muebles de edici&oacute;n limitada.</p>","0","0");
INSERT INTO kekoguias VALUES("21","Krozox","�Qu� es Kuinz?","","350px","2021-09-21","https://images-kuinz.online/i/descarga%20%2827%29.png","<p><img class="fr-dib fr-draggable fr-fil" src="/images/logo.png" style="width: 229px; height: 57.25px;"></p><p><strong><u><span style="color: rgb(41, 105, 176);">&iquest;Qu&eacute; es?</span></u></strong></p><p>Kuinz es una fansite dedicada a kekocity donde podr&aacute;s realizar acciones que en el juego no est&aacute;n disponibles tales como una tienda de rares actualizable cada semana, un pase &eacute;lite de rares, en el cual por realizar misiones puedes disponer de mejores rares, un catalogo con gu&iacute;a de precios de rares, puedes encontrar una serie de noticias.&nbsp;</p><p><strong>Fundador:</strong> <strong><u>Rutierrez</u><span>&nbsp;</span></strong>&amp;<span>&nbsp;</span><u><strong>Krozox</strong></u><br><strong>Fecha de creaci&oacute;n:</strong> 16 de abril del 2020</p>","0","0");
INSERT INTO kekoguias VALUES("17","Dracki","�Como crear una sala?","","850px","2021-09-20","https://v2.kekocity.com/uploads/02/7/c/2/a/e7c2a0b71e5ef05fc708dc7a78a5635d.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/7/2/2/c/d722c23cdeab56b630ba4d935c26a59d.png" style="width: 100px;"></p><p><font color="#b8312f">Para crear una sala tendremos 3 opciones empezaremos por la mas b&aacute;sica/</font><span style="background-color: initial; text-align: initial;"><font color="#b8312f">f&aacute;cil</font></span></p><p>Empezaras subiendo a la parte superior izquierda de tu pantalla le daras al siguiente icono :<img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/game/casamini.png" style="width: 25px; height: 25px;"></p><p>Luego se te abrira un miniperfil al que le dar&aacute;s clic al icono :<img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/game/crearcasa.png" style="width: 18px; height: 15px;"></p><p>Luego entrar&agrave;s a la zona de crear sala eligir&aacute;s la sala/casa a tu gusto y le pondr&aacute;s tu nombre para algunas salas necesitas (VIP) lo puedes comprar en el bazar del juego tambi&eacute;n, luego cuando ya hayas elegido tu sala/casa y nombre le dar&aacute;s clic al bot&oacute;n &quot;Crear&quot;</p><p><font color="#b8312f">La segunda manera es al siguiente un poco mas f&aacute;cil!</font></p><p>Primero vas a venir al siguiente icono y le vas a dar clic lo encuentras a la parte superior derecha :<img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/game/ajustes.png" style="width: 25px;"></p><p>Luego va a parecer un miniperfil le dar&aacute;s a la opci&oacute;n que dice &nbsp;<span style="color: rgb(184, 49, 47);">&nbsp;&acute;&acute;Crear una nueva casa &acute;&acute;&nbsp;</span>luego entrar&aacute;s a la zona de crear salas/casas crearas la sala a tu gusto y le pondr&aacute;s&nbsp;el nombre a tu gusto recuerda para algunas salas/casas necesitas (VIP), luego le das donde dice &quot;Crear&quot; para finalizar la sala</p><p><br></p><p><span style="color: rgb(184, 49, 47);">Ultima manera de como crear una sala!&nbsp;</span></p><p>Empezar&aacute;s subiendo a la parte superior a la izquierda de tu pantalla le dar&aacute;s al siguiente icono :</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/home/logoarribawow35.png" style="width: 100px;"></p><p>Luego entrar&aacute;s a la kekobook y vas a ir a la parte izquierda de la sala le dar&aacute;s clic a la opci&oacute;n : &quot;Crea una casa nueva&quot; el icono es el siguiente : <span><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/app/crearcasa.png" style="width: 15px;"></span></p><p>y entrar&aacute;s nuevamente a la zona de crear sala/casa pondr&aacute;s todo a tu gusto tu sala/casa y tu nombre para la sala/casa recuerda que para algunas salas/casas necesitas tener (VIP), recuerda siempre antes de terminar de poner tu sala/casa y nombre darle al bot&oacute;n de &quot;Crear&quot; para finalizar tus ajustes.</p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("19","Lauty","�Qu� son los Coins?","","200px","2021-09-21","https://images-kuinz.online/i/look%20jeje%20%281%29.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/game/icono_coins.png" style="width: 25px; height: 25px;"></p><p><span style="color: rgb(41, 105, 176);"><strong class=""></strong></span><span style="color: rgb(0, 0, 0);">Los</span><span style="color: rgb(250, 197, 28);">&nbsp;<strong>coins</strong></span><span style="color: rgb(0, 0, 0);">&nbsp;son la moneda gratuita de Kekocity.</span></p><p><span style="color: rgb(0, 0, 0);">&nbsp;Con esta, puedes comprar todos los muebles de Kekocity excepto exclusivos y muebles de edici&oacute;n limitada.</span></p>","0","0");
INSERT INTO kekoguias VALUES("25","Krozox","Guia de emojis","","800","2021-09-21","https://images-kuinz.online/i/descarga%20%2827%29.png","<p><img src="https://v2.kekocity.com/images/icon2/smiley.gif" class="fr-dii fr-draggable">? <strong>:)</strong></p><p><img src="https://v2.kekocity.com/images/icon2/cry.gif" class="fr-dii fr-draggable">? <strong>:(</strong></p><p><img src="https://v2.kekocity.com/images/icon2/grin.gif" class="fr-dii fr-draggable">? <strong>:D</strong></p><p><img src="https://v2.kekocity.com/images/icon2/undecided.gif" class="fr-dii fr-draggable">? <strong>:|</strong></p><p><img src="https://v2.kekocity.com/images/icon2/shocked.gif" class="fr-dii fr-draggable">? <strong>:O</strong></p><p><img src="https://v2.kekocity.com/images/icon2/cool.gif" class="fr-dii fr-draggable">? <strong>:C</strong></p><p><img src="https://v2.kekocity.com/images/icon2/huh.gif" class="fr-dii fr-draggable">? <strong>:U</strong></p><p><img src="https://v2.kekocity.com/images/icon2/kiss.gif" class="fr-dii fr-draggable">?<strong>&nbsp;(L)</strong></p><p><img src="https://v2.kekocity.com/images/icon2/wink.gif" class="fr-dii fr-draggable">? <strong>:P</strong></p><p><img src="https://v2.kekocity.com/images/icon2/cheesy.gif" class="fr-dii fr-draggable">? <strong>:!</strong></p><p><img src="https://v2.kekocity.com/images/icon2/rolleyes.gif" class="fr-dii fr-draggable">?<strong>&nbsp;</strong><strong>:?</strong></p><p><img src="https://v2.kekocity.com/images/icon2/embarrassed.gif" class="fr-dii fr-draggable">? <strong>:L</strong></p><p><img src="https://v2.kekocity.com/images/icon2/lipsrsealed.gif" class="fr-dii fr-draggable">? :<strong>X</strong></p><p><img src="https://v2.kekocity.com/images/icon2/sad.gif" class="fr-dii fr-draggable">? <strong>:S</strong></p><p><img src="https://v2.kekocity.com/images/icon2/angry.gif" class="fr-dii fr-draggable">?<strong>&nbsp;:@</strong></p><p><img src="https://v2.kekocity.com/images/icon2/luna.png" class="fr-dii fr-draggable">? <strong>:moon:</strong></p><p><img src="https://v2.kekocity.com/images/icon2/tortugapederast.png" class="fr-dii fr-draggable">? <strong>:turtle:</strong></p><p><img src="https://v2.kekocity.com/imagesnew/appico/mgusta.png" class="fr-dii fr-draggable">&nbsp; &nbsp;? &nbsp;<strong>(Y)</strong>&nbsp; <em><span style="color: rgb(255, 255, 255);"><span style="background-color: rgb(184, 49, 47);">Solo est&aacute; disponible en chats y alertas de casa.</span></span></em></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("43","Atomiko ","�Como poner una Misi�n de perfil?","","1210px","2021-10-06","data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAB4CAYAAAByzOU/AAAAAXNSR0IArs4c6QAAB3lJREFUeF7tncFrJEUUxl8WkhASxI1ZjAYkLgjKBiFoLjFKwEMQPYR4kkUvQjDowZMHD+YfCHgKiAc9BEG8CVlIvEg05qIxlyyKYNTVaGSjeDBEN2hbr9Ov901N1UzNZKx6TV5DM5nu6n5Vv/7mq1fVPZMu0CUKga4oUTQIKOhIIlDQCjoSgUhhVNEKOhKBSGFU0Qo6EoFIYVTRCjoSgUhhVNEKOhKBSGFU0Qo6EoFIYVTRCjoSgUhhqqjorGBTqbpXqrIGcDY+Pg6Li4swOzuLvCtT/6pUNFdxd3c3jI2Nwe7uLqyursLMzAx98MW3Q3oFySZqIBNspFwV4JJBlypGoCMjI7C/v58rGhdUNS24TbqdSAXthYyAh4aGYHh4uA72ysoKXQhx7RJXIezwyI9tJSNkUvTBwQEcHh7WJGe4TypsaaBrIHNr4JBpe5VgVwI0+vPFixdr1IuQyT4mJydha2sr34+qXlhYANxWqF9EG0VUoiDYkpqJOnWKLtjz8/Nicm0poJ2Q7UzDHi37VI3llpeXRalaLGgO2eXPtk9zRXMLkaJqkaBbgczTPMleLRK0a4Bi24ZL0biNOkVStZR0TyToUEXbHaJ9MST5tCjQCGp0dDQfajfrCH259MnJiUv8yduZvAKMSjmBRLBp8ohGg5zgzs6O001whg8X7tcMfrL2Jgvs8dwSts+T+XaCysEiYHuZmJjINy0tLdm7orU/WqAQcJ9CT/Zu3x3wznHtHEajY32wsVO0oeP7vb09uHz5MkxPT9N8dhQGUYKEQMYyCPpxuBVavCzHYdNGsg7+ivs2NjbK49bX16PBFgX6HjNz9wH01ID+5aFuePmrI7jPbP2y63Z1s6zeZWzgHDIDzNuMJ4nCIEqQFiSaGVUDqhpfv7nUAy/e/BNeMie4at7/ODgMr/1+A34y71f774Vnjn5u2CGSdxeQk7Y1aXCb0qBR9IcMNAJ/HfrhKThN2WbN+9+sg46OjvIt/f39za5n0rYmDW6TecCANvYBn5j1ieL11SsAz17vgffgArwFfwGCRaj8lUDTNn5eti1pW5MGd0gwI8CYkH1u1hGzvm9U/oZR88fmb1LwwMBAzeFra2vlXXHs5Kampsr9hdqTtjVpcBs0Zh3PGaDowaNm/d6sD5v1SbO+ySD7PGJzczPfxSEzW0na1qTBXYrGbXeZFb34frN+Z1acvn87ALTrAkhQM9ZLGmhilWE6h5X7wawPmvVrBe37ILe9PU/xcHnF2MigcelvYR9uBIKm7MPKRpILKnkFPJejHI08Zgp8Zla7g7OPswFL8Waqp1TQWL8SNqrz+PgYtre383rbnZ1kb5YOOvtj/RrcOfN0mc5xmKReVLlrkfjwo0RF55B7X5iD6/8CPHrzbydsZg1O2F9c6s2PldLhSwNdA/nKhVOGfb/6Ybu8GiHjsXShJMAWB/qfj67BztW5HBRfmsEmO+GQ8Rx4nIKuZZn5IFOxAprTKo7v7s0VTErmrxJgS1F0U8hOumyjD7IU+xADmjrAZkBD9tvQVdGn1MoOkEMkWCFgXWWkwZagaK9ttAvbZSOpUz0RoF220S5kUjd5M2Uhqe0jNeiGttEubDoO4VI2ct4VndvGrefn6nJmUuJZPBrhqqIbdIRcifbAJQS8KrqeUp2ibW8NAevLOlTRt8k4PbqTikbrwOXce7Sdcaii2/0MNz7O2xnyuYt2Q+MnQxXt6Qw7oWh+DgwjYRYveR7tS+/aVTTPOEjNCtoxz6GKbtcom3i0a/h91qwDQ3J/VkX/D4pW63AruyaPdo3o2h0Z0mCFwmoeXdzx9s26tTqxZCu6AEynT9b5JwtctLxO0TSK4xlDq90Du32V/3hKX18fPaierL3JAtug+WQ9n6M4i6LpF2oUtOkM+Z1vhNpJRZOa6ROR8hFe0YomQK10iNyjETT+0BUuqb9ikRw0waSRoEvR7dgH2g9ZB8I+96B936qizpDmKkI7RJeiU0PGuidXNIHGx3Kx08JXVCDPOhoputHTS2QdCtp0hgQarzpCxoV8NVTFgeWSiipl8DrIXNGB8BoVS9m2unqlrEwNaK5olveehXfKtskDTd+CLbOPwqsDvnLc7CIoaBoV+r5ujPsVdDMdtbY//0KQDby1U3hLq6IdaGqAK+gOEWhwGvqhkpZ+W8lzPlV0wPVS0AGQOlFEQXeCYsA5FHQApE4UUdCdoBh4jrPC1s5QQQcSiFSsZUVvF1/Cf+T0Pw6pogMvVIbgCmjeQwguL6CgAwnTXIilUOfRNmh2YVTRgbxz63DBbnQBJNxNcbVP1FVnFcz4jVWXPWBZVK/934VwLhuXlI8WVA60fcfFpWQOmspLhC1e0aQOfteF3zl3KZr/pKaU7EMqaORb2gdXKr9bTvDt5zfoTroUyOJyTYe35R0iPdplQ6b3nrsxokQkqjINshHnnRipGUaVOkMfc9dosRJiqUQlA/Nu0cUUdKTLo6AVdCQCkcKoohV0JAKRwqiiFXQkApHCqKIVdCQCkcKoohV0JAKRwqiiFXQkApHCqKIVdCQCkcL8B69sJrVmi1iIAAAAAElFTkSuQmCC","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/mod1.png" style="width: 50px; height: 50px;"></p><p>Para marcar una misi&oacute;n en tu perfil de Kekocity, sigue estos sencillos pasos.<br>1&deg; Primero ve a la esquina superior derecha de la pantalla donde ver&aacute;s un icono de ajustes.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/9/c/9/c/39c9c6862c4752179bbeee116002b7f0.png" style="width: 236px; height: 46.2268px;"></p><p>Haces clic sobre el y se entre ese cuadro de opciones busca la opci&oacute;n &quot;Ajustes de Keko cuenta&quot;</p><p><br><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/8/2/a/b/e82abb572083fa4dad72e8a67f1e77fe.png" style="width: 160px; height: 175.738px;"></p><p>2&deg; Cuando tengas la ventana de Ajustes abierta, busca el la palabra &quot;Misi&oacute;n&quot; en la ventana de Ajustes de Kekocity.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/d/d/a/e/0ddae8e4254a80baa469c6ae99629fb1.png" style="width: 479px; height: 317.82px;"></p><p>3&deg; Ahora en el cuadro al lado de &quot;Misi&oacute;n&quot; escribe algo que desees asignar como Misi&oacute;n para tu perfil de Kekocity.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/4/4/f/6/344f6eb2631a98ad052d8a24da9ae92b.png" style="width: 236px; height: 46.2268px;"></p><p>4&deg; Haces clic en &quot;Editar keko&quot; y listo ya tendr&aacute;s puesta una Misi&oacute;n de perfil en tu Keko cuenta.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/0/7/a/7/a07a748c6426b94c7064bf413ad27880.png" style="width: 332px; height: 143.249px;"></p>","0","0");
INSERT INTO kekoguias VALUES("28","Lauty","Fichas & Puntos","","600px","2021-09-21","https://images-kuinz.online/i/look%20jeje%20%281%29.png","<p><img class="fr-dib fr-draggable" src="https://www.kuinz-fansite.space/images/logo.png" style="width: 229px; height: 57px;"></p><p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/uploads/02/8/0/9/5/38095b60af0ec2f6c77d38a8fd79b17b.png" style="width: 25px; height: 25px;"></p><p><span style="color: rgb(61, 142, 185);"><u><strong>&iquest;Qu&eacute; son?</strong></u></span></p><p>Las fichas es la moneda oficial de <span style="color: rgb(61, 142, 185);"><strong>Kuinz-Fansite</strong></span>, con ellas podr&aacute;s comprar rares y megas que no est&aacute;n en el bazar de KekoCity.</p><p><span style="color: rgb(61, 142, 185);"><strong><u>&iquest;Como las consigo?</u></strong></span></p><p><span style="color: rgb(0, 0, 0);">Estas se pueden conseguir ya sea en eventos u adivinanzas realizadas por moderadores de la ciudad. (Helper&#39;s, Staff)</span></p><p><br></p><p><span style="color: rgb(0, 0, 0);"><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/uploads/02/f/5/5/d/3f55dd81a89fcd5f283a86afcf385e5d.png" style="width: 25px; height: 25px;"></span></p><p><span style="color: rgb(61, 142, 185);"><u><strong>&iquest;Qu&eacute; son?</strong></u></span></p><p>Los puntos es la segunda moneda de <span style="color: rgb(61, 142, 185);"><strong>Kuinz-Fansite</strong></span>, sirven para poder comprar rares y megas &nbsp;aun m&aacute;s especiales que no se adquieren con fichas.</p><p><span style="color: rgb(61, 142, 185);"><strong><u>&iquest;Como las consigo?</u></strong></span></p><p><span style="color: rgb(0, 0, 0);">Estas se pueden conseguir ya sea en eventos u adivinanzas realizadas por moderadores de la ciudad. (Helper&#39;s, Staff)</span></p><p><br></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("30","Dracki","�Como hacer una Denuncia?","","350px","2021-09-21","https://v2.kekocity.com/uploads/02/7/c/2/a/e7c2a0b71e5ef05fc708dc7a78a5635d.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/images/polic.png" style="width: 75px;"></p><p><span style="color: rgb(184, 49, 47);">&nbsp;&iquest;Como se hace una Denuncia?</span></p><p>Para hacer una denuncia vas a ir a la parte superior de la pantalla donde vas a ver un icono parecido a este y le daras clic:<img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/game/iconocandado.png" style="width: 25px;"></p><p>Luego en la parte izquierda de tu pantalla vas a ver un miniperfil donde la dar&agrave;s clic donde dice : &iquest;Alguien esta incumpliendo las normas? &nbsp;Den&ugrave;ncialo haciendo clic aqui, luego cuando ya hayas dado clic ahi se te va a abrir todo mniperfil en el mismo lugar de la pantalla vas a poner todos los datos correspondientes que te da el miniperfil algunos serian &quot;Te insultan, te intentan hackear y otros&quot; luego cuando ya hayas puesto todo eso vas a poner el nombre del usuario que vas a denunciar, debajo del nombre del usuario vas a poner las capturas de caso para los mods poder creerte y poder resolver tu denuncia.</p>","0","0");
INSERT INTO kekoguias VALUES("31","Dracki","�Eventos Oficiales!","","350","2021-09-21","https://v2.kekocity.com/uploads/02/7/c/2/a/e7c2a0b71e5ef05fc708dc7a78a5635d.png","<p><br></p><p>Si vas a jugar un evento normal debes fijarte si es oficial o no, como saber si un evento es oficial o no oficial primero vas a ir al perfil del gu&igrave;a si el gu&igrave;a no se representa con alguna de estas placas el evento es no oficial y se recomienda no jugar eventos no oficiales para no tener futuros timos, (PLACAS CON LAS QUE SE IDENTIFICAN LOS EVENTOS OFICIALES) :</p><p style="text-align: center;">&nbsp; <img class="fr-draggable fr-dii fr-rounded fr-bordered" src="https://v2.kekocity.com/fly/placas/mod1.png" style="width: 50px;">&nbsp;<img class="fr-draggable fr-dii fr-rounded fr-bordered" src="https://v2.kekocity.com/fly/placas/mod2.png" style="width: 50px;">&nbsp;<img class="fr-draggable fr-dii fr-bordered fr-rounded" src="https://v2.kekocity.com/fly/placas/mod3.png" style="width: 52px;"><img class="fr-draggable fr-dii fr-bordered fr-rounded" src="https://v2.kekocity.com/fly/placas/mod4.png" style="width: 52px;"></p><p style="text-align: center;"><img class="fr-draggable fr-dii fr-rounded fr-bordered" src="https://v2.kekocity.com/fly/placas/s.png" style="width: 50px;"><img class="fr-draggable fr-dii fr-rounded fr-bordered" src="https://v2.kekocity.com/fly/placas/b.png" style="width: 50px;"><img class="fr-draggable fr-dii fr-rounded fr-bordered" src="https://v2.kekocity.com/fly/placas/helper.png" style="width: 50px;">&nbsp;</p><p>&nbsp;</p>","0","0");
INSERT INTO kekoguias VALUES("33","lSconet","�Como puedo ignorar a un keko?","","400px","2021-09-23","https://v2.kekocity.com/uploads/02/1/a/9/7/31a970c37f45b26226c14644cc358fcb.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/b.png" style="width: 50px; height: 50px;"></p><p>Para ignorar a un keko tendr&aacute;s que darle clic al keko que quieres ignorar y vas a buscar el siguiente logo:</p><p><img class="fr-dib fr-draggable fr-fil" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEkAAAAZCAYAAAB9/QMrAAAAAXNSR0IArs4c6QAAAqFJREFUWEftlzFIG1EYx/+ZRakHQkFCXQpGl+sgdLHo0EEk6GDtoqRm0kVtty4iLt1a06WdjEEXq4MliIODoovgkqWN4FIJFsFBaels3/fefcnl9Lz3olau3g1CzJeX9/3u9/3vJYbOwXNEly+B2M8DxCJIVxsSQdKYoAhSBEmDgEZJbSbtfIHIMY3l/48Sc0gC0C/Re4NJ/yEHagbJAcR8CFQqlQrElcvlfMwbQ3GtCZ97Z5AJXOXuCowgJR41o7j4QZrkBpVMJn07sCwL9wqSJEF5JC5dUPqQhFXbXWgVa58dHom/B2gchjCtAw/r6/CAvvT3N0xK63qwufYKXfXq3uyvv0TiHf3vBWxQLdXtob9c8wdbH9PoXiFznfUOtxAb/qSlp5FJDIlGjOzQAaULyV5YwtPv1CwwkZnDrLUnmhCQtjtwLBtUEJBNY7WT36cmCe5j7D7bQIvzfveKWmMay2icWAfevsd5mzg1y/Wo9g1GtPCoopog0XiVSiUUCoULoGzbrvr6eDyOfD4fkEl015/jR6+z+YEpnPadOCZVMiu7MIeWrwrS6HFaAoW0iuAtAyOuNTy2QZpDZppn4LUg0RaDQOlBmoGvSa6m3JCUaV6TKpC4lqyqMukuIAWB0oWUkWNzWSZdNEmN3mWZVIEkR/ZJnbJaZNy+dSaeoicY/ZeQeKZo7PxA8VPPf9wqk5n1ZFI5Twyy47ZKjceNjwG8Ic4nP1DljQcdKCmHxtvVUwxHmDcM19sCVFtwi08RKL7o3BQEKjH0GkX5WA/nZWySt002i0FxBnmPB2H+rXdtSATNDYryR5rjnMzpp8u9N4nNYlAMxPs6nIOmdn0jJlWBcmWPBBXiLOK+bhRSmG25au8RJI07G0GKIGkQ0Cghk/4C9EC1XfECBzoAAAAASUVORK5CYII=" style="width: 97px; height: 33.5769px;"></p><p>Ya encontrado este logo le vas a dar clic y automaticamente dejaras de leer lo que diga el usuario.</p><p><img class="fr-dib fr-draggable fr-fil" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHIAAAAYCAYAAAAmsqlBAAAAAXNSR0IArs4c6QAAA6NJREFUaEPtmD9MFEEUxr+rCUYuISEhBBoS0eYsSGwwUFgQQrQQaST8qbARtbMxxMZOxUYqDoKNYiEhhMJCghYkFNLIkVwjIRgSEiESapw3s293dm+X/cMu8c7ZgobZ996833zvm70cuu6dwjxV24HcrzJ6WhuQMyCrlqEs3ICsbn529Qbkfw/y6weIcVwjbaj+bSRTpID4R+z9Upz9G+hxuhV7bXyQFkTORDCHh4dDE8/Nzfkr+O4zHD68hstahKPvs2iYWAmMOTE1g/H9MXS8CE0bvIDy3j5Aw9DbkCC9+LJ8Cz/7nmD0HOmyfjU2yI7WZpTevZKK1GH29/cH1prP53EmSFdDqXEjaPo2eD5QYZ2LDDIs0L/x/9ggZdnkj+KJCjMeSBH46UucXi0jJ9RC6nt9vU7mY6XqiizOv8dIq2rm9grBp4MwgALqhMp/4FHfc0zZvX6A0lo3rlCsnT3xtywV6ZfDwaMr0u99oLTciaZ6yieeY86pDmR3/Vm1beCOveYEq2/G0PNR5OB4O6uyB1GexCBpnJLKosCMDZLVstiIQzHPJi0YBO3G1iCmm6zRCgc46B25lpozABSpKe4W8Ps0kiW8/AZyATmcse2AhJXf9f6QALnWiX0JQR0iyv2py4ovQdABaMf6zc9o02qjGiaxoGzEPrwUj9bGG+WJQdIo3d3dxebmZgXMQqHg6mBLSwuWlpaCPdLrVbyprXac9ja7YpEqJzFge6SuSKUGAunnaU6TJWA+LAE5HI9mkARBi2uPZlJkI6btwzaDtkUF0vFxzr0AjOq1uVULqUB3vChqpDXnBklBwmDGA6l5ZJlVpo9HpSZqkq1MuvS4FOl/OdEVaSvAo8jKxkVQZABIqfgKRTq1FecVdHmwdEVq8S4UZBjMUJCeW6vyOrUF3b/YB12jlRV7vIdtsWC9z6McVyccj8PxCY5+b1R4JOfwG62jckR6PdZfkWrM+nmkA9K1N+HZ2/kjoewDjF80SO4RjdggmHybDRytUY+cti6Vz48Eeb0ea/tbglhpv5JotPInCBfDfhkE0y46hR8F1CmGdcNLux0h8VzfvHuYjXkhybLaRCCpIILJD31XhsHsuP8YJXnlN08WHUgMUi+GFcow2RO9nybmt9ksEKqYqYBkhbIyyQ+lAq1fgOhnPKPI7CCmClKHydBYqQZithBTB2nD1LxQwjTemDnJ1EZr5pWaBGd2wICskQNiQBqQNdKBGtkGK/IvutacrxE7P1YAAAAASUVORK5CYII=" style="width: 125px; height: 26.25px;"></p><p>Solo le vas a dar clic a <span style="color: rgb(184, 49, 47);"><strong>dejar de ignorar</strong>&nbsp;</span><span style="color: rgb(0, 0, 0);">y vas a<span style="color: null;">&nbsp;poder leer todo lo que dice.&nbsp;</span></span></p>","0","0");
INSERT INTO kekoguias VALUES("34","lSconet","�Como puedo hacer que mi keko baile?","","390px","2021-09-23","https://v2.kekocity.com/uploads/02/1/a/9/7/31a970c37f45b26226c14644cc358fcb.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/b.png" style="width: 50px; height: 50px;"></p><p><span style="color: null;">Para hacer que tu keko baile le vas a dar clic a tu keko y vas a buscar el siguiente logo:</span></p><p><img class="fr-dib fr-draggable fr-fil" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEQAAAAYCAYAAABDX1s+AAAAAXNSR0IArs4c6QAAAhhJREFUWEft1r9LAmEYB/CvswgVBJFDQTjo1uDQkJTQEC4tNSWkkwUhubVFf0BlQTVZYFM11CCNig0JLW0GEeQgBA21NNu9p+/13o/3zbvTy+xuK17fe5/PfZ/nzhONRhvF2jsaowG4F+BxQdQxcEE0beGCuCDiSWktIbfn37tOL/XVLLYMcuA/lCHW62tNkD6BsQ1C46HAmMaZR7GwghkfE7RaCZ74ESd5q6gWhnEcu8dCYQ4vsQwSHcyoLRCKQNNiDYeAsIWRvxeBkyRmL0WVan/XGRXbIMHlDVTPdpXTsDgy2I+tZACSD+Mqvo0s2PR8orRPkIwSwlsXxojPiwFh4jrxHSIN1fLEHSLPU3LBwTG/sivFITDtg2haBnWcRjJ4yOawhQsMpm+AzR00Qk9SK0HXMtx15QAq0j5mWsp2QrQJIDgExRyIehakFQio54v8pPUgCVWSpGejWkeS1v5lGYRNiO52UoLsgqRek6iEchi/bs0SQUKQF61zGsToraJpKfHz4b9lSFL2Jr3Nn9fqeBz6kN4ub0hp3jKkZfjrHAShhdJZohRuCqT9ODux0lbLsAdUobAgpr9LnCibfw9LIHRwkjlimJIWCDdBv1uz8O6WQMiOFIXuLn+PSH0uXxoQ8i9dW/UoimUQikLrUjAYLG6CehSDHMsWiKguYYL+I4goQT3s0b2E9HLRorN1rWVckL8qoDn3FyJjt9ggi5w1AAAAAElFTkSuQmCC" style="width: 101px; height: 35.5905px;"></p><p>Ya hayas encontrado este logo le vas a dar clic y tu keko y va a comenzar a bailar&nbsp;</p><p>Si quieres que tu keko pare de bailar le vas a dar clik a tu keko y vas a darle a <span style="color: rgb(184, 49, 47);">Dejar de bailar</span></p><p><img class="fr-dib fr-draggable fr-fil" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGgAAAAWCAYAAAAsNNkQAAAAAXNSR0IArs4c6QAAAyJJREFUaEPtlzFoFEEUhv+rRTABIZBCQQM5OwtBiwtJkSKk0EJjo5BcFQWJprORYGOnRkGtPEEbNYUWksLCkBQKKbTxEgiCVwQCAe8gpI7zZmdmZ2939py5PZkNmyIJye57/3vf/O/NlVCZOkDx5W0HSgUgb9lwYQUgv/kUgDznYwlo7V1YT2XK99oOhT67EccAPR18xgu/tX0zaEABqqcHwRmQVKVAWcOawJdP0xg9qtW39xO3J+9j0VTy3YdoDnxG39yye1Mu30Pz4i76rj/vGGNu8SVmd6ooP+j4KNSzyECjls4JkIQi3eQGiwCN4/fkPGZEACrycf86Sv/QvM4tMzzRI0AqWxaHKAtA5Wt3sPHmkQqlw+IAO46+OCDgBjZWh/BtZB4/CNbZIzx+6/urwDV68ez3g4nBIH9jhUMlwAungWPMlStPqhhbkvIo7iiGKVZjm33f4g7iB6I9h9Yc7or+FoZPBHk2l68GbjLk5m7THWSlMflAWTto9dRXjPy6wAGUhXAKLWERKHdAAlqthUvMVgti3NVev8X5OmuOKv6kAjkDeucKUKviQ4UBwvvYCFTvs+Yql348jmZSDm2cRRxNzuPP72JWHKL23FFAdhpNE8EakAkAwSJI3QESDmJmmZbuEMq5i3bGwx2kn07sc8cQoPjOCAFyR8kRVx8KHajn0PZbdAdpjk/LbXJQqkbzwLYGpDsoFlbc8lwdZDrdsfm+dk5b9FEHJS113UF8PJ3ZQqnNQUkt4iNTOlI6qMZcpC4ZCbklIEuNmTlIAaKI7XuGAUoFGFGRcIsTu4Qe0/eDmv+RERfsFLCTudlgP+pVvBgw3brCHYS9fbT+rMd2UGTHCJ3hTqNdGLh0bEmLlZTbWWOGO0iGkrtIhbYCZLa18T8Z35AcFPz3V5xGnK4yAkkHlOSwbsoTc1/dpLqJlaN3rQDJiwCNsUQXCUBGh+WoMb5ItQJEoiUkWQD/PMQ/W7CvNkD0p9gY9KXynOiwBiQhyfoUHA2e0WE5aYpPMp0ApRWQ6jCfKs+JlswBpTksJz3xSmZPAHlVYc7FFIA8B/gXjL0vwbWfSHQAAAAASUVORK5CYII=" style="width: 141px; height: 29.61px;"></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("35","lSconet","�Como puedo besar a un kekos?","","260px","2021-09-23","https://v2.kekocity.com/uploads/02/1/a/9/7/31a970c37f45b26226c14644cc358fcb.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/b.png" style="width: 50px; height: 50px;"></p><p><span style="color: null;">Para besar a un keko de la ciudad tendr&aacute;s que buscar a el que quieres besar y darle clik y tendr&aacute;s que buscar el siguiente logo:</span></p><p><img class="fr-dib fr-draggable fr-fil" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEIAAAAbCAYAAADI1VnXAAAAAXNSR0IArs4c6QAAAuNJREFUWEdjZLAN+88wChgYRwMCkgpGAwKaG0YDYjQgUAtGylLE4VWYxaxt2JAseskLCGgA/H0wC8PTzAppELEhFiCkBwQwEGAB8P/LdYyAYOTRBIuBAwRPYMwpS2dI9nGC6//1+w9D57KNDHVzsaQyOqQx0gICGgjIAZBXtYhhUlsc3KkwPihA8AUGKCAUJEUZXApbwHpBfEsdNQbtuGI6eBvTCrIDAuRhEEAOBJjxMLlpm97iTBXYAgKkP6VrJjhQYKnl2oMn4MBpSg5jKI/yZ2BjZWFATj1XF/UyaCnIgK2eu2Ufw7I9RxhmA/WLCvAxfPr6nSGudQrDvnNXCQYu8QGBJTUQMh1fqkDPGiCz9p69zLBw+0GG9vQohsqZyxgW7zrMsKe/Bm7Ng+evwQEFA8ipCBRQ0a42DFPX72TIDnRnWLr7CEnZjKKAwJYqkMUIBQRy1oh1swUHwOkbdxm8LAzBMQ8DoFTRsWQDw9SiZAZeLk6cKeLp63cMfau2MCR7O4HVgwKSWEBSQPy5Usjw/9MFYs1mYOQzYGDR6ceaPdCzBiggKmICGDYdOcMQ624HTxHYLIOlhOdv3zPAUglyiqBbQHzf/QzoPkYGTldJsDvzOy6B6YkVenB3g9Uo2zPwxQCrWCy1B75aA10OlGVAwNlYF0zDyggpYUF4WfLm42dgmfCNYdW+4wx+Nib0SRHfdj0HOoeJgctNHCXCQAECC4xvO58w/JCzZRBPnjck2hREZw1NeWmG60v6GXBlD+RAAIUOLFtoxhQyXH/4lOjsNFAKiQ4IsAOBNQe+cgI5MPCVDwPlWXz2khQQyKkCZCis4EQuI0ABAAKgQnKopAZwCiZ1YAYWGCDNoNSBDsC1BBAMpUAgKyDAngSWFyAAKjPQASgAwHJDoFxAdjvJKQJZMyxAkMWGWgDA3E5RQAzGQo9cN40GBDTkRgNiNCBQMxEjo7Lh6AQPqB3h5OQ0GhDAgAAAKF2Cho/ZgBYAAAAASUVORK5CYII=" style="width: 97px; height: 39.77px;"></p><p>Ya encontrado el logo le vas a dar clik a donde dice <span style="color: rgb(184, 49, 47);"><strong>besar</strong>&nbsp;</span><span style="color: null;">ya dando le besar besaras al keko que hayas&nbsp;</span><span style="background-color: initial; text-align: initial;">seleccionado</span></p>","0","0");
INSERT INTO kekoguias VALUES("47","Gregorio ","�Como puedo obtener la placa �lite?","","400px","2021-10-10","https://v2.kekocity.com/uploads/02/9/a/6/5/b9a659b3b7f59cfcf6cbde3d3175c3cb.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/elite.png" style="width: 57px; height: 57px;"></p><p><br>Para obtener la placa &eacute;lite debes tener esta clase de niveles:</p><p><span style="color: rgb(184, 49, 47);">Nivel social:</span><br>&Eacute;lite.</p><p><span style="color: rgb(184, 49, 47);">Nivel econ&oacute;mico:</span><br>&Eacute;lite financiera.</p><p><br></p><p>Nivel social: Debes tener muchos amigos.<br>Nivel econ&oacute;mico debes tener muchos coins o clouds.</p>","0","0");
INSERT INTO kekoguias VALUES("36","lSconet","�Comandos para tu keko!","","260px","2021-09-23","https://v2.kekocity.com/uploads/02/1/a/9/7/31a970c37f45b26226c14644cc358fcb.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/b.png" style="width: 50px; height: 50px;"></p><p><span style="font-size: 14px;"><span style="color: null;">Para hacer comandos para tu keko tendr&aacute;s que seguir los siguiente pasos</span></span></p><p><span style="font-size: 14px;"><span style="color: null;">1: &nbsp;</span><span style="color: rgb(41, 105, 176);"><strong>-boing = &nbsp;</strong></span>T&uacute; keko saltara por varios segundos.</span></p><p><span style="font-size: 14px;"><span style="color: null;">2:&nbsp;</span><span style="color: rgb(41, 105, 176);"><strong>-rotate =</strong></span><span style="color: null;">&nbsp;Va a girar tu keko por varios segundos.</span></span></p><p><span style="font-size: 14px;"><span style="color: null;">3:&nbsp;</span><span style="color: rgb(41, 105, 176);"><strong>-rot =</strong></span><span style="color: null;">&nbsp;T&uacute; keko se pondr&aacute; de cabeza por varios segundos.</span></span></p><p><span style="font-size: 14px;"><span style="color: null;">4:&nbsp;</span><span style="color: rgb(41, 105, 176);"><strong>-ghost =</strong></span><span style="color: null;">&nbsp;T&uacute; keko se pondr&aacute; borroso por varios segundos&nbsp;</span></span></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("45","Dracki","�Como patear a un usuario?","","357","2021-10-08","data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAB4CAYAAAByzOU/AAAFnElEQVR4nO2Zv28cVRSFj+Ss3LBbRcSWhRUBBZhqI0p2CmQULBmEZNZWMCGsDW3arZBo0lJtjZSGfyA1clYIUYBA1Oldu0j/KObdmTt37psfa8cIfD7pauzN7Cr65vjMe7MAIYQQQgghhBBCCCGEkP8im0Cw82//n/5XiNQnWwjfv44wHyIcx98p/ZJogU+28pkP85mhlK2PFN4TLVcL1vM1csEP4lFmn7IbCUC1Ijy5dh45suXfKNunEGyFNY13rk43ZRu05CaJMvsxxfMhwiemOig6gSc5JTslfw8Iu45oVohis6UqrLjUOfNh/cZI0Yqtlj4WYV81yL6P/MZoU8/6iLStMETa41sIpy2dLRdDXpMqoWh0E91UJV2GotEsetpQKXvIE24vyCzK3aXoKpuod6qex7e6rZ+9lYkIp2hUE+2tLg5bqqNNNCVHvOrYBcIGEN5CWrQcD5EWvQmE5RFlA2gWfSce29LrvfYuEBY7CD8fUDQAf7OyGyUvj/K5E9Npu1zOP4ivfxxnBwg/fYBwNmWiC9pE//VtKXwb+bwBhC3kzzhE+p66EDsoJT8/pGgAuWhvtaFF//kNwh8npfDlEcKP75cp3zOfsRPfy0QrNlG/2emts0j+7SHCLw/yEdn6r8EuD98Ev22p0CR6Iybz9xnCr8el4LNpLvDtxIqEmxWHlOj5ECFTsu28E0Weon5z5Do6gcj+zPT0fhR5N94EpQo2UIr2vl1hohOknkeL6FmUPlPzuXMTlfd9SMk+g8EgeBUi8uQBUurhvyR4l2luJSlaevgUCCdxjuNxpt7zEerdvH37HkVbvPrQSzYt+iAeU9twim7Bypbk6tqYofpNyyPn4rA2OmCfaeiKuI98+K3KFSF9fapkS308jMcvnVUHRfdk+/a9Ys08H+Zyj4HwRaySKeqd/ClFr0QIL56F8OJZ8TzjUK04Zqg+ueNucDXCVIkW2SL8JPY0JV+OcLFcC1NHtgjfABqPXNK1E6ZAmADhfDEoZE8c4anJ4oUCU52kEDsGCmFZFJ1KuIy872K5FsbxXFC2SxjHmSi5kuwszlj9/PLsaXh59rR4XS5MRtFJCkE6vRMlUH5+T10Q/fP5YlAkmbJ9CjlaspYtyb5YrhUj1XKxXAvni0Hx/kx93piiK9SkeqL171kUb+Xqc6ViQNEAjBgr2Xt9EpO89vdFUSn63yZKPuujxJWke9ZL9PliEF777odwvhjUUpyLHRXvZ6pz3HqQlccYfqL1akSvUiZKNCi6wO3hzBwnZqxYWx256HWKViQl56JGyepI/e6JZkerhNYl55O6GVJ0PyqbElkpiCRgvTXRslauL+koWlMRZyU3idZLN70l90Szo424aQfROsFW7rgilonWtCYaWK8ItEJ1h5dr6HUu7wyVXZyXaJ1qK9Z2dtnxVclMtBLn3QhTK4/UzXFSSM4/Qz9yBUX3T3RKdCl5nYk2dOpo2bg0rZtL0SOKduiUaKkPL9E23frmR9ElyURnzrQlOqt8DkVril2hTbQnuinRWrIVzZuhkiXC7fbbSrYbGLt50X8V+hErKLpbR4t4e/6kJri66tD9jRssu+Oqoz7Vmhg551R2hBTdJ9H9ptrXN160fR591aJByQBUosutMkW/CmodXfbq5UWbubHUdnTTlUSPnPNvtlhLRbRO9LSTbFB0RwqhXrKxsugRRRsqogFvc9FUF7qH9esU7VETjVbRIyM61dnEwy7DGlI8CtXkeheBotsI5bFNMhN9FTDR10TvRPMh/2okn0XblYn99oWi+9Eq2X6LklH0yvRONKtjNZjoa4IdfU0w0ddEr0RT9Oow0ddA73U0Za9GTW7XRFN2Py6VaK6n++HK82R6okHJvShEtsl2hqxAsiZAqa8EJpcQQgghhBBCCCGEEEIIaeAfFPc2yv8YzT8AAAAASUVORK5CYII=","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/help.png" style="width: 50px;"></p><p>Vale para patear a un usuario primero debemos buscar al usuario al cual queremos patear, ya encontrado el usuario le daremos clic en la parte inferior de su keko luego vas a ver a la izquierda el miniperfil del usuario, en donde se ver&agrave;n varias opciones algunas de ellas son:</p><p>(Besar, Susurrar, Cambiar, Ignorar, Ver Muro, Me Gustas)</p><p>En este caso vamos a tomar la dice (Patear) tiene el siguiente icono o simbolo :</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/appico3/pat.png" style="width: 20px;"></p><p>Cuando le des clic arriba de tu keko hara una animaci&ograve;n de un circulito molestando a otro con eso puedes confirmar que pateaste al usuario tambien va a parecer en el chat global la siguiente frase : **Patear**</p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("46","Dracki","�Como susurrar a un usuario?","","315","2021-10-09","data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAB4CAYAAAByzOU/AAAFnElEQVR4nO2Zv28cVRSFj+Ss3LBbRcSWhRUBBZhqI0p2CmQULBmEZNZWMCGsDW3arZBo0lJtjZSGfyA1clYIUYBA1Oldu0j/KObdmTt37psfa8cIfD7pauzN7Cr65vjMe7MAIYQQQgghhBBCCCGEkP8im0Cw82//n/5XiNQnWwjfv44wHyIcx98p/ZJogU+28pkP85mhlK2PFN4TLVcL1vM1csEP4lFmn7IbCUC1Ijy5dh45suXfKNunEGyFNY13rk43ZRu05CaJMvsxxfMhwiemOig6gSc5JTslfw8Iu45oVohis6UqrLjUOfNh/cZI0Yqtlj4WYV81yL6P/MZoU8/6iLStMETa41sIpy2dLRdDXpMqoWh0E91UJV2GotEsetpQKXvIE24vyCzK3aXoKpuod6qex7e6rZ+9lYkIp2hUE+2tLg5bqqNNNCVHvOrYBcIGEN5CWrQcD5EWvQmE5RFlA2gWfSce29LrvfYuEBY7CD8fUDQAf7OyGyUvj/K5E9Npu1zOP4ivfxxnBwg/fYBwNmWiC9pE//VtKXwb+bwBhC3kzzhE+p66EDsoJT8/pGgAuWhvtaFF//kNwh8npfDlEcKP75cp3zOfsRPfy0QrNlG/2emts0j+7SHCLw/yEdn6r8EuD98Ev22p0CR6Iybz9xnCr8el4LNpLvDtxIqEmxWHlOj5ECFTsu28E0Weon5z5Do6gcj+zPT0fhR5N94EpQo2UIr2vl1hohOknkeL6FmUPlPzuXMTlfd9SMk+g8EgeBUi8uQBUurhvyR4l2luJSlaevgUCCdxjuNxpt7zEerdvH37HkVbvPrQSzYt+iAeU9twim7Bypbk6tqYofpNyyPn4rA2OmCfaeiKuI98+K3KFSF9fapkS308jMcvnVUHRfdk+/a9Ys08H+Zyj4HwRaySKeqd/ClFr0QIL56F8OJZ8TzjUK04Zqg+ueNucDXCVIkW2SL8JPY0JV+OcLFcC1NHtgjfABqPXNK1E6ZAmADhfDEoZE8c4anJ4oUCU52kEDsGCmFZFJ1KuIy872K5FsbxXFC2SxjHmSi5kuwszlj9/PLsaXh59rR4XS5MRtFJCkE6vRMlUH5+T10Q/fP5YlAkmbJ9CjlaspYtyb5YrhUj1XKxXAvni0Hx/kx93piiK9SkeqL171kUb+Xqc6ViQNEAjBgr2Xt9EpO89vdFUSn63yZKPuujxJWke9ZL9PliEF777odwvhjUUpyLHRXvZ6pz3HqQlccYfqL1akSvUiZKNCi6wO3hzBwnZqxYWx256HWKViQl56JGyepI/e6JZkerhNYl55O6GVJ0PyqbElkpiCRgvTXRslauL+koWlMRZyU3idZLN70l90Szo424aQfROsFW7rgilonWtCYaWK8ItEJ1h5dr6HUu7wyVXZyXaJ1qK9Z2dtnxVclMtBLn3QhTK4/UzXFSSM4/Qz9yBUX3T3RKdCl5nYk2dOpo2bg0rZtL0SOKduiUaKkPL9E23frmR9ElyURnzrQlOqt8DkVril2hTbQnuinRWrIVzZuhkiXC7fbbSrYbGLt50X8V+hErKLpbR4t4e/6kJri66tD9jRssu+Oqoz7Vmhg551R2hBTdJ9H9ptrXN160fR591aJByQBUosutMkW/CmodXfbq5UWbubHUdnTTlUSPnPNvtlhLRbRO9LSTbFB0RwqhXrKxsugRRRsqogFvc9FUF7qH9esU7VETjVbRIyM61dnEwy7DGlI8CtXkeheBotsI5bFNMhN9FTDR10TvRPMh/2okn0XblYn99oWi+9Eq2X6LklH0yvRONKtjNZjoa4IdfU0w0ddEr0RT9Oow0ddA73U0Za9GTW7XRFN2Py6VaK6n++HK82R6okHJvShEtsl2hqxAsiZAqa8EJpcQQgghhBBCCCGEEEIIaeAfFPc2yv8YzT8AAAAASUVORK5CYII=","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/help.png" style="width: 50px;"></p><p>Vale para susurrar a un usuario vamos a buscar el usuario al cual queremos susurrar le daremos clic en la parte inferior del keko al cual queremos susurrar.</p><p>A la parte izquierda de la pantalla va a aparecer un miniperfil el del usuario tendra muchas opciones pero en este caso vamos a darle clic a la que dice (Susurrar), lleva el siguiente simbolo/icono:</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/appico3/susu.png" style="width: 20px;"></p><p>Al ya darle a este icono vas a estar susurrando con el usuario vas a bajar a la parte inferior de tu pantalla a la izquierda tendras un cuadro blanco ya seria la burbuja del chat donde le vas a escribir lo que gustes.!</p>","0","0");
INSERT INTO kekoguias VALUES("44","Gregorio ","�Que son los KekoBots y para que sirven?","","500px","2021-10-07","https://v2.kekocity.com/uploads/02/9/a/6/5/b9a659b3b7f59cfcf6cbde3d3175c3cb.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/images/camarero.png" style="width: 47px; height: 26.4767px;"></p><p><br></p><p>Los Kekobots, son los sirvientes de la ciudad que sirven caf&eacute;, kekocola, agua, pizza etc.</p><p><br></p><p>Se encuentran en el bazar en la estaci&oacute;n &quot; Mascotas y bots&quot;, &nbsp;una vez comprado le colocas su nombre y esta listo para servir..</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/4/e/c/c/64ecc25fbbd5c54f2eac08dda8e57ad1.png" style="width: 235px; height: 222.632px;"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Para pedir un alimento al bot solo tienes que decir: &nbsp;&quot; Keko pizza o Gregorio pizza &quot;.</p>","0","0");
INSERT INTO kekoguias VALUES("40","Gregorio ","�Como puedo subir una foto a Kekobook?","","900px","2021-10-04","https://v2.kekocity.com/uploads/02/9/a/6/5/b9a659b3b7f59cfcf6cbde3d3175c3cb.png","<p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/helper.png" style="width: 50px; height: 50px;"></p><p><span style="color: rgb(184, 49, 47);">&nbsp;</span>- Primero dir&iacute;gete a tu muro dando clic a tu keko nombre que se encuentra en la esquina superior derecha.</p><p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/uploads/02/9/6/1/f/6961fdc4ae6257a3670dfbd00b019e4c.png" style="width: 335px; height: 49.1333px;"></p><p>- Ya una vez en el muro le das clic donde dice &quot;A&ntilde;adir fotos&quot; y se abrir&aacute; el buscador de archivo en tu pc, ah&iacute; seleccionas la imagen a tu preferencia.</p><p class="fr-text-gray"><img class="fr-dib fr-draggable fr-bordered fr-fil" src="https://v2.kekocity.com/uploads/02/d/4/b/4/9d4b4caba2b89700d17cd16854487de1.png" style="width: 464px; height: 226.972px;"></p><p>- Ya seleccionada la imagen, eliges si vas a publicarla &quot;P&uacute;blico&quot;, &quot;Amigos&quot; o &quot;S&oacute;lo yo&quot; y das clic en &quot;Publicar&quot;</p><p class="fr-text-gray"><img class="fr-dib fr-draggable fr-bordered fr-fil" src="https://v2.kekocity.com/uploads/02/2/5/7/3/925738b04026e568a97bb6e255b94759.png" style="width: 457px; height: 201.356px;"></p><p>Saldr&aacute; tanto en t&uacute; muro como en Kekobook.</p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("41","Gregorio ","�Como realizar intercambios con otros kekos?","","800px","2021-10-05","https://v2.kekocity.com/uploads/02/9/a/6/5/b9a659b3b7f59cfcf6cbde3d3175c3cb.png","<p><span style="font-size: 12px;"><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/helper.png" style="width: 50px; height: 50px;"></span></p><p><span style="font-size: 12px;">- Puedes intercambiar con los usuarios llegando a un acuerdo y realizar un intercambio de la siguiente manera:</span></p><p><span style="font-size: 12px;">1) Hacer clic al usuario con el cual quieres cambiar encontr&aacute;ndose en un sala al darle clic saldr&aacute; la opci&oacute;n de &quot;Cambiar&quot;...</span></p><p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/uploads/02/8/c/a/1/28ca176f398076fe8be1e4f780077a79.png" style="width: 302px; height: 102.603px;"></p><p><span style="font-size: 12px;">&nbsp;Luego esperas que el otro usuario acepte la petici&oacute;n &nbsp;del cambio una vez que el lo all&aacute; aceptado, abres tu inventario en el icono de la caja que encuentras en la esquina superior izquierda luego buscas el objeto que vas intercambiar con el otro usuario haces clic en &quot;aceptar intercambio&quot; y esperas acepte el intercambio.</span></p><p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/uploads/02/2/f/5/3/92f53c0ec9bd9bc9f62544fce0b6433c.png" style="width: 468px; height: 318.542px;"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-size: 10px;">&quot;<span style="color: rgb(184, 49, 47);">Aseg&uacute;rate de que el otro usuario coloque el objeto el cual quieres intercambiar con el</span><span style="color: rgb(0, 0, 0);">&quot;</span></span></p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("42","Gregorio ","�Como comprar la placa VIP?","","800px","2021-10-05","https://v2.kekocity.com/uploads/02/9/a/6/5/b9a659b3b7f59cfcf6cbde3d3175c3cb.png","<h4><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/fly/placas/vip.png" style="width: 50px; height: 50px;"></h4><p>- Primero debes ir al bazar que se encuentra en la esquina superior izquierda en el icono de carro de compras das clic...<br>Se abrir&aacute; la ventana del bazar te diriges a la secci&oacute;n &quot;VIP&quot; y encontraras la placa vip en el primer cuadro precio 50 clouds te dar&aacute; 30 d&iacute;as vip.</p><p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/uploads/02/d/3/3/a/cd33ae712fa6047863767cdbe90730c0.png" style="width: 453px; height: 337.831px;"></p><p><br></p><p>La obtendr&aacute;s..</p><p><img class="fr-dib fr-draggable fr-fil" src="https://v2.kekocity.com/uploads/02/8/d/d/c/08ddc4e5855bab206c24088decc3b15e.png" style="width: 284px; height: 113.229px;"></p><p>La suscripci&oacute;n de vip tambi&eacute;n ofrece: Tener atuendos vip, &nbsp;tener salas con diferentes tama&ntilde;os de baldosas.<br><br><br></p>","0","0");
INSERT INTO kekoguias VALUES("48","Atomiko ","�Como ocultar placas?","","1000px","2021-10-10","data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAB4CAYAAAByzOU/AAAAAXNSR0IArs4c6QAAB3lJREFUeF7tncFrJEUUxl8WkhASxI1ZjAYkLgjKBiFoLjFKwEMQPYR4kkUvQjDowZMHD+YfCHgKiAc9BEG8CVlIvEg05qIxlyyKYNTVaGSjeDBEN2hbr9Ov901N1UzNZKx6TV5DM5nu6n5Vv/7mq1fVPZMu0CUKga4oUTQIKOhIIlDQCjoSgUhhVNEKOhKBSGFU0Qo6EoFIYVTRCjoSgUhhVNEKOhKBSGFU0Qo6EoFIYVTRCjoSgUhhqqjorGBTqbpXqrIGcDY+Pg6Li4swOzuLvCtT/6pUNFdxd3c3jI2Nwe7uLqyursLMzAx98MW3Q3oFySZqIBNspFwV4JJBlypGoCMjI7C/v58rGhdUNS24TbqdSAXthYyAh4aGYHh4uA72ysoKXQhx7RJXIezwyI9tJSNkUvTBwQEcHh7WJGe4TypsaaBrIHNr4JBpe5VgVwI0+vPFixdr1IuQyT4mJydha2sr34+qXlhYANxWqF9EG0VUoiDYkpqJOnWKLtjz8/Nicm0poJ2Q7UzDHi37VI3llpeXRalaLGgO2eXPtk9zRXMLkaJqkaBbgczTPMleLRK0a4Bi24ZL0biNOkVStZR0TyToUEXbHaJ9MST5tCjQCGp0dDQfajfrCH259MnJiUv8yduZvAKMSjmBRLBp8ohGg5zgzs6O001whg8X7tcMfrL2Jgvs8dwSts+T+XaCysEiYHuZmJjINy0tLdm7orU/WqAQcJ9CT/Zu3x3wznHtHEajY32wsVO0oeP7vb09uHz5MkxPT9N8dhQGUYKEQMYyCPpxuBVavCzHYdNGsg7+ivs2NjbK49bX16PBFgX6HjNz9wH01ID+5aFuePmrI7jPbP2y63Z1s6zeZWzgHDIDzNuMJ4nCIEqQFiSaGVUDqhpfv7nUAy/e/BNeMie4at7/ODgMr/1+A34y71f774Vnjn5u2CGSdxeQk7Y1aXCb0qBR9IcMNAJ/HfrhKThN2WbN+9+sg46OjvIt/f39za5n0rYmDW6TecCANvYBn5j1ieL11SsAz17vgffgArwFfwGCRaj8lUDTNn5eti1pW5MGd0gwI8CYkH1u1hGzvm9U/oZR88fmb1LwwMBAzeFra2vlXXHs5Kampsr9hdqTtjVpcBs0Zh3PGaDowaNm/d6sD5v1SbO+ySD7PGJzczPfxSEzW0na1qTBXYrGbXeZFb34frN+Z1acvn87ALTrAkhQM9ZLGmhilWE6h5X7wawPmvVrBe37ILe9PU/xcHnF2MigcelvYR9uBIKm7MPKRpILKnkFPJejHI08Zgp8Zla7g7OPswFL8Waqp1TQWL8SNqrz+PgYtre383rbnZ1kb5YOOvtj/RrcOfN0mc5xmKReVLlrkfjwo0RF55B7X5iD6/8CPHrzbydsZg1O2F9c6s2PldLhSwNdA/nKhVOGfb/6Ybu8GiHjsXShJMAWB/qfj67BztW5HBRfmsEmO+GQ8Rx4nIKuZZn5IFOxAprTKo7v7s0VTErmrxJgS1F0U8hOumyjD7IU+xADmjrAZkBD9tvQVdGn1MoOkEMkWCFgXWWkwZagaK9ttAvbZSOpUz0RoF220S5kUjd5M2Uhqe0jNeiGttEubDoO4VI2ct4VndvGrefn6nJmUuJZPBrhqqIbdIRcifbAJQS8KrqeUp2ibW8NAevLOlTRt8k4PbqTikbrwOXce7Sdcaii2/0MNz7O2xnyuYt2Q+MnQxXt6Qw7oWh+DgwjYRYveR7tS+/aVTTPOEjNCtoxz6GKbtcom3i0a/h91qwDQ3J/VkX/D4pW63AruyaPdo3o2h0Z0mCFwmoeXdzx9s26tTqxZCu6AEynT9b5JwtctLxO0TSK4xlDq90Du32V/3hKX18fPaierL3JAtug+WQ9n6M4i6LpF2oUtOkM+Z1vhNpJRZOa6ROR8hFe0YomQK10iNyjETT+0BUuqb9ikRw0waSRoEvR7dgH2g9ZB8I+96B936qizpDmKkI7RJeiU0PGuidXNIHGx3Kx08JXVCDPOhoputHTS2QdCtp0hgQarzpCxoV8NVTFgeWSiipl8DrIXNGB8BoVS9m2unqlrEwNaK5olveehXfKtskDTd+CLbOPwqsDvnLc7CIoaBoV+r5ujPsVdDMdtbY//0KQDby1U3hLq6IdaGqAK+gOEWhwGvqhkpZ+W8lzPlV0wPVS0AGQOlFEQXeCYsA5FHQApE4UUdCdoBh4jrPC1s5QQQcSiFSsZUVvF1/Cf+T0Pw6pogMvVIbgCmjeQwguL6CgAwnTXIilUOfRNmh2YVTRgbxz63DBbnQBJNxNcbVP1FVnFcz4jVWXPWBZVK/934VwLhuXlI8WVA60fcfFpWQOmspLhC1e0aQOfteF3zl3KZr/pKaU7EMqaORb2gdXKr9bTvDt5zfoTroUyOJyTYe35R0iPdplQ6b3nrsxokQkqjINshHnnRipGUaVOkMfc9dosRJiqUQlA/Nu0cUUdKTLo6AVdCQCkcKoohV0JAKRwqiiFXQkApHCqKIVdCQCkcKoohV0JAKRwqiiFXQkApHCqKIVdCQCkcL8B69sJrVmi1iIAAAAAElFTkSuQmCC","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/fly/placas/mod1.png" style="width: 50px; height: 50px;"></p><p>Primero ve a los ajustes de tu keko cuenta, para ir a ellos, has clic en tu keko y en la ventana de acciones busca el bot&oacute;n &quot;Ajustes&quot; y hazle clic.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/1/5/2/0/215208de0c378466d6da956bcfafff33.png" style="width: 170px; height: 216.059px;"></p><p>Una vez que ya tengas la ventana de Ajustes, en la parte de abajo ver&aacute;s un cuadro donde est&aacute;n asignadas las placas activadas y que los dem&aacute;s usuarios pueden ver.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/8/0/9/2/78092d4dd5e97d626eb69881cd9bf647.png" style="width: 271px; height: 84.01px;"></p><p>Ahora para dejar de mostrar una placa, solo tienes que rastrar la que deseas no mostrar a donde dice &quot;Placas ocultas&quot; y la sueltas ah&iacute;.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/3/0/8/6/63086839100812dae423c3527643777f.png" style="width: 268px; height: 83.9733px;"></p><p>Luego haces clic en &quot;Editar keko&quot; y listo la placa que deseabas ocultar no se mostrara.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/d/6/b/e/1d6beb5adb35df8aca138e760e2141d0.png" style="width: 237px; height: 140.62px;"></p><p>Si deseas activarla, vuelve a los Ajustes y ve a &quot;Placas ocultas&quot; y rastra la placa que deseas mostrar a &nbsp;&quot;Placas Activadas&quot; la sueltas ah&iacute; y haces clic en &quot;Editar keko&quot;<img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/0/8/5/f/8085f6e153ada70a087be42b000a0cf0.png" style="width: 268px; height: 81.2933px;"></p>","0","0");
INSERT INTO kekoguias VALUES("49","Dracki","�Como descargar Lightshot para tomar capturas?","","565","2021-10-11","data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAB4CAYAAAByzOU/AAAFsElEQVR4nO2aP2ojSRSHHzRKxIIZMM60GEPjpHGwwmAKmkZxHaAOoHNsUgfYyLmZK/QcYNARNp7MgWMFo/htsHrl19VV/Uersb3490HRltQS6OufXr2qNhEAAAAAAAAAAAAAAACA/ymcGOCMMBFx27b89PTE3nsuy5LbtoX0MxAEtm3Lbduy95699/zw8BBk6yNB+GyCXC1Yj/v7ey7Lkq+vr7ksyzAIsgdhdczKjcd6veayLHm1WgXR8hpBdpIgOBY2NFLnJtINFEHykESd1tVqFf7WciE6T09yTnZOPh1/EbFolJAug6UiFpc7x3vfmxghustoHfbe893d3WApWa/XvdSjfLwy2GGItO12y03TDIqWi6Gfg+hXRkUPlZIpgyCaiAZEf/nyJXsBiIibpuldEGNMkAvRXXo1VY/tdjupf051JlgldgmJTnUXl5eXk7qQEdGAEqWD1GZSTrQc5fWUaCLiw+EA2UcGRVNUWlJSU88RET8/P0O0otdZ0FHw4XDQonq1XM5fLpdxPQ7vhehXRkXHwvXQCY5LBkR3SXYblBCdEi/npmozRHfJtm80IpvUryFuDwm3t3qcJJpU6Ui9D+1dn8HVH2Vk01GmrA7RR0+jswmkJTVNk5wE9blI9HSym/lN07AxhomIjTFhXFxcZFeJ8nkEyV0Wi0W23mrhQ3dX9ASINOfJipY63DQN13XNdV1zWZZc1zUbY3qyteTfL/+A6ATJeitHLXq5XHJd19llOESP0+se6rrulA1jTOdOi9y+Sm0ovfeX+eh0arEuEZS50427KqfD3vvQI0tdbpqGq6ripmn49vY2uXSH6Bkca2uYIKuq4rIs+ebmhuu6Dre44poM0fNh/vGN+ce3IPDq6iokW/rq1B4HJE+HvfdBtMimo/C6riH5DPB+V4QOQsvWwocGWrpx2HvPzjl+eVwE2c65nvDcsNbyflcg1QMEscaYIMxay865bMJlyPv2uyJuBUEEG2N4s9mwcy7IlWRba9laGy6CtZZ/fv/KP79/Dc/LhbHWQnSGIEin1znHm82G97uCnXNsjOH1eh127/TfL4+LkGTIThPkaMlatiR7vyvCkNKy3xX88rgI7xfBknKC6EBPakq0fmytTcrV50qJIYgmIiV5s9kkb2XpbVCRud8VXPy9DyVFvyYD5aNLUpKus6lEvzwu+Lc//+KXx0XndblYVVWF9yPV/5IsD8aYMPnFSY+7Ed2lyGtVVTGpCZY+uehkHdaTWZx06ULi5+LPKYoCohVZyUVRhJ9/qnTkHqdEo0YThYTGkmXkJkOInkeQIzXZWhskFUV/+Z36BegLIS0dRHfpiIslD4nWrZtekqdEo0Yr0bps0IBoneBYrhaORHcZTXRRFB2BsVBdw+UoEykh0YHOKi6VaJ3qWGxcs+WcWDISfUy09MW5RMdyc5Ojc46rqgqfIbt6zjmIHqvRqUTnRIvkeCJEoifWaFm4DPXNIlonGqJfmZRoKR+pRMfp1pMfRL+STbTuMrSwIdF6j4QgukNYgseJTokeSrSWHIvGZKgSLcvwePkdS44XMPHiRf8qpOtAomfUaBEfn6+X4/pcUqtCGfSJZU/qOlJDp1i3dbFoUv8kSRA9LdFzBkXL708vOt6PPrdogmQiSuxHQ/SvoVejRc45REfj09Jb0enFxlShslOXkAyOdETrRMtPfSyxED2NIDSVbDpRtDx+12/2weiIpkg4DYjWO3QUSYboND3R+piTrEXnavZ7fqmPTNyGZVMsolO1GYmejggalYxEnwck+o2YnWhs8p9Gdi867kziuy8QPY9RyfFdFP06QfQsZicapeM0kOg3AjX6jUCi34hZiYbo00Gi34DZfTRkn0ZP7tREQ/Y8/lOi0U/PIykvJTMlmiB5Fp1/7RqSnRjgBLJlgiD1l4DkAgAAAAAAAAAAAAAAAAAD/AN0pTzbWRLOvAAAAABJRU5ErkJggg==","<p>Para tomar capturas debes abrir una nueva pesta&ntilde;a en google o en el navegador que juegues en el chat de busqueda vas a buscar (Lightshot), &nbsp;vas darle clic al primer link de la lista en la parte superior de la pantalla a la derecha vas a ver 2 opciones de descargar una es (Descarga para Mac, Descarga para Windows) le vas a dar clic en la que dice (Descarga para Windows descargas el archivo vas a la carpeta de descargas de tu computadora y vas a ver el programa Lightshot para instalarlo vas a darle clic el programa aparece como (setup-lightshot),lo abres vas a ver un miniperfil tendras 2 opciones (Ejecutar/Cancelar) le vas a dar en (Ejecutar), luego te va a aparecer otro miniperfil tendr&agrave;s de nuevo 2 opciones (Si/No) le dar&agrave;s en (Si), luego va aparecer otro miniperfil donde vas a poner el idioma de tu programa, luego le das en (Aceptar), tendr&agrave;s otro miniperfil ay 2 opciones esta vez (No acepto el acuerdo/Acepto el acuerdo), le dar&agrave;s a la opcion (Acepto el acuerdo), y ya le daras en (Siguiente &gt;), luego le vuelves a dar en (Siguiente &gt;), y se comienza &nbsp;a instalar &nbsp;cuando acaba la instalaci&ograve;n se va a abrir una pagina en google donde te dar&agrave; la notica que ya tienes el programa y ya se instalo como tomar los capturas vas a buscar en tu teclado la letra (Impr Pant PetSis), si no la puedes encontrar mira aqui te dejo una imagen de como es:<img class="fr-dib fr-draggable" src="https://i0.wp.com/apuntesjulio.com/wp-content/uploads/2018/05/Como-realizar-una-captura-de-pantalla-en-windows.jpg?resize=299%2C168&ssl=1" style="width: 300px;"><br></p><p>Ya cuando das clic vas a tomar captura en el lugar donde ves el (Spam, Insulto, Incitaci&ograve;n a Cibersexo etc), ya tienes el programa ahora ya sabes como tomar capturas y tener prueba para los mods sobre tu caso!</p><p><br></p>","0","0");
INSERT INTO kekoguias VALUES("50","Gregorio ","�Como puedo cambiar mi look?","","500px","2021-10-12","https://v2.kekocity.com/uploads/02/9/a/6/5/b9a659b3b7f59cfcf6cbde3d3175c3cb.png","<p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/imagesnew/appico3/look.png" style="width: 34px; height: 34px;"></p><p>F&aacute;cil para cambiarte el look existen 2 opciones:</p><p>1) Dale clic a t&uacute; keko y saldr&aacute;n unas acciones entre ellas &quot;Cambiar mi ropa&quot; le das clic y se abrir&aacute; la ventana con todos lo accesorios que te puedes colocar.</p><p><img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/e/1/d/7/de1d71aa3f106c22cbfff50b6666d854.png" style="width: 129px; height: 31.2229px;"></p><p>2) En la esquina superior a la derecha donde se encuentra la tuerca le das clic se abrir&aacute;n unas opciones<br>entre ellas &quot;Cambiar mi look&quot; le das clic y se abrir&aacute; la misma ventana con accesorios.<img class="fr-dib fr-draggable" src="https://v2.kekocity.com/uploads/02/0/5/7/6/00576b9e268d71ad746d18ba93e55f6d.png" style="width: 144px; height: 180px;"></p>","0","0");



CREATE TABLE `likes_publis` (
  `id` int(9) unsigned NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `publi_id` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




CREATE TABLE `logs` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `accion` varchar(500) NOT NULL DEFAULT 'No definida',
  `fecha` varchar(100) NOT NULL DEFAULT 'No definida',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

INSERT INTO logs VALUES("1","Carlos","Ha reiniciado los Logs","2021-10-13");
INSERT INTO logs VALUES("2","Carlos","Ha reiniciado los Logs sospechosos","2021-10-13");
INSERT INTO logs VALUES("3","Gaston 1D","Se ha registrado","2021-10-13");
INSERT INTO logs VALUES("4","Gaston 1D","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("5","lSheryl","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("6","Danielito Hp","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("7","Emili76","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("8","Emili76","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("9","ZZOE","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("10","Yonnii","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("11","Deexse","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("12","Emili76","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("13","ZZOE","Ha enviado 6 Fichas a Yonnii","2021-10-13");
INSERT INTO logs VALUES("14","AlejandroPZK","Se ha registrado","2021-10-13");
INSERT INTO logs VALUES("15","AlejandroPZK","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("16","IS o f i a","Ha enviado 8 Fichas a Yonnii","2021-10-13");
INSERT INTO logs VALUES("17","Carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("18","johamxcfb","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("19","S a n t i i","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("20","Slaanaya","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("21","Carlos","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("22","carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("23","carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("24","LuLu LuLu","Se ha registrado","2021-10-13");
INSERT INTO logs VALUES("25","LuLu LuLu","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("26","Krozox","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("27","Krozox","Ha eliminado una placa","2021-10-13");
INSERT INTO logs VALUES("28","Krozox","Ha eliminado una placa","2021-10-13");
INSERT INTO logs VALUES("29","Slaanaya","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("30","1957","Se ha registrado","2021-10-13");
INSERT INTO logs VALUES("31","1957","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("32","Juan fc123","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("33","Krozox","Ha enviado un mensaje a Carlos","2021-10-13");
INSERT INTO logs VALUES("34","Krozox","Ha enviado un mensaje a Carlos","2021-10-13");
INSERT INTO logs VALUES("35","Krozox","Ha actualizado su perfil","2021-10-13");
INSERT INTO logs VALUES("36","Krozox","Ha actualizado su perfil","2021-10-13");
INSERT INTO logs VALUES("37","Franysbel","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("38","Franysbel","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("39","carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("40","Juan fc123","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("41","Lautaaro","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("42","Lautaaro","Ha actualizado su perfil","2021-10-13");
INSERT INTO logs VALUES("43","Krozox","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("44","Krozox","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("45","Carlos","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("46","carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("47","Krozox","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("48","Krozox","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("49","kekocity","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("50","Carlos","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("51","EVA18","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("52","Dracki","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("53","ZZOE","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("54","EVA18","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("55","llJosue","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("56","EVA18","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("57","Krozox","Ha editado un rango","2021-10-13");
INSERT INTO logs VALUES("58","Krozox","Ha editado un rango","2021-10-13");
INSERT INTO logs VALUES("59","Dendroid","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("60","ZZOE","Ha enviado 5 Fichas a wllamhp","2021-10-13");
INSERT INTO logs VALUES("61","carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("62","Carlos","Ha actualizado su perfil","2021-10-13");
INSERT INTO logs VALUES("63","Carlos","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("64","llJosue","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("65","llJosue","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("66","Lautaaro","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("67","carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("68","Carlos","Ha cerrado sesi�n","2021-10-13");
INSERT INTO logs VALUES("69","carlos","Ha iniciado sesi�n","2021-10-13");
INSERT INTO logs VALUES("70","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("71","EVA18","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("72","EVA18","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("73","Carlos","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("74","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("75","Rutierrez","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("76","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("77","Rutierrez","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("78","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("79","Rutierrez","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("80","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("81","Rutierrez","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("82","Rutierrez2","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("83","Rutierrez2","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("84","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("85","Lautaaro","Elimino un furni dev comprado a un usuario","2021-10-14");
INSERT INTO logs VALUES("86","Krozox","Ha editado los datos del usuario: IS o f i a","2021-10-14");
INSERT INTO logs VALUES("87","Lautaaro","Elimino un furni dev comprado a un usuario","2021-10-14");
INSERT INTO logs VALUES("88","Lautaaro","Ha enviado 100 puntos a Dendroid","2021-10-14");
INSERT INTO logs VALUES("89","Lautaaro","Elimino un furni dev comprado a un usuario","2021-10-14");
INSERT INTO logs VALUES("90","Lautaaro","Ha enviado 100 puntos a Yonnii","2021-10-14");
INSERT INTO logs VALUES("91","Fincool_Picachu","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("92","Fincool_Picachu","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("93","Fincool_Picachu","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("94","Krozox","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("95","Krozox99","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("96","Krozox99","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("97","Krozox","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("98","Lautaaro","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("99","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("100","Rutierrez","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("101","Rutierrez2","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("102","Rutierrez2","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("103","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("104","ZZOE","Ha enviado 7 Fichas a ByDiego","2021-10-14");
INSERT INTO logs VALUES("105","Krozox","Ha editado una Placa de la tienda elite","2021-10-14");
INSERT INTO logs VALUES("106","Rutierrez2","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("107","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("108","Nenyer2","Se ha registrado","2021-10-14");
INSERT INTO logs VALUES("109","Nenyer3","Se ha registrado","2021-10-14");
INSERT INTO logs VALUES("110","Krozox99","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("111","Nenyer3","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("112","Krozox","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("113","GHOSTJUNIOR","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("114","rutierrez2","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("115","ZZOE","Ha enviado 8 Fichas a AlejandroPZK","2021-10-14");
INSERT INTO logs VALUES("116","AlejandroPZK","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("117","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("118","Rutierrez2","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("119","rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("120","Rutierrez","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("121","IS o f i a ","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("122","Rutierrez","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("123","","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("124","Rutierrez2","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("125","Rutierrez2","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("126","Krozox","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("127","Krozox29","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("128","Krozox29","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("129","Krozox","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("130","GHOSTJUNIOR","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("131","ZZOE","Ha enviado 5 Fichas a ByDiego","2021-10-14");
INSERT INTO logs VALUES("132","Suh3y","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("133","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("134","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("135","Krozox","Ha editado una placa","2021-10-14");
INSERT INTO logs VALUES("136","Krozox","Ha editado una placa","2021-10-14");
INSERT INTO logs VALUES("137","Krozox","Ha editado una placa","2021-10-14");
INSERT INTO logs VALUES("138","Krozox","Ha editado una placa","2021-10-14");
INSERT INTO logs VALUES("139","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("140","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("141","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("142","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("143","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("144","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("145","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("146","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("147","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("148","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("149","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("150","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("151","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("152","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("153","Suh3y","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("154","Krozox","Ha eliminado una placa","2021-10-14");
INSERT INTO logs VALUES("155","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("156","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("157","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("158","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("159","Krozox","Ha eliminado una placa","2021-10-14");
INSERT INTO logs VALUES("160","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("161","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("162","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("163","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("164","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("165","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("166","llJosue","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("167","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("168","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("169","carlos","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("170","Krozox","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("171","CARLOS","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("172","Daysita","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("173","","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("174","yann","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("175","josmaar","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("176","Krozox","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("177","Carlos","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("178","ZZOE","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("179","yann","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("180","Dendroid","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("181","Albert","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("182","Carlos","Ha cerrado sesi�n","2021-10-14");
INSERT INTO logs VALUES("183","carlos","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("184","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("185","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("186","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("187","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("188","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("189","Kekocity","Ha iniciado sesi�n","2021-10-14");
INSERT INTO logs VALUES("190","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("191","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("192","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("193","Krozox","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("194","Krozox","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("195","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("196","Carlos","Ha actualizado su perfil","2021-10-14");
INSERT INTO logs VALUES("197","Lautaaro","Ha actualizado su perfil","2021-10-14");



CREATE TABLE `logs_sospechosos` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_logeado` varchar(180) DEFAULT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `accion` varchar(180) DEFAULT NULL,
  `fecha` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

INSERT INTO logs_sospechosos VALUES("1","lSheryl","172.70.54.51","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("2","Danielito Hp","172.70.82.81","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("3","Emili76","172.70.54.103","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("4","ZZOE","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("5","Yonnii","172.70.54.139","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("6","Deexse","172.70.54.103","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("7","Emili76","108.162.212.30","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("8","Carlos","108.162.210.237","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("9","johamxcfb","172.70.54.51","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("10","S a n t i i","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("11","Slaanaya","108.162.210.181","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("12","carlos","172.70.82.81","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("13","carlos","172.70.54.139","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("14","Krozox","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("15","Slaanaya","172.70.82.81","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("16","Juan fc123","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("17","Franysbel","108.162.210.179","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("18","Franysbel","108.162.210.179","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("19","carlos","172.70.54.103","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("20","Lautaaro","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("21","Krozox","172.70.54.107","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("22","carlos","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("23","Krozox","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("24","kekocity","108.162.210.149","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("25","EVA18","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("26","Dracki","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("27","ZZOE","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("28","llJosue","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("29","EVA18","172.70.54.51","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("30","Dendroid","162.158.187.90","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("31","carlos","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("32","llJosue","172.70.54.103","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("33","Lautaaro","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("34","carlos","108.162.210.149","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("35","carlos","108.162.210.149","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-13");
INSERT INTO logs_sospechosos VALUES("36","EVA18","172.70.82.241","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("37","Rutierrez","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("38","Rutierrez","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("39","Rutierrez","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("40","Rutierrez","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("41","Rutierrez2","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("42","Rutierrez","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("43","Fincool_Picachu","108.162.212.4","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("44","Fincool_Picachu","172.70.54.103","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("45","Krozox99","172.70.82.241","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("46","Krozox","172.70.82.241","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("47","Rutierrez","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("48","Rutierrez2","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("49","Rutierrez","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("50","Rutierrez2","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("51","Rutierrez","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("52","Krozox99","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("53","Krozox","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("54","GHOSTJUNIOR","172.70.82.81","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("55","rutierrez2","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("56","AlejandroPZK","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("57","Rutierrez","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("58","Rutierrez2","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("59","rutierrez","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("60","IS o f i a ","108.162.221.177","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("61","Rutierrez","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("62","Rutierrez2","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("63","Krozox29","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("64","Krozox","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("65","Suh3y","108.162.215.179","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("66","llJosue","172.70.82.241","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("67","carlos","108.162.210.153","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("68","Krozox","172.70.54.103","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("69","CARLOS","172.70.82.241","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("70","Daysita","172.70.82.81","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("71","yann","172.70.82.81","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("72","josmaar","172.70.82.241","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("73","Carlos","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("74","ZZOE","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("75","Dendroid","108.162.237.99","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("76","Albert","172.70.82.81","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("77","carlos","172.70.82.227","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");
INSERT INTO logs_sospechosos VALUES("78","Kekocity","172.70.82.195","Ha iniciado sesi�n con otra ip (La cuenta No a sido bloqueada)","2021-10-14");



CREATE TABLE `logs_visitantes` (
  `id` int(9) unsigned NOT NULL,
  `ip` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL,
  `hora` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




CREATE TABLE `misiones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(4000) NOT NULL,
  `texto` varchar(4000) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `autor` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO misiones VALUES("0","....","<p>...</p>","141414-12-14","Krozox");



CREATE TABLE `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumen` varchar(126) NOT NULL,
  `categoria` varchar(500) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `imagen` varchar(4000) NOT NULL,
  `noticia` varchar(4000) NOT NULL,
  `megusta` varchar(10) NOT NULL DEFAULT '0',
  `no_megusta` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO noticias VALUES("10","Carlos","REQUISITOS PARA LOS EVENTOS","Enhorabuena, los usuarios de kekocity disponen de alertas.","Noticia","2021-10-05","https://i.imgur.com/RJD7YVG.png","<p><span style="font-size: 14px;">Enhorabuena, los usuarios de KekoCity disponen ya de alertas para sus eventos, no necesitan de ning&uacute;n rango para que pidan alertas a los moderadores, solo necesitas cumplir algunos requisitos necesarios.</span></p><p><br><span style="font-size: 14px;">&nbsp;<strong>REQUISITOS PARA LOS EVENTOS</strong></span></p><p>- Tener mas de 7<strong>0 Horas jugadas en KekoCity</strong></p><p><br></p><p>- No tener <strong>sanciones o mal historial </strong>de acciones en la comunidad.</p><p><strong><br></strong>- Sala validas para eventos <strong>420 baldosas, 110 baldosas y 2550 baldosas</strong>.</p><p><br>- La sala debe tener un espacio donde puedan observar los espectadores.</p><p><br>- La entrada a la zona de juego debe estar protegida por doble seguridad, y a su vez, bloqueadas al momento de iniciar el evento.</p><p>- Evita colocar <strong>furnis con movimientos y Keko TV</strong>, para evadir el lag.</p><p><strong><br></strong><span style="font-size: 14px;"><strong>La sala debe estar condicionada con tres notas:</strong></span></p><p><strong>Amarilla</strong>: Informaci&oacute;n del evento y de como jugar</p><p><strong>Verde:</strong> Referente al premio al que gane el dicho evento</p><p><strong>Roja:</strong> Esta nota tendr&aacute; las reglas del juego e igualmente para los espectadores.</p><p><strong><u>PD: Nada de errores ortogr&aacute;ficos en las notas</u></strong></p><p><br>- El gu&iacute;a del evento deber&aacute; tener un apartado en la sala donde controlara el evento e igual para que el moderador supervise con el.</p><p><strong><span style="font-size: 14px;">Para aclarar.</span></strong></p><p><u>&iquest;Qu&eacute; es un evento oficial?</u></p><p>Es todo evento que est&eacute; hecho por un usuario a partir del rango de becario en adelante y con usuarios de placas VIP.</p><p><u>&iquest;C&oacute;mo identificamos un evento oficial?&nbsp;</u></p><p><strong>En el nombre de la sala llevar&aacute; la abreviatura [EO],&nbsp;</strong>y para verificar sobre el due&ntilde;o, al hacer click sobre &eacute;l podr&aacute;s ver la placa que identifica su cargo.</p><p><u>&iquest;Qu&eacute; es un evento autorizado?</u></p><p>Es todo evento en donde el moderador realiza alerta, estas tipo de eventos son realizados por los usuarios que cumplan cada uno de los requisitos para evento.</p><p>La alerta a un evento autorizado aparecer&aacute; del lado derecho de la pantalla, junto con un sonido (si los tienes activados).</p><p><strong>En el nombre de la sala llevar&aacute; la abreviatura [EA],</strong> adem&aacute;s, el moderador supervisor enviar&aacute; una alerta a la sala indicando de su presencia y funci&oacute;n.</p><p><u>&iquest;Tengo que tener rango para tener acceso a una alerta?&nbsp;</u></p><p>No, si cumples los requisitos descritos anteriormente, un moderador puede autorizar tu evento, <strong>siempre y cuando el mod lo considere.</strong></p><p><strong><br></strong><span style="color: rgb(209, 72, 65);"><span style="font-size: 14px;"><strong>El moderador, no se ve obligado a autorizar eventos [EA] a pesar de cumplir las normas.</strong></span></span></p>","28","1");



CREATE TABLE `placas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL,
  `imagen` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO placas VALUES("18","Cristalina Turquesa","https://v2.kekocity.com/fly/i/fursv5/8814/4012635mini.png");
INSERT INTO placas VALUES("19","Cristalina Morada","https://v2.kekocity.com/fly/i/fursv5/8812/4012634mini.png");
INSERT INTO placas VALUES("20","Hamaca Dorada","https://v2.kekocity.com/fly/i/fursv5/8894/4012660mini.png");
INSERT INTO placas VALUES("21","Hamaca Magenta","https://v2.kekocity.com/fly/i/fursv5/1692/400664mini.png");
INSERT INTO placas VALUES("22","Sombrilla Verde","https://v2.kekocity.com/fly/i/fursv5/11801/4013594mini.png");
INSERT INTO placas VALUES("23","Sombrilla Mandarina","https://v2.kekocity.com/fly/i/fursv5/11809/4013598mini.png");
INSERT INTO placas VALUES("24","Sombrilla Azul","https://v2.kekocity.com/fly/i/fursv5/11793/4013590mini.png");
INSERT INTO placas VALUES("25","Sombrilla Roja","https://v2.kekocity.com/fly/i/fursv5/11785/4013586mini.png");
INSERT INTO placas VALUES("26","Caja Fuerte","https://v2.kekocity.com/fly/i/fursv5/5242/4011483mini.png");
INSERT INTO placas VALUES("11","KekoAwards","https://v2.kekocity.com/fly/placas/award.png");
INSERT INTO placas VALUES("14","20 Puntos","/images/cofre.png");
INSERT INTO placas VALUES("15","50 Puntos","/images/cofre.png");
INSERT INTO placas VALUES("16","100 Puntos","/images/cofre.png");
INSERT INTO placas VALUES("17","Pase Elite [Tienda Exclusiva]","https://kuinz-fansite.space/images/elite-k.png");
INSERT INTO placas VALUES("27","Dromaeosaurus","https://v2.kekocity.com/fly/i/fursv5/9926/4013047mini.png");
INSERT INTO placas VALUES("28","Espada Legendaria","https://v2.kekocity.com/fly/i/fursv5/10869/4013318mini.png");
INSERT INTO placas VALUES("29","Teleport Elevador","https://v2.kekocity.com/fly/i/fursv5/22673/4016767mini.png");
INSERT INTO placas VALUES("1","Bonsai Exclusivo","https://v2.kekocity.com/fly/i/fursv5/1511/400218mini.png");
INSERT INTO placas VALUES("2","Bolas de Drac","https://v2.kekocity.com/fly/i/fursv5/1295/400049mini.png");
INSERT INTO placas VALUES("3","Papelera cubik","https://v2.kekocity.com/fly/i/fursv5/1331/5494mini.png");
INSERT INTO placas VALUES("4","Elefante Dorado","https://v2.kekocity.com/fly/i/fursv5/30804/4018933mini.png");
INSERT INTO placas VALUES("5","Logo KekoCity (Dorado)","https://v2.kekocity.com/fly/i/fursv5/30746/4018910mini.png");
INSERT INTO placas VALUES("6","Excalivur","https://v2.kekocity.com/fly/i/fursv5/2480/4010598mini.png");
INSERT INTO placas VALUES("7","Marc Galluci","https://v2.kekocity.com/fly/i/fursv5/4453/4011211mini.png");
INSERT INTO placas VALUES("8","Maquina de Cacao","https://v2.kekocity.com/fly/i/fursv5/2162/4010454mini.png");
INSERT INTO placas VALUES("9","Bloques de Ladrillo","https://v2.kekocity.com/fly/i/fursv5/17813/4015467mini.png");
INSERT INTO placas VALUES("10","Logo de KekoCity","https://v2.kekocity.com/fly/i/fursv5/29581/4018617mini.png");



CREATE TABLE `placasdev` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL,
  `imagen` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

INSERT INTO placasdev VALUES("36","Pie","https://v2.kekocity.com/fly/i/fursv5/31276/4019134mini.png");
INSERT INTO placasdev VALUES("37","Alien","https://v2.kekocity.com/fly/i/fursv5/31334/4019158mini.png");
INSERT INTO placasdev VALUES("38","Estrella diabolica","https://v2.kekocity.com/fly/i/fursv5/31280/4019136mini.png");
INSERT INTO placasdev VALUES("39","Charco de sangre","https://v2.kekocity.com/fly/i/fursv5/31284/4019138mini.png");
INSERT INTO placasdev VALUES("40","Ayuda","https://v2.kekocity.com/fly/i/fursv5/31278/4019135mini.png");
INSERT INTO placasdev VALUES("41","Jajaja :D","https://v2.kekocity.com/fly/i/fursv5/31282/4019137mini.png");
INSERT INTO placasdev VALUES("42","Luz","https://v2.kekocity.com/fly/i/fursv5/31338/4019160mini.png");
INSERT INTO placasdev VALUES("43","Gato Negro","https://v2.kekocity.com/fly/i/fursv5/30916/4018974mini.png");
INSERT INTO placasdev VALUES("44","Calabaza Halloween","https://v2.kekocity.com/fly/i/fursv5/30422/4018807mini.png");
INSERT INTO placasdev VALUES("45","Ojo volador","https://v2.kekocity.com/fly/i/fursv5/30430/4018811mini.png");
INSERT INTO placasdev VALUES("46","Ataud","https://v2.kekocity.com/fly/i/fursv5/30432/4018812mini.png");
INSERT INTO placasdev VALUES("28","Muerto sin piernas","https://v2.kekocity.com/fly/i/fursv5/31248/4019120mini.png");
INSERT INTO placasdev VALUES("29","Negro decapitado","https://v2.kekocity.com/fly/i/fursv5/31252/4019122mini.png");
INSERT INTO placasdev VALUES("30","Muerto sin piernas #2","https://v2.kekocity.com/fly/i/fursv5/31256/4019124mini.png");
INSERT INTO placasdev VALUES("31","Negro sin cara","https://v2.kekocity.com/fly/i/fursv5/31260/4019126mini.png");
INSERT INTO placasdev VALUES("32","Muerto descuartizado","https://v2.kekocity.com/fly/i/fursv5/31264/4019128mini.png");
INSERT INTO placasdev VALUES("33","Muerto a la mitad","https://v2.kekocity.com/fly/i/fursv5/31268/4019130mini.png");
INSERT INTO placasdev VALUES("34","Muerto camillla","https://v2.kekocity.com/fly/i/fursv5/31340/4019161mini.png");
INSERT INTO placasdev VALUES("35","Muerto colgando","https://v2.kekocity.com/fly/i/fursv5/31272/4019132mini.png");



CREATE TABLE `placase` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `code` varchar(500) NOT NULL,
  `imagen` varchar(280) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO placase VALUES("22","KekoAwards","https://v2.kekocity.com/fly/placas/award.png");
INSERT INTO placase VALUES("23","x3 Tronos de piedra + x2 Banderas Rojas","https://images-kuinz.online/i/New%20Piskel%20%285%29.png");
INSERT INTO placase VALUES("24","Mesa de Poker + x3 Taburetes","https://images-kuinz.online/i/New%20Piskel%20%286%29.png");
INSERT INTO placase VALUES("25","Trono de reina + Huevo de reina","https://images-kuinz.online/i/New%20Piskel%20%283%29.png");
INSERT INTO placase VALUES("26","x4 Tronos de concha + x2 columnas calavera + calavera","https://images-kuinz.online/i/New%20Piskel%20%287%29.png");
INSERT INTO placase VALUES("27","x2 Farolas + x2 Gatos + x2 Extra�o flotante","https://images-kuinz.online/i/New%20Piskel%20%288%29.png");
INSERT INTO placase VALUES("28","Halo Rojo / Verde + Soldado Rob�tico + Alien","https://images-kuinz.online/i/New%20Piskel%20%289%29.png");
INSERT INTO placase VALUES("29","Soldado + AK47 + Bomba + x2 Muertos","https://images-kuinz.online/i/New%20Piskel%20%2810%29.png");
INSERT INTO placase VALUES("30","x6 Muros +  x6 Suelo rocoso","https://images-kuinz.online/i/New%20Piskel%20%2811%29.png");
INSERT INTO placase VALUES("31","Container + x4 Pilares + x2 Barriles de fuego","https://images-kuinz.online/i/New%20Piskel%20%2812%29.png");
INSERT INTO placase VALUES("32","x2 N�1+ x2  N�2 + x2  N�5 +  x2 N�0","https://images-kuinz.online/i/New%20Piskel%20%2813%29.png");
INSERT INTO placase VALUES("0","Excalivur","https://v2.kekocity.com/fly/i/fursv5/2480/4010598mini.png");



CREATE TABLE `publicaciones` (
  `id` int(9) unsigned NOT NULL,
  `publicacion` varchar(180) DEFAULT NULL,
  `username` varchar(180) DEFAULT NULL,
  `avatar` varchar(180) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




CREATE TABLE `publicidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumen` varchar(126) NOT NULL,
  `categoria` varchar(500) NOT NULL,
  `fecha` varchar(12) NOT NULL,
  `imagen` varchar(4000) NOT NULL,
  `noticia` varchar(4000) NOT NULL,
  `megusta` varchar(10) NOT NULL DEFAULT '0',
  `no_megusta` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO publicidad VALUES("1","Krozox","Publicidad","","","2021-10-14","","<p><img class="fr-draggable fr-dii" src="https://kekocity.com/fly/placas/mod4.png" style="width: 50px; height: 50px;"></p>","0","0");
INSERT INTO publicidad VALUES("4","Krozox","","","","2021-10-14","","<p><img class="fr-draggable fr-dii" src="https://images-kuinz.online/i/descarga%20%2830%29.png" style="width: 380px; height: 226.562px;"></p><p><br></p><p><img class="fr-draggable fr-dii" src="https://images-kuinz.online/i/descarga%20%2830%29.png" style="width: 371px; height: 221.363px;"></p>","0","0");



CREATE TABLE `rangos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `mision` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO rangos VALUES("5","Moderador","Moderador del fansite","orange");
INSERT INTO rangos VALUES("4","Helper","Noticias","blue");
INSERT INTO rangos VALUES("2","Pase �lite","Usuario prestigioso","blue");
INSERT INTO rangos VALUES("1","Usuario","Usuario de Kuinz Fansite","azul");
INSERT INTO rangos VALUES("7","Fundador","Estos son los fundadores de Kuinz.","oscuro");
INSERT INTO rangos VALUES("6","Encargado","Administradores del Fansite","red");
INSERT INTO rangos VALUES("3","Becario","Publicidades","red");



CREATE TABLE `reportes` (
  `id` int(9) unsigned NOT NULL,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_reportado` varchar(180) DEFAULT NULL,
  `mensaje` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `estado` varchar(180) DEFAULT NULL,
  `fecha_i` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO reportes VALUES("0","Krozox","Carlos","jeje","Abuso / Acoso / Molestia","Resuelto","2021-09-17");



CREATE TABLE `secciones_furnis` (
  `id` int(9) unsigned NOT NULL,
  `nombre` varchar(180) DEFAULT NULL,
  `tipo_n` varchar(180) DEFAULT NULL,
  `url_seccion` varchar(180) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO secciones_furnis VALUES("1","Rares Comunes","furnis_1","comunes");
INSERT INTO secciones_furnis VALUES("2","Exclusivos","furnis_2","megas");
INSERT INTO secciones_furnis VALUES("3","LIMITED","furnis_3","limited");
INSERT INTO secciones_furnis VALUES("4","Ultras","furnis_4","ultras");
INSERT INTO secciones_furnis VALUES("5","Extra�os","furnis_5","extranos");
INSERT INTO secciones_furnis VALUES("6","Dev","furni_6","dev");
INSERT INTO secciones_furnis VALUES("7","San Valentin","furni_7","san-valentin");



CREATE TABLE `seguidores` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `id_seguidor` int(18) NOT NULL,
  `id_perfil` int(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=455 DEFAULT CHARSET=utf8;

INSERT INTO seguidores VALUES("1","629","2");
INSERT INTO seguidores VALUES("2","1149","2");
INSERT INTO seguidores VALUES("3","313","2");
INSERT INTO seguidores VALUES("4","313","1149");
INSERT INTO seguidores VALUES("5","2","1149");
INSERT INTO seguidores VALUES("6","2","803");
INSERT INTO seguidores VALUES("7","2","1160");
INSERT INTO seguidores VALUES("8","2","24");
INSERT INTO seguidores VALUES("9","2","1");
INSERT INTO seguidores VALUES("10","2","313");
INSERT INTO seguidores VALUES("11","1151","1209");
INSERT INTO seguidores VALUES("12","2","1209");
INSERT INTO seguidores VALUES("13","1209","2");
INSERT INTO seguidores VALUES("14","1209","629");
INSERT INTO seguidores VALUES("15","1209","1149");
INSERT INTO seguidores VALUES("16","2","217");
INSERT INTO seguidores VALUES("17","208","629");
INSERT INTO seguidores VALUES("18","1149","24");
INSERT INTO seguidores VALUES("19","2","629");
INSERT INTO seguidores VALUES("20","1101","1464");
INSERT INTO seguidores VALUES("21","1464","1101");
INSERT INTO seguidores VALUES("22","1416","217");
INSERT INTO seguidores VALUES("23","1465","1");
INSERT INTO seguidores VALUES("24","1465","2");
INSERT INTO seguidores VALUES("25","557","1428");
INSERT INTO seguidores VALUES("26","1464","1437");
INSERT INTO seguidores VALUES("27","1149","1");
INSERT INTO seguidores VALUES("28","557","2");
INSERT INTO seguidores VALUES("29","2","557");
INSERT INTO seguidores VALUES("30","1111","2");
INSERT INTO seguidores VALUES("31","1209","1");
INSERT INTO seguidores VALUES("32","1305","1356");
INSERT INTO seguidores VALUES("33","1209","1305");
INSERT INTO seguidores VALUES("34","1305","1209");
INSERT INTO seguidores VALUES("35","1285","1305");
INSERT INTO seguidores VALUES("36","1305","1285");
INSERT INTO seguidores VALUES("37","14","1305");
INSERT INTO seguidores VALUES("38","1285","1181");
INSERT INTO seguidores VALUES("39","1181","1285");
INSERT INTO seguidores VALUES("40","1209","1181");
INSERT INTO seguidores VALUES("41","1181","1209");
INSERT INTO seguidores VALUES("42","1150","1209");
INSERT INTO seguidores VALUES("43","1150","1285");
INSERT INTO seguidores VALUES("44","217","1285");
INSERT INTO seguidores VALUES("45","1209","1150");
INSERT INTO seguidores VALUES("46","1285","1150");
INSERT INTO seguidores VALUES("47","1241","1285");
INSERT INTO seguidores VALUES("48","1285","217");
INSERT INTO seguidores VALUES("49","449","217");
INSERT INTO seguidores VALUES("50","268","1150");
INSERT INTO seguidores VALUES("51","1150","268");
INSERT INTO seguidores VALUES("52","217","449");
INSERT INTO seguidores VALUES("53","798","217");
INSERT INTO seguidores VALUES("54","1305","1150");
INSERT INTO seguidores VALUES("55","1150","1305");
INSERT INTO seguidores VALUES("56","1209","217");
INSERT INTO seguidores VALUES("57","217","1209");
INSERT INTO seguidores VALUES("58","1305","14");
INSERT INTO seguidores VALUES("59","217","1150");
INSERT INTO seguidores VALUES("60","1150","217");
INSERT INTO seguidores VALUES("61","217","629");
INSERT INTO seguidores VALUES("62","1148","1150");
INSERT INTO seguidores VALUES("63","629","217");
INSERT INTO seguidores VALUES("64","2","1285");
INSERT INTO seguidores VALUES("65","629","208");
INSERT INTO seguidores VALUES("66","1166","217");
INSERT INTO seguidores VALUES("67","1147","1150");
INSERT INTO seguidores VALUES("68","1147","1209");
INSERT INTO seguidores VALUES("69","1469","217");
INSERT INTO seguidores VALUES("70","1471","1285");
INSERT INTO seguidores VALUES("71","449","1209");
INSERT INTO seguidores VALUES("72","1472","1285");
INSERT INTO seguidores VALUES("73","217","14");
INSERT INTO seguidores VALUES("74","1157","217");
INSERT INTO seguidores VALUES("75","629","1285");
INSERT INTO seguidores VALUES("76","1285","629");
INSERT INTO seguidores VALUES("77","492","217");
INSERT INTO seguidores VALUES("78","14","629");
INSERT INTO seguidores VALUES("79","217","557");
INSERT INTO seguidores VALUES("80","1285","557");
INSERT INTO seguidores VALUES("81","1473","1150");
INSERT INTO seguidores VALUES("82","629","14");
INSERT INTO seguidores VALUES("83","557","1285");
INSERT INTO seguidores VALUES("84","629","557");
INSERT INTO seguidores VALUES("85","1410","1285");
INSERT INTO seguidores VALUES("86","557","629");
INSERT INTO seguidores VALUES("87","1149","557");
INSERT INTO seguidores VALUES("88","557","217");
INSERT INTO seguidores VALUES("89","1285","1410");
INSERT INTO seguidores VALUES("90","1474","1305");
INSERT INTO seguidores VALUES("91","1475","14");
INSERT INTO seguidores VALUES("92","1209","1410");
INSERT INTO seguidores VALUES("93","1410","1209");
INSERT INTO seguidores VALUES("94","1477","1305");
INSERT INTO seguidores VALUES("95","1477","1410");
INSERT INTO seguidores VALUES("96","1410","1305");
INSERT INTO seguidores VALUES("97","1150","1166");
INSERT INTO seguidores VALUES("98","1478","1305");
INSERT INTO seguidores VALUES("99","1236","1166");
INSERT INTO seguidores VALUES("100","1332","1166");
INSERT INTO seguidores VALUES("101","1150","14");
INSERT INTO seguidores VALUES("102","1332","1305");
INSERT INTO seguidores VALUES("103","1150","629");
INSERT INTO seguidores VALUES("104","1480","1305");
INSERT INTO seguidores VALUES("105","1481","1305");
INSERT INTO seguidores VALUES("106","1482","14");
INSERT INTO seguidores VALUES("107","1483","1305");
INSERT INTO seguidores VALUES("108","217","2");
INSERT INTO seguidores VALUES("109","217","1166");
INSERT INTO seguidores VALUES("110","1485","14");
INSERT INTO seguidores VALUES("111","1487","14");
INSERT INTO seguidores VALUES("112","1160","1166");
INSERT INTO seguidores VALUES("113","552","217");
INSERT INTO seguidores VALUES("114","1489","14");
INSERT INTO seguidores VALUES("115","1488","1305");
INSERT INTO seguidores VALUES("116","1160","217");
INSERT INTO seguidores VALUES("117","146","14");
INSERT INTO seguidores VALUES("118","1490","14");
INSERT INTO seguidores VALUES("119","146","1305");
INSERT INTO seguidores VALUES("120","217","1160");
INSERT INTO seguidores VALUES("121","1181","217");
INSERT INTO seguidores VALUES("122","217","1181");
INSERT INTO seguidores VALUES("123","1491","14");
INSERT INTO seguidores VALUES("124","1149","217");
INSERT INTO seguidores VALUES("125","217","1149");
INSERT INTO seguidores VALUES("126","1492","14");
INSERT INTO seguidores VALUES("127","1493","14");
INSERT INTO seguidores VALUES("128","1494","14");
INSERT INTO seguidores VALUES("129","1182","217");
INSERT INTO seguidores VALUES("130","1495","14");
INSERT INTO seguidores VALUES("131","1181","1182");
INSERT INTO seguidores VALUES("132","1182","1181");
INSERT INTO seguidores VALUES("133","1209","1182");
INSERT INTO seguidores VALUES("134","1182","1209");
INSERT INTO seguidores VALUES("135","217","1185");
INSERT INTO seguidores VALUES("136","1185","217");
INSERT INTO seguidores VALUES("137","607","217");
INSERT INTO seguidores VALUES("138","1185","1182");
INSERT INTO seguidores VALUES("139","1182","1185");
INSERT INTO seguidores VALUES("140","1496","1305");
INSERT INTO seguidores VALUES("141","217","607");
INSERT INTO seguidores VALUES("142","1497","1305");
INSERT INTO seguidores VALUES("143","1498","14");
INSERT INTO seguidores VALUES("144","1499","1305");
INSERT INTO seguidores VALUES("145","642","1181");
INSERT INTO seguidores VALUES("146","1500","14");
INSERT INTO seguidores VALUES("147","1501","1305");
INSERT INTO seguidores VALUES("148","1503","1305");
INSERT INTO seguidores VALUES("149","1182","449");
INSERT INTO seguidores VALUES("150","146","552");
INSERT INTO seguidores VALUES("151","449","1182");
INSERT INTO seguidores VALUES("152","1504","1305");
INSERT INTO seguidores VALUES("153","1182","1305");
INSERT INTO seguidores VALUES("154","1506","14");
INSERT INTO seguidores VALUES("155","629","1182");
INSERT INTO seguidores VALUES("156","1507","14");
INSERT INTO seguidores VALUES("157","1508","1305");
INSERT INTO seguidores VALUES("158","1189","217");
INSERT INTO seguidores VALUES("159","1509","14");
INSERT INTO seguidores VALUES("160","1181","449");
INSERT INTO seguidores VALUES("161","1510","14");
INSERT INTO seguidores VALUES("162","1505","642");
INSERT INTO seguidores VALUES("163","1512","1305");
INSERT INTO seguidores VALUES("164","1511","14");
INSERT INTO seguidores VALUES("165","1513","642");
INSERT INTO seguidores VALUES("166","1514","14");
INSERT INTO seguidores VALUES("167","1515","642");
INSERT INTO seguidores VALUES("168","1516","14");
INSERT INTO seguidores VALUES("169","1181","1197");
INSERT INTO seguidores VALUES("170","155","217");
INSERT INTO seguidores VALUES("171","146","1285");
INSERT INTO seguidores VALUES("172","1517","1189");
INSERT INTO seguidores VALUES("173","598","217");
INSERT INTO seguidores VALUES("174","146","217");
INSERT INTO seguidores VALUES("175","1518","642");
INSERT INTO seguidores VALUES("176","14","146");
INSERT INTO seguidores VALUES("177","1519","1189");
INSERT INTO seguidores VALUES("178","1520","14");
INSERT INTO seguidores VALUES("179","1451","1305");
INSERT INTO seguidores VALUES("180","1189","1181");
INSERT INTO seguidores VALUES("181","1181","1189");
INSERT INTO seguidores VALUES("182","1209","806");
INSERT INTO seguidores VALUES("183","1522","1305");
INSERT INTO seguidores VALUES("184","1181","1305");
INSERT INTO seguidores VALUES("185","1356","1181");
INSERT INTO seguidores VALUES("186","1522","1181");
INSERT INTO seguidores VALUES("187","1166","1182");
INSERT INTO seguidores VALUES("188","1524","1305");
INSERT INTO seguidores VALUES("189","1171","1305");
INSERT INTO seguidores VALUES("190","1435","1305");
INSERT INTO seguidores VALUES("191","1171","1237");
INSERT INTO seguidores VALUES("192","1171","1160");
INSERT INTO seguidores VALUES("193","1435","217");
INSERT INTO seguidores VALUES("194","1182","1160");
INSERT INTO seguidores VALUES("195","17","217");
INSERT INTO seguidores VALUES("196","1236","1209");
INSERT INTO seguidores VALUES("197","1435","1209");
INSERT INTO seguidores VALUES("198","1525","217");
INSERT INTO seguidores VALUES("199","1526","1305");
INSERT INTO seguidores VALUES("200","1484","1209");
INSERT INTO seguidores VALUES("201","1521","217");
INSERT INTO seguidores VALUES("202","1527","217");
INSERT INTO seguidores VALUES("203","1526","1521");
INSERT INTO seguidores VALUES("204","1529","217");
INSERT INTO seguidores VALUES("205","1530","1305");
INSERT INTO seguidores VALUES("206","1160","607");
INSERT INTO seguidores VALUES("207","1147","17");
INSERT INTO seguidores VALUES("208","1531","217");
INSERT INTO seguidores VALUES("209","1236","217");
INSERT INTO seguidores VALUES("210","1484","217");
INSERT INTO seguidores VALUES("211","1532","1521");
INSERT INTO seguidores VALUES("212","2","1305");
INSERT INTO seguidores VALUES("213","1533","217");
INSERT INTO seguidores VALUES("214","1484","1305");
INSERT INTO seguidores VALUES("215","1535","217");
INSERT INTO seguidores VALUES("216","1534","1305");
INSERT INTO seguidores VALUES("217","1535","1356");
INSERT INTO seguidores VALUES("218","217","682");
INSERT INTO seguidores VALUES("219","1536","217");
INSERT INTO seguidores VALUES("220","1536","1356");
INSERT INTO seguidores VALUES("221","1537","1305");
INSERT INTO seguidores VALUES("222","1539","217");
INSERT INTO seguidores VALUES("223","1540","1305");
INSERT INTO seguidores VALUES("224","1541","217");
INSERT INTO seguidores VALUES("225","1461","1305");
INSERT INTO seguidores VALUES("226","1543","217");
INSERT INTO seguidores VALUES("227","1542","1305");
INSERT INTO seguidores VALUES("228","1544","217");
INSERT INTO seguidores VALUES("229","629","682");
INSERT INTO seguidores VALUES("230","1545","217");
INSERT INTO seguidores VALUES("231","1546","217");
INSERT INTO seguidores VALUES("232","1548","1305");
INSERT INTO seguidores VALUES("233","1549","217");
INSERT INTO seguidores VALUES("234","1550","217");
INSERT INTO seguidores VALUES("235","1551","1305");
INSERT INTO seguidores VALUES("236","1521","629");
INSERT INTO seguidores VALUES("237","1552","217");
INSERT INTO seguidores VALUES("238","1553","1305");
INSERT INTO seguidores VALUES("239","1554","1305");
INSERT INTO seguidores VALUES("240","1555","1305");
INSERT INTO seguidores VALUES("241","1556","1305");
INSERT INTO seguidores VALUES("242","1559","217");
INSERT INTO seguidores VALUES("243","1484","1149");
INSERT INTO seguidores VALUES("244","1209","1185");
INSERT INTO seguidores VALUES("245","1181","1185");
INSERT INTO seguidores VALUES("246","1185","1181");
INSERT INTO seguidores VALUES("247","642","1185");
INSERT INTO seguidores VALUES("248","1151","1305");
INSERT INTO seguidores VALUES("249","1560","1305");
INSERT INTO seguidores VALUES("250","1561","1305");
INSERT INTO seguidores VALUES("251","1562","1305");
INSERT INTO seguidores VALUES("252","1532","682");
INSERT INTO seguidores VALUES("253","1563","682");
INSERT INTO seguidores VALUES("254","1564","14");
INSERT INTO seguidores VALUES("255","1565","14");
INSERT INTO seguidores VALUES("256","1565","1305");
INSERT INTO seguidores VALUES("257","1567","14");
INSERT INTO seguidores VALUES("258","1568","14");
INSERT INTO seguidores VALUES("259","1569","14");
INSERT INTO seguidores VALUES("260","1570","14");
INSERT INTO seguidores VALUES("261","1572","14");
INSERT INTO seguidores VALUES("262","1573","14");
INSERT INTO seguidores VALUES("263","1574","14");
INSERT INTO seguidores VALUES("264","1575","14");
INSERT INTO seguidores VALUES("265","557","208");
INSERT INTO seguidores VALUES("266","37","208");
INSERT INTO seguidores VALUES("267","1576","208");
INSERT INTO seguidores VALUES("268","1576","14");
INSERT INTO seguidores VALUES("269","208","14");
INSERT INTO seguidores VALUES("270","1437","14");
INSERT INTO seguidores VALUES("271","208","1101");
INSERT INTO seguidores VALUES("272","1577","1101");
INSERT INTO seguidores VALUES("273","1101","208");
INSERT INTO seguidores VALUES("274","1577","14");
INSERT INTO seguidores VALUES("275","1437","208");
INSERT INTO seguidores VALUES("276","1577","1437");
INSERT INTO seguidores VALUES("277","1437","1101");
INSERT INTO seguidores VALUES("278","1101","1437");
INSERT INTO seguidores VALUES("279","1578","14");
INSERT INTO seguidores VALUES("280","1580","14");
INSERT INTO seguidores VALUES("281","557","14");
INSERT INTO seguidores VALUES("282","557","1101");
INSERT INTO seguidores VALUES("283","1580","557");
INSERT INTO seguidores VALUES("284","1101","557");
INSERT INTO seguidores VALUES("285","1582","14");
INSERT INTO seguidores VALUES("286","1276","1437");
INSERT INTO seguidores VALUES("287","557","1437");
INSERT INTO seguidores VALUES("288","1583","217");
INSERT INTO seguidores VALUES("289","1584","14");
INSERT INTO seguidores VALUES("290","1585","14");
INSERT INTO seguidores VALUES("291","1586","14");
INSERT INTO seguidores VALUES("292","1437","557");
INSERT INTO seguidores VALUES("293","1356","217");
INSERT INTO seguidores VALUES("294","1587","14");
INSERT INTO seguidores VALUES("295","1589","14");
INSERT INTO seguidores VALUES("296","208","1054");
INSERT INTO seguidores VALUES("297","1356","1101");
INSERT INTO seguidores VALUES("298","1101","217");
INSERT INTO seguidores VALUES("299","1591","14");
INSERT INTO seguidores VALUES("300","1054","208");
INSERT INTO seguidores VALUES("301","798","208");
INSERT INTO seguidores VALUES("302","1592","14");
INSERT INTO seguidores VALUES("303","1593","14");
INSERT INTO seguidores VALUES("304","1595","14");
INSERT INTO seguidores VALUES("305","217","1437");
INSERT INTO seguidores VALUES("306","1437","217");
INSERT INTO seguidores VALUES("307","217","1054");
INSERT INTO seguidores VALUES("308","1054","217");
INSERT INTO seguidores VALUES("309","525","217");
INSERT INTO seguidores VALUES("310","1597","1305");
INSERT INTO seguidores VALUES("311","1598","1305");
INSERT INTO seguidores VALUES("312","1599","1305");
INSERT INTO seguidores VALUES("313","1101","1305");
INSERT INTO seguidores VALUES("314","1601","14");
INSERT INTO seguidores VALUES("315","429","217");
INSERT INTO seguidores VALUES("316","1602","14");
INSERT INTO seguidores VALUES("317","1603","14");
INSERT INTO seguidores VALUES("318","1604","1305");
INSERT INTO seguidores VALUES("319","1216","217");
INSERT INTO seguidores VALUES("320","1119","1101");
INSERT INTO seguidores VALUES("321","1119","1305");
INSERT INTO seguidores VALUES("322","1606","14");
INSERT INTO seguidores VALUES("323","1605","1305");
INSERT INTO seguidores VALUES("324","1119","1437");
INSERT INTO seguidores VALUES("325","1101","1119");
INSERT INTO seguidores VALUES("326","1605","1119");
INSERT INTO seguidores VALUES("327","1437","1119");
INSERT INTO seguidores VALUES("328","1429","217");
INSERT INTO seguidores VALUES("329","1608","14");
INSERT INTO seguidores VALUES("330","1610","14");
INSERT INTO seguidores VALUES("331","1609","14");
INSERT INTO seguidores VALUES("332","189","14");
INSERT INTO seguidores VALUES("333","1209","14");
INSERT INTO seguidores VALUES("334","1609","1209");
INSERT INTO seguidores VALUES("335","1051","1119");
INSERT INTO seguidores VALUES("336","1119","1166");
INSERT INTO seguidores VALUES("337","1429","1119");
INSERT INTO seguidores VALUES("338","1413","1119");
INSERT INTO seguidores VALUES("339","217","1119");
INSERT INTO seguidores VALUES("340","1188","1119");
INSERT INTO seguidores VALUES("341","37","217");
INSERT INTO seguidores VALUES("342","1434","1160");
INSERT INTO seguidores VALUES("343","217","1429");
INSERT INTO seguidores VALUES("344","1119","1429");
INSERT INTO seguidores VALUES("345","1611","1305");
INSERT INTO seguidores VALUES("346","1612","1305");
INSERT INTO seguidores VALUES("347","208","1119");
INSERT INTO seguidores VALUES("348","1613","1305");
INSERT INTO seguidores VALUES("349","992","1119");
INSERT INTO seguidores VALUES("350","1474","1413");
INSERT INTO seguidores VALUES("351","1261","37");
INSERT INTO seguidores VALUES("352","1054","1261");
INSERT INTO seguidores VALUES("353","1054","37");
INSERT INTO seguidores VALUES("354","1261","1054");
INSERT INTO seguidores VALUES("355","1006","1054");
INSERT INTO seguidores VALUES("356","1261","1006");
INSERT INTO seguidores VALUES("357","1006","1261");
INSERT INTO seguidores VALUES("358","1147","1054");
INSERT INTO seguidores VALUES("359","1209","1054");
INSERT INTO seguidores VALUES("360","46","1054");
INSERT INTO seguidores VALUES("361","1437","1054");
INSERT INTO seguidores VALUES("362","1054","1437");
INSERT INTO seguidores VALUES("363","1615","1119");
INSERT INTO seguidores VALUES("364","146","1119");
INSERT INTO seguidores VALUES("365","1181","1119");
INSERT INTO seguidores VALUES("366","1119","1181");
INSERT INTO seguidores VALUES("367","1181","1101");
INSERT INTO seguidores VALUES("368","1101","1181");
INSERT INTO seguidores VALUES("369","1619","1119");
INSERT INTO seguidores VALUES("370","2","1101");
INSERT INTO seguidores VALUES("371","2","14");
INSERT INTO seguidores VALUES("372","557","1305");
INSERT INTO seguidores VALUES("373","1622","1607");
INSERT INTO seguidores VALUES("374","1464","1054");
INSERT INTO seguidores VALUES("375","1054","1464");
INSERT INTO seguidores VALUES("376","1624","1209");
INSERT INTO seguidores VALUES("377","1465","552");
INSERT INTO seguidores VALUES("378","1182","1179");
INSERT INTO seguidores VALUES("379","1179","1182");
INSERT INTO seguidores VALUES("380","1054","1179");
INSERT INTO seguidores VALUES("381","1179","1054");
INSERT INTO seguidores VALUES("382","217","37");
INSERT INTO seguidores VALUES("383","1629","1119");
INSERT INTO seguidores VALUES("384","1630","1119");
INSERT INTO seguidores VALUES("385","1632","2");
INSERT INTO seguidores VALUES("386","1222","2");
INSERT INTO seguidores VALUES("387","1428","1222");
INSERT INTO seguidores VALUES("388","1634","1633");
INSERT INTO seguidores VALUES("389","1416","14");
INSERT INTO seguidores VALUES("390","1635","1150");
INSERT INTO seguidores VALUES("391","1636","1150");
INSERT INTO seguidores VALUES("392","1637","1150");
INSERT INTO seguidores VALUES("393","1638","1150");
INSERT INTO seguidores VALUES("394","1638","607");
INSERT INTO seguidores VALUES("395","1640","14");
INSERT INTO seguidores VALUES("396","1644","1416");
INSERT INTO seguidores VALUES("397","341","217");
INSERT INTO seguidores VALUES("398","341","1305");
INSERT INTO seguidores VALUES("399","1571","1");
INSERT INTO seguidores VALUES("400","1435","1571");
INSERT INTO seguidores VALUES("401","2","1006");
INSERT INTO seguidores VALUES("402","1428","2");
INSERT INTO seguidores VALUES("403","1386","1150");
INSERT INTO seguidores VALUES("404","1438","2");
INSERT INTO seguidores VALUES("405","1437","2");
INSERT INTO seguidores VALUES("406","1179","1143");
INSERT INTO seguidores VALUES("407","1607","1054");
INSERT INTO seguidores VALUES("408","1649","217");
INSERT INTO seguidores VALUES("409","926","803");
INSERT INTO seguidores VALUES("410","1484","1356");
INSERT INTO seguidores VALUES("411","1407","2");
INSERT INTO seguidores VALUES("412","37","1171");
INSERT INTO seguidores VALUES("413","1416","1356");
INSERT INTO seguidores VALUES("414","1209","1648");
INSERT INTO seguidores VALUES("415","14","2");
INSERT INTO seguidores VALUES("416","1181","1054");
INSERT INTO seguidores VALUES("417","1054","1181");
INSERT INTO seguidores VALUES("418","1054","1607");
INSERT INTO seguidores VALUES("419","248","1054");
INSERT INTO seguidores VALUES("420","525","1054");
INSERT INTO seguidores VALUES("421","37","525");
INSERT INTO seguidores VALUES("422","1351","1596");
INSERT INTO seguidores VALUES("423","1285","1424");
INSERT INTO seguidores VALUES("424","1209","1261");
INSERT INTO seguidores VALUES("425","1181","1261");
INSERT INTO seguidores VALUES("426","1261","1209");
INSERT INTO seguidores VALUES("427","37","1054");
INSERT INTO seguidores VALUES("428","1407","1149");
INSERT INTO seguidores VALUES("429","1137","2");
INSERT INTO seguidores VALUES("430","1465","557");
INSERT INTO seguidores VALUES("431","293","1209");
INSERT INTO seguidores VALUES("432","1209","607");
INSERT INTO seguidores VALUES("433","1188","1195");
INSERT INTO seguidores VALUES("434","1479","217");
INSERT INTO seguidores VALUES("435","1111","1335");
INSERT INTO seguidores VALUES("436","1209","1356");
INSERT INTO seguidores VALUES("437","2","37");
INSERT INTO seguidores VALUES("438","1175","2");
INSERT INTO seguidores VALUES("439","2","751");
INSERT INTO seguidores VALUES("440","1182","2");
INSERT INTO seguidores VALUES("441","1171","1");
INSERT INTO seguidores VALUES("442","1451","1054");
INSERT INTO seguidores VALUES("443","1628","1306");
INSERT INTO seguidores VALUES("444","1628","1287");
INSERT INTO seguidores VALUES("445","1334","609");
INSERT INTO seguidores VALUES("446","1334","1162");
INSERT INTO seguidores VALUES("447","1614","1");
INSERT INTO seguidores VALUES("448","1211","2");
INSERT INTO seguidores VALUES("449","294","2");
INSERT INTO seguidores VALUES("450","294","1151");
INSERT INTO seguidores VALUES("451","294","1");
INSERT INTO seguidores VALUES("452","1590","25");
INSERT INTO seguidores VALUES("453","1151","25");
INSERT INTO seguidores VALUES("454","1","2");



CREATE TABLE `tienda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_placa` varchar(180) DEFAULT NULL,
  `precio` bigint(180) DEFAULT NULL,
  `unidades` bigint(180) DEFAULT NULL,
  `icono` varchar(180) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO tienda VALUES("23","Sombrilla Mandarina","95","7","fichas");
INSERT INTO tienda VALUES("24","Sombrilla Azul","95","6","fichas");
INSERT INTO tienda VALUES("25","Sombrilla Roja","95","1","fichas");
INSERT INTO tienda VALUES("26","Caja Fuerte","100","10","puntos");
INSERT INTO tienda VALUES("28","Espada Legendaria","108","6","fichas");
INSERT INTO tienda VALUES("29","Teleport Elevador","110","9","puntos");
INSERT INTO tienda VALUES("30","20 Puntos","90","494","fichas");
INSERT INTO tienda VALUES("31","50 Puntos","110","496","fichas");
INSERT INTO tienda VALUES("22","Sombrilla Verde","95","8","fichas");
INSERT INTO tienda VALUES("21","Hamaca Magenta","110","6","fichas");
INSERT INTO tienda VALUES("20","Hamaca Dorada","90","10","puntos");
INSERT INTO tienda VALUES("19","Cristalina Turquesa","110","10","puntos");
INSERT INTO tienda VALUES("18","Cristalina Morada","110","9","puntos");
INSERT INTO tienda VALUES("32","100 Puntos","170","477","fichas");
INSERT INTO tienda VALUES("34","Pase Elite [Tienda Exclusiva]","70","77","puntos");



CREATE TABLE `tiendadev` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `code_placa` varchar(180) DEFAULT NULL,
  `precio` bigint(180) DEFAULT NULL,
  `unidades` bigint(180) DEFAULT NULL,
  `icono` varchar(180) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

INSERT INTO tiendadev VALUES("43","Gato Negro","100","10","puntos");
INSERT INTO tiendadev VALUES("28","Muerto sin piernas","95","10","puntos");
INSERT INTO tiendadev VALUES("29","Negro decapitado","95","10","puntos");
INSERT INTO tiendadev VALUES("30","Muerto sin piernas #2","95","10","puntos");
INSERT INTO tiendadev VALUES("31","Negro sin cara","95","10","puntos");
INSERT INTO tiendadev VALUES("32","Muerto descuartizado","95","10","puntos");
INSERT INTO tiendadev VALUES("33","Muerto a la mitad","95","10","puntos");
INSERT INTO tiendadev VALUES("34","Muerto camillla","95","10","puntos");
INSERT INTO tiendadev VALUES("35","Muerto colgando","88","10","puntos");
INSERT INTO tiendadev VALUES("36","Pie","50","10","puntos");
INSERT INTO tiendadev VALUES("37","Alien","105","10","puntos");
INSERT INTO tiendadev VALUES("38","Estrella diabolica","100","10","puntos");
INSERT INTO tiendadev VALUES("39","Charco de sangre","88","10","puntos");
INSERT INTO tiendadev VALUES("40","Ayuda","75","10","puntos");
INSERT INTO tiendadev VALUES("41","Jajaja :D","75","10","puntos");
INSERT INTO tiendadev VALUES("42","Luz","168","8","puntos");
INSERT INTO tiendadev VALUES("44","Calabaza Halloween","75","10","puntos");
INSERT INTO tiendadev VALUES("45","Ojo volador","75","10","puntos");
INSERT INTO tiendadev VALUES("46","Ataud","115","10","puntos");



CREATE TABLE `tiendae` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `code_placa` varchar(120) NOT NULL,
  `precio` int(12) NOT NULL,
  `unidades` int(12) NOT NULL,
  `icono` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO tiendae VALUES("22","x3 Tronos de piedra + x2 Banderas Rojas","25","8","tokens");
INSERT INTO tiendae VALUES("23","Mesa de Poker + x3 Taburetes","35","8","tokens");
INSERT INTO tiendae VALUES("25","x4 Tronos de concha + x2 columnas calavera + calavera","50","10","tokens");
INSERT INTO tiendae VALUES("26","x2 Farolas + x2 Gatos + x2 Extra�o flotante","62","10","tokens");
INSERT INTO tiendae VALUES("27","Soldado + AK47 + Bomba + x2 Muertos","62","10","tokens");
INSERT INTO tiendae VALUES("28","x6 Muros +  x6 Suelo rocoso","48","10","tokens");
INSERT INTO tiendae VALUES("29","Container + x4 Pilares + x2 Barriles de fuego","50","10","tokens");
INSERT INTO tiendae VALUES("30","x2 N�1+ x2  N�2 + x2  N�5 +  x2 N�0","30","10","tokens");
INSERT INTO tiendae VALUES("31","KekoAwards","50","3","tokens");



CREATE TABLE `usuarios` (
  `ID` int(48) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `logeado` varchar(54) DEFAULT NULL,
  `rank` varchar(2) NOT NULL DEFAULT '1',
  `pin` varchar(4) DEFAULT NULL,
  `id_extreme` varchar(180) DEFAULT NULL,
  `avatar` varchar(4000) NOT NULL DEFAULT './images/avatars/noavatar.png',
  `portada` varchar(255) NOT NULL DEFAULT './images/barras/b1.png',
  `fichas` int(255) NOT NULL DEFAULT '0',
  `puntos` int(255) NOT NULL DEFAULT '0',
  `tokens` int(255) NOT NULL DEFAULT '0',
  `ip` varchar(500) DEFAULT NULL,
  `nombre` varchar(120) NOT NULL DEFAULT 'No especificado',
  `apellido` varchar(120) NOT NULL DEFAULT 'No especificado',
  `mision` varchar(180) DEFAULT NULL,
  `anclado` varchar(500) DEFAULT NULL,
  `megusta` int(50) NOT NULL DEFAULT '0',
  `pais` varchar(120) NOT NULL DEFAULT 'No especificado',
  `ban` varchar(20) NOT NULL DEFAULT '0',
  `ban_i` varchar(20) NOT NULL DEFAULT '0',
  `ban_f` varchar(20) NOT NULL DEFAULT '0',
  `mostraremail` varchar(50) NOT NULL DEFAULT 'No',
  `mostraranclado` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarnombreapellido` varchar(50) NOT NULL DEFAULT 'No',
  `mostrarpais` varchar(50) NOT NULL DEFAULT 'No',
  `verificado` varchar(50) NOT NULL DEFAULT 'No',
  `seguridad_ip` varchar(10) NOT NULL DEFAULT 'No',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1663 DEFAULT CHARSET=utf8;

INSERT INTO usuarios VALUES("1","Carlos","5c5dbca591695b071b37291bc00528cb","admin@kuinz-fansite.online","30/03/20","","7","","","https://images-kuinz.online/i/IMG-20210924-WA0138.jpg","https://www.kuinz-fansite.space/images/barras/b2.png","0","0","0","127.0.0.1","No especificado","No especificado","Staff Kekocity -?Lulu ","oZQhKgvUyYE","1661","Col�mbia","0","0","0","","Si","No","Si","Si","");
INSERT INTO usuarios VALUES("2","Krozox","9cac4234f30dcc4c3fb90fed802a3e17","Krozox@kuinz-fansite.online","16/04/20 ","","7","","","https://i.imgur.com/mS0hLvL.png","https://i.imgur.com/yLcNqNQ.png","0","10","5","190.73.49.165","","","","s5cYXknsDbY","28","No especificado","0","0","0","","Si","No","No","Si","");
INSERT INTO usuarios VALUES("3","Estratoferus","d4dea83edbedca6e13618670a9dfd1f8","estratoferus123@gmail.com","14/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("4","JhanderS","05492f707d054d17161ba6dfb127b7e2","denny25guedez@gmail.com","16/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","75","6","0","201.243.133.85","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("5","JAVIER GARCI","fb632ed008edefa65c403a28440e3a29","Javiergar.0117@gmail.com","16/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.76.46","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("6","ISh4poI","bd8b04b9cc4349a3dd2d5a3a08813881","sh4pokc@gmail.com","16/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.228.249","No especificado","No especificado","","","0","China","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("7","jesus y","7c6d2dc7598e69f2520f62c55cc1a4ad","jezuzaguilar56@gmail.com","16/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","51","5","0","45.7.134.6","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("8","Giorgio P.","563edb6edeb5d32e4b55e468602f19f7","giorgiopinto15@gmail.com","16/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.202.226.78","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("9","Troll Hp","36c93f8e35cd1178cb5e91e54a4faa02","dennielramirez@gmail.com","16/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","-20","0","190.204.105.49","","No especificado","","","0","Argentina","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("10","lKros","77b140683ecbcd5a3584aab9f2dc66fb","notelodire@nohoda.com","16/04/20","","5","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.160.195.247","No especificado","No especificado","","","0","No especificado","0","0","0","","No","No","No","Si","No");
INSERT INTO usuarios VALUES("11","DaniellxD","cc9f5b43bef6fe9be1b238e605907eb5","Daniell@kuinz-fansite.online","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","170.245.240.192","No especificado","No especificado","","","0","No especificado","0","0","0","","No","No","No","Si","No");
INSERT INTO usuarios VALUES("12","IKliber","9b092d850126ded0d6c5ab60c6460556","Kliberrosas10@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.243.254.244","No especificado","No especificado","","","0","Camar�es","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("13","IJhonaider","6df64da77e5a73dfb1a420cdb708eab8","jhonaiderviera@hotmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.206.97","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("14","Elbrayant","fbe475aa628dead8dc210f436518e873","brayantmakein@hotmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","90","41","0","186.90.206.97","No especificado","No especificado","","","0","Hong Kong","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("15","Alejaandro","eb96268b88d987070670dbd259078916","Pedroyaracely07@gmail.com","17/04/20","","2","","","https://i.imgur.com/ow9MTFB.jpg","./images/barras/b1.png","151","46","0","186.95.4.137","No especificado","No especificado","����������?Alejaandro?","https://www.youtube.com/watch?v=flEChV7KnY8","60","No especificado","0","0","0","No","Si","No","No","No","");
INSERT INTO usuarios VALUES("16","enyerson","3a65f084dad4a8fd3aa4b24018a65916","enyerson_12@hotmail.com.ve","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.95.1.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("17","enyerson1205","829731927a167ccd9a976f3d638198cd","opadilla_27@yahoo.com.ve","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.95.1.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("18","YosmelVzla ","e12bd804fb0d6fca18ced8117d6a0f9f","yosmel32007306@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","45","5","0","190.207.176.70","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("19","Jorge HP","977ef966459251fe4b9ec01639d83024","r.jorgeluis@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.89.46","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("20","robert","db2f6f86c78a5ac671da30674d69cb6d","Mg4000290@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.91.179.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("21","lBingBlachXD","ee7dd3e5425f7dd58a93ce36e1946fe5","tutorialjohnbahoque@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.189.127","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("22","ILuisfer cf","f7f760ac3cd7a9d4df6fc13d7669e414","luisfercf@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.219.0","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("23","Z4YROX","37d0fc98802c89b54e028bfb7867471f","meandozj@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.74.228","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("24","MiiAn","be0dc3754f6de8b9e7a30ffc02c2b03e","rdamianmartinez27@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.192.199.35","No especificado","No especificado","","","0","Argentina","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("25","Maria Valentina","00915b66efad1817883b289b32786624","gerbel.flores2002@gmail.com","17/04/20","","6","","","https://i.imgur.com/6QOzexQ.jpg","./images/barras/b1.png","211","16","0","200.107.21.135","No especificado","No especificado","","","12","No especificado","0","0","0","No","No","No","No","Si","");
INSERT INTO usuarios VALUES("26","luciano988","9cbf23ef8844f92f7e4f9afdfa804539","wzr36d5h98@hotmail.com","11/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.134.64.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("27","Maanuu","f3faf500af11c7d3f372555368097bf8","Maanuu-289@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.18.126.164","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("28","lenissmar","dfcede24b4748943339a6dcc5d50f4c9","gabrielaulacio005@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.210.181.66","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("29","GILLETE","da3ed63c456d412e49dc399ece7c4558","gillete3003@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.75.79.69","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("30","Wallcroft","dfcfe33055303e9302b746cebb950820","chersonsjr2005@hotmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.199.81.14","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("31","Kropper","ba8f96b279eebaae4a01571482be3261","kropper.gamer@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.169.65.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("32","Kroz","e1eafeaa595509fd7c47a991c8b03dfe","Kroz@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.98.185","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("33","Venezolanito","105cfb6f2003e3c8cc931522c20c4377","florezfarid@gmail.com","17/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","190.203.197.9","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("34","INazi","5f76d06b63cad955a89bc827ba7c0592","josephteran2882@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.211.132.240","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("35","Richard","420bc5f56a959af0cd33244ea48aac9e","richidkkk@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","85","5","0","190.205.69.8","Richard","Idk","","","0","Venezuela","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("36","PedroA2","dff537fca3a579d02c16b312dc4d00a7","pagm2557@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.95.4.137","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("37","ManuRios","4eaa26456fa8856d35eeca634d29a2ff","ManuRios.4040@gmail.com","20/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.37.173.228","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("38","Gregorio ","f8ad57ec280d3ef1c148043280de7deb","navarroadrian803@gmail.com","18/04/20","","4","","","./images/avatars/noavatar.png","./images/barras/b1.png","49","51","0","190.198.78.177","Gregorio",":V","Nothing to place?","","4","Venezuela","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("39","franklin jun","4ab1d000598a4fec17f34a764e9e918e","franklinjurnio24@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.206.198.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("40","josue49","bc73d7cf50369bed5295ad3452833013","lionel_21@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.232.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("41","Edward 1000","a41179f44662febab823f159567eaa67","FARITGON@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.167.244.213","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("42","natalialopez","4a6a645ea49afeb676ffe9f4f9e01e0b","lapampara.a@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.209.109.222","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("43","kileskiles8","4d31286e340f4180af398617689ae3aa","kileskiles8@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","179.28.192.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("44","GABRIL MT","0f0d003536431813b19293dd66b724f2","gabrielitojosue@outlook.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.209.109.222","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("45","CristianMan","f737bb378ed710a1027025a063993f61","cristiantorrez2413@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","32","137","0","181.234.242.234","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("46","Chevrolet","81f734f36cac8fdac0f93140e9450642","Unice@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.217.16.76","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("47","IS o f i a","f6e0bb2596ae2a0429c89c0a958529f6","sofialilith30@gmail.com","18/04/20","","5","","","./images/avatars/noavatar.png","./images/barras/b1.png","185","7","0","187.172.204.28","","","","","0","M�xico","0","0","0","","No","No","Si","Si","No");
INSERT INTO usuarios VALUES("48","yojander bar","9b2d3da6b45f2305bfcade4bedd9da88","yojanderdgonzalez2014@hotmail.com","06/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.202.196.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("49","Pedro Hp","e265aefb616b8365bbe34499d87f1f25","Pedro@kuinz-fansite.online","17/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","200.84.20.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("50","Yuliale","4eaa26456fa8856d35eeca634d29a2ff","YulialeXV@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.204.118.180","Yuliannys Alejandra","Farias","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("51","Santificent","c67865f1f99acc7965922e925c72ddbc","santi2010david@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.84.46.232","No especificado","","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("52","rapel99","2eb35ea048409da68632f392873dbe06","ronniherfuetes21@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","190.204.65.229","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("53","purestyle","cd9316aefb960c6e076d1d384a712562","yhonnyleiva99@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.237.14","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("54","Marty Mcfly","42b34ba90974484450db1b16b845025f","XxANGEL0711xX@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","190.200.1.85","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("55","xXMeXiCaNaXx","0006baa1e26ef102d79a1511116bb53d","guillencorreajenny@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.10.46","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("56","lTuoack","de9e9061fffa42f100cc3e35ab59fb07","alejandroestradavillada28@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.50.102.145","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("57","DAYKEL","f94c933d6bc382d822262aa5b0817cf3","hestarlyg_j@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.74.43.116","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("58","Darita","71cf8ce99fc9eb6e6f99834443d53963","dpaucara@unsa.edu.pe","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.239.152.35","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("59","Capio","a83dd52e8a77f6f1a29caba6f047acea","capio1724@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","148.101.109.217","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("60","Pack30","d50c4e96fc850c6687625e6df57f12c9","yeysonvilla222@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","57","14","0","148.0.235.162","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("61","kekofao","c94d6dfbae99120546cc17497b5ae33e","alexaneitorrobloxiano@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","23","5","0","181.50.102.236","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("62","deibygranado","3145fbd652668ab2893183ce94bb830d","deibygranados@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.255.14.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("63","rocioqueen","836c0bae81a7411299e0880874265fcf","rociov240207@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.38.210.133","rocio","valderrama","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("64","Fabiio","70b7e5d36eed8fe5c1faee9de752bd01","fabiovaldez2025@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.204.82.41","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("65","Joli uwu","ecf8ff3d81b57e3966edbc88068e1ded","jolhymarmolina@gmail.com","06/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.204.126.220","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("66","Senhu","8145d8e0f8ece1fc03dee6a196a97fc1","xjahe@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.57.193.22","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("67","Giorgio","563edb6edeb5d32e4b55e468602f19f7","giorgiopinto1997@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.38.158.189","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("68","Kynes","85970e350cad3af13834dc9b4f52b7a1","kckynes10@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.117.238","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("69","HOSSEIN","a4ba1b1ef4b79a6e9cbf79b26fa7367f","poirothercules1996@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.252.148.183","No especificado","No especificado","","","0","Col�mbia","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("70","anehiker hp","918aebc357904893285337ddf3b03225","anehikerandradeska@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.39.192.219","anehiker","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("71","game ver Hp","ce298abba5c57e2403fe0fc6e1f64737","gameverHp@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","66","0","0","190.206.245.127","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("72","Yona3318","b74b815a821ad68fdae8a237c7beb177","yonaikerchafar1014@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.75.47.135","","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("73","Sweet Mask","604078f671457244e54b13dc83ef12e0","deinerlucenavalido@gmail.con","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.202.235.142","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("74","SaWall","eb518b43a5433e066c0800321eea6225","Sawall123@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.209.243.60","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("75","A N D R E A","542ebf3de81831ed5bd590823df85848","04148567410andreaz@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.117.238","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("76","Gabrielah","d4c91675b4faf870bc55b316dc8282f6","gabrielahernandez@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","87","5","0","186.169.73.189","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("77","jervinson fm","e8db9cc462110cc6e74e02a49a86fd66","jervin_123@hotmail.com","05/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.206.243.23","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("78","A R I E L","afefe049b617bdbe08fbb7c626929055","Daniela*Olivera@hotmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.132.70.142","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("79","Daniel HD","ac66369a365d0a5938df92747c67465c","Daniel@Email.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.117.238","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("80","Manu","f3faf500af11c7d3f372555368097bf8","Manu-278@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.17.108.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("81","franklin ","e5da7b22b16ffa60bcab69bc70eec9eb","franklinjunio24@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.206.198.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("82","franklin zaz","e5da7b22b16ffa60bcab69bc70eec9eb","jazmindelcarmen1@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.206.198.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("83","Martiin","c72a2ef21f2eb724a2b486440f90f563","MartinMarcanoHernandez@gmail.com","19/04/20","","1","","","https://v2.kekocity.com/uploads/02/0/0/a/3/900a37e384258e1340b6ff33a9fb5d01.jpg","./images/barras/b1.png","30","0","0","190.198.231.25","SIMP","Chupaculo","","","0","Col�mbia","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("84","el guason hp","8d282ac0f3902d4d4d27f1086ef61510","montoyajj6@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.38.143.109","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("85","El leito","29d8d3cebe4986a12df4067fc862f722","elpollo-@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","36","0","201.210.6.247","El leito","El leito 03","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("86","L O C K ","bb5d6aaaccce9f2d08147e01ea486317","VENEZUELA27..@GMAIL.COM","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.93.107.92","William Jesus ","Lugo Valera ","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("87","leonardo xXx","dfcede24b4748943339a6dcc5d50f4c9","vBorgess@outlook.com.ve","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.91.228","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("88","Jonasmilk","34cd5f53be2c42b0487f2f2efd3673d1","hernandezjonatanjahaziel@gmail.com","18/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","189.249.51.209","No especificado","No especificado","","","0","M�xico","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("89","K R O S S","e900380f691457a181fe585a78b7c894","Miguel.kross.@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.118.218","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("90","Miki OG","315d1a4677fa3757d6dc7f6a75effb83","rubyyedra@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.92.240.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("91","rasel xd","6018cb7f07f67a6c76f66d8f8113bc08","rmedina@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.89.206.14","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("92","lDavid G","f77f59948fc63d2e45303d4f7745d18d","jesus_davidrodriguez@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","60","30","0","190.204.119.164","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("93","narutopro","543e0296af47092f3bcfda0078e6c58e","torrezsantiago0000@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.84.22.212","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("94","Lucas Flim","4832dfd456f9d8f377d9c924c728a71d","newmanovalles@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.91.169.42","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("95","lkiller HP","6ca44e3fff55615a61486582a010a2a6","eddyeljosue07@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.109.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("96","IXans","edaef5ba6bc86882008a657596649571","IXans@kuinz-fansite.online","09/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","61","5","0","201.248.211.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("97","DarkFither58","47f3ca4ab72b723d8fe66f2717ec65c6","darkfither256@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.198.177.197","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("98","SEBAGAMER30","649cc6d4a7a11dd7287b8e3ba174617c","ddiaz7752@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.113.208.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("99","karlex150","7fbb2a5c221e81597aedbc18577ebb42","alejonarvaez@123.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.124.30.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("100","Ram Hp","29afdfc31c50977a5194c269874c2868","Ramkeynersalazar@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.204.67.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("101","brandon13033","7dd151289612d29b4058f2479b96ba03","andresballena130331@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","167.0.198.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("102","CesarDroiid","c27feb2019e00f45f0f4e9914aabb78f","cesardroiid2016@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.154.35.189","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("103","TheSkrillexx","e1b9e0be7e8fda83329acad63fed5552","theskrillexx@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.84.157.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("104","Emanul Hp","3a64d4c0df1720f16788b54442b9a1d3","victorperez99355@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.198.83.13","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("105","EstureTudey","4182a7470ddee313841af9267d4de0c5","amasonas_diaz123@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.75.58.198","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("106","BlackTigers","04edb19ce5a839ffbb4b3e2913dc3b1a","angelaaron777@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","187.189.171.145","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("107","kevin","899f9f9e7ffa44f5d9e2f854e6794e3e","04142232816@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.74.43.116","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("108","la espada","776efe67aff4ad4c366e126f2a54aa8e","jhonnder234@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.75.72.190","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("109","el onlinea ","4bfe170369a93acae1a224328ff3b52b","elolinea@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.206.245.127","No especificado","No especificado","","","0","No especificado","1","2020-04-20","2099-04-20","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("110","luis vera","aa581e46f731240c5f7c369f63e50be1","luisgerardo@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","45.179.165.68","pUmBa","jaajjaa","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("111","Emilia ","86041a7ddb4094669b49788696045b6c","madeleine_123@hotmail.es","04/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.33.23.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("112","lWuason","91a52ad571a7b6352906b8589461904d","wuasonbb@gmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.95.56.112","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("113","enyerson13","f6feaae9d47659fd57f650962208cd33","yuli_98padilla@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","28","0","0","190.78.17.77","","","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("114","Otati ","04768f45d2c9fcee43018dd640fa4a4a","ashleyjanielav@hotmail.com","19/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.77.62.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("115","Richart jesu","446fc72eff3d5b98ead914322907496e","cortez28770854@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.204.125.98","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("116","YisCroFt","5bbcb3a7af9a11f072edf56e91adc52d","InjECteDD2@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.167.251.168","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("117","joanHp","1f9b33866f9e4926a9f76b7221a12ea7","joanHp@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.84.106.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("118","Bry Nr","5486a50099028c499d220d8b04880563","breytorres7@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","190.199.220.12","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("119","Slaak","874164be625fea18ef7a0aa59e1d5806","jefo_strike@hotmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.254.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("120","wilker_TDH","b5cfbc8fad002d93e1ef53afdd0de0a2","wilker13rada@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.8.167.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("121","Neutro short","b5cfbc8fad002d93e1ef53afdd0de0a2","wilkerjrtdh@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.8.167.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("122","yaysselisc","446fc72eff3d5b98ead914322907496e","yaycam@hotmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.92.243.20","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("123","El leonice ","ad8535d795ac49401d3d326b6ca6d752","johswarduran@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.24.34","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("124","Koka 13","f7f760ac3cd7a9d4df6fc13d7669e414","koka13@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.24.34","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("125","Max13","f7f760ac3cd7a9d4df6fc13d7669e414","max13@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.24.34","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("126","jhontoni120@","17c800df0fb53ec598fed136e523692d","jhontoni120@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.239.32","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("127","the king hp","d2d1af726d326f8d1a26fef8cd3894db","naguelmolina1@hotmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","179.28.201.245","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("128","matctiaz","b9e0c05320f3c4bd6e964cf9c03fecb0","mactiazfernande@gmail.com","05/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.140.64","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("129","Perlita1D","a605b183557e7b758728d070be4107a0","Iniridagarciah@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.203.191","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("130","goku blak","011d8978db1e6564e787d77f6c34e066","mflorecin267@gmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.74.124","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("131","kiles001","780d5c09566855033096ec5bb2614135","palleromolina618@gimal.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","179.28.192.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("132","jose david p","136534f93cd0e69675740b878da30126","josepirona@hotmail.com","20/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.206.237.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("133","Slaak Hp","e95fdc2431e294e4140b0d42445274d9","patrona123@hotmail.com","20/04/20","","1","","","https://i.imgur.com/Cm8klRA.jpg","./images/barras/b1.png","10","41","0","190.78.254.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("134","Angelo","fb4f01d48d6d643cba4609497941abbc","angelojoserivas1203@gmail.com","21/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.111.42","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("135","Daniel 1229","0c41750dd458d68f93e84def97101c02","josedanielmarea@gmail.com","21/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.205.130.218","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("136","Franco","182a45d2ceefc3b78496048cfc63259a","juancaleo2004@hotmail.com","21/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","5","0","191.102.92.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("137","A R R I S","e3dacb3f1b72d9825e983b7792e0a305","mentroliso333@hotmail.com","21/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.8.112.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("138","relax","f472af61612d29862667564695a09bba","azuajeantony1@gmail.com","21/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.159.194","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("139","Gown","7a2c352f90b3993e85895b4b3b81ce48","XenoJiiva123@gmail.com","22/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","187.172.30.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("140","lWOS","c144f30b7122c392d50d15068c35ee44","lucasrobertoenrique92@gmail.com","22/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.209.79.115","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("141","lT r u e no","f1be57b85677766f01fd999144cd6e29","ltrueno@gmail.com","23/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.50.102.145","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("142","Paulina_01","446fc72eff3d5b98ead914322907496e","Paulina_01@hotmail.com","22/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.202.171.120","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("143","IOdiosito","14c505075e4438b072f3fcc2201d20d7","enrrique.semprun.25@hotmail.com","22/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.143.48.110","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("144","Tu mama","f8ad57ec280d3ef1c148043280de7deb","Tumama2020@gmail.com","22/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.197.59","Daniela","Salazar","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("145","Misaei","43e1619a04d34a897860755557f722b8","misaellimit@gmail.com","22/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.89.150.111","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("146","abelina jp","22489e7b894a2328bff9615575e25333","dalyana_toussaint@hotmail.com","23/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.247.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("147","dj gato Hp","981beac908b33285d1cdf5a82dcc0420","mogollonjob@gmail.com","23/04/20","","1","","","https://i.imgur.com/fp1phno.jpg","./images/barras/b1.png","64","10","0","190.39.214.48","No especificado","No especificado","Miembro Oficial de Umbrella Academy ","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("148","ElProfeciona","2d48d50233a5c6da03d066bc4c053e75","ElProfeciona@hotmail.com","24/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.36.85.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("149","Yoander_69","2102bfcfdc02d477450e1dee703d5c2e","Yoaliendo@hotmail.com","24/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.36.85.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("150","mar23","b12f6b7251ce6ac6946a221c95fd4dfb","mendoza.aqp.23@gmail.com","24/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.66.93.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("151","Mr Shadow ","ddafd63c4729c76a49ec4c1f35161ac1","jhostinbh@gmail.com","25/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.88.204.46","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("152","lSycox","2230da370074a5796e8966ed32782821","raul_parraga1@gmail.com","25/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.38.90.127","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("153","jesusronparr","5e441b22176c023d23831d5d31f0d014","jesusronparra@gmail.com","25/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.77.54.105","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("154","VertoTV","266b163bd7d8a981d9a54d02f114fc50","boyverto@gmail.com","25/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","148.101.28.8","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("155","jotzer074","41439c9bf3a72fe40cecb5915633c55e","jotzer@email.con","25/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.198.49.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("156","Wyatt","c81301f670126e3b6f8e9ac4634e7501","wyattkekocity@gmail.com","02/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","34","15","0","200.84.6.10","Wyatt","Hernandez","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("157","Victorgnzl","353a5619e3d23164fd9f947bdf23d37d","victorgonzalez15@gmail.com","26/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.84.32.52","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("158","farid913","27c4303eaf6fa29cbb150ee826179e1d","florezfarid90@gmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","167.0.189.123","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("159","Alejandroxd","52ec872b0fc1c17449c90808372d1532","elvertorba@gmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.50.102.145","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("160","IBryan Hp","68a64f111a2ccb6020a94f1baaf1d4e6","brayangfc@hotmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.120.171","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("161","santiago0502","4d5f61403082bc05b35d1e4aa2d1c360","Santiago@hotmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.120.171","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("162","D i d o","d0c8146ff340b6b928d0dcf69e0168eb","EstebanSamuel@gmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","32","0","0","181.49.91.8","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("163","aby18","379c745bb9a40b4cddabedd38efa3be7","abiezerjabneel1kl@gmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.91.146.70","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("164","kimberli HP","ac745effdffd6227832505053e513a4b","diagnys_cedeno77@hotmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.198.89.243","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("165","ban3te","6a1470247be811b0c0e139b0969b5ec5","ban3te@gmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.91.196.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("166","ROXBEL","682e4b920e2bf454e29d4bb7017e6e05","goku@gmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.91.196.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("167","Pipebueno","0267e732cdae5b8475dbc3a8bfb3b7d2","danieljesus_2002@hotmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.36.0.150","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("168","ElCapricho","a1e2ced404b9ff9aad67889b335aad96","asddsfsdfdsfsd@hotmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","113","0","0","148.101.240.91","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("169","fredyfazbear","76bb825fdcbb5dd8f92749c03547eea7","fredy@hotmail.com","28/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.236.1","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("170","OroPuro","1efb354adf83bca52067403ea1f54f10","oropoljr155@hotmail.com","29/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","8","0","186.145.228.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("171","AIecks","b363dbbb344be9f7fbde75107961364d","Lamantequilla85@gmail.com","29/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.245.212","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("172","Alejandro345","44eeddd0524bbdd4a2da8c6d9c680736","bolivarmaricarmen1@gmail.com","29/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.245.212","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("173","Kyeo","4832dfd456f9d8f377d9c924c728a71d","xavierovalles11@gmail.com","29/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.75.221.140","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("174","Kyeo-11","4832dfd456f9d8f377d9c924c728a71d","manuelleon009@hotmail.com","29/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.75.221.140","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("175","A.A.W.X","3f1a5b9c10a1434a955ac95de75ed55b","xavieralexander1995@gmail.com","29/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.95.159.57","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("176","D E U X E R","9e1b017d3591c280023ac438c84204cc","santiagodeivy1@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","167.0.150.113","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("177","kimbely","3a64d4c0df1720f16788b54442b9a1d3","mariannyiiiisperez90@hotmail.com","30/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.255.247","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("178","Nataly","d0c9a760ecc118b76bd65c497f50f601","bigstareventos@gmail.com","30/04/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.55.145.57","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("179","Alejo jp","fe8c10761f0c1f7a63a43ac94b0af61d","Alejandrojp@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.50.102.145","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("180","LauraAV","d0270c6281a4f7552ca91a8040bc264a","mariacontrerashola@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","191.109.205.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("181","Marskun","4c34117b07a8eb1554bfd42bc9e11f7a","napasumaqui3@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.208.231.110","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("182","randi_29","65d98b9a62561234cae972c547e8c8dd","randielpapi29@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.6.91.222","","No especificado","","","0","Rep. Dominicana","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("183","THE ML","076543cd0777966694f255fdb15a0186","enrriquemartinez4105@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","177.25.131.226","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("184","mar evan","36943b572bec0d32193580427b87a39a","stefanyvieiracarrillo@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.201.130.33","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("185","ELMoya","8b8ca004115983f76bd9d90cc5d75802","ELMoya23@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.196.218","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("186","the fenix","6a1072f0ff3e9d083051cec58023a942","enderson1234notolo@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.108.94","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("187","KKBE","6a1072f0ff3e9d083051cec58023a942","endersonnotolo@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.108.94","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("188","yanfesantana","d2198767387810891cc502b8b9c03824","yanfe2002@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","83.54.106.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("189","enderson","c2f5ec685adca7c124b458fc75381750","enderson@gmail.com","01/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.108.94","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("190","IPiolo Hp","1e4ebec1257a61a38e570c4220380b8b","Nicolascaranton789@gmail.com","03/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.140.197.89","","","","","0","Col�mbia","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("191","Erick 1D","05dd6fc2b5552500261e8d3c37d2c276","erickrios106@gmail.com","03/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.185.14.162","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("192","AndrewK","f7f760ac3cd7a9d4df6fc13d7669e414","ac846760@gmail.com","03/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.55.145.57","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("193","IFogsth","ea5a0edbfa5087919e04890a9028a6a7","emanuelperezalvarez123@gmail.com","04/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.140.142.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("194","mendoza fran","69ad056a77ec2b089e108d6698065d26","fran@12hotmail.com","04/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.199.91.206","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("195","Ribot","1274c6271b25b2fe76735fab3bbfd695","marcos1@hotmail.com","04/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","5","0","186.88.61.202","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("196","El morenaso","10b6f35d2bf8703bca2aa89caca3083b","josuegraterol123@gmail.conl","04/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.74.41.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("197","jhon medina ","aef30c97541eed4daa92486d02c9f31b","31332842a@gmail.com","04/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.72.222.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("198","alexander14","aef30c97541eed4daa92486d02c9f31b","31332842@gmail.com","04/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.72.222.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("199","heiliprinces","470770116f14f7f5d8da891064b57301","heilimorales@gmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.242.57.38","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("200","carlos lcr","b89f6025f6562de3d6a3f92d9ed9fe43","carlos_12@gmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.249.141.154","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("201","franlejo06","dadcd915c02a61f05e31915d4c7f2932","fafa13052000@hotmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.39.43.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("202","franciscoant","dadcd915c02a61f05e31915d4c7f2932","fran13052000@hotmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.39.43.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("203","daniela tra","981beac908b33285d1cdf5a82dcc0420","jobmogollon@hotmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.74.123.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("204","pedro12345","0afc925d2356d16dbd6bc58ea5a42f9e","jolberc703@gmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.162.31","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("205","IXanYG","b85951c7889f0ee15ca7b85b83cfca7b","jrfranklyn@Gmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","181.36.206.21","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("206","dani DD","981beac908b33285d1cdf5a82dcc0420","sheylaymogollon@gmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.74.123.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("207","farid911","6998cdc126abea5ba6d96e3d7ab69b1a","florezfarid90@gmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","15","0","161.10.192.179","Farid","Florez","","","0","Col�mbia","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("208","dani DDD","981beac908b33285d1cdf5a82dcc0420","mabel45_6@hotmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.123.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("209","yanfe","33362621c5a52c2bbb7dcc64c412157c","yanfe@2002gmail.com","05/05/20","","1","","","https://i.imgur.com/5ayWLYL.jpg","./images/barras/b1.png","166","0","0","83.54.106.204","No especificado","No especificado","","","8","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("210","hendrick123","98104bf434a3bae8412f039388f413be","hendrick09@hotmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.57.38","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("211","hendrick","11737f62557f1186b001d4801e077e0b","hendrickmorales08@hotmail.com","05/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.57.38","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("212","IJosueM","56045e7db874e8af352a55d376a6eee5","Josue212020@gmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.217.119.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("213","Jolimar dcmp","79d11220a2aafda14c8f45cc4124b690","Joelmmolinas@gmail.com","06/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.204.126.220","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("214","daigreth07","795183f43870e68933d164b6d563e9d8","daigreth@hotmail.com","06/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.42.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("215","jeysell","8dbdb4a40875ad45cf8d3e87a0352fc2","carlis0.7-@hotmail.com","06/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.42.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("216","rodni hp","d76530f232baa79bcfa33234658a6c61","Andres1801@gmail.com","06/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.205.76.106","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("217","yeiferyeifer","6bc694605225ee80c30a76e694cc8e78","yenirodriguez0612@hotmail.com","06/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.3.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("218","Franysbel","4019d46f971c87900dc2a66b601af1d3","franysmar12@gmail.com","07/05/20","","1","","","https://i.imgur.com/Tdw0A8z.jpg","./images/barras/b1.png","147","10","0","186.167.251.190","Franysmar","Rodr�guez","M�s caliente que ayer, ven y t�came.-","","59","Venezuela","0","0","0","No","No","Si","No","No","");
INSERT INTO usuarios VALUES("219","The pixel ","9e91a6cbebae566ae41f6563b5d0fc52","elaskiles@gmail.com","07/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.51.214.236","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("220","guille321","6abca1248ee210e6ec8a6aa0460498cb","espinozaguillermo2112@gmail.com","07/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.50.167","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("221","JhonayTM","10c208acd7d3b54feb4652ff58ab6cd7","mariannysperez90@hotmail.com","07/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.113.245","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("222","maxset","f0f751af5b4369a07f80bb228e0bf21d","jguaido@outlook.com","07/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","37","12","0","186.90.179.193","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("223","lAlexxBeca ","ef94ada2a5966cd5f89ea83e1d85bf41","edgarjosechacon0@gmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.233.31","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("224","lAlexxxBeca ","f2e67f3e529d54c0b1ccdb58841f70d5","omaralexchacon@gmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.233.31","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("225","I Maria I","1d18ffc98a1d733705025aaee3fe171d","maria@gmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.71.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("226","DaniWassoski","fa15cc9e558769b7451d5e2a1205a5f2","danielxd12@gmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.36.245.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("227","eliezer","db920bb99010a286a9e6d6820449e8bd","eliezer124@gmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.8.3.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("228","Manaby","224cd0b069c8b366bd43d5b6f8ee4e03","maryannsubero943@gmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.248.248","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("229","JOSHX3","b338bd7407a20e1c316e62b78b190081","joshacuario@hotmail.com","08/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.7.55.245","No especificado","No especificado","","","0","Peru","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("230","fredy1235","7b717f42e0e45cc196617cd8dfe46ea3","fred@dyhotmail.com","09/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.81.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("231","El Global","4ff7177b352c8f07c98cb251800aec48","raul_parraga@1hotmail.com","09/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.25.178","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("232","lPANDAMX","c2ff9ea0e2e3f155806cdaa546f527ee","dianithaGomez60@gmail.com","09/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","187.226.249.0","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("233","Ricardo Mora","ad8535d795ac49401d3d326b6ca6d752","josenavas232019@outlook.com87813","09/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","73","5","0","190.124.30.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("234","lilenhm","0a5062a75352dab5f1f787f6a2d36dea","04267129135@gamili.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.38.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("235"," Alexander","fb407341eee8d65c62e85d6419fb8580","Elgordo@hotmail.com","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.185.87","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("236","leonardo1234","c7a29dcc1300322efab348b4d1a592aa","leonadrdo1234@hotmail.com","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.209.222","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("237","Juan0345","329cc5db92b287d672886d2a2a06b63b","go.han@outlook.es","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.84.20.235","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("238","wildan","099b621c51359420df019a7d263520df","danielwilber@gmail.com","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.95.189.188","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("239","MRMATA","ca80c4abaa64e7d65bb280cd30a0a78a","lolmata059@gmail.com","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.60.44.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("240","DJ Snake","f638df7731ac29d539665a3bce384234","juanangelcamachovelasquez@gmail.com","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.255.8","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("241","m i c a","bf556e8f8e901fbc4cfbdf8cc9396166","aldanaguerrero83@gmail.com","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","168.195.37.7","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("242","elvergalarga","ebf47eb40a7c1bd6e5dd907c1970fb95","elvergalargapro@gmail.com","10/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","0","0","152.200.33.61","ILuis F","Jimenez","","","0","Col�mbia","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("243","Mommy","63aa02efdfb25f332534eeeee8b84813","yergm25@gmail.com","11/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","34","5","0","190.72.214.12","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("244","LATINO","9015c3a5060d5674f7ea648c116bda65","moralesraydavid@gmail.com","11/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.30.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("245","RayDavid","9015c3a5060d5674f7ea648c116bda65","ranhyermorales@gmail.com","11/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.30.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("246","ldavi s","625ae9fd2b7923074c91b47adae29260","BERMUDEZGIRETH@GMAIL.COM","12/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.205.93.188","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("247","Prueba ","ceb15cd7e6e813c2f74de6a003f13be5","prueba@gmail.com","12/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.215.18","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("248","Tobielmegor","aabc57fdad80cd99ebe44d52acdc4338","tobielmegor@yopmail.com","12/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.111.159.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("249","lSheryl","7f047e2d4ea335db3bfe48b95b6b23f2","fisiotocp@gmail.com","13/05/20","","4","","","./images/avatars/noavatar.png","./images/barras/b1.png","56","0","0","186.93.70.67","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("250","katherin HP","cf6ce65eede636fdca80127dc7ade744","katyhp@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.65.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("251","BirKinN","478db528e8b7bd45f7d5a0fa1552f7ca","BirKinN07@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.92.153.26","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("252","rocio valder","e16991fa6abaff06fc8ddae9811daba2","melodyyy@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.65.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("253","rocio galea","e16991fa6abaff06fc8ddae9811daba2","Iamnette2007@hotmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.65.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("254","rocio HP","e16991fa6abaff06fc8ddae9811daba2","melodyyy@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.65.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("255","PVC HP","87dcab28420bc91db32c6d52e04334c0","oli90115@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.109.225.20","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("256","gabriel1023","bd3050144d4bc57b86d24a296a93505f","gabrielhernandezcabeza@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.44.244.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("257","anthonimc","6a46a2f553984639577e05bfe133c940","anthonirodriguez17@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.140.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("258","gabo hp","dead57fe4887dbb648215cb622f23937","josedanielmalave1023@gmail.com","13/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.44.244.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("259","Oniel Pompa","f3a67577fa8d3eb7d26bb0e42ffa39c3","oniel1606@hotmail.com","15/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.89.133","Oniel","Pompa","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("260","widman17","406122968343370b6552745bb9b8ec9b","widman_alejandro17@hotmail.com","15/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","12","0","190.73.148.48","lSimplySad","Sadsito Solterito","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("261","IPoloI","93ec60633357edb1146f8bdc56528bd3","eliezerascanio.12@gmail.com","15/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","5","0","190.201.17.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("262","lAndreaB","e0eb51bb11cb36a29c68f2013aac2291","andreabas08@gmail.com","15/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.115.84.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("263","Kari Amane","a24a51bee2115eb4411061956ee38d85","marianitass.15@gmail.com","17/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.103.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("264","Spanish","2413d3833b36d9d7ac7faf4674bcbf0d","SpanishWired@gmail.com","18/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.139.99.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("265","PonQuesito","3e73a03e43119e6bb2f077dfbf3bcefb","luis02morillo@gmail.com","18/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.185.140.7","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("266","Yoshio","d9ef74136015b31b42ab78afbd51f5a9","luiskuznetsov15@gmail.com","18/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.74.105.222","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("267","Srjoker","2b395e6e627c6f9b9a57fae41999db10","yenniser.21@gmail.com","18/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.81.97.111","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("268","Kanam","dfcede24b4748943339a6dcc5d50f4c9","cristian.emefistofeles12@gmail.com","19/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","200.109.150.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("269","Oliver","d6a57d5dacf41b0a81453081d3afa93c","oceano22.e@gmail.com","20/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","110","700","0","186.7.43.67","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("270","tomasb5","7e49a5a7ef0c6caeed5f6fa676406e55","josetomasbellorinr@gmail.com","25/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.217.3.122","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("271","SamanthaOtz","cb72f35a20b2b12c58d5e2a03644d419","marieortiz_11@hotmail.com","20/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","115","15","0","201.105.246.107","Mari�","Ort�z","","","0","M�xico","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("272","franklin hp","e5da7b22b16ffa60bcab69bc70eec9eb","franklihnjunio24@hotmail.com","20/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.206.253.84","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("273","El Globalist","9118119dbd1bb17237f2e569b651545c","parragabelvis@gmail.com","21/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.38.195.94","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("274","erickdavidxd","f858f07cf8dd43b5c175e6ddc9092d6a","eridad928@gmail.com","21/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.90.18.34","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("275","OnlyZack","266eb4ae3f07beecb5b9e97c9063c4aa","fernandoindriago18@hotmail.com","22/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.44.76.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("276","Rafaeld17","572e4f5bb6984500200ec0c70a873e4c","rafaeldbarrueta@gmail.com","22/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.30.178","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("277","Test","b9e0c05320f3c4bd6e964cf9c03fecb0","Test@gmail.com","22/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.208.169","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("278","pUMBA","c15abba2382083f726c2d9370530b52b","pumba@gmail.com","23/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.179.165.68","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("279","Draki0043","7fd4b1c36b9339a08e287e25a7166b59","roiberthdaniel29@gmail.com","24/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.178.59","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("280","Draki00433","6f788d998c474a5855e521f3b8e4a0bb","and17eduard@gmail.com","24/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.178.59","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("281","Draki0234","6f788d998c474a5855e521f3b8e4a0bb","Dani_22@gmail.com","24/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.178.59","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("282","demente L","fe32546616e3062581319532c49540c9","danielmejias158@gmail.com","25/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.201.147.117","No especificado","No especificado","","","0","Chile","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("283","Gabrielhp","7b5ed933f43f3b6365be997f0c135eab","gabriel10hernandez19@gmail.com","25/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.201.127.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("284","ItsYesanny","6494e3d6b9159632a4d09248023c2542","faczy2005@hotmail.com","25/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.84.82.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("285","sebastian007","dfcede24b4748943339a6dcc5d50f4c9","sebastian19205007@gmail.com","25/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.211.75.22","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("286","TiagoIUTU","563edb6edeb5d32e4b55e468602f19f7","tg.materazzi@gmail.com","25/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","188.123.123.167","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("287","kelvin AMR","12891b3b09b5feb520329b4016641870","kelvinmolinakelvinmolinakelvinmolina@hotmail.com","26/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.201.150.96","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("288","El 701","e0ee6f1a6a17a931d0dc775be6cca913","ale_sala_garc29@icloud.com","26/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","187.154.229.6","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("289","nahystna","75c52f260cbd4d16cb94abecdea6c9fc","santanahernandezn@gmail.com","26/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","85.155.36.5","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("290","Felipe","b63030a31ee053968793ac1c79c266ba","Felipe298@hotmail.com","26/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.199.209.6","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("291","leonardo xD","f0bc13522cb64ee29182b36c229793e7","vip123@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.237.104","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("292","leonard030","5ac7572db9b09e53fa9377e3e5d91735","leonardobuendiacadena1@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.219.208.114","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("293","Herlinda 19","a5675a9429697c40ae1719e77af9abc3","leonardobuendiacadena2@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.219.208.114","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("294","YECSONCOM","51cb670052fbb1a59ac8dce3d67091d7","yecson_abreu1@hotmail.com","30/05/20","","1","","","https://v2.kekocity.com/uploads/02/a/5/b/b/ca5bb42aa9008322ed0191695e37270e.png","./images/barras/b1.png","42","36","0","186.90.161.193","yecson","abreu","","","0","M�xico","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("295","Daniel GR","e1da1d3127cc8e894f66b1594fcb2d26","gilreyes0608@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.185.181.10","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("296","C H I Q U I ","cc8f7d00ace8da7e752e36a0d513f8e1","nbvalentina903@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.185.128.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("297","xXx Gabriela","bffdea0862737a2951664ee8510ec4f6","Gabriela@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.208.30.145","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("298","Liam hp","6e04bfe056ee6773aa18708545d28f74","isaactorrealba349@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","35.211.246.190","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("299","silvia1hp","c56109357bd11afb1470919162246b36","silvia1hp@kekocity.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","45","10","0","201.208.252.166","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("300","ronaldmoreno","446fc72eff3d5b98ead914322907496e","ronaldmoreno300@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.7.235","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("301","Lucas SPD","1b5c62e0ec9c94a335170dc3b5340c58","lucasspadafora@gmail.com","30/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.93.165.101","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("302","wilver@gmail","fbadd23ea6f7ba0a58df3592d008bbe1","wilsusej_86@hotmail.com","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.201.129.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("303","wilmer hp","fbadd23ea6f7ba0a58df3592d008bbe1","marta@outlook.es","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.201.129.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("304","Natyfajardo9","684449a7fe48029e1edaaabe2f662295","NatyFajardoUwU@gmail.com","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.108.3","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("305","Yh0nny","d3c884d7690ffd150dd4fa8d43c07da9","0yhonny0@gmail.com","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.166.128","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("306","yhonny","d3c884d7690ffd150dd4fa8d43c07da9","yhonnymorales27@hotmail.com","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.166.128","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("307","DENDROID Hp","2f0b93869e7fff0802d641300bbd20a0","dendroid2019@gmail.com","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.84.90.71","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("308","leohp","f0bc13522cb64ee29182b36c229793e7","leoxxxx123456@gmail.com","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.237.104","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("309","leo tm","5f39f3adea13142ce4be374b61fe4cb4","leohotol@gmail.com","31/05/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.237.104","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("310","lLight","a1599fad6e426db2f4cf2c5f6d792ea3","moises_9nava@hotmail.com","02/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.185.181.40","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("311","David Pinkma","8a70ce4d060e64dbb981f84332fc7648","david@gmail.com","01/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.209.248","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("312","fran","6821ee732aae20efafcdb53eabf94541","valentinamoreira524@hotmail.com","02/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.185.128.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("313","oshita teddy","fa04225a932185dfdf75245f695d8d5a","carolaasm@hotmail.com","04/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.65.124","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("314","dorxlork BZF","939683451510b6d4351392f99d6db631","andresmoran2007@gmail.com","04/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","21","48","0","181.198.226.40","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("315","Rica Mica","e2e72bc75f7ed31f36a74b9f72134fd5","Rica_Mica@KuinzFansite.online","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.172.232","No especificado","No especificado","","","0","Argentina","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("316","Dowkey","c02d0781caa2cfaeaec4065b681a65b5","steben0414@hotmail.com","05/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.38.144.205","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("317","esteban9","778b523206a2b4043f9e08fe3a1a8006","esteban9@gmail.com","05/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.219.220.185","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("318","ByNabil Hp","0c12dfab4dd1fe468f4c79b8c786a3b2","richfanabil10@gmail.com","08/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","37.15.0.117","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("319","vegeta777","03687f550a7c174dec6e782164c6c4bc","vegeta@gmail.com","06/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","167.57.97.105","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("320","leo30","120d5e0048fe46768f392d4e2e99dfc0","leo30@gmail.com","06/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.219.220.185","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("321","wilmaris","117baeb17feaee92a6456a57e87fe853","hectortequierovalehijo@hotmail.com","10/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.228.0","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("322","marcano el c","a9b0cce5457de2506680ddfe75dd2e50","gregoriavillarroel@hotmail.com","11/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.36.33.198","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("323","el crak hp","964a3ca4b49e7c76c849f4f1391c56d4","jesusmarcanodiaz@hotmail.com","11/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.36.33.198","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("324","diegosteeck3","a54787b2bb7743f6dab3b7ca767bc359","diego_steeck@hotmail.com","11/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.92.25.236","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("325","mrsombra hp","d4077a26b489176a0faea10069c39d75","acelablanco@gmail.com","11/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.242.41.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("326","Good Guy","23b268803f5ca0bf94700542ea2aa41e","Argenis20193@hotmail.com","12/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.55.207","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("327","Scott343","1be14d4445011c9a46fd6af0a63be22d","pinaargeni987@gmail.com","12/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.55.207","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("328","solano","ec13b428ee781fe86e81c3622169dc17","0@gmail.com","12/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.125.127","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("329","lChela","91c577c98e9fd820704f4066ff8d0480","chelaguerrero0104@gmail.com","12/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.62.159.9","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("330","GABRIEL JMT","249dc2d8a8b71f1dc40a96d7f6a8b157","Nayibepaolatorres@gmail.com","12/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.140.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("331","jome otekus","ba28d81fd57941aef61029d3fe25b3f5","JOME1@GMAIL.COM","13/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.60.69","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("332","SubZero17","900fd7595191c3afb420e0bf85c2ab72","avendanokeiverjose@gmail.com","14/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.248.148.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("333","Driino","0c6d0d2022d077db4c9e03511de4f8e8","Angelvillamedianamv@gmail.com","14/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.0.67","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("334","peta&ntilde;","f6446452ab487df29e072a05a52882dd","petaaaa@hotmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","148.0.251.151","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("335","peta","f6446452ab487df29e072a05a52882dd","joseeeee@hotmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","32","0","0","148.0.251.151","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("336","lyairsitho","6a5af245e892695cc685ac89893ca88e","ospinogomezyairjose@gmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.115.78.118","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("337","jaimemaitajo","f2e1fa2953e3c49e2765dd3228256f80","josmarrafael2013@hotmail.coom","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.101.72","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("338","isaac4894","446fc72eff3d5b98ead914322907496e","isaac4894@hotmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.141.171","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("339","victoriahere","e0f4fec4e272848a800d5a638309697d","victoravalentinahere@hotmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.153.43.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("340","choco","649636a7b550e958115ceb6159aefe7c","choco.con@fghjuyhm","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.37.161.184","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("341","C L A R O","de8325bc62c386ed007ea5f8cfb72311","gomezparraadrianalejandro@gmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.111.28","Juanitoxddddddddd","juanajuato","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("342","Ray David","9822279326782448d4f77a4b55f1e19e","raydavidmorales01@hotmail.com","09/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","41","15","0","190.124.29.12","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("343","jaka","91f091b6389b477c0d794d78cbddf39c","KARLABEDOYAA.EST@NUEVASEMILLA.COM.EC","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.113.144.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("344","fredimercury","acc4135a8ba3f843425bb7294f778dab","rudraruiz1@gmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.91.195.67","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("345","josmarrafael","f2e1fa2953e3c49e2765dd3228256f80","josmarrafael2013@hotmail.com","18/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","30","0","190.207.101.72","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("346","Koka","e75f2a39f40d275aa27a8572340cd8f1","johswarduran13@gmail.com","23/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.185.100.27","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("347","karo 2805","42ee7613c6e5914d5f1101b946b5f726","caro4578@hotmail.com","24/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.155.13.222","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("348","Dayniel Mtrz","713a9885468b94eb2f68dd5a50622ade","daynielmaterazzi@gmail.com","25/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","104.248.117.232","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("349","Jhonayfre","cc8f7d00ace8da7e752e36a0d513f8e1","hectortequierovale@hotmail.com","25/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.251.231","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("350","kekogama","41789483aa8de581762edfd6c181aa99","dianavg89gte@gmail.com","26/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.235.18.115","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("351","EX","a0e3ced92a42b42120f4394fbcce1351","pizzaolorosa@gmail.com","28/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","37","0","0","181.132.121.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("352","Guayubin","a83dd52e8a77f6f1a29caba6f047acea","matamoro005@hotmail.com","29/06/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","148.255.2.57","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("353","El pro 50000","460c1400796745066164e322dc860b62","eddienguillen@hotmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.153.134","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("354","redapple","68565f01a537a8d42c00ef35389ffc26","habbolatinoamercia@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.141.202.114","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("355","G R E E N","28b371498b78c86aa1301d18db3d3fe7","yissekgonzalez2@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.179.165.147","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("356","victorpedroz","df97bc88d97878c51c57688d3c8ff35d","victormanuelpedrozosurmay77@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.96.104.146","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("357","Yessi14","9946b7fcfb04bbec380b875082d0a5a2","baezayetzua@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.208.187","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("358","xXEKO TKXx","0898636a59dab15169fdada26c8511a4","rangeltodopross@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.159.211","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("359","gabriel27","6e11a02d0b538b004e9ff198ac376cbe","gabrielguillen068@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.153.134","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("360","master0","64d11cd848f363741187b28150c4825d","urdaneta_keyber@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.115.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("361","trululu","22241fb35da55837c469699fbf03c241","ospinogomezyair@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","45","0","0","186.115.69.161","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("362","Mikii","f559369e39bbe14632b4172f7ce2f6e4","roleplay1671@gmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.133.133.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("363","elmejor90@ho","27d9bac440d1945ec8ef6794e8cc544b","04@242486375","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.174.194","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("364","victormanuel","df97bc88d97878c51c57688d3c8ff35d","victormanuelpedrozosurmay77@hotmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.96.104.146","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("365","israel ","27d9bac440d1945ec8ef6794e8cc544b","elmejor90@hotmail.com","03/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.174.194","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("366","el leo2020","a8a84ffcc3b149270ee05bf6253a0506","leonardo@gmail.com","05/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.219.220.185","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("367","elcoco14","7ad77c3972fa7fc66e8d0e3b397dfc0d","Elcoco@hotmail.com","06/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.218.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("368","ELCACO","dfcede24b4748943339a6dcc5d50f4c9","ELCACO@hotmail.com","06/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.218.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("369","santiago1234","d20236d8ffbaaca47536770b8c0f3560","helemcarvajalmanjarrez@hotmail.com","06/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.84.117.125","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("370","Driino Hp","d92b291cd78698c1d9782d2a2669daac","villamedianada22vid@hotmail.com","10/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.92.151.162","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("371","iZayrox Hp","db2f6f86c78a5ac671da30674d69cb6d","mgyy210773@gmail.com","10/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.91.127.231","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("372","Reelax0 Hp","f472af61612d29862667564695a09bba","mizudicemiauypurriguau@gmail.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","85","0","0","190.207.177.232","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("373","laura 444","b7cfd802bb54b74b9a9e52d5bc09cd3d","johanvanegas44@gmail.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.14.214.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("374","ken1uno","d015d68ca0a5c3559156c05ecd6cfec0","jhonneega@gmail.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.178.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("375","misael","e8b951556d849b058e26fefffa63ec32","misaelfilosa212@com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.109.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("376","misaelfilosa","f7f760ac3cd7a9d4df6fc13d7669e414","misael23@gmail.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.109.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("377","Miguel angel","714b36aa74bec08f0a737f2f4d1d8741","Miguelangel@hotmeil.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","186.88.113.145","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("378","KLR123","98cf9b070dd64cfe383a7e2203151e7e","misaelvalero1234@gmail.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.109.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("379","Lik","ea24d783b705dbdd5ca13b615be54d98","kendalcasteldo@hotmail.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","179.51.119.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("380","Slaanaya2020","446fc72eff3d5b98ead914322907496e","Slaanay@hotmail.con","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.123.196","","","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("381","camilocarill","46b146bc877b9080bb0b251eef9c1cdd","camilocarrillo@gmail.com","03/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.1.190.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("382","Carlos Hp","a15ad440f2d905d8ea1d08a0cafa4809","cmarrugopaniagua@gmai.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","4","51","0","179.14.12.77","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("383","alejandro hp","5e0cc8f1c49ce1ac62b8e1ced8ea7e81","keninyer33@gmail.com","11/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.157.223","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("384","klr","f792eabd41161f8cb34a93469bbf9c79","misaelperez@gmail.com","12/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.68.80","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("385","YStrafe1HP","c2b4d219c47f5ee5a5999ce932b2fc2e","luisangeluwu222@gmail.com","13/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.155.231","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("386","dioses16","061db47e5d43b6a96417a154d09a84f6","gomezlopezcarolina@gmail.com","15/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.243.148.192","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("387","MC Carlos","411f62ea3298b22ad1a2a77c9eed2069","carlitoschocolatico2@gmail.com","15/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.202.232.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("388","Vippers","6b2d7c6e53d771bbb86529fdd0376d43","abrahamyt25@gmail.com","15/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.230.148","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("389","Manuel ","5cd14b71af9be5371dbd662082274813","sebastianmanuel1409@gmail.com","15/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.230.88","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("390","carlos2514","411f62ea3298b22ad1a2a77c9eed2069","carlosmb2552009@gmail.com","15/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.202.232.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("391","MC carlo","5728f57d37d3e05e8158efb8a2a460d3","yanesita2012@gmail.com","15/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.202.232.165","Murphy","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("392","lChinoM","23f6b79b00120db91493d3a32166f1cf","chinom14@hotmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.151.176","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("393","fabian jinet","2b5796ca1bfaee32ee071d6e41d455d3","susansoto270@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.185.35","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("394","rossed pe&nt","e20b3c6c53e63a8b83bb7812dfd585d4","Rossmrc88@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.99.37","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("395","rossedchacon","e20b3c6c53e63a8b83bb7812dfd585d4","vlaudiaret@hotmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.99.37","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("396","gabriela","a7da7a0063faab1e96430001ba62d6ad","Gabriela@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","31","0","190.78.59.228","Gabriela","Gabriela ","","","0","Brasil","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("397","JhonPlay","1417cfc83fee71dc4ea197c057b384ae","jhonperezc20003@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","168.194.108.186","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("398","HooD","46b11e39cded29a33c21d76a8536b783","nox654728@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.82.85.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("399","lBombonP","e217b112109df427f3e93dbd35eb14c9","paoalexandra095@Gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.111.202","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("400","Ko","e0532bed3535476a169da8bdaed0d676","starlindadu21@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","148.0.255.10","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("401","sweetP","5aa46511b0c1c6b7d571a2710e6d94e7","deinervalidolucena@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","18","18","0","201.208.241.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("402","Emilia Hp","86041a7ddb4094669b49788696045b6c","madeleine-123@hotmail.es","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","45","336","0","181.33.51.80","Sharith andrea","","","","0","Col�mbia","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("403","tienda elite","d7ea96466e87f731ece1b7e9e0bd62c4","nair40nava@gmail.com","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","168.194.108.186","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("404","DyIan","2a51c2ad49006e45a4b933ae394eed5c","opadilla_26@yahoo.com.ve","16/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","22","24","0","190.39.27.134","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("405","Nada :!","77c21a425f8acf9ddc27d8a542350b88","Ran@dyJose26","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.234.93","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("406","lD i n d o n","90f74ab2275ef9dbebe9e990945c31c6","jhostimsifontes_0108@Hotmeil","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","10","0","190.198.128.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("407","lcamiloG","460c1400796745066164e322dc860b62","santiago.eddien06@gmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","101","15","0","190.203.183.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("408","Raichell","f81e25c4a57d0807b817a6a2730d765a","Mayerlinvillarrealyduque@gmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","56","15","0","186.90.4.80","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("409","ICarlitos Hp","ecc4e5fa8314033106fc05461a241c0a","thu_morenito0620@hotmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.149.140.59","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("410","Cesar Barrio","e038764c56c8987932e946307780e8ce","Barrioscesar166@gmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.68.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("411","Lucia PC","e69ff8cfa8570ea63c91e7b2c8cc057d","lusia23@gmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","7","0","190.207.116.141","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("412","krox zox","55478aacd33f0af34c59d63b4223ad6c","trueno12@hotmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.185.222.78","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("413","Cesar Anato","e038764c56c8987932e946307780e8ce","Barrioscesar089@gmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.68.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("414","anahys","b03eb9cd68f5870c924d8a804bf93943","anahyssolorzano56@gmail.com","17/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","22","0","0","186.27.209.230","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("415","orianis","ef45b930d06b734f68ff3416370a6550","mariannysperegtytyz90@hotmail.com","18/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.140.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("416","ChinoM","cd8d51d4d7cd99b9c2d5fc6726a5e386","yexibeth75@gmail.com","18/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.151.176","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("417","ChinoG","cd8d51d4d7cd99b9c2d5fc6726a5e386","lamasbuena_14@hotmail.com","18/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.151.176","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("418","rafaelhp","7d7da79c40a3e1f3837df60b2a17e46c","vanesszerpal@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.208.17.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("419","Rixio pirela","4283df71550e872a7d4b2fb559554b1b","rixio.pirela.12@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.51.32.118","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("420","gilber13ld","4310a3cdd4435463c1603fc4e1fbbe5b","gilberteran50@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.75.111.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("421","IDanielT","b32a1e5dbae48aa75ce4fd33004413f9","danieltorres@insucoabg.cl","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.203.105.193","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("422","lDanielT uwu","b32a1e5dbae48aa75ce4fd33004413f9","ldanielt12345@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.203.105.193","No especificado","No especificado","","","0","Chile","1","2020-09-13","2025-12-31","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("423","lWeson","1b5c62e0ec9c94a335170dc3b5340c58","lWeson@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","190.72.21.72","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("424","Tifany211","dfcede24b4748943339a6dcc5d50f4c9","Tifany211@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.52.136","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("425","Marlo51","a57cbc27d889e358c2160d00ec696834","Elielabrahanrojasazuajes@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.205.191.254","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("426","Marlon123456","9667711a0ef8939379829e29ec59114c","dani_lo247@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","136","34","0","190.205.191.254","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("427","kimberly A","446fc72eff3d5b98ead914322907496e","luisrizalez@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.147.82","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("428","wady12","92bc9e51f2d3d2b514c64f2dac249c74","guadimiquilena@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.229.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("429","xX Kro Xx","51cb670052fbb1a59ac8dce3d67091d7","wilfredoblanco721@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.159.134","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("430","joser20","4310a3cdd4435463c1603fc4e1fbbe5b","terangilber50@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","60","0","0","190.75.111.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("431","wady1234vipx","1ccba56da3b6e3b929c038d8fb3ea6c5","guadimiquilena@homail.como","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.229.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("432","llOdiosito","ca882cc6f049df27f62d13dfa099128a","enrrique.semprun.22@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.61.53","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("433","clasificada","dadcd915c02a61f05e31915d4c7f2932","fullpapa21@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.198.83.220","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("434","MIKA HD","c15fb4f55d833c589ef06b1b8a020332","kelvinmolina111@gmeil.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","190.39.219.46","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("435","Mary0989","6188816847ef9b4944e437ef6285823a","marinla@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","190.145.194.186","No especificado","No especificado","","","0","Col�mbia","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("436","lkunoichi hp","92fa9cf4513a9121194a45a29f98d7af","y.molero_30@gmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.92.250.97","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("437","lcopyl","fb4b3ce732bf7c1405feb6701e71d03d","santiago.manyomag@iensecan.edu.co","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","186.87.40.12","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("438","Odiosito","14c505075e4438b072f3fcc2201d20d7","enrrique.semprun.20@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","45","5","0","186.89.61.53","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("439","luna143","74d1da7bbbadce0bc29b582ec8c73cfc","genesis_monteverde9@hotmail.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.80.59","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("440","king 2006","7f77e93fee55c252575e1e2b5391de4e","king2006@keko.com","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.130.109.57","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("441","PANDA20","a6de1e7138dae7106ff27502727d419f","PANDA20@KEKO.COM","19/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.130.109.57","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("442","Theylong","2ec2be9b03e236a8a6bc2e603bc8bff7","yeisbelyscontreras@gmail.com","20/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.220.242","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("443","seba12345","e12bd804fb0d6fca18ced8117d6a0f9f","linaresberriosloreny@gmail.com","20/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.184.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("444","lilen Hp","258aa0937f838290a93653bc54caca2b","123@gmail.com","21/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.73.188.10","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("445","diego82","7cce0778cbbeed7589f22b21356286a4","diecoxd@gmail.com","21/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.202.204.231","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("446","akko12345678","a0652499ea25f1c7276f1eb30f6d6919","starlordman10@gmail.com","21/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","200.56.107.239","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("447","Milani86 TK","e16991fa6abaff06fc8ddae9811daba2","milynn85486@hotmail.com","21/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.205.235.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("448","engerbeth10","d0619528456fcc2289df5b5c808c13e7","456@gmail.com","21/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.188.10","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("449","YGabriela HP","d654588efbff5772b324972f28618f1a","YGabriela32@hotmail.com","21/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.208.239.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("450","Dracki","df79fdfe0f4a6c1c62aa21c895593881","josuenieto_1@hotmail.com","21/07/20","","4","","","./images/avatars/noavatar.png","./images/barras/b1.png","91","10","0","186.155.18.35","No especificado","No especificado","Queen?","","3","Venezuela","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("451","javeu","06d70efd11f2858b673f9ac49e1ba8f4","javeu@hotmail.com","11/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.125.220","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("452","Pablo@","f8c27482e435484df533b4566897b830","veronicamata10112006@gmail.com","31/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.105.145","miguel","No especificado","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("453","Charlotte ","e16991fa6abaff06fc8ddae9811daba2","charttv@hotmail.com","21/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.205.235.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("454","naibeth18","12fb9ceb372db5a6b3c418dc6b5383ba","danielaleones97@gmail.com","22/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.88.149.52","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("455","naibeth","f012670817182472f80b07130a076333","naibeth18@gimail.com","22/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.88.149.52","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("456","Krozox1","35e8e16fdbd8a6bb94c7610e77572e62","Krozox1@kuinz-fansite.online","22/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.203.106","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("457","Krozox2","63c1b238440022b44ca4e0cdc36fd0ee","Krozox2@kuin-fansite.online","22/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.203.106","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("458","JhanderS1","afa9bb347d565c55fa2ba5690c716a9f","Jhander1@Kuinz-fansite.online","22/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.203.106","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("459","Xavi..","41fb6a0086b65de80636591a2bfabb49","jefostrike@hotmail.com","03/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","5","0","186.90.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("460","El Cripy21","40cf509e057643c846ff9bf3b042670a","wuillianseijas21@gmail.com","22/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.242.178.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("461","derson Hp","63cd525d9f3eb19ce5e643f4a0e5c88b","130@gmali.com","23/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.2.242","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("462","lic pro hp","ea09802cc7a68d3e5814159571c012cc","132@gmali.com","23/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.2.242","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("463","B L A C K ","bb5d6aaaccce9f2d08147e01ea486317","williamlugo43@gmail.com","23/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","190.39.151.33","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("464","Yang Long","4aaa0dd3f1e8fd9c1f407ca0ada5595c","Lauracamilavalenciavalencia@gmail.com","23/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.117.169.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("465","francescosca","cc8f7d00ace8da7e752e36a0d513f8e1","nataliadal64@gmail.com","23/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","5","0","190.185.128.246","No especificado","No especificado","","","0","Argentina","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("466","IKronox","bca1fa98f9e115e8feb823ecbafdc555","acelablanco@hotmail.com","23/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.242.41.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("467","camiloandres","b7bf82a63771f8dd04d8eb9129289122","camilopereira@gmail.com","23/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","1","5","0","186.1.190.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("468","eiberson","df565d5ea91b3a4fa23cd2cd65e30adc","yeferson14garcia@hotmail.com","24/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.61.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("469","luis vera uw","55478aacd33f0af34c59d63b4223ad6c","jcvera3214@gmail.com","24/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.185.147.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("470","luis angel24","0545c15dd22f95d54f4067c027e61429","angel2004@gmail.com","24/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.109.177.191","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("471","Z O R R O","9d763a3a4540d6a81614eeb011d5722c","alcendrasebastian468@gmail.com","24/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","1","0","0","186.112.7.25","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("472","francescosco","cc8f7d00ace8da7e752e36a0d513f8e1","soofiibahler@hotmail.com","25/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","190.185.128.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("473","cristal01","6dd20a96b66572975e45193511df8326","lachikitacamila.15@outlook.com","25/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.236.26","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("474","Neili28 Cld ","b8bdb487dcd322ee24ada5a9ea5ab06f","Neili28Cld@gmail","05/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","4","5","0","186.89.13.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("475","aronmora345","73038fe920a9865a2fe23e552cf155a7","aron245301@gmail.com","25/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","39","12","0","190.79.120.3","aron","mora","","","0","No especificado","0","0","0","No","No","Si","No","No","No");
INSERT INTO usuarios VALUES("476","sthivennavar","f7f760ac3cd7a9d4df6fc13d7669e414","sthivennavarro820@gmail.com","25/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.201.143.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("477","lalo@gmail","80bc48736ec1e2b29aba2af37cbc02c1","jorgeluisfermangil@gamil.com","25/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.37.171.27","jorge","ferman","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("478","MarianaHP.","5acc2ce6cba8a94330acc545bd1d298e","DOUGLIANNYS@HOTMAL.COM","12/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.74.162","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("479","Dennys hp","e88f1bb2515198dbdf39c69cbf17b0af","natyarethgonzalez@hotmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","16","50","0","190.73.180.152","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("480","ijesuss hp","d575c09300540021f2522e954183721a","jesus332@email.com","25/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.202.225.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("481","IMaricieloh","1d94d973bf2873c42edefb435164c7f1","vitotua2008@gmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","85","37","0","190.36.157.157","yefersonhp","yefersonhp","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("482","sebastian","9c62dda6cac3b0d88257352169a19317","saraymendezmeneses@gmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.131.198.52","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("483","samuelhurtaf","e315cd257ad2ed216b782eb1436f70e0","Hurtadooropezaj@gmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.23.190","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("484","lShylaM","dadcd915c02a61f05e31915d4c7f2932","eternaluna28@hotmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.118.76","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("485","wildeirys ","e6b86424536079d721ee6921c8b25644","mcbo_tuyo@hotmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.29.86","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("486","|Slaanaya|","632aa26097d157039341bd46f49ccad8","abril.almenar@gmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.80.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("487","IMoy","55478aacd33f0af34c59d63b4223ad6c","Imoy@gmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.251.27","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("488","A C","87a4b9e3d0efcf824e107f9c87958b09","alberson_chacon@outlook.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.147.178","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("489","keybermaster","bc9d4ef12b333a7d654decd653baf5ac","urdanetakeyber@gmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.34.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("490","lkroxoz23","e0cdfdc8a13ab07896513d137eef7a13","nes7034040@gmail.com","26/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.222.29","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("491","luis angel 1","7f31678198d358203c44ec0774f76349","lopezbetty774@gmail.com","29/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.88.176.111","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("492","emauel","a37e6bd3136391aae76252bdb1cb1f76","emanuelchacin@90gmail.com","27/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.19.69","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("493","Albert","9437db929b54b915e04f8238c5acf665","destrozadordetotonas666@gmail.com","27/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","70","14","0","200.90.91.7","No especificado","No especificado","","","0","M�xico","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("494","IRonald","630a5ae8c5b54f732ea76f72a0ce9ec1","ronaldmoreno811@GMAIL.COM","27/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.77.136.231","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("495","norbelyramir","b740d53c50ab0ff08371e2206b73f0f5","noeliajramirez@hotmail.com","27/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.132.186","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("496","franchesco","cc8f7d00ace8da7e752e36a0d513f8e1","lanaty_314@hotmail.com.ar","27/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.185.128.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("497","natalia p","aa8036a33eff1fccef592aed8be19239","paolameneses1432@gmail.com","27/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.131.198.52","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("498","reypro","b7bf82a63771f8dd04d8eb9129289122","Camilopereira1@gmail.com","07/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.1.190.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("499","A T E N E A","c5fe42cb19f06e070d966c2580f411de","braccomoranm@gmail.com","27/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.48.58.70","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("500","fabian34","69af5af00690830e76eabe6608dba68c","leonors731@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.178.63","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("501","fabian43","2b5796ca1bfaee32ee071d6e41d455d3","nors731@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.178.63","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("502","Barrioscesar","e038764c56c8987932e946307780e8ce","Querenguanrobert2017@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.189.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("503","CesarAnato","e038764c56c8987932e946307780e8ce","Veroar17@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","5","0","181.66.93.133","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("504","Cartoon","660c4280db54e1a6f2c5dca03171bfe1","cartooncat666@gmail.com","01/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.234.89","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("505","angel93","97ac1d75c5dd8f4966bdc7944d4814e7","videlaluciano28@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.54.136.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("506","luciano98","03eedad55d29d3e210a39d73d4b79aef","luchitovidela2009@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.54.136.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("507","Andrea LD","2770c1009eae3710afcc23dadcd9f305","glcg0505@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.82.226","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("508","natalia  b","aa8036a33eff1fccef592aed8be19239","paolameneses1223@gmail.com","27/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.131.198.52","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("509","ManuelRey02","54d2e174b4ba6c9c401f8ddb81fd60d9","badaceop420@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.243.17.29","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("510","medina","cb51c369558396f3728600bcb45d8953","medinayosan1@hotmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.206.218.47","Yosan","Medina","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("511","Conas ","42a3697dd2f5a1c13ffff7de49bb5040","Conas_171@hotmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.180.115","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("512","Lolitachan","aa581e46f731240c5f7c369f63e50be1","loli@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.242.159","","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("513","bashioco","e9a60e3af6fa24553d13a13c7febd5c2","zextanoche999@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","185.220.101.206","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("514","Donus1234","16c76facc138aa04cb131a2e50dbf306","keberlin.p@gmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.184.61","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("515","edimar 1d","632829d12a0e9d52c175e4f9d9248bec","redimar_3@hotmail.com","28/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.119.55","No especificado","No especificado","","","0","Singapura","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("516","ltanke","9ea74be944e0d017eaa504c0633cb24a","yeremi5-1@hotmail.com","29/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.132.6","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("517","MrJosue","6ca44e3fff55615a61486582a010a2a6","eudimarjvh@gmail.com","29/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.79.210","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("518","mlk 10","2977382953ff1f2c48148b7b548f3bb0","garridogladys11@gmail.com","29/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.132.6","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("519","jisus 12","e58001de9f13202413be8c9c4c46eca3","menesesjesus543@gmail.com","29/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.131.198.52","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("520","Gabo7 II","2ad752ca0a288b50020d1d7d740d2055","gescalona619@gmail.com","29/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.132.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("521","Cocotok","209f05d808c08b3f5f13b0b4828cce1d","Bbesita@hotmail.com","29/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.211.140.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("522","Cascada11","0aa66ea7b0d9f604b66f70d2d164d5a9","diegoisaaccrespoaguilar@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.70.144.111","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("523","lAlejo S ","b2cbcd9cbfc6157fc687237266e50866","hay@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.84.20.216","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("524","TheGod GP","3f208bf21f2af065fa79d86ef500c04f","angel.lopez.@hotmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.37.40.71","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("525","Yonaiker Hp","b74b815a821ad68fdae8a237c7beb177","Yonaiker3318@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.213.203","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("526","Slaanaya","632aa26097d157039341bd46f49ccad8","yelitza802009@hotmail.com","30/07/20","","4","","","https://i.imgur.com/VoUsnGl.jpg","./images/barras/b1.png","68","10","0","190.207.105.145","No especificado","No especificado","0%","","1","Venezuela","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("527","mary mery","a5675a9429697c40ae1719e77af9abc3","saracoronado@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.30.167.18","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("528","Mathias Hp","92fa9cf4513a9121194a45a29f98d7af","w.carvajal12@hotmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","0","0","186.94.114.217","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("529","p U m B a","f96df3ff9f999268ae47bf5c5deef2f7","PumbaHp@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.250.142","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("530","edwar cole","a008a3888c215b5c0e2c54099d371573","gcfcfh@hotmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","0","0","191.102.120.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("531","Lescano_Maxi","c2b30a0cc07d4861fe9a0f0d86cd7e08","freefire304@hotmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","86.106.87.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("532","DanielWasso","5595c1272089d497d1a8e7a31c7e2c96","daniel_300@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.77.54.255","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("533","XxxMelizaxxX","21f8bdc93c73a4934fde0a46dab8e6b8","meliza04@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.166.7.141","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("534","DaRieLiToDX","dda4158ef508b7969a648fd34585a395","darielpena811@gmil.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","148.103.135.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("535","CamiloKing","c2b30a0cc07d4861fe9a0f0d86cd7e08","camiloloboarzuaga@hotmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","86.106.87.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("536","Sanki","b44db6998354ca4de6139772f146fb64","mofleteslol1@gmail.com","30/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.174.3.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("537","elite mat 14","8322733c2b2a3cae2539ee8d336a71ac","katiuskacor@hotmail.com","31/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.179.165.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("538","ChupaChups","f65db9dfdd447c3071c7fc41b3948a68","aalejandroquintero1@gmail.com","31/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.206.248.127","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("539","sigli","044a55308ff478d4c9e0979da2d90e7a","sigli@hotmail.com","31/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","141","15","0","190.204.68.184","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("540","xXJoSePhXx","aa581e46f731240c5f7c369f63e50be1","joseph123@gmail.com","31/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.251.7","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("541","DaRiel911","65f24fd50b35349fdee3ae3e550fa126","darielmata811@gmail.com","31/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","148.103.135.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("542","xJosephx","aa581e46f731240c5f7c369f63e50be1","joseph12@gmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.167.249.60","Joseph","No especificado","","","0","No especificado","0","0","0","No","No","Si","No","No","No");
INSERT INTO usuarios VALUES("543","enyerCrack","39b0bad830a73626c7806421058483e7","enyercrack@gmail.com","31/07/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.96.5","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("544","JackFrox","ba20bb50aece6a3a0cf468e09845bdfc","prospero_aliendres222@gmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","66","5","0","190.72.130.33","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("545","Dragon Wamer","e0afcacd9f294be1098dd245a4b4eee4","LuisFer192016@autlook.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.179.165.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("546","S T R A W","9bfd363e9c85d2d02aee5b27325c1eaa","bcxctus@gmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.141.136.125","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("547","MikeeBuker","0f287c50e4e8767eca939a7683e83639","roki@gmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.36.80.240","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("548","Kekekekeko","ddcc40bdeeafa1894b6750384affab95","rixio_pirela_12@hotmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.51.32.118","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("549","XG A B O X@","249dc2d8a8b71f1dc40a96d7f6a8b157","lamaseta_@hotmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.248.219.98","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("550","myke towers","0898636a59dab15169fdada26c8511a4","daliver@hotmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","28","0","0","190.202.244.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("551","Zeroki","e91e04534d576fd269e2bc057ff768c5","Zerokxd123@gmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.36.5.27","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("552","ISh4poI2","f19478f650125af2561e973a56e63113","noverasnada@gmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.242.189","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("553","Mari Hp","db20d228668bf03f5fce0a20f7cfab0e","mari@gmail.com","01/08/20","","1","","","https://v2.kekocity.com/uploads/02/b/3/d/d/7b3ddacf03827aefddba519389884c3b.png","./images/barras/b1.png","223","50","11","186.88.189.186","No especificado","No especificado","","","2","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("554","yonito","f7f760ac3cd7a9d4df6fc13d7669e414","yonito-jesus@hotmail.com","01/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","2","0","0","190.204.111.70","yonnys","27-11-2009-12345","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("555","mizu 123","f472af61612d29862667564695a09bba","022233hnhhhhh@gamil.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.199.13","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("556","maikolelpro","f1ab3fcc2d1864991cb7ba08252ec0a2","maikolxd_@hotmail.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.148.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("557","Elvismaar","5e79e55662f224442b770c3c7c9c5dbf","kadi37ramirez@gmail.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.202.26","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("558","lChino","9b0243e78549d2966983f7bf31e317d9","hpeterno@gmail.com","02/08/20","","1","","","https://v2.kekocity.com/uploads/default.png","./images/barras/b1.png","144","0","32","190.74.76.81","No especificado","No especificado","Keo","","9","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("559","x Saki x","a1d2ffd3c47c083ad67dfad1bbca8a07","nohelydm77@gmail.com","21/09/21","","1","","","./images/avatars/X.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("560","DanielaFG12","de4c58bbefc0a844462ba032950c981a","daniela1234@gmail.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.54.255","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("561","maickol10","7a9352400255faae04e4f3d0333a7afe","paoliz_2004@hotmail.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.111.70","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("562","maickol3","7a9352400255faae04e4f3d0333a7afe","karla-9207@hotmail.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.111.70","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("563","maickol123","4ec3e9625bc594a1bc3a9ced508e57a3","fabi.farandiz@yahoo.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","42","0","0","190.204.111.70","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("564","kroxoz","c2c4753c5c84fd3911ced71b5260761b","antonella1710@gmail.com","02/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.139.218","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("565","vicval26","c36aef9c70a1a57e55b16d1c966d8334","vicvalsanchez@gmail.com","03/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.84.35.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("566","xxX Jose Xxx","e39dc4ff6c691b7316ea9edfc2529667","emajosueramirez@gmail.com","03/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","11","6","0","200.84.35.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("567","2020elleo","778b523206a2b4043f9e08fe3a1a8006","2020elleo@gmail.com","03/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","186.30.167.18","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("568","cristiansuar","3292f34c94dbb6008230be186bb41610","germanpollos15@hotmail.com","03/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.84.169.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("569","XG A B OX","190f49e69111693b81bc6096b493e0ae","laplanta_@hotmail.com","04/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.157.10","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("570","El Hacker Hp","446fc72eff3d5b98ead914322907496e","ElHACKERHP@gmail.com","04/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.117.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("571","jhonnnderGV","c52b77eb6ddbbd3c7af6612d1fdf5b5c","jhonnder567@gmail.com","08/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.71.228","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("572","COREXELPR123","6dfe3f2b14b857ecdfcf7defdfb5522a","danielkamil@gmail.com","04/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.88.62.216","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("573","escofi tg","8c535153b82793b9bafa1acbdcf472a5","vitotua25@gmail.com","04/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","43","25","0","186.88.111.40","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("574","Dasha valent","0f4f8d42fa9c3f4f89c3027a2295ebf6","nenani.0209@gmail.com","04/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.230.216","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("575","Valezca","c7889693d9f8db1953d9138a998f0995","Valezca@hotmail.com","05/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","190.73.96.190","No especificado","No especificado","","","0","Col�mbia","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("576","yosiret23233","2f31fac72826626b3b9be63489d74cab","Diana2626@gmail.com","05/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.72.232.96","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("577","Araon Guzman","d58afefa962533319eb79d2171f2fa0a","aalejandrogazuaje@gmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.82.141.189","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("578","2020esteban","d1de05f285faf4ea4329b0ce4e7c5859","esteban@gmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.30.167.18","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("579","rosa2020","a5675a9429697c40ae1719e77af9abc3","marymery@gmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","186.30.167.18","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("580","Y","b9e0c05320f3c4bd6e964cf9c03fecb0","Y@gmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.174.239","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("581","yenealex 321","7c03b48d9db40d4b967c07e9a716841e","frayreimar.romero@hotmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.127.21","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("582","6IneLOL","def3b24bbdfd6ce7b71ed87df583ba1b","irigoyenjunior940@gmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.132.71.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("583","JuNi0r12","074265dc4c696a9bf79098a7dc9a2811","junior_pro@gmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.132.71.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("584","kekocity16","e52b744ad058c8f1e49d7aca654fa2dd","keylerjosefa@gmail.com","06/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.243.63.230","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("585","junior1113","e191e0e17638e54feda1b57e99d4596f","edinsonesco4@gmail.com","07/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","191.102.120.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("586","lMafi","0765b83add1a178e16c072f55181eba8","carlosmodz58@gmail.com","21/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.225.41.129","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("587","-AIecks-","943bdbf1ed0c3276952911e9c08697c1","kekocityalecks@gmail.com","07/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.86.79","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("588","bulcro","8fb93f18449de18575b41caebd674dc2","alberson_chacon@outloo.com","07/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.135.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("589","Edw SA","28ab979023183470b05f1f221317b1f6","sosaanato@gmail.com","08/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.202.40","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("590","JhonnderGV","c52b77eb6ddbbd3c7af6612d1fdf5b5c","jhonnder123@gmail.com","08/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.71.228","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("591","jeidinson09","330803fa0f1e547e8a30c06000386640","soy-el-rey-08@hotmail.com","09/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.198.200.32","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("592","Al Pacino","0bc03424c5f73aa44616bc2e2bf15199","AlPacino@gmail.com","09/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.200.32","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("593","jandry09","0bc03424c5f73aa44616bc2e2bf15199","scarface@hotmail.com","09/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.200.32","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("594","heladeraxd","8cf50757799b0c8d82e0b90cbfc584a1","allanfallasr28@gmail.com","09/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","170.245.240.201","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("595","OreoVainilla","e0ef9c12a7709680c64d6ec9901a63d7","ok@hotmail.com","09/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.205.19.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("596","lChocoxpp","445abf23f92c1ec974b43397703b716d","shirleyerl.sr@gmail.com","10/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","101","10","0","190.198.139.185","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("597","Murphy","d3748b79a4618ac566e6f15529c46b4d","yanelisavefenix@gmail.com","10/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.202.218.87","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("598","Gabo7 Hp","9714177a67cf0bf8efad369a973a838e","elgabo2207@hotmail.com","11/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.142.79","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("599","Thecamiloxd","c2b30a0cc07d4861fe9a0f0d86cd7e08","freefirelobo304@hotmail.com","11/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","181.141.1.197","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("600","Daniie","5d0712937976496c9b2e8022c86e71a8","saraberrios16@gmail.com","11/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","37","54","0","201.208.34.19","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("601","Alecks","55478aacd33f0af34c59d63b4223ad6c","juantipro12@gmail.com","11/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.31.5.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("602","RafaEscalona","5e231290be010b87be5c7df7cfe668ee","teocarlap2207@gmail.com","11/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","186.93.142.79","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("603","gabrielmarca","62547bfc10f2c7e1149ba7cd77630d50","12gagm@gmail.com","12/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.199.92.7","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("604","LucianoRG","4bd7be60f83face79909db1e9541f88d","rodrguezluciano123@gmail.com","12/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.90.12.226","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("605","Karlaa","af70852b2bd4430a7a0d30a315349736","Karla123gmai@l.com","12/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.37.183.57","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("606","sebastian050","6a358ed2ea9860460b44f07138ba437d","wiresharkv@gmail.com","12/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.91.213.249","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("607","lEltei","a5157deba4f3de2cd6eb9001064501ef","bryantvr_@hotmail.com","13/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.235.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("608","lbasicV","a5157deba4f3de2cd6eb9001064501ef","bryantv2r_@hotmail.com","13/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.235.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("609","Elite","446fc72eff3d5b98ead914322907496e","bryantvr_@hotmail.com","13/08/20","","2","","","https://i.imgur.com/HmNf64H.jpg","./images/barras/b1.png","1164","183","0","190.200.235.175","No especificado","No especificado","","","5","No especificado","0","0","0","","No","No","No","Si","");
INSERT INTO usuarios VALUES("610","victor","737b62201f6be49aa8de06660e4161ad","alexanderssalazar0@gmail.com","13/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.100.252","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("611","Angela","4eaa26456fa8856d35eeca634d29a2ff","sofiagoizqueen@gmail.com","14/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.74.147","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("612","santiagoXD","0837f18e4c2fc1534fbaabea3361f8e9","santiagorobloxXD@gmail.com","14/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.155.13.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("613","anthonella","1bb8caaad8156db50537bdfa5c49eda5","mariannysperez290@hotmail.com","15/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.73.199","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("614","Jhonnder Hp","c52b77eb6ddbbd3c7af6612d1fdf5b5c","jhonnder2345@gmail.com","15/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.215.202","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("615","Alexe Hp","3e84a226ffda8a48bb8657fc05427cac","KevinRoja123444@gmail.com","15/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.128.61","Eduardo ","Gonzalez ","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("616","Ulisas ","12d3db8e6623cc3fdb4600e7d30ce130","Ulisas07@gmail.com","16/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.234.36.214","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("617","Jesus PH","27c40329fe14402ed083c54f6945f3e1","jesusmix706@gmailcom","16/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.147.253","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("618","andrea002200","38662f0705d12213a563bb56e486de82","avalentinaa533@gmail.com","16/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.171.252","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("619","sebaslunabel","56a08bd8cc7b8732b92b244fbeda1d80","zambrano0908.2@gmail.com","16/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","35","5","0","200.108.190.42","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("620","andrea002205","6c0471f2ce319041b7929e6d03a2d709","avalentina7a533@gmail.com","16/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.171.252","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("621","andrea02200","289670127447e36338c07ba7c247d68b","andrea@gmail.com","16/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.171.252","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("622","Wiel","dc47371966c9c3b68524427ba758dee3","alexajosearochablanco@gmail.com","16/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.202.144.10","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("623","Kazura","4eaa26456fa8856d35eeca634d29a2ff","ZukaraGamer@gmail.com","17/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.204.76.194","Kazura","","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("624","D E U D E D","31f00c4c0686004020fee389a6776da4","jesusvelazque03@outlook.com","18/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.250.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("625","TheGonD HG","422d64ff2cb87761fe77988c924984df","angel2008@gmail.com","18/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","186.88.184.109","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("626","Sanchez","c7889693d9f8db1953d9138a998f0995","yeneidaperez@hotmail.com","01/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.109.251","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("627","Maria19","5cde208d7042668a1caaaf667740120e","mariagodoy190408@gmail.com","19/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","76","20","0","190.79.149.72","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("628","AdianLuis","09069a29615bc2ffd846c02c784070af","Luis12345@gmail.com","19/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.79.149.72","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("629","dino12","e1ebc33b708f25eb942b225a46654038","dino@gmail.con","19/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.94.92.128","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("630","Gilari","6d15ed04810b9c4010d1a9a77d7be823","valentina@hotmail.com","19/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.44.71.205","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("631","Santiaago","78bb7835e59ba00c00d6d9402d390bcb","santiagotorrez0000@gmail.com","20/08/20","","2","","","https://i.imgur.com/hW1x29F.png","./images/barras/b1.png","124","14","0","186.84.22.212","No especificado","No especificado","           Piloteando la tristeza","","9","No especificado","0","0","0","","No","No","No","Si","");
INSERT INTO usuarios VALUES("632","Santiago","78bb7835e59ba00c00d6d9402d390bcb","torrezsebastian000@gmail.com","20/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.84.22.212","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("633","alejandro14","5c0f20684190c0f869955844b9a4777c","sebastianeliu0@gmail.com","21/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.73.138","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("634","alejandro10","777f1ea524e6788a25ceea0956e223b2","ruanzinhoferrari0@gmail.com","21/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.73.138","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("635","mary 26","59bfd0c9e496991d2aea93b3ec57fe36","gsaray844@gmail.com","21/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","27","0","0","181.62.52.120","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("636","Elviismaar","5144c90442c0388ed594b75937c91af4","elvismar_morocoima@gmail.com","23/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.250.136","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("637","andreina2020","90c73dc97266a27f76dbfcff91fc640f","antonella@gmail.com","23/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","186.93.56.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("638","Damefichas","5a83b8a3f96f23461bfb5d3ef85dc4f5","yairospinogomez@gmail.com","24/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","161.10.173.176","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("639","kingofkingss","a8a1e7b677490dfbe2cf1720a863b3a9","johnbahoque@gmail.com","25/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.84.242.66","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("640","HarleyQuinn","b7cfd802bb54b74b9a9e52d5bc09cd3d","mariaangel44@gmail.com","25/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.14.214.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("641","nenitaa12345","c0548e46d2a35e3e4014e97322b5de24","mariangelmlugo43@gmail.com","26/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.93.124.69","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("642","PedroA","a8418f9fbdd67de7310cbaf8a4ff6148","pedroguevara1034@gmail.com","26/08/20","","2","","","./images/avatars/noavatar.png","./images/barras/b1.png","122","45","1","190.37.93.21","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("643","valeriacgv","149d17a6865304e3ac90da71f7c54978","maria.alejandra1943@hotmailcom","26/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.205.27","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("644","AleeeeeC","ae4589bfb1bfb347893edfcbf886eda6","alejandro8castillo09@gmail.com","30/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","189","32","0","201.243.185.164","Alejandro ","Castillo ","Emili??","","4","Venezuela","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("645","rebeca santo","7a1ccb61fa15f7eec36d572cbd451440","CARMENTERAN2017@HOTMAIL.COM","27/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.209.158.166","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("646","sebas123","3c58e50ded618aefacba0eb5106556e6","sebastianrevanales@hotmail.com","27/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","190.202.241.133","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("647","Mizu","f472af61612d29862667564695a09bba","azuajeantony11@gmail.com","28/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.251.222","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("648","marshmellow","e3b44d40d263608ad28181378f11b873","angelicafreites@gmail.com","28/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","77","9","0","200.84.36.254","Jos�","Goncalves","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("649","Xx Jack xX","7a9352400255faae04e4f3d0333a7afe","elmanuel.189@gmail.com","29/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.105.116","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("650","crack12345","c86cf104a17f11b185a06a2646512073","jackson.189@gmail.com","29/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.105.116","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("651","millonario 2","d0c9a760ecc118b76bd65c497f50f601","rogerrincon857@gmail.com","29/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.209.118.244","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("652","DarkArcticV2","6af7c897dc9994d86739c93a3bb3c887","djgamer4ever@gmail.com","29/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.242.88.243","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("653","Argenis El M","6b7e9b8bc8b3eefc26505046c6246474","argenis_payares@hotmail.com","29/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.234.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("654","Argenis","b67a93c842929bdfe78bd001e6ccb491","argenis_payares@gmail.com","29/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.234.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("655","nicoleftg17","04383addadf417f2dbb5fb56571b2541","nicotua1709@gmail.com","30/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.36.159.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("656","ReidersonHpl","f964a740bf577e4f4d47cd3becf471ec","Reiderson10@gmail.com","30/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.113.152","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("657","rayniel12345","d9c5b6dac3eb2aee652afcfa0068e50d","raynielalexanderramirez@gmail.com","30/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.93.111.180","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("658","T3st","e1eafeaa595509fd7c47a991c8b03dfe","test3@gmail.com","30/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.84.169.53","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("659","Jhonnny","52ec872b0fc1c17449c90808372d1532","luispereira_3@hotmail.com","30/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.88.136.224","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("660","Jhonny22","347aee69fce8e1576ad9991be5311028","jhonny_3@hotmail.com","30/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.88.136.224"," El Santero ","","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("661","ISilvia45","877f42f712e02ff7e250b225c9ea7575","ISilvia.45@gmail.com","31/08/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.200.250.252","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("662","nightmare116","aabc57fdad80cd99ebe44d52acdc4338","nightmare116@hotmail.com","01/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.105.64.166","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("663","saray39","a8aaceba9ab41569259074f004e4ec8a","marimenamartinez@hotmai.com","01/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.36.243.108","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("664","alexandre27 ","a008a3888c215b5c0e2c54099d371573","danielslvp@gmail.com","01/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","197","86","0","191.102.120.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("665","SANTIAGO A","aabc57fdad80cd99ebe44d52acdc4338","santiagoacosta1@hotmail.com","20/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.105.73.84","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("666","anuell hp","4d285cbcdfbc9f7017f68211c7d1f335","adonysfarias27@gmail.com","01/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","-10","0","190.78.238.29","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("667","Eider XD","e6b86424536079d721ee6921c8b25644","eider.sanchez09abrah@gmail.com","01/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.91.198","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("668","juan hp","0965c2dfa793d644ed8ef77a1937e951","santiegotuggener@gami.com","01/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","60","0","0","190.207.99.255","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("669","Gilari saray","6d15ed04810b9c4010d1a9a77d7be823","axcel.gonzalezhmail.con@gmail.com","02/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.199.207","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("670","Marina hp","a00e02f8768e0fc9e01d96dc1b475c38","dornayeri@hotmail.com","02/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.84.180.226","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("671","Reyna76","446fc72eff3d5b98ead914322907496e","msolorzano740@gmail.com","02/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.208.121.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("672","Weres","aa581e46f731240c5f7c369f63e50be1","Jcvera.3214@gmail.com","02/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.31.5.178","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("673","JosueS","e9e5570089cf5749c7ae02e175583dbf","eulisesbermudez87@gmail.com","05/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.121.160","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("674","el   soga10","95ec559be9c958114179980237f725af","alejadr0@gmil.com","03/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.157.128","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("675","angel broo","3f4a2430344b1b2ed187513d686074e4","pedrojosealbarrancravo@gmail.com","03/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.120.60","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("676","TsKing","17aace04b1e6a183b0ff719290960b23","davodalejomontenegro46@gmail.com","03/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","179.51.118.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("677","1231234566","18f3d17f0fc457cf32d9693f78996799","luisgeradovera2@gmail.com","03/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.165.98","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("678","Dylanprropro","ad1f74bafb18f65ccde7fe9420c76732","dylajesus@gmail.com","05/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","17","4","0","186.90.42.101","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("679","Leospro","7f5635236f143b48d5b4e872266df89a","epicgueamer2.0@gmail.com","05/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.199.58.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("680","JoseManuel","6be0de88d07981e0901d503f07f916d8","angelicfreites@gmail.com","05/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.156.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("681","heiden","2d2520e456a4bc23dc04452dc8154c1f","hgjhblvhbrb@gmeil.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","191.102.120.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("682","Heisenberg","8a9f659390ba5d248da9be26a746d8a1","arstarnava@gmail.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.124.28.186","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("683","euder","f2dfcb72de65e8b5ac8f15e7e122df13","rodriguezeuder1172@gmail.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.75.52.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("684","daniel ","cc9f5b43bef6fe9be1b238e605907eb5","daniel@glemi.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.53.32.167","No especificado","No especificado","","","4","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("685","daian12","1743a01d6def086464bc1e290ace0e74","daian12@gmail.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.53.32.167","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("686","daniel123","8b6b7d30aa18615a772ecd568237250c","daniel123@glimei.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.229.162.218","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("687","MINI HP","6be84b8083bdc3543a8995d624db3a45","doriannyliendo@hotmail.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","0","0","190.74.244.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("688","El NIKE","40cf509e057643c846ff9bf3b042670a","elnike1234@gmail.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.244.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("689","Jhorbi","86540bc1666a116a6c9adb77586180df","jhorbisel_javier@outlook.com","06/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.37.219.203","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("690","ataka melo","637f1dd5f9a4aeb4456c5f48d40915a4","esael09@gmail.com","08/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","43","0","0","83.59.14.35","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("691","eson ort","446fc72eff3d5b98ead914322907496e","eduardosortegan@gmail.com","08/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.76.63.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("692","Lucia","a4f8ee4a9d3e1b0d578048b96f5367bf","diaz.leonardo@hotmail.com","08/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","11","22","0","190.200.104.64","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("693","W U A R I","902589b8d491b570393fba3cfddb6f3e","juanpipi10@hotmail.com","09/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","40","20","0","190.38.5.185","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("694","|Neutro 1D","df70cafc00d57d16f600a979a65810b0","frambergon08@gmail.com","09/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.131.173.137","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("695","laura2662","61159dee63222b9a3938341244928522","llcg0505@gmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.219.84","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("696","dark230","0dbc0447100a0e4bb352985c4f449a5b","leonel.jrf11@gmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.37.180.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("697","elcaco123","9aaa3ebf9e1d48270c5c3f20ff0d257a","ELCACO123@hotmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","43","37","0","190.37.170.92","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("698","MR. BONNIE","7dbf441e93308b9c3d3ffe4130f62d1b","bricenodiazcarlosdaniel92@gmail.com","13/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","143.255.85.42","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("699","Taro-kun","69d75b62548b811c92a029ecccf19958","Fgyanetj@gmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.37.180.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("700","esthefany19","61159dee63222b9a3938341244928522","briannysmendez123@gmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.219.84","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("701","Genesis 2323","61159dee63222b9a3938341244928522","Genesis2323@gmail.con","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.219.84","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("702","IJunior Hp","ce298abba5c57e2403fe0fc6e1f64737","IJuniorHp@gmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.38.157.148","Dennis Elie ","Cisnero Sosa ","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("703","nightmare","fde8ea1454b2b1ae34d10f749f70458b","jenayg116@gmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.203.129.58","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("704","mysticphonk","b724f2febd29c0ee2b8a04f55f97bb5a","leonardooscaralejandrocorrea12@gmail.com","10/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.178.74.240","No especificado","No especificado","","","0","Argentina","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("705","andres2552","61159dee63222b9a3938341244928522","andrea2552@hmail.com","11/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.137.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("706","alexandra271","61159dee63222b9a3938341244928522","glcg0606@gmail.com","11/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.137.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("707","pitu1230","0b4851cfcab07e4b0fddc6d8eabd3d48","yesmarhurtado123@hotmail.com","12/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.72.143.26","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("708","jorge","7be8a0e87ad5a2f15140acb417efea44","luismigueloro@gmail.com","12/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","5","0","190.72.143.26","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("709","Tobbie","dc22fbe8e416bcc20dff3a767d9f7db2","tobbie@yopmail.com","13/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","5","0","190.78.242.164","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("710","santiago hp","dfcede24b4748943339a6dcc5d50f4c9","santiago@gmail.com","13/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.238.54.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("711","Caliope","4eaa26456fa8856d35eeca634d29a2ff","Caliope@gmail.com","13/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.254.149","Caliope","Ninguno","","","0","M�xico","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("712","Obdaly","ab3f44e34845d10ad5e0893d19d8ba39","florez2506@gmail.com","13/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.143.16.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("713","kamila212212","683dbdd3df76103e8865e804c86cd641","kamilavalentinagh@gmail.com","13/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","52","16","0","200.84.36.67","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("714","harley 444","b7cfd802bb54b74b9a9e52d5bc09cd3d","harley@gmail.com","14/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","60","5","0","179.14.214.65","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("715","pulga650","f086baa2c2c4b2e00c445d8adc9b81e3","cristiansuarez1078@hotmail.com","14/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.84.169.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("716","eu237","f2dfcb72de65e8b5ac8f15e7e122df13","rodriguezeuder117@gmail.com","14/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.36.71.69","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("717","Crisback","a0a00159c53ae80674bf86ec27edd6a5","Jeisson786123@gmail.com","14/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","181.130.70.22","Jeisson","Murrilo","","","0","Col�mbia","0","0","0","No","No","Si","No","No","No");
INSERT INTO usuarios VALUES("718","wllamhp","aabc57fdad80cd99ebe44d52acdc4338","wllamhp@gmail.com","14/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","64","18","0","201.105.73.84","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("719","eu225","f2dfcb72de65e8b5ac8f15e7e122df13","rodriguezeuder11@gmail.com","14/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.36.71.69","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("720","XxspectrumxX","dbe99d23ab28baec1f2aebb1fdca6356","jesussanchez1987@hotmail.com","15/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.14.210.16","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("721","antoni tm123","aca737285a4bebd56cbf381d8138e632","lacrak_123@hotmail.con","15/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","59","6","0","200.44.76.120","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("722","Gabi","4dd8795cf6439b14e3a86cf2d8a4a990","grabriela@gmail.com","15/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.43.99","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("723","Sebas pro","24734325cf7b2013eb77babc307a1323","mildrec22@hotmail.com","15/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.138.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("724","dj gatica ","73038fe920a9865a2fe23e552cf155a7","Andrea124@gmail.com","16/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","190.198.202.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("725","mon1draggon","b326dddcc7d3da0eb17fb3982e561fa4","marlongiraldos6@gmail.com","16/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.112.114.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("726","(Reyomar","0021e36a255a504d93c6bab02d5c4abc","yoselin24.moreno@gmail.com","16/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.131.210","cristhian","afonzo","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("727","pulga hp","446fc72eff3d5b98ead914322907496e","brayitan_12@outlook.com","17/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","24","0","0","186.84.169.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("728","Fabic","6f19963cf0b24d9acc22677a061838ac","sabuesonc@gmail.com","17/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.245.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("729","Mioty.08","29e1187438298ca02a0c38250e8a4c6b","jazihel.08@gmail.com","17/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.140.118","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("730","Fabic 9595","876a53e19f58b998f1eb0283e8ce5382","sebas.misterio@hotmail.com","17/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","59","41","0","186.167.245.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("731","El Ak47","40cf509e057643c846ff9bf3b042670a","elak4722@gmail.com","18/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.186.158","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("732","samueldavidh","ded83b9200fc873eb397bc1967a34f66","Herreraandrea_@gmail.com","18/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","20","0","190.206.241.213","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("733","C L A D Y KU","523e74f7cd52062a87b419c999933716","naimar0001@hotmail.com","18/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.214.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("734","C L A D Y 56","d4d569b872228eb4cdf59ec6240a5ac9","marcostulioviedo1948@gmail.com","18/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.214.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("735","Cladykekocit","82be260f6f915d2057d82da0e84dd2fd","marcostuliovido1948@gmail.com","18/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.77.214.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("736","solomon17","51816211cdafb212f3da0e5e63a231ff","Solomon-123@hotmail.com","18/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.119.28.191","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("737","xXmeliodasXx","f7f760ac3cd7a9d4df6fc13d7669e414","josedelarosa@gmail.com","18/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.1.190.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("738","RaichuHp","a6ec13a2edb66e51aadf3d0a6ab14e1a","adrianemilio_castellano@hotmail.com","19/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.90.90.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("739","la rosy bell","8a5c96904d6c2839b95e236606e50af5","labebe@hotmail.com","19/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.99.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("740","rebeca hp","e5da7b22b16ffa60bcab69bc70eec9eb","rebecasantana25@hotmail.com","20/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.79.247.180","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("741","saulll","aabc57fdad80cd99ebe44d52acdc4338","dionelferrer@hotmai.com","20/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.83.14","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("742","El Global HP","9b513f4fc1cda52631f59f0cca61324f","f.parragadiaz@gmail.com","20/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.20.79","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("743","D K A C ","ed5406e7d06e6b6e8c12a1e23910a538","stradad107@gmail.com","20/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.94.202.47","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("744","krismar","f7f760ac3cd7a9d4df6fc13d7669e414","krismar_arroyo@hotmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.92.199.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("745","rosa kg","e3143ac535dc0e0d4a667026c8f52214","juniorsegura309@gmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","19","85","0","161.18.93.48","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("746","RicardoMilos","a0e3ced92a42b42120f4394fbcce1351","correodesechable@gmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.95.158.234","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("747","KEKOGAMAK","5ae791c5a2f528366cda54e8024c4268","dianavg89gt@gmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.235.18.115","No especificado","No especificado","","","0","Peru","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("748","Gucci","7d750782e79096cc8b9b7f41e94118a1","chispiitac@gmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.75.128.208","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("749","isma199","d1b88094bc28466efe2ad7257094c2ac","isma199@gmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","167.108.199.233","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("750","isma19999","15f7e95879ba67eb7557e117e61c47f8","isma19999@gmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","167.108.199.233","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("751","lennytavarez","10e85ef5e667ed3064d7641fd628512b","lennytavarez@gmail.com","21/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","167.108.199.233","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("752","SANTIAGO ACO","b60292dc20b9f0c9180016c9f1d80f43","santiagoacosta@gamail.com","22/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.30.187","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("753","Jeremias","a3974925c6a5ab50296f5b4add919cbc","victorjrodriguez@gmail.com","22/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","20","0","186.167.242.34","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("754","josesalazar","40b2dc0875dfb87b17820c576e879af8","lijolu1842313@gmal.com","22/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.84.87.245","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("755","Tanjiro KG","12048b531a78f12bfcdb760c12ce3f0e","eerickberto1@gmail.com","22/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.80.246.93","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("756","Cladykekoci","446fc72eff3d5b98ead914322907496e","naimar001@hotmail.com","22/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.84.173.122","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("757","Anuel AA","ea898b152795d290a15c0e90de0df04d","Eddienguillen09@gmail.com","22/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.244.253","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("758","IGutierrez H","5f5ff3cd2ddc80c8a8d629839bdc0f9a","miguelito9711@hotmail.com","23/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.243.41","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("759","amontano864@","40191cba150ce11dd873958a9d9877e8","nlopez3001@gmail.com","23/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","201.248.11.228","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("760","GOSLEM1230","84d1b1697278094ff4314ed00ed38c43","GOSLEM1230@gmail.com","23/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.132.165.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("761","toxico3","6e04bfe056ee6773aa18708545d28f74","toxico3@gmail.com","23/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.132.165.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("762","Yaro2020","f7f760ac3cd7a9d4df6fc13d7669e414","yarortega16@gmail.com","23/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.92.85.221","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("763","NIC","13ef6875bd4f0c14f09480eeb9dc9701","amontano864@gmail.com","25/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.248.11.228","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("764","xXmultriacXx","add41fb8bbcfe8e659cf9bde78cead0a","joselopez10@gmil.come","25/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.1.190.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("765","ASG","0f498b5e046bbc586aa09086c630bdeb","leybervalbuena123@outlook.com","25/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.94.234.147","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("766","homal","9512ce38508c6d135dea840d03e3b43e","homal@glimmei.com","25/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","152.0.97.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("767","RUBENCY VILS","cc9f5b43bef6fe9be1b238e605907eb5","rubencyvil@gmail.com","25/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","152.0.97.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("768","estefani","45830e4e8b387ccdba4635ac15b0743e","estefa@gmail.com","26/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.172.184.88","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("769","Daniela PC ","09686302ae6484db9a3321c5326a372d","florbella1904@gmail.com","26/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.119.21","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("770","OficialThom9","dfcede24b4748943339a6dcc5d50f4c9","genarobro@gmail.com","26/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","20","0","45.238.54.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("771","kekojhanki","a8e3b1e9b3722e418ce8b5acefaf2d83","kekonmb@gmail.com","27/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.172.184.89","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("772","Reina 76","446fc72eff3d5b98ead914322907496e","seijasdetsi@gmail.com","27/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.44.95","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("773","xXYonaikerXx","9a0ef0676952239a08090e1534979dc4","yonaiker_quero_8@hotmail.com","28/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.29.75","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("774","joseguillen","335e62b9fabae271e4621ceedc5612e5","elflacoroiger@hotmail.com","28/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.243.57.190","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("775","eduaiker2107","2f6b87e99ab57dd0cc83ba2116d0e89b","eduaikerroa@gmail.com","28/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.93.113.97","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("776","Tapiasdaiver","44efa32fe101c61c4c680a90727b4e34","daniel@gmail.com","28/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.113.97","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("777","Cucota bella","bd11c166f03a98a3a3b84a62c04216f9","nojodamen@gmail.com","28/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","186.82.158.69","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("778","reyna 1471","6e04bfe056ee6773aa18708545d28f74","angel1984gdgd_delgado@hotmail.com","29/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","45.179.165.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("779","Tosho","1193ce45c694f836096e79c01c5d1808","toshiba@gmail.com","29/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.116.75","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("780","Skai","2f58f149372054df557604ac905c9e20","francoeverly@gmail.com","29/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","191.92.168.140","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("781","IDavid Hp","93e172ad1420d53a004e0c3435ed4129","thecrinox@facebook.com","29/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.102.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("782","JhanC","9c7c7c54d77e48c9d128d0012c00e88a","jhanjosesanchez@gmail.com","17/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","5","0","190.78.103.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("783","derwink7","13ef6875bd4f0c14f09480eeb9dc9701","nicol123@gmail.com","29/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.222.240","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("784","la bebe ","b001cb953674b9b2e180ae6074db9654","jaccierismar12@gmail.com","30/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.128.160","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("785","delincuente ","853cf1dfe5feff94715b4b8cf0b0528b","gggggggg@gmail.com","30/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.222.240","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("786","A T E N E A-","462423dd8a8c3af3ec01bb3a71e64ab0","braccomilena1@gmail.com","30/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.25.192.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("787","gameloop","faeebaba0f90099a80effece91447db0","joselopez500@gmil.come","30/09/20","","1","","","https://i.imgur.com/2HW4JQ4.jpg","./images/barras/b1.png","57","25","0","186.1.190.58","Lowsser","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("788","REY2005","d0c9a760ecc118b76bd65c497f50f601","firulais@keko.com","30/09/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.95.152.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("789","Rafaelhp2","128e38fcbe3ea5e6b10eeecb420cbf73","muertehss@gmail.com","01/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","200.93.84.72","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("790","michell ","b943569b2ae8284c92e315cfe9a0b739","michell301@gmail.com","01/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","190.63.238.214","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("791","Luijo ","016ec932b04f18ff2be913d982e4646c","ldelarosa2003@gmail.com","03/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.211.97.181","Luijo dela","","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("792","rodrigo Mts","eac0f50a2eb5720f6ffca78a04408371","rodrigo.acp20@gmail.com","04/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.237.199.160","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("793","anyelin2020","a24ffd96ba32eeeade903a53fa7dbaf8","anyelincardozo30@gmail.com","04/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.116.59.61","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("794","santiago p","8e7748e261632b9a2468ccba3817c8da","santi7jperez@gmail.com","04/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.65.188","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("795","david j","0dbb139dda87b480c0c330b32a288723","tuajoshua93@gmail.com","05/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.88.108.255","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("796","qwefiodh","c2764848c3f570918051df48ce6b08d2","wveweklnfv@gmail.com","06/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.237.150","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("797","TheDonato","f4b5597f112087d7cc82f2f8b91fe24b","TheDonato@gmail.com","06/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.237.150","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("798","Muzvel","2e8f7ed85dca9c2519caafe7f33bf828","jose-dominguez2000@outlook.com","06/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.79.107.17","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("799","sebastianGn","7e65aa1a9c2718a824d02b6e4fe621c5","luciano24.moreno@gmail.com","06/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.74.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("800","SamuelDa","0fcd2631a5a41a06a413363f79d74605","sa7070922@gmail.com","06/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","101","0","0","181.78.6.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("801","DroxxS ","9714177a67cf0bf8efad369a973a838e","gescalona2207@gmail.com","07/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.207.201.247","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("802","rubii 01 ","73fc1d984d3ddf255be10148c5cd6375","laettnerrojasp@gmail.com","07/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.3.7","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("803","eduaikerroa","446fc72eff3d5b98ead914322907496e","ya.diana.caro@gmail.com","07/10/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.73.41.212","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("804","skin_45","f7f760ac3cd7a9d4df6fc13d7669e414","Lionel_21@outlook.es","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.150.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("805","Daysita","080042078ef3843f68de00a0aee4e6bb","day3011@hotmail.com","18/11/20","","6","","","https://i.imgur.com/0OyBiPP.jpg","./images/barras/b1.png","114","48","0","190.198.73.85","No especificado","No especificado","","","2","Venezuela","0","0","0","No","No","No","Si","Si","");
INSERT INTO usuarios VALUES("806","lRomanHP","08b67cadc40e184bcc8fd323d15d4e3f","francoaurelio396@gmail.com","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","61","9","0","201.242.218.47","lRomanll","lRomanll","","","0","Argentina","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("807","BROCK LECNAR","bed40d2081f960ecefce38fb09ed36b6","francoaurelio396@gmail.com","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.218.47","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("808","Lautaa","88ee4223a175511474966f9d6715fc46","lautyenkc99@gmail.com","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","170.246.37.3","Soy tu gatito (L)","No especificado","","","1","Argentina","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("809","Fdgood09","200b7cb38d885a472e98b36d8f19b14d","monmorejt23@hotmail.com","25/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","11","21","0","186.90.157.214","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("810","Dwayne","e2da73f9f17873ac0f4678a178084fb6","diegolucenavalido@gmail.com","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","190.75.122.85","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("811","Xiler hp","25c4239b48aadd2319e27f25c9f9819a","carloseduardomarrugp@gmail.com","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","0","0","190.84.119.220","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("812","edwinqu","96c06c0e08e0568d103aa1bccf158008","edwin_edgark@hotmail.com","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.240.98","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("813","TomyCarp","24039582650ab03d33b9637c24e398a3","Tomyramallo13@gmail.com","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","3","0","201.253.198.180","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("814","IRafael Hp","2addd5c2e26cda70e2a4da374a5771c4","rafael2008@gmail.xn--com-4la","18/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.37.184.142","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("815","sebastian10","33c3a3e87036843a5628d6223596a341","alejandroajilera0@gmil.com","19/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.111.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("816","Roimer HP","f4fcb511590c74cf62c546f0fda710ec","dnsijdhaj@hotmail.com","19/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.208.126","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("817","IEddyeL Hp","e9e5570089cf5749c7ae02e175583dbf","eddyelvilla5656@gmail.com","19/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.65.59","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("818","EddyeL ","63079a106f187893d1735bef06c4caf8","elidahdzg@hotmail.com","19/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.65.59","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("819","Suavizante","93ffb9a080f603f7b635de13aaa00125","holasoysuavizante@hotmail.com","19/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.229.154.192","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("820","Isuavizante","93ffb9a080f603f7b635de13aaa00125","suavizante@hotmail.com","19/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.229.154.192","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("821","Hoyuelos","11fc72594b30480d2ed7c6a692bf5397","Hoyuelos.xaviell.@hotmail.com","19/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.37.55.160","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("822","Lil Hp","6a6cff21f92e599de5d003b9271cce4c","tobinz-_@hotmail.com","20/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","67","0","190.75.45.152","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("823","Benito","7d381c349c471a5846d5859f6e87d432","machucarico2002@gmail.com","20/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.147.71","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("824","Fernando II ","5d53d2b473b8f217dfa0ed6a65ac09f0","wr46106@gmail.com","20/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","44","70","0","201.211.193.104","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("825","Ruffles","53f32730ee173d68cadf925195f6588d","euclidesvillahermosa@gmail.com","20/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.65.59","EddyeL","B","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("826","Lic HD","3be42bb637234ad3af37f4c5b7b5bed7","jonaiceljesus13@gmail.com","21/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","201.243.48.202","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("827","princesaJG","4acecd6ca16d17c15e4d985d34d269ef","keyberlin@gmail.com","21/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.243.239.29","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("828","LUISITO HP","71f41e20a4e59cb31ec0cb7d23991197","arodzul65@gmail.com","21/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","190.78.236.78","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("829","Gamers13","3ec46b81065f03202d91d934ad2542cd","Gamers13-@gmail.com","21/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.199.75.162","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("830","YenderErazo2","bee04c2549d448109d2773be3c3e95e4","YenderErazo2@hotmail.com","22/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.203.228","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("831","jerffrey was","f39ca6cc8d877955f265a211fcb43437","jerffrey2500@gmail.com","22/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","12","0","0","190.79.69.133","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("832","Veneco Hp","a998598357d8c441a54fb36d1a9d0727","Coliajesus116@gmail.com","23/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","10","0","190.198.215.129","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("833","Jesus_Colina","11bcf57a8ac2bf7cee2600686f22855c","colinajesus@gmail.com","23/11/20","","1","","","https://i.imgur.com/Sdce5ho.jpg","./images/barras/b1.png","102","0","0","190.198.215.129","Syn Piedad","","","","0","No especificado","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("834","dixon hp","dfcede24b4748943339a6dcc5d50f4c9","elpepe@hotmail.com","23/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","3","0","186.91.213.117","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("835","Melody HP","7beabdb003ce2351a2d53c1361df295f","yune@76.com","23/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","64","33","0","186.90.146.138","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("836","david hp","65553e10177a22eb5617dce4db5b816c","luis_david@hotmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","23","0","186.91.213.117","eliot","No especificado","","","0","M�xico","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("837","El leito1234","d654588efbff5772b324972f28618f1a","Elleito123@hotmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.189.236","No especificado","No especificado","","","0","M�xico","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("838","daniela kare","f504632f6ee65faecf780f82a04a73ba","jean-gato1922@hotmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.224.80","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("839","jose ","52ec872b0fc1c17449c90808372d1532","jbo798628@gmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.8.167.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("840","EL TOPO","920a7af4c1d5013d43fb7b6538f63019","brisanto@hotmail.comny2018","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.38.130.150","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("841","Maikol15","acd1d100e82c58e3a779175e4dd298d6","maikol-09@hotmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.216.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("842","Brayan2213","e9eac9adb31d921f8223a506b4f31638","Brayan222008@hotmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.226.87","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("843","Yefersonhp1","1fb6e21c4110d5af39c3932cae23bc5f","yefersonhp@kuinz-fansite.online","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","201.249.122.0","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("844","tunel33","d4ce910d1e52625d700544ca3a25959b","hhswind77@outlook.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","18","0","201.143.232.232","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("845","omerauve","dc3acaa494865389ca704d0a0619d27a","omerjauvert0506@hotmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","0","0","190.124.29.66","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("846","omarandres27","829a5b7f296f40587c34bddba4b476ac","omarcuadradojr@gmeil.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.59.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("847","CRITICO","523b2d6f14dd5cde21d5e2119e2c2849","Esneidyollarves@Gmail.com","24/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.208.242.33","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("848","Adrismar_012","446fc72eff3d5b98ead914322907496e","adriana20_g@hotmail.com","25/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","39","0","0","190.36.155.10","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("849","camilinguis9","1d454f1cda7c5214e03b58cfe99abb5d","rubiomurillomacamila46@gmail.com","25/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.80.105.87","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("850","LaSofiia","ebf09a17f5f84cbd35056adf74746c20","sofiiarubiio90@gmail.com","25/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","177.93.38.75","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("851","santiago kui","b60292dc20b9f0c9180016c9f1d80f43","santiagofuenmayor191@gmail.com","25/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","5","0","190.124.30.188","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("852","omarandres12","c4b1b02745a7ab5b3f66439fc7217d6c","jenifer@gmeil.com","25/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.59.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("853","marcano-12","6884d8cea815ae91846dcf7577146863","gabrielmarcano@gmail.com","25/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.199.64.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("854","didos","536e770a0011f5b97247f95139b864b6","TItaaa_@hotmail.com","25/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.36.158.104","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("855","LiLibeht","e6b86424536079d721ee6921c8b25644","srosaleszambrano@gmail.com","26/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","3","5","0","190.38.130.150","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("856","MARCOHP2006","4e4b379047752dafa8f704b6751d1142","marcoantonioacostaurdaneta@gmail.com","26/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","70","8","0","190.124.30.188","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("857","marcano-14","964a3ca4b49e7c76c849f4f1391c56d4","pedroom@gmail.com","26/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.199.64.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("858","A P R I L","75b14c602ad5a6e6153698ce727b1590","diva-diana@live.com","26/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","187.227.61.123","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("859","INava","c517d49b2c5d20a60da94228d24f812e","joseluismalfavon664@gmail.com","27/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","13","64","0","174.65.123.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("860","yanaaaayriss","300a1f3eda500a7195f1704d30e620ad","yonayrispaulino00@gmail.com","27/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","179.52.201.203","lYonayriss","No especificado","","","0","No especificado","0","0","0","No","No","Si","No","No","No");
INSERT INTO usuarios VALUES("861","sebastianngu","25c4e0f35a7b41a40635505ecd0dc2b5","sebasti_david@hotmail.com","27/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.133.2","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("862","andreina","a8ffb1c33569dd85f141b162547848c6","noel72_g@hotmail.com","27/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.236.78","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("863","keicrak123","e8123bbf5e3e8300a6bbda42783f5c30","keinerortiz82@gmail.com","27/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.96.185","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("864","Mauricio Hp","c2b30a0cc07d4861fe9a0f0d86cd7e08","elmata304@hotmail.com","28/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.141.1.197","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("865","Andrea","38c132335251dadbe04a5aba0c86dae1","rafael_ortg@hotmail.com","29/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.82.242.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("866","Waster","58038dec56cb890e41160e44d5f0316b","BboyO.Osanti@gmail.com","29/11/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","102","35","0","186.1.141.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("867","WaterMelo","410fda15131f1d1155369fb774c6c823","stoibibo@gmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","116","73","0","186.95.39.124","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("868","dio","9ec6c10645b30bee40afa4834882777f","andreanatalia@gmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.44.80.128","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("869","Sthiven wazo","1d7dc5a905c9c4c6832ba31c6d6d9568","sthivenwass123@gmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","10","0","190.74.203.147","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("870","santi.01*","f94087ac016c6b9b01785a185008c194","milagros30sanchez@gmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.37.173.148","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("871","eba","890fded6567beba0f5667a1aa51483d9","santamariaalbani@gmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.34.226","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("872","maxmad ","9453a820de6cf38d9c908fb00b376751","Valeryfabiana04@gmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","165","30","0","190.74.7.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("873","Valeri_0914","e9291400f0e53477ea8961f6c9b4f795","Valeri@hotmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.102.218.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("874","O R E O","3c58e50ded618aefacba0eb5106556e6","sebastianjrz1@hotmail.com","01/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","13","0","190.77.150.123","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("875","Trueno ","0c75a3947657beb60377a1c2d9f5bd07","Josmar.16.rafael@gamail.com","18/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","92","15","0","190.204.116.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("876","AIecks2","cb4b83dbcaa8be467748a2c09d10a25e","euclidesascanio0874@gmail.com","02/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.223.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("877","Kronox","0021e36a255a504d93c6bab02d5c4abc","Josue06@gmail.com","02/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.253.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("878","Anexe","6df136b68e34de1cb5a8d0d72a9f60ea","roxymartiinz@hotmail.com","02/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","9","0","0","186.90.198.185","Saray Paola","Hernandez Rondon","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("879","KINTERO","6a8f92a12599fdb08d705135fdd945a7","elgatobb@gmail.com","03/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.29.14","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("880","eykor","9d18ac43966e2fb6832fa9a6ec107e35","dayaurbina22@gmail.com","03/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.202.91","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("881","MP6","47f3ca4ab72b723d8fe66f2717ec65c6","kaisald@gmail.com","03/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","18","13","0","201.242.225.251","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("882","argenis jr","52afdb07f5c5897a4e5937356bd4d08e","argenis_payates@gmail.com","03/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","190.37.188.224","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("883","aleNX :)","997e057306777d953d5b9ccc75fe2dd0","josegy8@gmail.com","03/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","200.93.74.24","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("884","El negro","14c505075e4438b072f3fcc2201d20d7","enrrique.semprun.01@hotmail.com","05/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.29.190.235","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("885","sebasti_davi","20998449b963f18fc4b6ac3e7c0c704c","Gleidyn@hotmail.com","05/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","190.38.138.9","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("886","ander1530","f10d5df0a45d44ddd22fadc123f6b80f","addonis@hotmail.com","20/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","7","0","190.36.60.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("887","matheus2020","2ff1306f66c5b3b83395737b7ea431d3","matheus2020@gmail.com","05/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","22","55","0","190.70.220.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("888","kromox hp","ccacd4acc5b4fbf79d49b9ea27cfa8c8","ramirezbriceida@gmail.com","06/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.211.39.37","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("889","sofi QUEEN","fa19a1d7cf222fd24bd02c930d3e905f","cubideslemusdannasofia@gmail.com","06/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","181.60.249.10","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("890","brayan12345","d0619528456fcc2289df5b5c808c13e7","teamo@gmail.com","06/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.8.167.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("891","gato 3D","7db2a2bb5fb1df2fbe84ff13751e1293","mavipama19@gmail.com","13/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.148.178.102","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("892"," IMarcano om","6884d8cea815ae91846dcf7577146863","cristian@gmail.com","07/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","5","0","190.36.62.169","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("893","Rosma123","d3fd2af3726368b51df835d9fb943c9d","Castroderry@gmail.com","08/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.187.66","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("894","elieser ","f289bd8e1f673484c10332bd78e577f7","elrusso_05_95@hotmail.com","08/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.234.119","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("895","LeonardoJM","7137f808d2df000bce49f85a9ae6cada","leonardo09@gmail.com","08/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","148.103.135.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("896","EL BUFALO","7a2d00b0a177a7d9b61989cd018d33a5","josemanuel12morenoguerra@gmail.com","08/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","186.94.84.188","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("897","Tylor","b61f8d78bb52db74abcbac8ebe5951cd","reina_carismatica@hotmail.com","08/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.225.54.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("898","Tylor123Tylo","b61f8d78bb52db74abcbac8ebe5951cd","garbanluisfernando88@gmail.com","08/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","181.225.54.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("899","anuel AA 34","603d9595f4b5d98e783da68d5872dca2","AA@HIMEIL.COM","08/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.211.49","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("900","Santiago Tm","5842907c36296076a6815fce9e92b19c","Epena9084@gmail.com","10/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.201.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("901","valentina120","b880ca8f4826208c1853754affdaec0d","60alejandra99@gmail.com","10/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","5","0","190.72.154.61","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("902","GaboA","964a3ca4b49e7c76c849f4f1391c56d4","oswardf1@gmeilcom","10/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","215","77","0","190.77.252.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("903","pc120","b880ca8f4826208c1853754affdaec0d","adelgarcia174@gmail.com","10/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.72.154.61","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("904","HeraKarma","3422f827ee37406f8cf1ad97b28febf1","gamertmarbella@gmail.com","11/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","36","10","0","190.202.17.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("905","max 12","85f99f9978028e4bfa5ffec6b02db664","jordanadrian@gmail.com","11/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.8.167.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("906","Mariale 76","446fc72eff3d5b98ead914322907496e","victoriaseijas07@gmail.com","11/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","190.38.194.108","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("907","junior29","71b08f97e0968862f000602493234b54","juriorestefano1@hotmail.com","11/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.126.79","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("908","Roimer hp:","009d4cd91856b842f80e7843f9ac8ed8","albenis.f151.u@gmail.com","11/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.91.54.252","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("909","Alejandro R","2c47a0592cd4fa452af774491ae98e43","sdtghxdgh@yahoo.com","11/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.39.83.106","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("910","Eba Hp","890fded6567beba0f5667a1aa51483d9","marianne.sandia07@gmail.com","12/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","5","0","190.203.165.184","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("911","Noor","1b63573f61843e0dcca1f72591d6774d","fioreguilartec@gmail.com","12/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","186.167.244.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("912","moisesdun123","dfcede24b4748943339a6dcc5d50f4c9","dunmoises@gmail.com","12/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.16.239","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("913","kromox","301ac4633a373a3b58f8fa5ddbdadce7","arianavivasramirez@outlook.com","12/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","5","0","190.204.148.85","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("914","ricoeduar.15","48c70b0f054e47a9f84c2dc5eae0675e","perezjesusrico@gmail.com","12/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.16.239","Rey","N I K E.","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("915","yelianny2020","f5fb6f37e7882207ece7ebd6880260a1","princesa_morales_10@hotmail.com","18/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.94.32.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("916","Nezuko-chan","062a6fdfa97dddeb8386dc5f83873cad","paolaalmao23@gmail.com","13/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.94.32.138","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("917","gta 5","41ab04395748783f982dda02057050de","flaquita_14_15@hotmail.com","13/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.204.148.85","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("918","Biggestt","345e383ea2abab5cd189323ad703229a","julisanchez1701@gmail.com","14/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","7","0","181.136.136.120","Error","Error","","","0","Ilhas Marshall","0","0","0","No","No","Si","No","No","No");
INSERT INTO usuarios VALUES("919","Marian13","d9652353f9406b44c7a9d2dddd35fc3b","YESMICCNDS20710@GMAIL.COM","14/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","3","0","201.211.148.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("920","zakume","cd82fe99fe2c060d6de9b0eaeb033bff","zakumefiguera@gmail.com","14/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","186.90.200.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("921","SweetP","8a70ce4d060e64dbb981f84332fc7648","deinerlucena@gmail.com","15/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","18","0","0","190.74.253.127","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("922","IAiguaT 123","04383addadf417f2dbb5fb56571b2541","mbg4263@yahoo.com","14/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","5","0","201.210.216.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("923","Elpepe","460c1400796745066164e322dc860b62","elpepe201@gmail.com","15/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","148.103.135.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("924","milu","694b788fb67faa5ee164d468b9b87252","juniorsegura305@gmail.com","15/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","190.66.225.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("925","jhoivis","677ca703372f9588c74bfda8a7eccd08","jhoivis0@gmail.com","15/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","96","5","0","186.90.85.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("926","josu49","7441ac7a43e1a1c803134553e0e6765d","lerwin_navarro@hotmail.com","15/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.228.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("927","J0sue49","a4b7583f26ac4668ac6d803ffb4f34be","leurii_29@hotmail.com","15/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","50","6","0","190.78.228.246","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("928","Josmaar","f2e1fa2953e3c49e2765dd3228256f80","josmar.16.rafael@gmail.com","15/12/20","","5","","","./images/avatars/noavatar.png","./images/barras/b1.png","191","0","10","190.198.85.132","No especificado","No especificado","","","0","No especificado","0","0","0","","No","No","No","Si","");
INSERT INTO usuarios VALUES("929","Lic","ea09802cc7a68d3e5814159571c012cc","123@gmali.com","16/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","5","0","201.242.149.120","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("930","futbol10","494ccbc6197e62900871cfe019d2c894","gabrielhernadezfutbol@gmail.com","16/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","181.208.82.215","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("931","N I K E Hp","e0de08328735036f9dbe9c5effb2d140","leo.j.b.m@gmail.com","16/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.128.89","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("932","Mattiaz","12bc37bae889321e6eba174924dd21bb","mattiazperez99355@gmail.com","16/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","17","103","0","190.200.112.31","No especificado","No especificado","                                                  ","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("933","Lix dn","3a5787049ccb2e5126a8fbf1668f4434","744@gmail.com","16/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.149.120","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("934","MG_12689","78773d23191aa8512c534435d69976b9","mildreg409@gmail.com","17/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.8.167.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("935","estefany","e80f2f6618454dae36ecbee79687865c","urbanogiraudt@gmail.com","17/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","2","0","0","190.8.167.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("936","lYonayriss","f21ffc930ff90767038ca2386e1cea82","yonayrispaulino@hotmail.com","17/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","24","10","0","179.52.201.203","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("937","2010camila9","41c6cccd7285a5d6931739ba17e40299","mariacamilarubiomurillo@gmail.com","18/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","186.80.105.87","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("938","dj maikol Hp","e1b07874b092620abbe31b768e321d1a","maikol_12@hotmail.com","19/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.185.145","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("939","C H I S PA","e3b44d40d263608ad28181378f11b873","sheskamike@gmail.com","19/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","15","0","190.198.205.203","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("940","IAIguaT","04383addadf417f2dbb5fb56571b2541","Tusjoshua@gmail.com","20/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","15","0","190.73.111.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("941","Blux","893d92e8b4e5138b1bc8aa3102a0180b","dixxongamerhd@gmail.com","20/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","201.208.241.243","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("942","Nose xdddddd","0b346f62fea009b5170abd8fe2408219","Gabriela345@gmail.com","21/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.93.92.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("943","keiverson","dc3b0d8acb96d703d25ad2cc88276b0f","wilmerperez99355@gmail.com","21/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.74.219","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("944","luis angel12","dfcede24b4748943339a6dcc5d50f4c9","luisangel@hotmeil.com","21/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.243.183.192","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("945","xanax666","e967148fc3861ea570312bbf2a6b3343","carlosfuenzalida420@gmail.com","21/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","186.156.43.219","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("946","el kevin","7f5e9cf73d313c594c19f9036156d6d1","maikolmawyora08@gmail.com","21/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","186.90.3.8","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("947","Juank4","13d57e504128034620d85884b981afa7","jgamer.pop@gmail.com","07/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","186.90.86.29","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("948","victor Rp","c23a3fcd4baa43308e552373cdd18fad","hectortequierovale@gmail.com","22/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.74.219","victor Rp","perez","","","0","Col�mbia","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("949","Xxluislopez1","ea3f99e61c4ee9e2bca659c208ba10fe","luislopez1401@hotmail.com","23/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.65.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("950","vegettameeae","90fe9f242999aa6bd2fbe2b7c0875330","jhonatanaris03parra@gmail.com","23/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.65.183","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("951","RandyXD","5e1ee836c2c6f1462ecd4c21b62c97f4","randyrivero.2018@gmail.com","30/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.93.148.218","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("952","misaelpe&nti","0c6cd972b1c0635f306aaf9d705a1c72","greisimarcede17@gmail.com","27/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.110.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("953","misaelcaleb","0c6cd972b1c0635f306aaf9d705a1c72","miguelalej2016@gmail.com","27/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","10","0","190.200.110.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("954","ERROR Hp","ea306e476b1aa2c3ba69808054334668","leonardo3241@gmail.com","27/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","57","45","0","186.90.82.233","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("955","idk","0eb7b7efe32fcdfde8731b6bd7db98c8","roberto.lete.cuevas@gmail.com","28/12/20","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","5","0","190.162.183.33","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("956","Denji","beb8de09d74d576161becff760920645","Dedededa@gmail.com","02/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","90","21","0","190.79.250.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("957","real reky5","5b78cac38c6a2167c30677e6838ef028","joseelbb@gmail.com","02/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.35.168","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("958","NicolasGaren","21aad55e2174860dc59e9268fd41e191","nicolasx150@hotmail.com.ar","03/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","6","0","0","190.13.234.13","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("959","Plasmatico","e2bd9a2101e1b42fce7951b2481b1e03","jacl66@hotmail.com","03/01/21","","2","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","54","0","200.35.77.219","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("960","tomaselprof4","0fad837fc6cb2cd3b97289f09bfbd647","tomaselrafael@gmail.com","03/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.91.28","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("961","SonnY  Power","86e3851adceb209a480a8421b51f4249","roiber3232@gmail.com","03/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","5","0","186.91.211.70","Carlos Eduardo","Gonzalez Urbina","","","0","Venezuela","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("962","Mirt12345","7e31413f63ef46c392f4419888cda3c1","luis_duranvargas@hotmail.com","04/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.131.173.137","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("963","Eren Hp","269abc62d8fc1080edb7d45ecfbb8d3d","Luis@gmail.com","04/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.236.91","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("964","IYofre_Hp","4581a6d9f6cc1358509621872174c7e1","yofrpro@gmail.com","04/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.72.165.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("965","ISh4poI-Kc","74420e7acf937468db34da79b547c99b","sh4pocs@gmail.com","04/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.78.231.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("966","anuell hpp","49a21fbcd917e001629c00cb9e54197a","alexanderelunico17@hotmail.com","04/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","44","37","0","190.204.80.42","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("967","AIecksKC2","cb4b83dbcaa8be467748a2c09d10a25e","yurbeyrisantoima.1@gmail.com","05/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.250.24","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("968","IJoshual","0dbb139dda87b480c0c330b32a288723","gbdbhxcfbsx@yahoo.com","05/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","11","0","190.39.95.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("969","karla18","4ab1d000598a4fec17f34a764e9e918e","jhoncarlos51@hotmail.com","05/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.74.166.218","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("970","heiver123","d0c9a760ecc118b76bd65c497f50f601","heive@Rhotmail.com","05/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.166.218","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("971","Jey Uso","6e04bfe056ee6773aa18708545d28f74","jhommyalejandocmcarvoll2omujic@gmail.com","05/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.109.23","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("972","el men 123","0dbb139dda87b480c0c330b32a288723","hijhnhh@gmail.com","05/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","35","10","0","190.39.95.175","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("973","waleska.","43f0c499108d05d482c94907005d1d2e","waleskagon@hotmail.com","06/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.152.192","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("974","Forchitox","4429268eba167063dec8e6a30e42a868","daniel_angel_landino@hotmail.com","06/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","45.184.251.9","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("975","Valeri1309","e9291400f0e53477ea8961f6c9b4f795","Valeri1309@hotmail.com","07/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.102.218.75","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("976","dionnys","f7f760ac3cd7a9d4df6fc13d7669e414","morochos2001_bermudez@hotmail.com","07/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","32","0","0","190.198.133.112","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("977","el cripy","40cf509e057643c846ff9bf3b042670a","Wuilliandiazdq@hotmail.com","07/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.74.2.238","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("978","Reinita 76","446fc72eff3d5b98ead914322907496e","smariales0@gmail.com","07/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.78.167.18","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("979","Emma","524870000ec343a68d152fd1fac68d5e","bboyemmawh@gmail.com","08/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.91.91.17","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("980","Allan zabala","6ae123ae3c00018b94288fc06d575b8d","jaderman845@gmail.com","08/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.243.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("981","leonardo20","f6440024c89ccb05c8e2771702c38c61","Sifontesj460@Gmail.com","09/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","29","7","0","190.77.250.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("982","jaccierismar","27c40329fe14402ed083c54f6945f3e1","jaccierismar@gmail.com","09/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","81","28","0","190.204.91.30","mariana","afonzo","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("983","Sanso Achepe","edaef5ba6bc86882008a657596649571","jesusdavid@gmail.com","09/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.91.104.3","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("984","at22","45083444bc71ca3b70f26d32a8885850","arlin@gmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.8.69.182","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("985","kathe12","84ac5450d6b5fbbadc1ccb57c38b8299","k288271@gmail.com","09/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.142.240.238","kathe","naranjo","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("986","Fluffyx","270c2af0ce5551c8ddc0c4724349aed9","exiledechoes@gmail.com","09/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","14","0","0","73.91.47.25","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("987","Irianny","98bdc2aaa03b375d1ace424be442e1b0","francisherb1@gmail.com","09/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.131.79.23","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("988","Avox","528beea06b168498baa5f2c79941b3aa","jonielrivero@outlook.es","10/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","5","0","186.91.91.17","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("989","lDarianR","463a8c4b93e594f0a1229aa3c3a9ba41","Darian_rivas@hotmail.com","10/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.84.242","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("990","Yanesca","bb589f6be2cbd4b80a2b426090c9d696","victorperez993455@gmail.com","11/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","18","0","0","190.204.112.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("991","LUIS","4e5634849df9b11de4cf51d21f121f02","kskskskek@hotmail.com","11/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.124.29.75","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("992","Gabriel  985","bcc3e3fe55ce92a42630829efb602790","elgordogopis@gmail.com","14/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.243.21.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("993","papacito17","ac8c90bd2ef9910b25ffa63158a34d6c","gonzalezerickd@hotmail.com","14/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","12","0","0","190.198.45.50","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("994","I D a i t i ","84cfdebf064850a4830b8d7c4eafad38","juliannymorales16@gmail.com","14/01/21","","1","","","https://i.imgur.com/Nw0dYVj.png","./images/barras/b1.png","30","0","0","201.243.188.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("995","1","446fc72eff3d5b98ead914322907496e","albertoarteaga.venezuela@gmail.com","18/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","190.74.6.47","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("996","kuinz12345","d75092cabc94c787e699768101da7322","isapao2511@gmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.240.34","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("997","ISakuraaa","21c10b64355272b98b1176c364d53969","frenesisgonzalez2018@hotmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.248.0.154","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("998","ISkurapro2","5d23700bafb813359ceba16a32273c56","reinaldodgonzalez@hotmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.248.0.154","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("999","EL FoCuZ","d75092cabc94c787e699768101da7322","isabelpaolacova@gmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.96.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1000","Juanuel","ca97b6bf4e88cf592450375a4655cdd1","juanmtzbuys31@gmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.195.48.235","Juan","Martinez","","","0","Argentina","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("1001","N I C O","a26ab28736fc231558ea491354441d67","Na0755597@gmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","181.209.79.115","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1002","KevilAlzao","446fc72eff3d5b98ead914322907496e","KevilAlzao@gmail.com","17/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.70.75","Chismos","Chismosos","","","0","Venezuela","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("1003","moisesgordor","c2c723671ae2d80ae86b7b8bda29f5dc","gomez_selena2005@hotmail.com","18/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","190.200.123.16","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1004","Rosa 1HP ","33dd6207ebbe6778b2a12262957c49e5","rositahp17@gamil.com","18/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.28.152","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1005","VAHM0914","e9291400f0e53477ea8961f6c9b4f795","HUYKE09142502@HOTMAIL.COM","19/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","191.102.220.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1006","heiver12","893187eb1d278f29eac554a7f701012d","heiver12@hotmail.com","19/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.249.117.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1007","S W A T","a4a2a907620bc1ea863b566f98ad7312","swat@hotmail.com","02/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","201.248.26.34","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1008","Sir Arius","22cc5e4fdd53a29c178ea3954b05ecd7","rebolledocarlos01@hotmail.com","21/01/21","","1","","","https://images-kuinz.online/i/909a3a979de2178a04269a031a042970%20%283%29.jpg","./images/barras/b1.png","109","37","5","190.207.200.163","No especificado","No especificado","","","2","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1009","Danielito Hp","2148867120de9a4f426d7bf18f016b43","Daniel-19@hotmail.com","22/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","243","113","1","186.88.133.210","No especificado","No especificado","","","0","Col�mbia","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1010","Josue","d524e03bc9a0faf4f3baed770d0e5850","jonaluzxr@gmail.com","22/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.207.116.42","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1011","Jhorbi Mende","86540bc1666a116a6c9adb77586180df","Jhorbisel_Mendez1@outlook.es","22/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.2.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1012","locovx12","6a6f8ab242fe5a8fe5dd4e5b9ee49dbb","jjgr30823532@gmail.com","24/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","17","0","186.90.69.197","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1013","XMN","97534a2fc055c4beebdb9632d0d3a595","lorenamon94@gmail.com","24/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.70.249.83","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1014","XMN4","e46d53e754bf0524edd193a1f8eda949","lola@gmail.com","24/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","5","0","186.70.249.83","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1015","Loquentrollo","af2b0f7f08aad4a5320c7297c3a50891","carlbast894@gmail.com","24/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.195.114","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1016","Zman","52ac5f2f8d58c1b09ade5e2b2a6a2d18","davidalcantara199613@gmail.com","24/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.33.51.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1017","Darell 08","4ab1d000598a4fec17f34a764e9e918e","Yonaikel0103eduardo@gmail.com","26/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.176.126.158","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1018","MICA HD","c15fb4f55d833c589ef06b1b8a020332","kelvinmolinakelvinmolinakelvinmolina@hotmai.com","27/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","17","5","0","190.74.94.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1019","lRUZO","e91ca2602ad24c96a249e25fc6bbbb3c","jesurli-@hotmail.com","28/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.75.121.171","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1020","leandro27107","8fd462c5a06548e6cc956ecdb69a0ca5","figueredopascualarmando@gmail.com","28/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.43.231.17","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1021","IDruks","13e7f567fed7c3e1b8072029f634469d","Diegow.@gmail.com","28/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.167.249.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1022","Carlos G","893a993f30d023dcd1d5bf449a7fea02","dmacromer@gmail.com","28/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","200.84.115.226","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1023","osito467","8989bc6b66ab6c81cd41ff1c48dbd0c2","00800808asasaas@gmail.com","28/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.148.195.17","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1024","mikecraaft","c06850669514282758ad88ecca34188c","mikecraaft@gmail.com","29/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.75.121.171","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1025","juan33","52ec872b0fc1c17449c90808372d1532","juan33@hotmail.com","29/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","201.243.12.25","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1026","JoseGamer10","876e7c5a136a1cd6e82bbff21fd824c1","licet20148@gmail.com","30/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.175.117","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1027","kiles","62586a3e3f836307fc104c62e4d44150","elaskiles@gimal.com","30/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","4","5","0","186.51.162.211","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1028","gonzalez1010","e0c736c6a398f715690928ba84af4193","roibergonzalez60@gmail.com","30/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","19","0","0","186.91.242.249","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1029","Sorac","ba8f96b279eebaae4a01571482be3261","sadasd3trq@ggg.com","31/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","::1","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1030","Nicol997","215dc1b15b284ac13572525adcec06f9","stivenprogamer8@gmail.com","31/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.185.247","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1031","cade12345687","cc9211009a30acb981d1a56e80950776","michaelsilva3785@gmail.com","31/01/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.72.61.109","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1032","ENDERS ON","6215af4b3c17a580a8fe34d854edb5b6","30042292meej@gmail.com","01/02/21","","1","","","https://i.imgur.com/r4uLv6k.jpg","./images/barras/b1.png","0","7","0","190.200.175.134","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1033","bombonsita","a7a9518f4ae5645cb0cf1f0c41d1e233","Karenestrellajimenez@gmail.com","01/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.86.52.108","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1034","mayury123","7642d1ebb5eea28856b6cbcf306c6501","mayury123@gmail.com","01/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.37.13.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1035","Yalu_12","0cf5474112c9166e508a531fb1700a1a","Yalu41@gmail.com","01/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","190.79.137.152","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1036","mayury1233","749c1babc3b2f5f71eddf41a8fc33ba1","mayury1233@gmail.com","01/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.37.13.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1037","sebastian@","823d8ceac03457804bb04097ca88507b","perezsebastian.sjap@gmai.com","01/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","10","0","190.198.137.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1038","samuel@","4a4397afa867c7d008ccb6151f89cf53","samuelperezsanchez123@gmail.com","02/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.151.169","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1039","Pruebass","29d8d3cebe4986a12df4067fc862f722","Pruebass@gmail.com","02/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.248.210.82","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1040","lbombomsita","a7a9518f4ae5645cb0cf1f0c41d1e233","karenjimenez@gmail.com","03/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.86.52.108","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1041","_caleb_ii","e3d40940a7582114e6e78ed304c283f0","Calebii@gmail.com","03/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.229.41","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1042","Bear Hp","ce38f09a610009f559f20a27a145b73c","xxaxuy@gmail.com","03/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.84.108.37","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1043","MaicoI","b7b5269d3efcac7741e992af5e63a1bf","robinpacky@outlook.es","04/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","32","0","0","181.33.3.216","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1044","Emanuel123","03bb817eb8a72ebfe5f85620aa015be3","menholaxd123@gmail.com","04/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.14.118.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1045","Mikkel","13c5a18f843556a44b640298a3a5d25c","josealejandroalarcong@gmail.com","04/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.172.91","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1046","ITawa TawaI","2b06a9c71c5363ed0891a812a9f28aaf","lucasrodriguez@gmail.com","04/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.109.230.141","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1047","lmarcol","ccf25cf8a391c8e0575fe09ec8653cd3","victorperez99355@gmailcom","04/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.71.148","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1048","YAB","984ea89ef87a7245761330a65bd15fe3","elpepe_@houtlook.com","04/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.220.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1049","Kevin4K","c9a4b39f9b720524e296cf49c125e3bb","crosskevin357@gmail.com","05/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.95.144.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1050","Lwkcx","b013cebde3e60a35415377b114dcc710","acnv2k20@gmail.com","05/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.120.91.109","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1051","Homofobico","d4e8cb5a8f20528373499ef96bc194d2","Bethania21@hotmail.com","05/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.79.140","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1052","HOMOFOBICOXD","497d1459ae10de4ca09018eafd7b50f0","Bethania26@hotmail.com","05/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.79.140","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1053","HinataXd","fba874aff8541c657379abb6e17bd485","mvperdomo.18@gmail.com","05/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.204.144.204","No especificado","No especificado","","","0","Col�mbia","0","0","0","No","No","No","Si","No","No");
INSERT INTO usuarios VALUES("1054","SakuraXD","e6d50cf8e6da2cd8f074590dbfa85f92","GHGHGH@gemail.Com","05/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","6","6","0","190.204.144.204","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1055","Daddy Yankee","181ff894c79a98f260ce8de4204fa3ed","jorgemontilla307@gmail.com","05/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","161","14","0","186.91.40.14","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("1056","Atomboy","249a45bc7c8fbca0ffb282eacbffc435","Atom@gmail.com","06/02/21","","5","","","./images/avatars/noavatar.png","./images/barras/b1.png","34","134","0","190.204.71.33","Daniel","Sevilla","Only me love ?","https://images-kuinz.online/i/G-and-M.jpg","16","Venezuela","0","0","0","","No","No","Si","Si","");
INSERT INTO usuarios VALUES("1057","ByDiego","1cf90780f77ce8a3a71d0feca3ec7b4a","medericesgay@gmail.com","06/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","52","10","0","186.185.251.169","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1058","JesusDraws","5e5c9774a78952b4af9c1833b51a491b","narutoalrsurf@gmail.com","06/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","0","0","190.74.185.48","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1059","ahegao","2913ef9ccac8aafa50dfed2865991570","jeralpujols56@gmail.com","06/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","19","0","0","148.103.100.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1060","simon1022","cf4f936f4f5ce2442ac769165f466ec1","soleucari1022@gmail.com","06/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","37","15","0","190.144.67.234","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1061","heiver","846f1d90b160f79118ec75e978f7a7e1","heiver@hotmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.243.16.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1062","kaiser Hh","059a82a32a6339a5740018177b6adcfe","anderson@gmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.125.94","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1063","suneina","fa9c765de906f8d247b9846a57093ed0","fermaryscr4@gmail.com1","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.229.93","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1064","luixangel","d86d06b07f9364a6c0810410acba4f81","luixangel@gmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.78.92","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1065","yojan camilo","5b53ec2366094e93784fa2721bb89173","yojanp476@gmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.102.199.58","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1066","laila","52ec872b0fc1c17449c90808372d1532","laila@hotmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.243.16.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1067","famoso","df5cefb9bc933a4e0cbed153bca502e9","famoso@hotmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","13","0","0","201.243.16.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1068","rafaelhp23","d87f8f33a1e7194c6c6d1ee2b8e854f2","vanesszerpal3@gmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","66","0","0","190.206.40.249","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1069","mara","52ec872b0fc1c17449c90808372d1532","mara@hotmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.161.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1070","Andersonvega","ea8b56095b68fca03e8208c3e50dc7ce","crakman-_-123@hotmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.210.220.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1071","erick77","c9b42a9a5bab19f2cd662f6d2eec792d","erickitooooo75@gmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","191.95.162.198","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1072","Grazy Hp","cf8353cdcf4cf961369422a72b76d7b2","dignamoreno366@hotmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.84.58.16","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1073","Crismar","29f7f13d90c628d064cfe52c20d3d3a9","crismarferrer.20@gmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.203.31.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1074","Grazy Hp1","25ae514fd9c48c070228732484bf1cc7","mayora.1984@hotmail.com","08/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","32","0","200.84.58.16","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1075","car554","320ab169ca4cc9f048a210b0bf1f1cbb","andremontero91@gmail.com","09/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.118.252.5","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1076","hedersito","f6d812ff2851c8fab285e33c579e21eb","josgoit@gmail.com","09/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.80.130","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1077","C a r l a","1eef2053edbc331a389f0c72aade1f28","kamila2323@gmail.com","09/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.131.8","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1078","lDari","920de4bad73fe237f0df85a2101f45c6","dari.pd.2000@gmail.com","09/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","33","9","13","181.67.2.110","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1079","celealmiron","5d120bb403dec6936cc6f6c8315afe9b","almironcelee@gmail.com","10/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","12","6","0","190.83.64.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1080","S a d","84ac5450d6b5fbbadc1ccb57c38b8299","cucarachawapauwu@gmail.com","10/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","5","0","200.82.219.36","Katherine","Naranjo","","","0","Venezuela","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1081","IYosan","c3e8602bbc47749c3cd60ccc61a4cfe3","IYosan@gmail.com","10/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","190.79.101.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1082","C A M I L A","8331c9e4b051e4160672e5bfca5c8c74","ggfijvcgfbcvxkuvcxjlvhb@gmail.com","10/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","8","0","181.51.147.111","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1083","Jesus ","81e63eedb6b6ca157756890dcaead1a4","pocoyopocoyuca2003@gmail.com","10/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","282","26","0","190.37.251.247","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1084","youngkrippy","117709b3a3e790fd4a34a3f2a2d107a6","klfkfkl@hotmail.com","10/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","55","0","0","190.162.170.8","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1085","heder077778","f6d812ff2851c8fab285e33c579e21eb","JOSGOIT@hotmail.com","11/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.93.92","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1086","heder8888888","683bdb19fccfaf0da189011d403c8f5f","rosmelysa@gmail.com","11/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.93.92","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1087","heder09","f6d812ff2851c8fab285e33c579e21eb","kaskabelito18@hotmail.com","11/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.93.92","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1088","RG4 EMI","71ea46aa1e3c5a3bbf4c2b807e6a5fa9","jaileecarolina@gmail.com","11/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","191.102.218.163","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1089","2","57858af2c5b1cd528e9137a94d541246","albertico.13@gmail.com","11/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","12","0","0","190.36.241.1","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1090","Kyomi","6fbcf6348cafa818ed83dc013a887219","jhonsimagonzever1@gmail.com","11/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","6","0","190.36.31.90","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1091","lHoddy","f2cf8413ae6c8a822f61f6e4adfb2347","antonyskarsgard@hotmail.com","13/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","140","41","0","190.207.98.171","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1092","Joseanny ","242af7c4ff19d49385250fdcb8db83f5","r.jorgeluis841@gmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.68.53","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1093","R A M B O","04806fe9e279a1a7d6af2f23ce9e6293","alejandro_dragon@gmail.com","12/02/21","","1","","","https://i.imgur.com/hAQIqxZ.jpg","./images/barras/b1.png","40","0","0","190.200.114.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1094","DamianG","18535080229e5d2fb42f62b0ba4a2280","renoobado@gmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","25","10","0","47.62.135.174","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1095","H i","259240a2bc9ce9cf56d31c8c65ae28e1","Elielabrahanrojasazuaje@hotmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","9","20","0","186.90.171.8","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1096","lDennysHP","25a9a70ee49de174e0681bad1dcb2079","lDennysHP@gmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.251.214","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1097","isaac","f3d3f0922eb6c4e8f3973f2d266e51ba","isaac12.3@gmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.221.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1098","cri","6738eeef983a7d29642dbaad18497a24","cri11@gmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.221.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1099","cristopher","c8ef4cdbf0e8f0cac5d8894d54877696","cristopher@gmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.221.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1100","isaac321","a85114d2a392a3f9344c366b410eea01","isaac321@gmail.com","12/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.221.196","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1101","leorbis","bb9c031255a47f8684706cfe704ebacd","david_chili163@hotmail.com","13/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","12","5","0","186.91.45.95","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1102","Lolgamer59","fe902364ecc13d2d2126533c631d8dfc","leonelb1710@gmail.com","13/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","44","0","0","186.91.243.9","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1103","IMatiaz","ecd8588cd2f5792ef15474d10451e378","Colinajesus116@gmail.com","13/02/21","","2","","","https://v2.kekocity.com/uploads/02/0/9/8/3/b0983c51303c5214335b621c24d22572.jpg","./images/barras/b1.png","66","47","6","190.202.247.174","Yosandy","Castro","","","9","Venezuela","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("1104","JoseGamer10x","290cad6b82b68d9c94b7b8daa8cd5e96","lijolu182313@gmail.com","13/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.242.233.238","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1105","KellyOwO1515","85a02058e0f3d6ca12b090636b27ddb4","KellyOwO@hotmail.com","13/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","161.22.35.193","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1106","chikoes12345","24862cb47bd9e36591f0466a15a75a5a","Aram_2020@gmail.com","13/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.77.41.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1107","wasapo","ba8f96b279eebaae4a01571482be3261","casdasd@ggm.com","16/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","::1","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1108","KellyOwO1415","cf8fbc19bb3753fc81f064cfd7b360fb","KellyOwO15@hotmail.com","16/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","161.22.35.193","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1109","pedro15","58f9b3e2792ef7159f21456ce7cde731","angela_tineo31@hotmail.com","16/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.201.21.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1110","andrix","1ee2abe619203f0f0b5ad0c6e67ecb69","castilloernesto11@yahoo.com","16/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","200.84.172.246","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1111","Elsa Broso","ba8f96b279eebaae4a01571482be3261","elsabroso@gmail.com","16/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","190.255.85.168","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1112","l Maria l ","6fe2b0ad938892e0d3d528f37f643d8f","valeria-2007@gmail.com","17/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.87.66","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1113","krilin 222","901b541fafc53891a2178a45f6b44dc9","yorvenalvarado@gmail.com","17/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","87","33","0","190.79.204.249","Marco","BATATINA","","","0","Chile","0","0","0","No","No","Si","Si","No","No");
INSERT INTO usuarios VALUES("1114","haroldhp","9281aebf0d4859dd0aef877b47d47226","haroldhp@gmail.com","17/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.106.138","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1115","ARRIS","22337631133f6058e6d95ee017a443f5","sebastianoviedo27@gmail.com","17/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.248.148.202","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1116","leandro123","3f2a19a2b70c8d8556710e495647f151","leandro@gmail.com","17/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.200.106.138","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1117","geko3","c054503bb09b2558b49eff5ba990eee7","heissleryaguarin@gmail.com","17/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","7","0","190.204.84.56","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1118","JUAN CDM","b6d41c782ef2cdd8769ade711f58ebeb","juangamerff1@gmail.com","17/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","12","0","0","191.111.151.25","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1119","adrispacheco","20b6cd3f26de7e00f49c6b6df4c7ee48","oalaralara@hotmail.com","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.39.119.236","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1120","poopel hp","dfe54baa6305e8ffb712072638c3ae4b","garridoalber94@gmail.com","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.205.27.126","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1121","Yonnii","72b88e4bdc338eb29cf2304aa01e4ec0","henderson_portuguez@hotmail.com","18/02/21","","1","","","https://i.imgur.com/Pzjkj8z.jpg","./images/barras/b1.png","14","129","0","190.78.254.238","Yonnys Jeusus","No especificado","","","16","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1122","free fire","88012da98a17e050b13f210324b03f15","luismar-17@hotmail.com","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.213.22","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1123","wasamalyn","46d994f6eb1ccbb59c9b93984b0e7d3d","isapa02511@gmail.com","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.75.49","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1124","Tosho 18","aea67245c58b65ef04ec9ba1813ddf61","ramhp0171@gmail.com","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.78.252.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1125","marvisvale10","abb625b511bbfc6dd7c87a899894a7ea","Marvistina11@Outlook.es","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.198.84.221","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1126","daniellati&n","09b7ca5925b44dbe92affe2ab7471ac0","04241699503@gmail.com","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.188.16","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1127","DarkFaze","73d6ca9e2fed7cffc6cd898eae4ecc21","jerffrey1500@gmail.com","18/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","12","0","0","190.79.101.211","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1128","Mannteh","b7fec244993646e63a85cddddc9457d2","IBaddy2437@gmail.com","18/02/21","","1","","","https://i.imgur.com/BPgvJo3.jpg","./images/barras/b1.png","55","0","0","190.74.89.149","IBaddy","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1129","yocser danie","65033de128e6cdb697f0059d4cdbe7d8","yocserdaniel@gmail.com","19/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.90.188.16","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1130","Latino23","30f289db13494c5e891583e30a150a51","joserlatino@Gmail.com","19/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.211.47.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1131","Plush123","dfcede24b4748943339a6dcc5d50f4c9","karmiguel@hotmail.com","19/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","200.109.187.143","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1132","Quesito","1a58cd19f86c30083565f01dd499eea9","jesusdavidab@hotmail.com","19/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.33.76.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1133","Boffe","be0dc3754f6de8b9e7a30ffc02c2b03e","eli647071@gmail.com","19/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.29.62.220","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1134","Elmaldito","c1ba90e6eb8498a6759278c6d6b5d65f","arcimoisespina@gmail.com","19/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.206.240.170","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1135","Dantii","834c35fac645b22d9e9b1bd74330734f","kevinitriago1307@gmail.com","20/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.195.255","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1136","Sycox","c13adcbfbf9a32d332efcdc1d36d2d79","eelchicueloytxd@gmail.com","20/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","0","0","190.78.191.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1137","Screenshot","8ee7698af38bdf6288a226b9ddcbd757","ronnydamianmartinezmonroy@gmail.com","20/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","181.29.62.220","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1138","natalann","1f06fd680299b660d74a4136df12bbb2","jose_papirrico@hotmail.com","20/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.89.165.63","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1139","jey 34","05c0594a99203974e7f94ea5b2a91685","diego1219@gmail.com","20/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.142.139.112","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1140","LuisBlack","71de33c92f458bf81ccd9f475c638236","luismirena001@gmail.com","21/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","186.95.211.164","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1141","Ali javier","7c0efd0dca0b2b75e79f88be8406afed","alijavier2009@hotmail.com","21/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","190.74.56.112","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1142","Ender","00e0ec77a244fedbbcd0e022bf27a7a6","endertineo@gmail.com","21/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","0","0","190.204.110.112","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1143","wilfredo Hp","3ff2e75b316c6cf8a2cedd32e4b3fb11","wilfredoharden13@gmail.com","21/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","201.209.137.233","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1144","carrito","5c86f7e00c117d852208779dae6ef15e","carlosalbadan00@gmail.com","21/02/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","75","60","0","190.67.138.217","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1145","Suh3y","e6535c0699408bd2737bf59509db2a06","suh3y25@gmail.com","04/07/21","","5","","","https://i.imgur.com/JyU0Bvw.jpg","https://images-kuinz.online/i/Rosita%203.jpg","150","0","0","172.69.34.105","Meli","No especificado","","","1","M�xico","0","0","0","","No","Si","Si","Si","");
INSERT INTO usuarios VALUES("1146","Alej","ff2c6d3fe4eaf2b13d49dbdf6001bd47","brayancpgalviz@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1147","Genesis0","f7f760ac3cd7a9d4df6fc13d7669e414","mandy_genesis@hotmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","162.158.122.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1148","Diego Fariaz","ea85918ba83472713f7694002d6f5f49","diego230497@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","0","0","172.69.34.105","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1149","IDylan Hp","e3563d9455bf763433b55505ef270231","gsinthya916@gmail.com","04/07/21","","2","","","./images/avatars/noavatar.png","./images/barras/b1.png","158","47","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1150","DENDROIDX7","40c5e225ed4b694ec9dadf622f2c5141","Akiramartin60@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.237.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1151","Lautaaro","4c56864e6e4fbed225946a83c1f20be4","lautaaro@kuinz-fansite.space","04/07/21","","6","","","https://i.imgur.com/qjlhsaO.jpg","https://www.kuinz-fansite.space/images/barras/b1.png","5","36","0","172.70.51.165","Lauto","Nieves","[Maria - Krozox - Ruti - Dani - Day]??","us1NNRQTMwY","7","Argentina","0","0","0","","Si","No","No","Si","");
INSERT INTO usuarios VALUES("1152","Dendroid","40c5e225ed4b694ec9dadf622f2c5141","dendroidd2019@gmail.com","04/07/21","","4","","","https://i.imgur.com/JLaskVE.jpg","./images/barras/b1.png","132","187","1","108.162.237.139","No especificado","No especificado","","","13","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1153","ISama","5ce56c68a9de0a92a212ad834ec405f0","missa271994vega@gmail.com","04/07/21","","1","","","Hola =)","./images/barras/b1.png","178","36","0","172.70.54.103","Diego","Gardona","","","0","Venezuela","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("1154","Emili 76","7f39a544b9d89ae322ad9f6d4051e50c","emilim@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1155","Geneesis Hp","f7f760ac3cd7a9d4df6fc13d7669e414","nietomandy82@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","8","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1156","Crismar Hp","29f7f13d90c628d064cfe52c20d3d3a9","Crismarferrer.10@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","56","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1157","nahy","9b9e7cfdf7365907796571d4d74a9c33","nahycaren.santana@elcalero.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","86","25","0","108.162.229.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1158","el papa&acut","8258762119263972ac1b05b5e266bcd0","alejorosario282@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1159","IMaxmad Hp","9453a820de6cf38d9c908fb00b376751","mariasugey466@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","106","20","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1160","yenkeiver123","a23501b4bb703b2197067da9d556de89","YEREMIMARIN30@GMAIL.COM","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1161","Kenner3","ac5501b8aabe781447ba5f5029b2505f","keo.@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1162","ZZOE","b16aa16d931250c192fd0189442bd9e2","frefire.zoe@gmail.com","04/07/21","","5","","","https://i.imgur.com/m6vqqQY.png","./images/barras/b1.png","286","73","14","198.41.226.233","MARIA","ZZOE","OLA K TAL","https://youtu.be/LGBF2XYRiz0","6","Peru","0","0","0","No","Si","Si","Si","No","");
INSERT INTO usuarios VALUES("1163","silvia h","32f5589d6d79f1f4e5318edf5211da75","alejandrorosario282@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1164","silvia","5528eb2b1170ce89d2c94270640cbce0","el.aine29@hotmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","101","15","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1165","Pi�a","c7eb45b94c4666fa36c961922abefa68","Gu_Ci@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","10","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1166","Kenner13","a6fa48a63574b11a9c32f8a9793f65cd","yimi.@gamil.com.co","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","104","36","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1167","lSamuel HD","0fe5bee0b986242923f2865ad03e0636","Samu27@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1168","Alexaander","e3b44d40d263608ad28181378f11b873","josema2010goncalves@gmail.com","04/07/21","","2","","","./images/avatars/noavatar.png","./images/barras/b1.png","85","40","0","172.70.82.135","No especificado","No especificado","","","6","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1169","lSamuel ","1904af7828c99d10ad1b71537f6bc340","Samu207@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1170","lSamuel H","0fe5bee0b986242923f2865ad03e0636","Samuel2047@gmail.com","04/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.212.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1171","Adonys ","1904af7828c99d10ad1b71537f6bc340","adonys@gmail.com","04/07/21","","1","","","https://v2.kekocity.com/uploads/02/a/3/3/5/ba3355923f1668b3609bee93fceed613.png","./images/barras/b1.png","34","8","0","172.70.82.135","Adonys","Fernandez","","","0","No especificado","0","0","0","No","No","Si","No","No","");
INSERT INTO usuarios VALUES("1172","Walner","6a03cc18eb654d62c49c6eb36e1d13ac","walner15.31@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1173","D i a n n a","03c8195d25d1394047a64bcb644e71e7","dianithaGomez60@gmail.co","05/07/21","","5","","","https://i.imgur.com/Zux3exg.jpg","./images/barras/b1.png","280","150","0","172.69.71.147","No especificado","No especificado","","","1","No especificado","0","0","0","","No","No","No","Si","");
INSERT INTO usuarios VALUES("1174","Rutierrez","ba8f96b279eebaae4a01571482be3261","casrsadas@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1175","NENYER","343979c7c57946915bec2a94c54d53d6","kamskams@ee.io","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1176","Kynes KC","f838774930326024976a955a04af3a26","k@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","141.101.77.147","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1177","Krewez","dd13aa1308c16256851372b964245be6","carloseduardomarrugop@gmail.com","05/07/21","","2","","","./images/avatars/noavatar.png","./images/barras/b1.png","33","4","0","172.70.54.51","No especificado","No especificado","","","0","Col�mbia","0","0","0","No","Si","No","Si","No","");
INSERT INTO usuarios VALUES("1178","Victoria","0dbb139dda87b480c0c330b32a288723","goyovictoria4@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1179","albertojag","6e04bfe056ee6773aa18708545d28f74","quijadacayeidis@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","8","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1180","Juhn","0ba40be6bc0e5333fdcb8d8ef51742cd","dan234lan.78@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","61","7","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1181","ISantiaago","dea9d840d986e7612415cb8322282465","luisguillermo.@gmeil","05/07/21","","1","","","https://i.imgur.com/a9Cgt4b.jpg","./images/barras/b1.png","0","29","5","172.70.82.51","No especificado","No especificado","","","2","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1182","el man123","7170627d078c63f6326831a5859f0248","samuelmartinez710515@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","15","0","0","172.68.25.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1183","Emili76","86844abe6b435df05c0544ca436e1dc1","molimo@gmail.com","05/07/21","","1","","","https://i.imgur.com/iwwsLom.jpg","./images/barras/b1.png","244","25","0","172.70.51.165","Mariangel","Diaz ","??Becaria?? Cargando..","","12","Venezuela","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("1184","EVA18","2a62899772d4e39f8bfe8c1befe5051e","maribelleones@gmail.com","05/07/21","","4","","","./images/avatars/noavatar.png","./images/barras/b1.png","169","12","10","172.70.51.250","No especificado","No especificado","","","7","Venezuela","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1185","Draymon","9c62dda6cac3b0d88257352169a19317","eguzmangoitia@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1186","Caleb II","30afe2f298405e7643f1ba448a6eb6ee","Calebii@gmail.camino","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","20","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1187","lSconet","c15fb4f55d833c589ef06b1b8a020332","kelvinmolina111@gmail.com","05/07/21","","1","","","https://i.imgur.com/petnL3L.jpg","./images/barras/b1.png","174","6","1","108.162.210.233","Kelvin ","Molina ","QUIERO DE TU TOTO NAISS","","5","Venezuela","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("1188","Leon","7febf0a50e3418a3f15bb69c91d1b391","yofregonzalez7700@gmail.com","05/07/21","","1","","","http://feedproxy.google.com/~r/clusterstock/~3/WtcUlBYIkRM/russia-baiting-us-into-shooting-top-us-admiral-in-europe-2021-7","./images/barras/b1.png","123","142","0","162.158.122.11","Yofre Alejandro","Yofre Gonzalez","","","0","Venezuela","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("1189","IEdwinHp","752853ad789acdf4565de33e4cca4088","edwinfranc87@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1190","IPolo Hp","a8a07f97b171f95b105828c90bcb84c3","montillamra.059@hotmail.com","05/07/21","","1","","","https://i.imgur.com/ciqF0KE.jpg","./images/barras/b1.png","114","5","0","172.70.51.250","No especificado","No especificado","#VivaHitler","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1191","Deexse","e9c0f65d2553a0e0e2e4a75a814d0155","jesusfigueraroblox@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","111","116","7","172.70.51.250","No especificado","No especificado","","","3","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1192","lSaantiago","446fc72eff3d5b98ead914322907496e","yosmarsantiago179@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.139","lSaantiago","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1193","d4v3","98fa50473ce2022bd88c76e4a2963ea4","celia5000ve@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.212.24","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1194","d4v3s","f80e5643db8b8b0e66050428d138d9bf","indira5000ve@hotmail.com","05/07/21","","1","","","https://i.imgur.com/fdeMAxm.png","./images/barras/b1.png","74","30","0","172.70.54.103","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("1195","Paddy","d604e4597b461ad51ee41ce0137b23ab","Paddy29@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.69.206.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1196","tomasramallo","24039582650ab03d33b9637c24e398a3","carptomy3@gmail.com","05/07/21","","2","","","./images/avatars/noavatar.png","./images/barras/b1.png","94","61","3","162.158.195.159","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1197","Pandito","0cffbe45c5a866112433f842173071c8","pandito@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","102","30","0","172.69.206.109","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1198","EMPECLAUS","782acae1d8f41e060466ffe8b8fc84d0","erixon001@hotmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1199","yexibelrodri","31c2b14929cef134ecf3108a4961b1b3","yexibelrodriguez16@gmailcom","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","40","0","0","108.162.212.4","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1200","luis romeo","53c557ef96aeb9960689776e7a9e04c8","antoni321@gmail.com","05/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1201","V Z L A 207","06fbf91b45738d64f48d2860987a3377","jahan.07qb@gmail.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.68.25.156","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1202","froilandcito","df9f6c57b798ebc7e2c25971e03edf11","yorfrankyeremi@gmail.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1203","cesarito hp","9528fd8e63bcc14074be1faf6e83c711","cesarbasualdo4@gmali.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","162.158.195.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1204","luisvera12","e9c4998b0fa4159b9d53e93d05b08d90","njvera09@gmail.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1205","lGA RY","193eb6de32d54632073d96c60dd7d512","sebasti_david@hotmali.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1206","SofiaI","dcf28154c3cd83773f5de1eaedd4b423","sofia1@gmail.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1207","JImena","756a4583bb0956ce9f526ec6398a96a6","anahyssolorzano@gmail.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.69.206.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1208","nacboy","f3a67577fa8d3eb7d26bb0e42ffa39c3","krozox27@gmail.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","162.158.122.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1209","Orgz Srtilo","dd72d66237ca5c44acab9cca1a27c61f","tuggener.2016@gmail.com","06/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","6","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1210","miriamolleja","6e8cf4549896c4020e00af8f591d16c0","landaetacolmenarez@gmail.com","07/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1211","Dieego Hp","9fc000db03ed0fd9772f78203c94dd93","elreygardona12@gmil.com","07/07/21","","2","","","https://i.imgur.com/HmRGnmR.png","./images/barras/b1.png","165","67","20","172.70.82.121","Diego","Andres","?Dieego Hp?","","17","Venezuela","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("1212","VZLA207","7a9dff8996609966d44adfcb61b4a159","carmennerina@gmail.com","07/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","34","0","0","172.68.26.25","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1213","NORA HP","15f0e62945310e6ca1c012bfac6443a0","angiechiquistar@gmail.com","07/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1214","Xavianna","ea7a17af63bceedfeac46868f505d0b2","naira.puto1@gmail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","107","5","0","162.158.122.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1215","eduardo","b7697508b10c51e9cfe9ea44ec585cf8","liliana.rodriguez4470@hotmail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.69.206.109","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1216","C A T A","30afe2f298405e7643f1ba448a6eb6ee","milcarsabriena@gmail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","66","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1217","lTanq","f7f760ac3cd7a9d4df6fc13d7669e414","riko2020@gmail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","83","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1218","Magnifined","0041aa4ac0829dcfe70e19aa279d203a","spikeeet@gmail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","12","0","172.70.51.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1219","COWBOYKING","e0ee6f1a6a17a931d0dc775be6cca913","ale_sal_gar02@hotmail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.69.69.91","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1220","mamasita 123","3ad56baada52bed7329c9f5012cab269","TUNINOOSWALD@HOTMAIL.COM","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","17","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1221","Florencia NV","e038764c56c8987932e946307780e8ce","Flor166@gmail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","198.41.231.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1222","emi fialho","cf10b42e6baed4581540124738857e31","emifialho@e-mail.com","08/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","0","0","198.41.231.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1223","Cerra Elano","8716549b1a07af9b717322d9a83abcbf","cerraelano@hotmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","71","5","0","198.41.231.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1224","IMaxtercrap hp","12ba77d263e18adbf45695e9e2f88b98","lolipi@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","114","5","0","162.158.122.11","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1225","mamasita 321","a20d70399d2b1e8877d27521676ee223","pabloramirez1826@hotmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1226","rafael","bd24724cf0f1cd8e064c4fea0e1f46a7","rafaelgmor167@gimail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1227","Harvy","86fd034d53781b522cdcbc233578011d","harrinson12--02@hotmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.69.206.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1228","Brayann7","c014eaff85848108d5c81e35b65dc912","brayanaw15@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","31","0","0","108.162.237.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1229","Crisbelis_22","90a6df7e007d693e5fc1f1cc660026dd","marbelis234@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.212.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1230","IJuan hp","95048fa0c6f79da8f38d6f2b33dd2e94","juancarlosvera32145@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1231","Daniela","41866ad167144c7058baef41ed35c867","luc077504@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.212.24","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1232","derwerly","62547bfc10f2c7e1149ba7cd77630d50","derwerly123@gmil.con","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1233","julijuli12hB","16732205aaf29b09b9f434aa5f174e11","julijuli108@hotmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1234","rey goku","f7f760ac3cd7a9d4df6fc13d7669e414","cesareochoa14@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1235","Goku","dfcede24b4748943339a6dcc5d50f4c9","asdasdlhljahsdjhljh@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","18","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1236","jose romero","58fb2a1f1ccc01f70f11040f7304b593","josvicro8@hotmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","59","8","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1237","rossed keko ","e20b3c6c53e63a8b83bb7812dfd585d4","Rosschacon0809@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1238","I Tawin","7a9dff8996609966d44adfcb61b4a159","ascacscsa@gmail.com","19/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","171","15","0","172.68.26.27","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1239","moises2055","dd757b61d397c328cad769671cdc3ad4","moisesrebolledo@gmail.com","09/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","31","5","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1240","lN I C O","a26ab28736fc231558ea491354441d67","lucasrobertoenrique92@gmail.co","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","48","22","1","108.162.212.4","No especificado","No especificado","","","1","Argentina","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("1241","Orian","e83fecebfac28e2d3184d04a74f3b48a","orianasenoja@hotmail.com","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1242","KENDERHP","ff23f4fa115a64b32d7e47f254d197d4","naonaurkia.1@gmail.com","10/07/21","","1","","","https://i.imgur.com/CqnEsVA.jpg","./images/barras/b1.png","31","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1243","adriHp_4","66fad5823447db1819174f92918225d1","andriogonzalez409@gmail.com","10/07/21","","1","","","https://i.imgur.com/rRRVXt0.jpg","./images/barras/b1.png","50","35","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1244","nenateamo","7a9ceea68e00d194f903579d6bfc2f12","derwin123@gmil.con","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","55","27","4","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1245","johan18","a4207af8997630143519df351519b4f6","yenimarquez18@outlook.com","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1246","johan1802","a4207af8997630143519df351519b4f6","marquezyeluismar@gmail.com","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1247","ambr3a","aaf0715704cc9d1ecef962c5dd166812","ao24112008@gmail.com","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1248","ILali","f93bf779bc2a3c6e8851c82c679cd485","daleanisferrer@hotmail.com","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1249","zods EHHH","6f545783a711882cda80e28547091b1b","rosmel@gmail.con","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","162.158.122.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1250","rosmel@gmail","6f545783a711882cda80e28547091b1b","rosmel@gmail.coneqw","10/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1251","tu venezolan","87e9556f97fded202068128199447923","josealfredreinabermudez@hotmail.com","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","26","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1252","victor 1","8eec6bc10a40f9abb66b4be64d84c5a5","rafael167@gmail.com","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1253","Daniel FF","cb35d4f56666bb5e7c8b7024988ac278","danielito@email.com","11/07/21","","1","","","https://i.imgur.com/INKYq7Y.jpg","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1254","DAREK GLOBAL","a78fe111ac6942ceca101e741d9db732","SANTIAGO@GMEIL.COM","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1255","eliangel","8b32536b6bf751472793fa2dc38c8dee","eliangel@gmail.coneqw","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1256","WHW","8b32536b6bf751472793fa2dc38c8dee","WHW@gmail.coneqw","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1257","gerte0424","e64a397bc17149005510e9f230d058cb","GERTE0424l@gmail.con","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1258","yonnie","e4ad67ec0c6e95a354fa577bbaa66fd2","yonnier_70@hotmail.com","11/07/21","","1","","","https://i.imgur.com/kgfH15U.jpg","./images/barras/b1.png","15","0","0","108.162.210.173","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1259","amara2013","bb5e07430fb855cfa31b8d00e3bd8c49","amararebolledo13@gmail.com","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1260","zods","97129089483d225f563c6ec11e13ce8c","zods@gmail.con","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","162.158.122.15","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1261","Charly","ac76fb4498c9c6c3f2be3d05856d5180","miguel.@gmail.com","11/07/21","","1","","","https://i.imgur.com/YANxq8y.png","./images/barras/b1.png","46","0","0","162.158.122.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1262","yamb","262b1f82891d8433840bdd4dd961842e","danielagilrosario2006@hotmail.com","11/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1263","Jaime","72e048ba96d86a6c6dbe81fe4941de02","jaimesalfonso08@gmail.com","12/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1264","llJosue","96c21d3b87021e458ab7f0386d5f0443","llJosue@gmail.com","12/07/21","","4","","","./images/avatars/noavatar.png","./images/barras/b1.png","115","54","1","172.70.54.139","No especificado","No especificado","","","4","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1265","PsychoBoy","2c3ad1034e63105029e2443aecc8edfd","carlosbofoy.24@gmail.com","12/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.187","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1266","isabel2009","2f6b87e99ab57dd0cc83ba2116d0e89b","eduardo_@hotmail.com","12/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1267","nikol19","6cad76bde98cd2b8a8db68c9ba2d7235","nikol19@hotmail.com","12/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","17","5","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1268","Carlitos","ba8f96b279eebaae4a01571482be3261","ccasdasd@gmail.com","12/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.69.206.97","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1269","LStrumbler","b0e6ada9e8ce553b05af372a1f252ae2","almejas123@gmail.com","14/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1270","jacky 123456","7e012caacd6293cc11e6475db204a63f","jackyromero@gmail.com","14/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1271","elpanaaraon","296198667d732ea355b1c27a5304fdbb","elpanaaraon@gmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","85","19","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1272","qqpo","231f12e97723e1a073392471bb5cb7d7","mariovillapro8@gmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","5","0","172.69.206.55","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1273","Deiker3@","4e778d22949071e9209fea852dffcbbb","martin13113@hotmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.212.24","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1274","rosmeri","4eb73936c4d32c9a9537412cb303cc27","tomastorres@gmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1275","miriam","bd7639444b90dc133dec1fbbb1587717","greilimar@gmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1276","yanitza","ad915a8c0f233841002d90fb96fd3278","hurielmacos@gmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.212.36","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1277","Army EH","c1059d32431c0e779ac38f743a1c0b2d","paoladevillamizar@gmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","30","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1278","Leon g","e6b86424536079d721ee6921c8b25644","yofregonzalez77000@gmail.com","15/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1279","xIamQueenx","edd76ad1d35df2f8d58976079bc659fe","none.2020.torres@gmail.com","16/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","94","30","0","108.162.210.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1280","adrian@.com","a9abd0a912c5ad6060379f80cc6e990f","adrian@com","16/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","1","20","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1281","lCristhian","3cc3b88a35dc8d2bf2388861bfa35063","lCristhian@Gmail.com","16/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","146","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1282","hadier123456","2e47598c10b0436e2d8fe9ccd61faea0","mianathalileviller@gmail.com","16/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1283","danielsvalen","ac297302d3741944ae61f2f1975da196","hcvvcchb@hotmail.com","16/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1284","NORA HP123","15f0e62945310e6ca1c012bfac6443a0","ivonyoselin@hotmail.com","16/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1285","123eider","3ddf06ead58566696b99230fa2d0f7be","eider.123@gmail.com","17/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","16","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1286","Mariannay","3885dd74e34509b9a6a5e8f26fe21c1b","Mariannay123.@com","17/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1287","toshiba","34720f8049ce4df4252e397dcbaf4cf6","njvera09@gmail.com","17/07/21","","1","","","https://i.imgur.com/9qzFGhv.jpg","./images/barras/b1.png","230","18","8","162.158.81.135","No especificado","No especificado","","","13","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1288","angel rivero","31c9ef4a623d3f49280120e87abe79d0","angel12rivero23@gmail.com","18/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","0","0","108.162.212.24","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1289","Adamg","43681490536a3deb66a8d7212597606d","Ali_Activo@hotmail.com","18/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1290","brutal","18c9957fe17b57bae06fde1c2ef18bb0","ali-activo@hotmail.com","18/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1291","lilohp","a4207af8997630143519df351519b4f6","carmenemilia@gmail.com","19/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","7","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1292","yeni18","a4207af8997630143519df351519b4f6","yeluis99@hotmail.com","19/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1293","Kima HP","5d23700bafb813359ceba16a32273c56","Kimita@gmail.com","19/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","51","19","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1294","Deiker3p","de1eeb9b36a807713b08c09a5557d236","martin13113@hotmail.compol","19/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1295","Cremoso hd","2cb13278755323fa313e9eb525fbdbf3","yonathan1112@hotmail.com","20/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1296","lDiana Hp","23b5edf260f6d0e8718a4582269d170e","lDianahp@gmail.com","20/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1297","L-Gante","446fc72eff3d5b98ead914322907496e","Cawchodemilk@gmail.com","20/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","22","13","0","108.162.210.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1298","(Maxtri) w","7e4dfe476717e3a31457bfae5b52b463","rosmel1985@gmail.conwtew","21/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1299","D a n i e","c9d5338810f27fe7a89fbd45e0ae9b71","miriamollejas06@gmail.com","21/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","5","8","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1300","aleNX 3","34b5933ee8951fca41d3a01d7c68a29b","enmanuelsorondo112008@gmail.com","21/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","31","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1301","jhonaiker 10","446fc72eff3d5b98ead914322907496e","jhonaiker168@gmail.com","21/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","162.158.122.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1302","marin hp","38dec6628541054d0408d98d10868c3c","yorfrankmarin@hotmail.com","22/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1303","wolf pen dra","1dfcbef672f2d61327eee1598029e329","gonzalez.vjg@gmail.com","22/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","8","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1304","jhonaiker 1","d0c9a760ecc118b76bd65c497f50f601","JHONAHERhernandez@gmail.com","22/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1305","IKleiderR","d1b7a59437df3a061dae252ffdb1ea3f","keiverlacruz@gmail.com","22/07/21","","1","","","./images/avatars/noavatar.png","./images/barras/b1.png","34","5","0","172.70.82.121","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1306","IWalnel","c62c1f5fc4b953e7dbfd79cc0e74a2b9","Dani123@gmail.com","22/07/21","","2","","","https://i.imgur.com/rI8hAj8.jpg","./images/barras/b1.png","397","79","22","108.162.210.173","No especificado","No especificado","[Miembro Oficial - Fenix Legendary]?","","62","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1307","Frawer","58038dec56cb890e41160e44d5f0316b","jacksong_10@hotmail.com","23/07/21","","1","","","./images/avatars/F.png","./images/barras/b1.png","44","25","0","108.162.212.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1308","alan Hj","da5cb90183ad89b5107fe0049494b5e9","alanjamerson@gmail.com","04/08/21","","1","","","https://i.imgur.com/CSYrSvz.jpg","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1309","crisbel","8258762119263972ac1b05b5e266bcd0","german30@hotmail.com","23/07/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","10","0","0","108.162.212.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1310","Luxurious x","ff2ac370829371c50869b5de6b97ea7b","marianoocana525@gmail.com","23/07/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","20","0","0","108.162.212.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1311","Cami Hp ","2fe15c2222830b3296758a1d7282a16d","Camilaperez@gmail.com","25/07/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1312","test23","e6b86424536079d721ee6921c8b25644","test23@gmail.com","26/07/21","","1","","","./images/avatars/T.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1313","Laura","caddd03571622fa86100ce03dac7462f","Laura@gmail.com","26/07/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1314","Xx karola xX","4e94522720975ddb9d4ef54b5bcca98a","egnisbecerra@gmail.com","26/07/21","","1","","","./images/avatars/X.png","./images/barras/b1.png","6","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1315","NENYERCAPO","264c10fb9b32a3d3e61fcab0ec124478","nenyer@eee.iooo","27/07/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","17","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1316","franner hp12","a6ff5141fc1c2db8ddffca397f35d5b0","faraonllevo2horasxd@gmail.com","27/07/21","","1","","","./images/avatars/F.png","./images/barras/b1.png","0","0","0","162.158.122.11","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1317","ILaura hp","2ff9652da8e5aa0657c4d0d85490f46c","egnisbecerra@gmil.vom","27/07/21","","1","","","https://i.imgur.com/GWNjCjX.jpg","./images/barras/b1.png","0","0","0","172.70.51.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1318","nava xd14","2042a37a8b88a4ef4ad8daf8d31d2989","nava@hotmail.com","27/07/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1319","nicol b","f2c4285d4e90a23d1e62727e39aa95b2","vm523025@gmail.com","27/07/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1320","lMarcus","150774867fda058191c182f5d67b33df","eddinsog@gmail.com","28/07/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","108.162.210.173","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1321","Daniela Borj","62547bfc10f2c7e1149ba7cd77630d50","diolkys.2334@gmail.com","28/07/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1322","lCapone","fc09a75dbef710d20242b0bc24f64acd","colmenaresavier18@gmail.com","28/07/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","12","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1323","IpedroA","829a5b7f296f40587c34bddba4b476ac","isaias@gme.com","28/07/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1324","EL FACHERO","903f0fb772688a6b6380bbb47cca786b","enmapla12@gmail.com","28/07/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","108.162.210.209","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1325","andress","2e64d8c9eee16c765afdf88d2df1f9c8","vanesa@gmil.com","28/07/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.51.250","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1326","K JosueHP","5ee66873ba191bcdcea74c313e547646","kevinjosuegalindez@outlook.com","28/07/21","","1","","","https://v2.kekocity.com/uploads/02/6/a/3/8/96a384975ffd8d9320c688ee2ee0895c.jpg","./images/barras/b1.png","26","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1327","eres nuebo","e0100a623fc31bb681c9da29b06fa754","ndjrk3ihnnr@gmail.con","28/07/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1328","Emit Blasko","c083f68ec300515c45bcd5f07ca34678","tiamat.labs@gmail.com","28/07/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","25","0","0","172.69.166.229","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1329","max 123","5b44c9f059ae22c94efbdc7392749385","masxsmel1985@gmail.con","28/07/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1330","IAlfonso","9c929a7df2f5e66e91e00bd430062d01","IAlfonso@hotmail.con","29/07/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1331","Alfonso","9c929a7df2f5e66e91e00bd430062d01","Alfonso@hotmail.con","29/07/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","48","16","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1332","Mrshadowxx","f104f65c51078b243da985638dab0037","jhostin.elpran@hotmail.com","29/07/21","","1","","","https://i.imgur.com/uPtso1Y.jpg","./images/barras/b1.png","7","0","0","108.162.210.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1333","ker_lyqueen","29ec902e00b3281a28377421e0781b42","achigkerly20@gmail.com","29/07/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.68.230.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1334","ambar hp","eba24080a9c92f054179f017ad0a8421","am.bared01@gmail.com","30/07/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","8","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1335","Brayan","e9eac9adb31d921f8223a506b4f31638","brayan221@hotmail.com","31/07/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","108.162.210.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1336","lTawa","1904af7828c99d10ad1b71537f6bc340","tawa@gamil.com","31/07/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","5","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1337","policiak","840fe9ce3f4338458f9d7aca8d874b3e","deiker@egmail.com","31/07/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1338","T0C1C0 J4CK","4b7832b6c35f37ffdd70365034a4da24","Jorgedavidfermanlevels@gmail.com","31/07/21","","1","","","./images/avatars/T.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1339","I Naranja I","041cda099981bd741d3953a1dacf43bd","yoanderramirez333@gmail.com","01/08/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1340","adrihp","ba7c06b41920eb93264f801685555d05","andriogonzales409@hotmail.com","01/08/21","","1","","","","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1341","IlSilver","2b601212280640a75a99157e77ec4d38","jpfortnite483@gmail.com","01/08/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1342","noegarcias","4a62eba48cdf39618fc88f0d9b99235b","Noegarcia0985@gmail.com","01/08/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","25","0","0","108.162.210.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1343","kristal123","e9f4861590840516574f76cb9f1e3749","ashlie.@hotmail.com","01/08/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1344","El ppp","79ddb4a6800e55264e17d90e4845c244","bezta123@gmail.com","02/08/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1345","lpealk","2fc633222d1599b6a0dd8be5cc002a6c","lpealk@gmail.com","03/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1346","Jeeesss","b12f159bec724f82b4cc3e5983ee8df6","jeessiilee2@gmail.com","03/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","5","0","0","188.114.111.146","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1347","naimar18","bae307937979ec0b572e505ab4cb5115","naimar@hotmail.com","03/08/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","10","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1348","Morgan G","16a164999bb5e1544d72d77f2f7e531b","nailimg2008@gmail.com","03/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1349","Morgang","16a164999bb5e1544d72d77f2f7e531b","Jixelys2005@hotmail.com","03/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","7","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1350","Daniels","40a1881d733b9f90776082ee56b2ae14","winyerber4@gmail.com","03/08/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","12","5","0","108.162.210.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1351","aaron 90","4ff2ac5bd8b0fc2cdaeed205ec7071c3","delia9382@hotmail.com","03/08/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1352","santiago marrero Hp","7b33117475561d9385ff6e053cc7edd9","moraima11fajardo@gmail.com","04/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","159","18","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1353","Alegandra24","43536665038858729a2cb74dfa7d6af8","orlimar@gmail.com","04/08/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1354","Anton20","14469084c3aa777ed1de47ce483eb131","valeriamendezlagenia@hotmail.com","04/08/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","10","0","0","198.41.231.118","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1355","LNORIEL FG  ","8bbfea6479ef4c6ae90205ed115465d3","misael@com","04/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1356","Shadowxx","884a7ce58fdcf2e0f42194a5aac16d92","jhostin.elpra22n@hotmail.com","04/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","19","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1357","G A R A A","62db99c481ed1c69bc104bac8604d882","juans8d@hotmail.com","05/08/21","","1","","","https://i.imgur.com/xzhgi4H.jpg","./images/barras/b1.png","61","5","21","172.70.51.155","juan garaa","garaa"," ?Miebro de Fenix-Legendary? �� � �� �� ���� �� ��","","6","Venezuela","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1358","diegoleoner ","60baa82aac5b659dbfd5acef86981948","diegovalles06@hotmail.com","05/08/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","9","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1359","jhonier0412","8692c21a17b85815d53681b930bb0c30","yonik38@hotmail.com","05/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","27","6","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1360","Senseigame","c4e64734a0d684d257bc9c3693f1bbce","kleiversilva8@gmail.com","05/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1361","Chinoyricard","bd8dc856d5aa763106e4f9bda9ef690d","rinsjisiski@gmail.com","05/08/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","38","5","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1362","krozox hp","82c4ab40a79726fb28b6b29b8925a23a","yhonniel@com","05/08/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1363","Bipconet","48fd65489db9ee3d639545306acc6e61","alexmaican12@gmail.com","05/08/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1364","keirai1802@h","eda91ce3a5a5afcc865507a4d7972812","oskarlys@hotmail.com","05/08/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1365","Efe____zota","673a83dcdd441833cadba14e4de93e60","marlongiraldos6@hotmail.com","05/08/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","108.162.212.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1366","diemv0114","cd1506530fe5867e2f26573c573dbb91","diegomv0114@hotmail.com","05/08/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","108.162.212.148","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1367","lisboa","276e69264ee610bf3ad4f0210a63adf9","moralesusuario01@gnail.com","06/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1368","Jesus331","55e8d92f34ccdff70bee8ba2f5540720","Jemspinoz13@gmail.com","06/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1369","Jesus331mast","65bd82fb2e718ad0ddd0b8631d1fa359","JesusCocolis0@gmail.com","06/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","8","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1370","Jhuvi","2b0b275f47883bfdacaca927a8524a8d","jhuvana@gmail.com","06/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","10","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1371","santiagoAMB2","273cd3e363991c8037ccdff22b977dec","santiagomarquez@gmail.com","07/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","108.162.210.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1372","santiagomarq","273cd3e363991c8037ccdff22b977dec","santiagoAMB13@gmail.com","07/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1373","Disconected","a8e3301f7f014213e0df71d4657a6f70","heduin66@gmail.com","07/08/21","","2","","","./images/avatars/D.png","./images/barras/b1.png","9","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","1","2021-09-27","2025-12-27","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1374","archerymstr","6a24467dc5c4a78521b265405aadecbb","archerygaleano@gmail.com","07/08/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","8","0","0","162.158.50.18","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1375","David_Lt","6b77fc518e9758e14f7df26489ed0ab0","pedrorafaeljuliotorres@hotmail.com","07/08/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","20","0","0","108.162.212.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1376","wicho047","cf75fa163044536f05424029c1b6e5ff","wichoalvarados@gmail.com","07/08/21","","1","","","./images/avatars/W.png","./images/barras/b1.png","100","0","0","172.70.98.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1377","Egan","b62362ba09ac04c9317f40eede5c1a39","amadalopez583@gmail.com","07/08/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.69.206.133","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1378","Mayys","b62362ba09ac04c9317f40eede5c1a39","williana123@hotmail.com","07/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","108.162.212.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1379","isaac@gmail.","e5ea79669db205ea23f3bd194339f933","isaac@gmail.com","08/08/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","108.162.212.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1380","mueka","f7f760ac3cd7a9d4df6fc13d7669e414","mueka@gmail.com","08/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","108.162.210.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1381","fernando","f7f760ac3cd7a9d4df6fc13d7669e414","fernando@gmail.com","08/08/21","","1","","","./images/avatars/F.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1382","Cami.Hp","f913515d7494b8adc0bbf9ba3efd310f","camberocamila6@gm.com","08/08/21","","1","","","https://i.imgur.com/3zhL5rm.jpg","./images/barras/b1.png","0","0","0","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1383","Samu","08c8b6b5af173307435273671e035bc3","Sweeth@gmail.com","08/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1384","millonario 3","a49c68719c657d2ab1ef19bca0d7f0a6","carlos20xdgamercraft@gmail.com","08/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.51.165","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1385","millo1234567","955f2cc94c6df654cf6a24d62a13943f","luiscarlosbriceno9@gmail.com","08/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1386","diegovalles","cd1506530fe5867e2f26573c573dbb91","diegomv@hotmail.com","08/08/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1387","diegomv.14","cd1506530fe5867e2f26573c573dbb91","diegoleoner@g.mail.com","08/08/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","6","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1388","lucifer01","d1b88094bc28466efe2ad7257094c2ac","lucifer01@gmail.com","09/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","198.41.231.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1389","12santiago12","87d7f5c6c15e91797bfea402575d2722","santiago12@gmail.com","09/08/21","","1","","","./images/avatars/1.png","./images/barras/b1.png","20","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1390","Samuel","4a4397afa867c7d008ccb6151f89cf53","Sweesth@gmail.com","09/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","6","0","0","108.162.212.148","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1391","Red 80","446fc72eff3d5b98ead914322907496e","wendy_chiqui17@hotmail.com","09/08/21","","1","","","./images/avatars/R.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1392","santiago 123","bc7f6a5594bb5e1355e1d658dd9b8f82","giuthg@gmail.com","09/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1393","luk.mv","cd1506530fe5867e2f26573c573dbb91","luk.mv@g.mail.com","09/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1394","lik.mv","cd1506530fe5867e2f26573c573dbb91","lik.mv@g.mail.com","09/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1395","klr eh","41f0e1426b6c1dc6b56f613e69c64ac1","misaelfina@gmail.com","10/08/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1396","cheli hp2216","e232c561168896291c18cd79cbcab3a6","chelihp2216@gmail.com","10/08/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","0","0","0","172.70.82.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1397","aaronelalfa ","f391746fe2dcaa8457e826bc7d33e5dc","aaronelalfaelgefe35@gmail.com","10/08/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","7","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1398","Kynes Kuinz","f838774930326024976a955a04af3a26","kynes.kc@gmail.com","11/08/21","","1","","","https://www.kuinz-fansite.space/images/avatars/noavatar.png","./images/barras/b1.png","0","0","0","172.69.35.202","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1399","Ssamuel","56d2eaa59c8f88d054a62886268764d6","Sweeths@gmail.com","11/08/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","108.162.210.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1400","Valentina 02","e480e6db87afc9dd0dbeb0a14758380f","marvisvale08@hotmail.com","12/08/21","","1","","","./images/avatars/V.png","./images/barras/b1.png","0","0","0","172.70.82.121","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1401","Lowsser","cc124d3458e5b11661c1825d11254701","Lowsser@gmail.om","13/08/21","","1","","","https://i.imgur.com/AsrSJg1.jpg","./images/barras/b1.png","42","0","0","108.162.210.237","Lowsser","Netwet","","","0","M�xico","0","0","0","No","No","Si","Si","No","");
INSERT INTO usuarios VALUES("1402","Amadeus","9e0ff7b3b8f4bd9f8a297d8b75084037","Bryanman22@gmail.com","14/08/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1403","mari H","07a955a55a1fcb4453360b5bb684db97","mariH01@gmail.com","15/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","108.162.210.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1404","joseline h","12c3a77a279aea39b19585ef1a5be275","joselineh8@gmail.com","15/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","108.162.210.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1405","lila 24","a7172437f97a3a283bbcac973067f36e","lila24@gmail.com","15/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","172.70.82.39","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1406","lulu99","16732205aaf29b09b9f434aa5f174e11","julijuli1005@hotmail.com","16/08/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","7","0","108.162.210.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1407","M Y G I R L","528dbb6236740c903c80e44dbd4b1692","Valery@hotmail.com","16/08/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1408","yann","2bb9f4e5ae5d230b5a73126710d3d14d","yanderlinrf@gmail.com","18/08/21","","1","","","https://i.imgur.com/woLPd9G.jpg","./images/barras/b1.png","87","0","4","172.70.82.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1409","villanelle","b9545ab70d8b4a46b57afb0b683cf4d5","criismooliinaa@gmail.com","18/08/21","","1","","","./images/avatars/V.png","./images/barras/b1.png","0","0","0","188.114.111.238","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1410","TanqR","0f803ff4168c5fcc7905e28a3cd81b2b","Tanquer562@gmail.com","19/08/21","","1","","","./images/avatars/T.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1411","johamxcfb","9f7776698eb061617a0532d7838e0dce","johamxcfb@gmail.com","19/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","65","0","0","172.70.51.155","No especificado","No especificado","","","3","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1412","jesusmixx","260a8d563624a73c4ea84aa5c015c0f2","jesusmix706@gmail.com","19/08/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","7","0","0","172.70.51.155","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1413","Yonni2","dfcede24b4748943339a6dcc5d50f4c9","yonnys-2018@hotmai.com","21/09/21","","1","","","https://i.imgur.com/ls4WSwZ.jpg","./images/barras/b1.png","22","0","0","108.162.212.144","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1414","Jotzer09 Hp","e6b86424536079d721ee6921c8b25644","jotzerguzman@gmail.com","21/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","105","53","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1415","Kony16","d269f4c7ab681cf489c66027b24a903b","konygonzalez16@hotmail.com","21/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","108.162.212.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1416","Ikony","e6b86424536079d721ee6921c8b25644","konygonzalez24@hotmail.com","21/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","26","0","5","172.70.82.241","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1417","trululu uwu3","c2da24c111ced69af1f0655429d278e9","trululuuwu3@hotmailcom","21/09/21","","1","","","./images/avatars/T.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1418","IJhommy","e248f496d530d19deaa9c04275ec2cf9","jhommyjhommyale1212@gmail.com","21/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1419","Bronoxhp040","86c5d2e2a42a0a7f80cde59b6d4bfdbd","dad@com","21/09/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1420","David 022","86c5d2e2a42a0a7f80cde59b6d4bfdbd","22@com","21/09/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","38","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1421","se&ntilde;or","5728f57d37d3e05e8158efb8a2a460d3","carlosjosejr@gmail.com","21/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","108.162.237.99","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1422","se&ntilde;or","5728f57d37d3e05e8158efb8a2a460d3","carlosjp0304@gmail.com","21/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","162.158.187.138","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1423","Se&ntilde;or","021d7df112278044b8f87dce2bedfbee","carlosjp8102@gmail.com","21/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","162.158.187.150","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1424","Bluee","5c19635ddc522365bc7a27491b84450d","carlospena@vicam.org","21/09/21","","1","","","https://i.imgur.com/TFxWela.png","./images/barras/b1.png","68","0","0","162.158.187.210","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1425","Creators","7d750782e79096cc8b9b7f41e94118a1","AKATSUKI@gmail.com","21/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","69","0","0","172.70.82.227","No especificado","No especificado","                                                  ","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1426","WonnDer-","881678653453ee052d827adc46ac8a9d","jesusalbertoqa@gmail.com","21/09/21","","2","","","./images/avatars/W.png","./images/barras/b1.png","100","46","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1427","Zuleidysf","c787a2ca9478397a43bd0d0caaa475a0","zuleidysfiguerarodriguez@gmail.com","21/09/21","","1","","","https://i.imgur.com/4YYwLvw.jpg","./images/barras/b1.png","27","0","0","108.162.212.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1428","gabriel 800","29f128a7ef29b11d40a311c4eb1ea5db","lauraliceobicentenario@gmail.con","21/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","25","5","0","172.70.82.81","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1429","Fincool_Picachu","9cf77c0d6d962ef6048f6793bca656b0","eulicesgriman@gmail.com","21/09/21","","2","","","https://i.imgur.com/QRTETRJ.png","./images/barras/b1.png","120","0","5","172.70.82.227","No especificado","No especificado","? Miembro Oficial - Fenix Legendary ? ","","2","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1430","Da n i e l a","3192ac6e3bbda0556a15b195f29f229a","daniela@gemai.com","21/09/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","198.41.231.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1431","ID a n i e l","4912fcf3571729a57a8c046294447157","sebasmaldovino01@gmail.com","21/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1432","IDani","3192ac6e3bbda0556a15b195f29f229a","mirkagallego@gmail.com","21/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","198.41.231.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1433","Daniiela ","e55b4a70dca867e034789e8761d3144d","dani@gmail.com","21/09/21","","1","","","https://i.imgur.com/niDtZTG.png","./images/barras/b1.png","0","0","0","198.41.231.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1434","jose123","faeebaba0f90099a80effece91447db0","ricardoblbikelife@gmail.com","21/09/21","","1","","","https://i.imgur.com/8w5JGao.jpg","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1435","Hitana Hp","0e1e15f01c7c53843a64eebc9b4a21c9","Hitana123@hotmail.com","21/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","25","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1436","pedasitdea12","896ee7ef0d830adc1c9349c6c303cd05","lito91123@hotmail.com","22/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","8","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1437","Frawes","b81b80578f7a062e15745be0bbf9c669","Frawesgonzalez7700@gmail.com","22/09/21","","1","","","./images/avatars/F.png","./images/barras/b1.png","623","35","10","172.70.82.227","No especificado","No especificado","","","8","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1438","Juan fc123","ea7a17af63bceedfeac46868f505d0b2","juanfc123@gmail.com","22/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","18","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1439","Manuel Jes&uacute;s","ea7a17af63bceedfeac46868f505d0b2","Manuelcr7divala@gmail.com","22/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1440","I Cortetus","d524e03bc9a0faf4f3baed770d0e5850","jonaluzr@gmail.com","22/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","10","0","6","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1441","ohwide","f2fe82e542e8f7add47cd2703e699ab8","serviortega78@gmail.com","23/09/21","","1","","","./images/avatars/O.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1442","yetequiler h","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com1234","22/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1443","yetequilerhp","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com123","22/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","108.162.210.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1444","tito","752cd2a13024652b060a9571efe62565","tito@1234gmail.com","23/09/21","","1","","","./images/avatars/T.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1445","diclley hpco","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com2888","22/09/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","6","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1446","k3ndry3lm4l0","37972ae8502e76f681cd9b5b4bc9f279","gutierrezkendry14@gmail.com","22/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","14","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1447","guasonhp","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com9911","22/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","108.162.212.148","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1448","guasonhp0","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com9999","22/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","108.162.210.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1449","Itito","f7f760ac3cd7a9d4df6fc13d7669e414","Itito321@gmail.com","23/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1450","Santiixdd","8ba66dd54af330b7a11d784d819c4b2d","santialvarado12@hotmail.com","23/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1451","0S0","a581d58e234a2475a7f55bd900cbf53d","wolkon@hotmail.com","23/09/21","","1","","","https://i.imgur.com/JJMGOEV.jpg","./images/barras/b1.png","37","5","2","172.70.82.227","wolkon","GC","","","0","No especificado","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("1452","Squishy","cdaf3ae29fbf225a3534476c55472770","benthan.luis2008@gmail.com","23/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","78","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1453","yestequihp12","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com278","23/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1454","yetequiler ","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com567","23/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1455","ICristal hp","d4fef27f49e8b67c8886e042a78d8f5d","mayuyapedrasa@gmail.com","23/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","47","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1456","G A B O","a1bb07a2470daf3d2e3414f645032ec8","luchitovidela121@gmail.com","23/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","198.41.231.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1457","S a n t i i","8ba66dd54af330b7a11d784d819c4b2d","santi.alvarado11022007@hotmail.com","23/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","167","10","0","108.162.210.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1458","Hodryx","341a85d126d4166d9695b01480c52415","hodryxyt@gmail.com","23/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1459","ohdewi","7c59dd695e3623853581c34dccc592b6","stefania221287@gmail.com","23/09/21","","1","","","./images/avatars/O.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1460","AAngelito hp","f92f86bc7060abb1d5d1c6d6e0efd399","Angeles@gmail.com","23/09/21","","1","","","https://i.imgur.com/W9l4q6T.jpg","./images/barras/b1.png","8","0","8","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1461","Vanessa Hp","0e1e15f01c7c53843a64eebc9b4a21c9","Vanessa123@hotmail.com","24/09/21","","1","","","./images/avatars/V.png","./images/barras/b1.png","0","6","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1462","Andreina55","761a570156624af1e9784688516b76f7","Delgadoorleidimar@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","10","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1463","yetequiler12","5c89ed94bd14d60e2118af3ad288ce0f","lito91123@hotmail.com99118","24/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1464","lYojanderI","0ab0c5a299e29cbf855cbeb69d66f2c0","yonathan11128@hotmail.com","24/09/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","3","12","0","172.70.54.51","No especificado","No especificado","","","2","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1465","Pedro xdds","a1bb07a2470daf3d2e3414f645032ec8","saadvik@outlook.com","24/09/21","","1","","","https://i.imgur.com/4psRSxn.jpg","./images/barras/b1.png","0","0","0","198.41.231.74","No especificado","No especificado","","","0","Uruguai","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("1466","lAntiguo","ab4013610245d886c31cbf8d38b5756b","mariaemili737@gmail.com","24/09/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","72","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1467","kristaloki","0ce943ce9f781eae40b8df1f8583aecf","kristaloki.@hotmail.com","24/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","109","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1468","Papasoteriko","a890c9a76a35be9dd196c14316d65708","Elpepe@gmail.com","24/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","108.162.238.54","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1469","IKros","77b140683ecbcd5a3584aab9f2dc66fb","josechilee@hotmail.com","24/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","198.41.231.100","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1470","Luis Vera 12","5aa6793d6b7629e419b6c168682b0d84","neca8010+992@gmail.com","24/09/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","162.158.81.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1471","weres1","21cd9c514a10c0ca3aefd719187478f4","nino.rata.onorio@gmail.com","24/09/21","","1","","","./images/avatars/W.png","./images/barras/b1.png","0","0","0","162.158.81.131","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1472","soyluis","cbd1c0d472d58f70c8374343a3c824b8","nino.rata.onorsio@gmail.com","24/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","162.158.81.135","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1473","Dendroid1","40c5e225ed4b694ec9dadf622f2c5141","Akiramartin42160@gmail.com","24/09/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","162.158.187.176","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1474","AdrismarHp","e6b86424536079d721ee6921c8b25644","Adri@gmail.com","24/09/21","","1","","","https://i.imgur.com/onwMate.png","./images/barras/b1.png","33","16","2","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1475","Slayer kille","446fc72eff3d5b98ead914322907496e","yohanasdser2007@gmail.co","24/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1476","PedroHp@gmai","d82bcbea9c07ba92d9509886a9d774a4","Pedro@gmail.com","24/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1477","Kekoword","e6b86424536079d721ee6921c8b25644","Keko.@gmail.com","24/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1478","Walnel","e6b86424536079d721ee6921c8b25644","Walnel@gmail.com","24/09/21","","1","","","./images/avatars/W.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1479","miku234","00ec3ffcfa8dda7b40bbd51f98ba9192","arispreciadotenorio@gmail.com","24/09/21","","1","","","https://i.imgur.com/EkHU9Tk.jpg","./images/barras/b1.png","13","0","0","172.69.34.249","No especificado","No especificado","Santos ","","0","M�xico","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1480","Snow","e6b86424536079d721ee6921c8b25644","BZRP.@gmail.com","24/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1481","BZRP","f7f760ac3cd7a9d4df6fc13d7669e414","BZ.@gmail.com","24/09/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1482","holapendejo","446fc72eff3d5b98ead914322907496e","asdasdasdasdasd@gmail.com","24/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","","No","No","No","No","No");
INSERT INTO usuarios VALUES("1483","MAX","e6b86424536079d721ee6921c8b25644","MAX.@gmail.com","24/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1484","Josue ML","a480a2d07e55a1742071d6aa603e0a1f","Josue32830838@gmail.com","24/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","37","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1485","AMORCITO","446fc72eff3d5b98ead914322907496e","gerarcely.asdaa@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1486","editzapena29","ecc2a593b794e858cf28de2550441e67","jp515458@gmail.com","24/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1487","asdasd kille","446fc72eff3d5b98ead914322907496e","Pagm2asdasd557@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1488","Yisu","e6b86424536079d721ee6921c8b25644","Drac@gmail.com","24/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1489","olaa","446fc72eff3d5b98ead914322907496e","asdassdasdasdasd@gmail.com","24/09/21","","1","","","./images/avatars/O.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1490","BEBES","446fc72eff3d5b98ead914322907496e","Pagmasd2557@gmail.com","24/09/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","108.162.210.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1491","SKEREE","446fc72eff3d5b98ead914322907496e","yohanadsser2007@gmail.co","24/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","108.162.210.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1492","SKERE","446fc72eff3d5b98ead914322907496e","yohanser2007@gmail.co","24/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1493","asdasd","446fc72eff3d5b98ead914322907496e","Pedroaguiasdrre2557@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1494","asddsa","446fc72eff3d5b98ead914322907496e","Pedroaguirreds2557@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","108.162.212.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1495","SKARA","446fc72eff3d5b98ead914322907496e","Pedroagudsairre2557@gmail.com","24/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1496","asdwww","e6b86424536079d721ee6921c8b25644","as.@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1497","na","446fc72eff3d5b98ead914322907496e","Pedsroaguirrse2557@gmail.com","24/09/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1498","php","e6b86424536079d721ee6921c8b25644","Kep.@gmail.com","24/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1499","EL MEJOR","446fc72eff3d5b98ead914322907496e","Pedroaguiasdasdrre2557@gmail.com","24/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1500","k12s","e6b86424536079d721ee6921c8b25644","K12.@gmail.com","24/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1501","asdasda","446fc72eff3d5b98ead914322907496e","Pedroaguasdasdirre2557@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","108.162.212.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1502","Toshi","e6b86424536079d721ee6921c8b25644","Kst.@gmail.com","24/09/21","","1","","","./images/avatars/T.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1503","Eyelezz HP","c8789d86ab98f912e3d2ff499fa3be07","duvankiss20@gmail.com","24/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1504","Hp","e6b86424536079d721ee6921c8b25644","Hp.@gmail.com","24/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1505","Reguetom","e6b86424536079d721ee6921c8b25644","Regue.@gmail.com","24/09/21","","1","","","./images/avatars/R.png","./images/barras/b1.png","0","0","0","108.162.212.30","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1506","Estu Pida","ae4589bfb1bfb347893edfcbf886eda6","asjaskjasjaskjaskasja@hotmail.com","24/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1507","ala","446fc72eff3d5b98ead914322907496e","gerarcelydsa.aa@gmail.com","24/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1508","sda","446fc72eff3d5b98ead914322907496e","gedrarcasely.aa@gmail.com","24/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1509","XD1","e6b86424536079d721ee6921c8b25644","xd.@gmail.com","24/09/21","","1","","","./images/avatars/X.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1510","blb","446fc72eff3d5b98ead914322907496e","Pedrodsadasaguirre2557@gmail.com","24/09/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1511","lsd","446fc72eff3d5b98ead914322907496e","Pedroagudsadasirre2557@gmail.com","24/09/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","108.162.210.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1512","Gamer Boy","ae4589bfb1bfb347893edfcbf886eda6","weweqeqewq@gmail.com","24/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1513","xda1","e6b86424536079d721ee6921c8b25644","xdxi.@gmail.com","24/09/21","","1","","","./images/avatars/X.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1514","qw","446fc72eff3d5b98ead914322907496e","Pedroaguidasdasrre2557@gmail.com","24/09/21","","1","","","./images/avatars/Q.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1515","Mongolico","ae4589bfb1bfb347893edfcbf886eda6","aksjjaksdaksjda@gmail.com","24/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1516","wq","446fc72eff3d5b98ead914322907496e","Pedroagusaidrre2557@gmail.com","25/09/21","","1","","","./images/avatars/W.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1517","Mandale","e9c0f65d2553a0e0e2e4a75a814d0155","dadasfkasdkoa@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1518","Elwebo","ae4589bfb1bfb347893edfcbf886eda6","sjakjksadjksd@gmail.com","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1519","gatita1","e9c0f65d2553a0e0e2e4a75a814d0155","dsadadf@gmail.com","25/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1520","bru","446fc72eff3d5b98ead914322907496e","Pedrdsaoaguirre2557@gmail.com","25/09/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","108.162.212.4","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1521","Daniel F","cb35d4f56666bb5e7c8b7024988ac278","danielf@email.com","25/09/21","","1","","","https://i.imgur.com/pL0Symk.jpg","./images/barras/b1.png","0","0","0","172.70.82.227","Daniel","Centeno","Te amo y t� lo sabes..","","2","No especificado","0","0","0","No","No","Si","No","No","");
INSERT INTO usuarios VALUES("1522","X2x","e6b86424536079d721ee6921c8b25644","x2x.@gmail.com","25/09/21","","1","","","./images/avatars/X.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1523","ELPEPEGAY","7c8b5ba36b4ac3066ec8c622573d2c1d","NenafWWlow11@gmail.comW","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1524","Santi","e6b86424536079d721ee6921c8b25644","SANTI.@gmail.com","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1525","N E N A F L","afe522939e07a01ce9a47c1e7659f8e4","Nenaflow11@gmail.com","25/09/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1526","XDA","e6b86424536079d721ee6921c8b25644","xd2k.@gmail.com","25/09/21","","1","","","./images/avatars/X.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1527","FRANSISBELSD","956f0acde31a9e25bb6bca12bb0bf7fd","francizzz@gmail.com","25/09/21","","1","","","./images/avatars/F.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1528","teamomama22","eb6c1de231183077c448dceaf6acffd5","puramotaxd@gmail.com","25/09/21","","1","","","./images/avatars/T.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1529","juansebas","62db99c481ed1c69bc104bac8604d882","purawmotaxd@gmail.com","25/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1530","Regueton","e6b86424536079d721ee6921c8b25644","Regueton.@gmail.com","25/09/21","","1","","","./images/avatars/R.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1531","mineflow","62db99c481ed1c69bc104bac8604d882","dpurawmotaxd@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1532","Aniis","dfcede24b4748943339a6dcc5d50f4c9","aniis@email.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1533","neneflow","62db99c481ed1c69bc104bac8604d882","pueramotaxd@gmail.com","25/09/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1534","ZARCORT","e6b86424536079d721ee6921c8b25644","ZARCORT.@gmail.com","25/09/21","","1","","","./images/avatars/Z.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1535","neneoflow","62db99c481ed1c69bc104bac8604d882","puramotassxd@gmail.com","25/09/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1536","nenitoflow","62db99c481ed1c69bc104bac8604d882","Nenaflowww11@gmail.com","25/09/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1537","Cancer","62547bfc10f2c7e1149ba7cd77630d50","Bero.@gmail.com","25/09/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1538","soydeIIdiego","62db99c481ed1c69bc104bac8604d882","Ne3nafWWlow11@gmail.comW","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1539","elbbriko","f2b95e00d848178b8355cfd461feb730","puramwwotaxd@gmail.com","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1540","Z.o","62547bfc10f2c7e1149ba7cd77630d50","z.o@gmail.com","25/09/21","","1","","","./images/avatars/Z.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1541","grilloladuda","f2b95e00d848178b8355cfd461feb730","purawmddotaxd@gmail.com","25/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1542","YSY","62547bfc10f2c7e1149ba7cd77630d50","ysys.@gmail.com","25/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1543","poncholaduda","f2b95e00d848178b8355cfd461feb730","dwpurawmotaxd@gmail.com","25/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1544","chocesad","f2b95e00d848178b8355cfd461feb730","dpudrawmotaxd@gmail.com","25/09/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1545","magnufessapo","f2b95e00d848178b8355cfd461feb730","purawmotwwaxd@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1546","elpepe3de","f2b95e00d848178b8355cfd461feb730","NenaeefWWlow11@gmail.comW","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1547","dfcqce","62db99c481ed1c69bc104bac8604d882","Nendafdlow11@gmail.com","25/09/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1548","Rafita","62547bfc10f2c7e1149ba7cd77630d50","Rafa.@gmail.com","25/09/21","","1","","","./images/avatars/R.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1549","nenepepe","f2b95e00d848178b8355cfd461feb730","pu33rawmotaxd@gmail.com","25/09/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","108.162.210.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1550","francisteamo","f2b95e00d848178b8355cfd461feb730","NenafWWlowe11@gmail.comW","25/09/21","","1","","","./images/avatars/F.png","./images/barras/b1.png","0","0","0","108.162.210.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1551","Homero","e6b86424536079d721ee6921c8b25644","Homer.@gmail.com","25/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1552","N E N Asss","f2b95e00d848178b8355cfd461feb730","purawddmotaxd@gmail.com","25/09/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1553","Meromero","e6b86424536079d721ee6921c8b25644","Mer.@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1554","O2.s","e6b86424536079d721ee6921c8b25644","22h.@gmail.com","25/09/21","","1","","","./images/avatars/O.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1555","Yusu","e6b86424536079d721ee6921c8b25644","Yupi.@gmail.com","25/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1556","Mars","e6b86424536079d721ee6921c8b25644","M.R.O.@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1557","sssssde3","62db99c481ed1c69bc104bac8604d882","edede@gmail.com","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","108.162.212.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1558","hgbgbdtg","f2b95e00d848178b8355cfd461feb730","frhhcizzz@gmail.com","25/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1559","francistea","f2b95e00d848178b8355cfd461feb730","dwpurawmddotaxd@gmail.com","25/09/21","","1","","","./images/avatars/F.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1560","S21","e6b86424536079d721ee6921c8b25644","sd.@gmail.com","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1561","yuselis","e6b86424536079d721ee6921c8b25644","yuselis.@gmail.com","25/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1562","Jos&eacute;","e6b86424536079d721ee6921c8b25644","Jose.@gmail.com","25/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1563","Manoo","dfcede24b4748943339a6dcc5d50f4c9","mano@email.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1564","qlq","446fc72eff3d5b98ead914322907496e","Pedroaguirrddde2557@gmail.com","25/09/21","","1","","","./images/avatars/Q.png","./images/barras/b1.png","0","0","0","108.162.210.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1565","qlqq","446fc72eff3d5b98ead914322907496e","Pedroqaguirre2557@gmail.com","25/09/21","","1","","","./images/avatars/Q.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1566","alaaaa","446fc72eff3d5b98ead914322907496e","Pedroadsadaguirre2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1567","lola","446fc72eff3d5b98ead914322907496e","Peaaqdroaguirrde2557@gmail.com","25/09/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","108.162.210.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1568","mamon","446fc72eff3d5b98ead914322907496e","Psedroaguiarre2d557@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1569","mamo","446fc72eff3d5b98ead914322907496e","gerarcely.dsaaa@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","108.162.210.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1570","mamama","446fc72eff3d5b98ead914322907496e","Paqgm25ds57@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","108.162.210.225","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1571","Ipixell","b5d4ca134f5caead4f56e0e006353cc5","karendealejandro@gmail.com","25/09/21","","1","","","https://i.imgur.com/RH8vMiF.jpg","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","Oli, soy pixi","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1572","ALVE","446fc72eff3d5b98ead914322907496e","Pagm255SSAQ7@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","108.162.212.144","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1573","a&ntilde;v","446fc72eff3d5b98ead914322907496e","Pedroagufdssfdairre2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1574","alov","446fc72eff3d5b98ead914322907496e","Pagmqaq2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1575","alumbrame","446fc72eff3d5b98ead914322907496e","qPedroaguirrqe2557q@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1576","alop","446fc72eff3d5b98ead914322907496e","Pedroaalopguirre2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.69.202.43","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1577","alaveve","446fc72eff3d5b98ead914322907496e","gerarcalvavely.aa@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1578","plomoe","446fc72eff3d5b98ead914322907496e","Pagm2dasasd557@gmail.com","25/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1579","Johaly Navas","703b34dfc11c4590129f695601cd2a64","Johanani@95gmail.com","25/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1580","plomot","446fc72eff3d5b98ead914322907496e","Pedroasdaasdguirre2557@gmail.com","25/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1581","J O H A L Y","703b34dfc11c4590129f695601cd2a64","dailismar04@gmail.com","25/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1582","alpol","446fc72eff3d5b98ead914322907496e","Pedroalpolaguirre2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1583","KekaCEte","f2b95e00d848178b8355cfd461feb730","keksksks@gmail.com","25/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1584","alaveee","446fc72eff3d5b98ead914322907496e","Pedroaguirre112557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1585","aloplop","446fc72eff3d5b98ead914322907496e","Pedroaguirre262557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1586","aloplopa","446fc72eff3d5b98ead914322907496e","gerarcaloppplaely.aa@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","108.162.210.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1587","ploploploplo","446fc72eff3d5b98ead914322907496e","gerarcesasdasdly.aa@gmail.com","25/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1588","aplao","446fc72eff3d5b98ead914322907496e","Pedroaguiralaplaore2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","108.162.210.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1589","alal","446fc72eff3d5b98ead914322907496e","Pedrdsadasoaguirre2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1590","andrea01","da5cb90183ad89b5107fe0049494b5e9","wilkelys_jamerson@gmail.com","25/09/21","","1","","","https://i.imgur.com/vTy9oF4.jpg","./images/barras/b1.png","61","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1591","aploploa","446fc72eff3d5b98ead914322907496e","Pedroaguasdirre2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1592","apalo","446fc72eff3d5b98ead914322907496e","Pedroaagaoaauirre2557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.54.103","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1593","ray da","446fc72eff3d5b98ead914322907496e","Pagm2rat557@gmail.com","25/09/21","","1","","","./images/avatars/R.png","./images/barras/b1.png","0","0","0","108.162.210.181","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1594","alanjr","da5cb90183ad89b5107fe0049494b5e9","willsyjamerson@hotmail.com","25/09/21","","1","","","https://i.imgur.com/7Ds980L.jpg","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1595","alpoalpo","446fc72eff3d5b98ead914322907496e","Pagm2alpoalpo557@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1596","kamilo2133","1a84a8d528dbd8537ff9881741fb9443","kamilo20sannchez@gmail.coma","25/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","31","8","1","172.70.54.107","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1597","Sarco","e6b86424536079d721ee6921c8b25644","queso.@gmail.com","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1598","Hero","e6b86424536079d721ee6921c8b25644","elmero.@gmail.com","25/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1599","Marase","e6b86424536079d721ee6921c8b25644","Mar.@gmail.com","25/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1600","AAngelito hw","58d911b799c498484897c97f66881a80","assaas@gmail.com","25/09/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","108.162.210.179","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1601","olo","446fc72eff3d5b98ead914322907496e","Pedroaolologuirre2557@gmail.com","25/09/21","","1","","","./images/avatars/O.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1602","elpepeplo","446fc72eff3d5b98ead914322907496e","Pagm2elelpee557@gmail.com","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","108.162.210.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1603","elpepepepelo","446fc72eff3d5b98ead914322907496e","Pedroagdsadaslepuirre2557@gmail.com","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1604","Slayer","e6b86424536079d721ee6921c8b25644","Slayer09.@gmail.com","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1605","Camila","e6b86424536079d721ee6921c8b25644","Cami.@gmail.com","25/09/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","0","0","0","108.162.210.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1606","gildoser","446fc72eff3d5b98ead914322907496e","Pedroa1255guirre2557@gmail.com","25/09/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1607","Perchita","57f801caebb65bbe09b3da82aeb1dcb8","Elqueloleaesmrc@pato.com","25/09/21","","1","","","https://i.imgur.com/QEWKjiS.jpg","./images/barras/b1.png","46","0","0","172.70.82.81","Perchita","Yonkiland","I Love Vagina","","2","EUA","0","0","0","No","Si","Si","Si","No","");
INSERT INTO usuarios VALUES("1608","elperropiche","446fc72eff3d5b98ead914322907496e","gerarcelelpperoy.aa@gmail.com","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1609","101dalmatas ","446fc72eff3d5b98ead914322907496e","Pagm2dasdadsadas557@gmail.com","25/09/21","","1","","","./images/avatars/1.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1610","elpepepea","446fc72eff3d5b98ead914322907496e","Pagm255dsadadas7@gmail.com","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1611","Pilus","e6b86424536079d721ee6921c8b25644","piluse.@gmail.com","25/09/21","","1","","","./images/avatars/P.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1612","eso","e6b86424536079d721ee6921c8b25644","es.@gmail.com","25/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1613","XD2","e6b86424536079d721ee6921c8b25644","xd2.@gmail.com","25/09/21","","1","","","./images/avatars/X.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1614","GHOSTJUNIOR","05a94a3d61de2e9e7e753a7a24ade622","yohansencler1@gmail.com","25/09/21","","1","","","https://i.imgur.com/VScVaGO.jpg","./images/barras/b1.png","51","0","0","108.162.210.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1615","lDari1","b6d4f39069c0d00e0f3425b0afcb1406","darielpena811@gmail.com","26/09/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","12","0","0","108.162.210.157","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1616","Bronce","f7f760ac3cd7a9d4df6fc13d7669e414","Gleidysmardiaz@gmail.com","25/09/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","108.162.210.153","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1617","solo","f7f760ac3cd7a9d4df6fc13d7669e414","jhudelisromero@hotmail.com","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1618","Jesusaaaa","f7f760ac3cd7a9d4df6fc13d7669e414","yonnys-2018@hotmail.com","25/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1619","lkl","f7f760ac3cd7a9d4df6fc13d7669e414","Dionnys_31@gmail.com","25/09/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1620","Bb","f7f760ac3cd7a9d4df6fc13d7669e414","daymarahb@hotmIL.COM","25/09/21","","1","","","./images/avatars/B.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1621","Marialex","beed216506ac25af8b3358ce6b8ee931","mariaalejandra@gmail.com","25/09/21","","1","","","https://i.imgur.com/EEQIX5m.jpg","./images/barras/b1.png","0","0","0","172.70.82.81","Maria Alejandra","No especificado","?? ","","0","No especificado","0","0","0","No","No","Si","No","No","");
INSERT INTO usuarios VALUES("1622","saray EH","db6cf5438ee8d4f89eb04bd613b3d03a","saray@hotmail.com","25/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","13","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1623","Hodryx BZF","e9d8c56d90fe9a9098acbb6d2b0cc9f8","hodryzjesus@gmail.com","26/09/21","","1","","","./images/avatars/H.png","./images/barras/b1.png","32","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1624","Mattiaz b","cc8f7d00ace8da7e752e36a0d513f8e1","jhonayfre112233@gmail.com","26/09/21","","1","","","https://i.imgur.com/YJJTqA7.jpg","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","MALDITO HIJO DE PUTA CHISMOSO","","0","No especificado","0","0","0","No","Si","Si","No","No","");
INSERT INTO usuarios VALUES("1625","milo 222","4650109a630d98a83731e83008e7ca81","marcoAT@gmail.com","26/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1626","ICamila12","bd20f52add642af57bc9c0d6dd0e12d7","elreygardona1222345@gmil.com","26/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1627","jesus2010DPR","afa5c70c9230b9b38a42f6174dc603f1","jesus_@hotmail.es","26/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1628","Valentina vv","250b099ecf366eb0a1e9c9cbdc976be5","edgarascanio08@hotmail.com","26/09/21","","1","","","./images/avatars/V.png","./images/barras/b1.png","35","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1629","comosite","7654f78e5776b8ad798cb41052aae8df","Yonito1234@gmail.com","26/09/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1630","Dionnys1212","f7f760ac3cd7a9d4df6fc13d7669e414","Dionnys_31@gmail.comff","26/09/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1631","chuo17","2b07029134d7dea9575ac7ff9282aa72","moises_boyer@gmail.com","27/09/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","1","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1632","RachelA","c4d609492426d3ee4c50d5817d227e60","abrecuentapara@gmail.com","27/09/21","","1","","","https://i.imgur.com/C3tJMgI.jpg","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1633","Dani08","9cac4234f30dcc4c3fb90fed802a3e17","Dani08@gmail.com","27/09/21","","1","","","./images/avatars/D.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1634","Camiladm","b81d8c2c9e435142871a6393ced66f44","Camiladm@gmail.com","28/09/21","","1","","","./images/avatars/C.png","./images/barras/b1.png","8","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1635","Gabriela 2020","51b43ca91eabdb3665edbcb71b0cd436","raymonyull2@outlook.com","27/09/21","","1","","","https://i.imgur.com/ClEcyDH.jpg","./images/barras/b1.png","0","0","0","172.70.54.107","No especificado","No especificado","","","0","Venezuela","0","0","0","No","No","No","Si","No","");
INSERT INTO usuarios VALUES("1636","ZUB5","9bd04ae7358d0bf741579f03c7735604","yeinyyulieth@hotmail.com","27/09/21","","1","","","./images/avatars/Z.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1637","zubb55","9bd04ae7358d0bf741579f03c7735604","duvanrios474@gmail.com","27/09/21","","1","","","./images/avatars/Z.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1638","sub","9bd04ae7358d0bf741579f03c7735604","paralassalasfree1@gmail.com","27/09/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1639","matii","9bd04ae7358d0bf741579f03c7735604","juancarlos@gmail.com","27/09/21","","1","","","./images/avatars/M.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1640","Kroxx","4195eb22a4311ded1e2067645fd6b04b","alejandra10garcia@hotmail.com","27/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","0","0","0","172.70.82.227","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1641","ISamuel HD","9d1d70a2eff71867c7246cd592263e42","Samuet@gmail.com","27/09/21","","1","","","https://i.imgur.com/b8Wz9y0.jpg","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","??Samuel?? ","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1642","Rubius hp","81e18b0bf125c9dfb68e86abf31ab99f","Leonardo123@hotmail.com","29/09/21","","1","","","https://i.imgur.com/U5T0gKK.gif","./images/barras/b1.png","39","0","0","198.41.231.200","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1643","Yukari1","d8c3ff9e2393ccc364550ed35a203a9f","yukari1@gmail.com","28/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1644","Yukari11","78cf1b817ad404ea3bf4e703132431dc","yukari11@gmail.com","28/09/21","","1","","","./images/avatars/Y.png","./images/barras/b1.png","0","0","0","172.70.54.51","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1645","IAnaG","a6bab5ce99c7f8e9721b96bc57ba5f25","IAnaG@homail.com","28/09/21","","1","","","./images/avatars/I.png","./images/barras/b1.png","13","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1646","Kami1263","2376eca02322b76c77627340c38c630d","lamami_870@hotmail.com","28/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","5","0","0","108.162.210.149","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1647","jeusus","dfcede24b4748943339a6dcc5d50f4c9","carolainguerrero20@gmail.com","28/09/21","","1","","","./images/avatars/J.png","./images/barras/b1.png","0","0","5","108.162.210.237","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1648","kekocity","9cac4234f30dcc4c3fb90fed802a3e17","jesus_@hotmail.com","29/09/21","","2","","","./images/avatars/K.png","./images/barras/b1.png","10","0","0","172.70.82.227","jesus david","pe�a rodriguez","ser popular en kekocity","","1","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1649","Kamila293932","2376eca02322b76c77627340c38c630d","lula123@gmail.com","30/09/21","","1","","","./images/avatars/K.png","./images/barras/b1.png","15","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1650","Anndres","7b0ac6d172a058541e9bf279e0a930e4","lSama271994vega@gmail.com","30/09/21","","1","","","https://i.imgur.com/DFDOPXJ.jpg","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1651","Enyer Hp","a3903ac313df432909e98bc72c8da368","yeliyeli1@hotmail.com","30/09/21","","1","","","./images/avatars/E.png","./images/barras/b1.png","16","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","");
INSERT INTO usuarios VALUES("1652","naye_fashion","f6f9ff7edcced68cd88be7c123d0472a","nayeliandreina.n.a.v.s@gmail.com","01/10/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","17","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1653","Soruco","ba8f96b279eebaae4a01571482be3261","carasd@gg.com","13/10/21","","1","","","./images/avatars/S.png","./images/barras/b1.png","0","0","0","::1","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1654","Rututu","ba8f96b279eebaae4a01571482be3261","caroasdasd@gmail.com","13/10/21","","1","","","./images/avatars/R.png","./images/barras/b1.png","0","0","0","172.70.82.241","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1655","AuronPlay","ba8f96b279eebaae4a01571482be3261","test@test.com","13/10/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","0","0","0","172.70.54.139","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1656","Gaston 1D","f298c6f1b7c0ef2a9a1f566b731fb925","andriusshevchenko@hotmail.com","13/10/21","","1","","","./images/avatars/G.png","./images/barras/b1.png","0","0","0","108.162.237.171","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1657","AlejandroPZK","213b96bca5151e9c898759fd52ac7845","alebefede@gmail.com","13/10/21","","1","","","./images/avatars/A.png","./images/barras/b1.png","8","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1658","LuLu LuLu","695d954c94315df85299eea6570a4912","katykatiski@hotmail.com","13/10/21","","1","","","./images/avatars/L.png","./images/barras/b1.png","0","0","0","198.41.231.74","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1659","1957","d6305746923cee993aa948a8cb125e12","abreuicson@gmail.com","13/10/21","","1","","","./images/avatars/1.png","./images/barras/b1.png","0","0","0","172.70.82.81","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1660","Nenyer2","4ab1d000598a4fec17f34a764e9e918e","aksdkad@ee-i.kk","14/10/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");
INSERT INTO usuarios VALUES("1661","Nenyer3","446fc72eff3d5b98ead914322907496e","nenyer@eee.ioooxxx","14/10/21","","1","","","./images/avatars/N.png","./images/barras/b1.png","0","0","0","172.70.82.195","No especificado","No especificado","","","0","No especificado","0","0","0","No","No","No","No","No","No");



CREATE TABLE `usuarios_amigos` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user` varchar(180) DEFAULT NULL,
  `user_amigo` varchar(180) DEFAULT NULL,
  `estado_solicitud` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




CREATE TABLE `usuarios_mensajes_privados` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_enviado` varchar(180) DEFAULT NULL,
  `rango` varchar(18) NOT NULL DEFAULT 'Usuario',
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto` varchar(180) DEFAULT NULL,
  `mensaje` varchar(500) DEFAULT NULL,
  `fecha` varchar(200) NOT NULL,
  `razon` varchar(255) NOT NULL DEFAULT '(No disponible)',
  `organizador` varchar(255) NOT NULL DEFAULT '(No disponible)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO usuarios_mensajes_privados VALUES("1","IS o f i a","Moderador","Yanfe","Fichas de Regalo","<h5> Has recibido <img src=https://kuinz-fansite.space/images/fichas.png> 8 Fichas de IS o f i a (<b>Moderador de Kuinz</b>) como premiaci�n del evento cerradura, organizado por  IS o f i a.</h5>","2021-10-13","cerradura","IS o f i a");
INSERT INTO usuarios_mensajes_privados VALUES("2","ZZOE","Moderador","Yonnii","Fichas de Regalo","<h5> Has recibido <img src=https://kuinz-fansite.space/images/fichas.png> 6 Fichas de ZZOE (<b>Moderador de Kuinz</b>) como premiaci�n del evento Evento: Dado Kick, organizado por  ZZOE.</h5>","2021-10-13","Evento: Dado Kick","ZZOE");
INSERT INTO usuarios_mensajes_privados VALUES("3","IS o f i a","Moderador","Yonnii","Fichas de Regalo","<h5> Has recibido <img src=https://kuinz-fansite.space/images/fichas.png> 8 Fichas de IS o f i a (<b>Moderador de Kuinz</b>) como premiaci�n del evento cerradura, organizado por  lSheryl.</h5>","2021-10-13","cerradura","lSheryl");
INSERT INTO usuarios_mensajes_privados VALUES("7","ZZOE","Moderador","ByDiego","Fichas de Regalo","<h5> Has recibido <img src=https://kuinz-fansite.space/images/fichas.png> 7 Fichas de ZZOE (<b>Moderador de Kuinz</b>) como premiaci�n del evento Evento: Carrera de sillas, organizado por  AleeeeeC.</h5>","2021-10-14","Evento: Carrera de sillas","AleeeeeC");
INSERT INTO usuarios_mensajes_privados VALUES("6","ZZOE","Moderador","wllamhp","Fichas de Regalo","<h5> Has recibido <img src=https://kuinz-fansite.space/images/fichas.png> 5 Fichas de ZZOE (<b>Moderador de Kuinz</b>) como premiaci�n del evento Evento: Dado Kick, organizado por  Dracki.</h5>","2021-10-13","Evento: Dado Kick","Dracki");
INSERT INTO usuarios_mensajes_privados VALUES("8","ZZOE","Moderador","AlejandroPZK","Fichas de Regalo","<h5> Has recibido <img src=https://kuinz-fansite.space/images/fichas.png> 8 Fichas de ZZOE (<b>Moderador de Kuinz</b>) como premiaci�n del evento Evento: Dado Kick, organizado por  EVA18 .</h5>","2021-10-14","Evento: Dado Kick","EVA18 ");
INSERT INTO usuarios_mensajes_privados VALUES("9","ZZOE","Moderador","ByDiego","Fichas de Regalo","<h5> Has recibido <img src=https://kuinz-fansite.space/images/fichas.png> 5 Fichas de ZZOE (<b>Moderador de Kuinz</b>) como premiaci�n del evento Evento: Dado Kick, organizado por  AleeeeeC.</h5>","2021-10-14","Evento: Dado Kick","AleeeeeC");



CREATE TABLE `usuarios_placas` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) DEFAULT NULL,
  `code_placa` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

INSERT INTO usuarios_placas VALUES("87","Alfonso","Bloques de Ladrillo");
INSERT INTO usuarios_placas VALUES("220","lYojanderI","Hamaca Magenta");



CREATE TABLE `usuarios_placasdev` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) NOT NULL,
  `code_placa` varchar(180) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

INSERT INTO usuarios_placasdev VALUES("1","Daddy Yankee","Huevo Reina");
INSERT INTO usuarios_placasdev VALUES("3","Leon","Fondo Arcoiris");
INSERT INTO usuarios_placasdev VALUES("41","Magnifined","Baldosa Rob�tica 1x1");
INSERT INTO usuarios_placasdev VALUES("53","Dendroid","Luz");
INSERT INTO usuarios_placasdev VALUES("50","enyer18","Divisor Negro 1x2");
INSERT INTO usuarios_placasdev VALUES("51","KENDERHP","Baldosa Rob�tica 1x1");
INSERT INTO usuarios_placasdev VALUES("49","diegoleoner ","Baldosa Rob�tica 1x1");



CREATE TABLE `usuarios_placase` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `code_placa` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;




CREATE TABLE `usuarios_regalos` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `user_enviado` varchar(180) DEFAULT NULL,
  `user_recibido` varchar(180) DEFAULT NULL,
  `asunto_regalo` varchar(200) NOT NULL,
  `mensaje_regalo` varchar(200) NOT NULL,
  `fecha` varchar(200) NOT NULL,
  `code_placa` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO usuarios_regalos VALUES("1","Jadi007","Carlos","(Sin asunto)","Holaaa","2021-07-05","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("2","jaccierismar","lCristhian","(Sin asunto)","50 fichas","2021-09-12","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("3","lCristhian","jaccierismar","(Sin asunto)","50 fichas","2021-09-12","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("4","lCristhian","pedasit de a","XD","Rares","2021-09-12","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("5","pedasitdea12","diclley hpco","(Sin asunto)","","2021-09-19","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("6","pedasitdea12","diclley hpco","(Sin asunto)","20 puntos","2021-09-19","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("7","pedasitdea12","diclley hpco","(Sin asunto)","","2021-09-19","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("8","pedasitdea12","diclley hpco","(Sin asunto)","todo","2021-09-19","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("9","IBrayan","IIDiego","(Sin asunto)","hola","2021-09-21","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("10","IMatiaz","lYojanderI","1 ficha para lYojanderI","yiap","2021-09-24","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("11","gabriel 800","lChino","(Sin asunto)meem","pupu","2021-09-24","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("12","ZZOE","Elite","(Sin asunto)",".","2021-09-27","Pase Elite [Tienda Exclusiva]");
INSERT INTO usuarios_regalos VALUES("13","ZZOE","Elite","(Sin asunto)","","2021-09-27","TIket de adopci�n");
INSERT INTO usuarios_regalos VALUES("14","ZZOE","Elite","(Sin asunto)","","2021-09-27","Sombrilla Roja");
INSERT INTO usuarios_regalos VALUES("15","ZZOE","Elite","(Sin asunto)","","2021-09-27","Sombrilla Azul");
INSERT INTO usuarios_regalos VALUES("16","Kami1263","Franysbel","(Sin asunto)","PERRA DAME FICHAS","2021-09-28","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("17","enyer18","IDylan Hp","(Sin asunto)","","2021-09-28","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("18","enyer18","IDylan Hp","(Sin asunto)aa","","2021-09-28","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("19","enyer18","IDylan Hp","sasasasas","sasasa","2021-09-28","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("20","enyer18","IDylan Hp","sasasasas","sasasa","2021-09-28","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("21","tomasramallo","Franysbel","as","chupame las bolas y te vas :v
","2021-09-29","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("22","tomasramallo","Franysbel","as","chupame las bolas y te vas :v
","2021-09-29","-- Selecciona algo de tu inventario para regalar --");
INSERT INTO usuarios_regalos VALUES("23","God Morningstar","IWalnel","HOLA AMIGO ESPERO Q TU INTERNET LLEGUE RAPIDO TE QUIERO MUCHO","HOLA AMIGO ESPERO Q TU INTERNET LLEGUE RAPIDO TE QUIERO MUCHO","2021-10-03","-- Selecciona algo de tu inventario para regalar --");



CREATE TABLE `votos` (
  `id` int(9) unsigned NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `tipo` varchar(180) DEFAULT NULL,
  `noticia_id` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO votos VALUES("0","yojander dav","megusta","0");

