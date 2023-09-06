<?php
   require ('../global.php');
   session_start();
   if($_SESSION["logeado"] != "SI"){
   header ("Location: ../index.php");
   exit;
   }
   ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <?php echo"$meta"; ?>
      <title><?php echo $lang[268]; ?> - <?php echo"$nameweb"; ?></title>
      <!-- Favicon -->
      <link rel="icon" type="image/png" href="../images/favicon.png">

      <!-- Cierre de Favicon -->
      <!-- // Stylesheets // -->
      <link href="../../styles/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="../styles/js/sweetalert.min.js"></script>
      <link rel="stylesheet" type="text/css" href="../stylescss/sweetalert.css">
      <link rel="stylesheet" type="text/css" href="style.css">
      <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans" rel="stylesheet">
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.miRn.js"></script>
      <![endif]-->
      <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
      <link rel="stylesheet" href="./../styles/css/sorac.css?<?php echo filemtime('./../styles/css/sorac.css'); ?>">
      <script type="text/javascript" src="./../styles/js/app.js?<?php echo filemtime('./../styles/js/app.js'); ?>"></script>
      <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
         <script>
            $( function() {
            $( "#draggable" ).draggable();
            } );
         </script>
   </head>
   <body>
