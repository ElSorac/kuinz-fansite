<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <?php echo"$meta"; ?>
      <title><?php echo"$nameweb"; ?> - Fansite KekoCity</title>
      <!-- Favicon -->
      <link rel="icon" type="image/png" href="/images/favicon.png">
      <!-- Cierre de Favicon -->
      <!-- // Stylesheets // -->
      
      <!-- Option 1: Include in HTML -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
      <link href="../../styles/css/bootstrap.min.css" rel="stylesheet">
      <link href="styles/css/nav-styles.css" rel="stylesheet">
      <link rel="stylesheet" href="styles/css/sorac.css?<?php echo filemtime('./styles/css/sorac.css'); ?>">
      
      <script type="text/javascript" src="./styles/js/app.js?<?php echo filemtime('./styles/js/app.js'); ?>"></script>

      <script src='https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js'></script>
      <script src="/styles/js/cursor.min.js"></script>
      <script src="/styles/js/jquery.min.js"></script>
      <script src="/styles/js/sweetalert2.min.js"></script>

      <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="styles/css/sweetalert.css">
      <?php 
         if($utilidad_fonts == 1){
         ?>
      <script type="text/javascript">
         function Toggle(div_id){
             var div = document.getElementById(div_id);
             if(div.style.display == "block")
             {
                 div.style.display = 'none';
             } else {
                 div.style.display = 'block';
             }
           if(div == "overlay") {
             scroll(0,0);
           }
         }
         
         function Show(div_id){
             var div = document.getElementById(div_id);
             if(div.style.display == "none")
             {
                 div.style.display = 'block';
             }
         }
         
         function Hide(div_id){
             var div = document.getElementById(div_id);
             if(div.style.display == "block")
             {
                 div.style.display = 'none';
             }
         }
      </script>
      <style type="text/css">
         a {
         color:#FFF;
         cursor:pointer;
         text-decoration:none;
         }
         a:hover {
         text-decoration:underline;
         }
         #top {
         width:100%; 
         position:fixed; 
         top:0; 
         left:0; 
         height:78px; 
         -webkit-box-shadow: 0 5px 10px rgba(0,0,0,.2);
         -moz-box-shadow: 0 5px 10px rgba(0,0,0,.2);
         box-shadow: 0 5px 10px rgba(0,0,0,.2);
         }
         #header {
         width:100%;
         height:250px;
         background:url(/images/head/bg_skyline_of_london.gif) center -290px;
         -webkit-box-shadow: 0 5px 10px rgba(0,0,0,.2);
         -moz-box-shadow: 0 5px 10px rgba(0,0,0,.2);
         box-shadow: 0 5px 10px rgba(0,0,0,.2);
         }
         #header_lay_01 {
         width:100%;
         height:250px;
         background:url(/images/head/header_layer.gif) center bottom repeat-x;
         }
         #header_lay_02 {
         width:100%;
         height:250px;
         background:url(/images/head/header_layer.gif) center bottom repeat-x;
         }
         #header_lay_04 {
         background:url(/images/head/header_layer.gif);
         border:hidden;
         border-radius: 4px; 
         -webkit-border-radius: 4px; 
         -moz-border-radius: 4px;
         color:#FFF;
         margin:10px;
         padding:5px;
         max-width:455px;
         float:left;
         }
         textarea {
         background:#F7F7F7;
         color:#666;
         font-family:Verdana, Geneva, sans-serif;
         padding:5px;
         border: 1px #999 solid;
         border-radius: 4px; 
         -webkit-border-radius: 4px; 
         -moz-border-radius: 4px;
         }
         textarea:focus {
         color:#000;
         }
         input[type="text"] {
         background:#F7F7F7;
         color:#666;
         font-family:Verdana, Geneva, sans-serif;
         padding:5px; 
         padding-top:4px;
         padding-bottom:4px;
         border: 1px #CCC solid;
         border-radius: 4px; 
         -webkit-border-radius: 4px; 
         -moz-border-radius: 4px;
         }
         input[type="text"]:focus {
         color:#000;
         }
         textarea {
         background:#F7F7F7;
         color:#666;
         font-family:Verdana, Geneva, sans-serif;
         padding:5px; 
         padding-top:4px;
         padding-bottom:4px;
         border: 1px #CCC solid;
         border-radius: 4px; 
         -webkit-border-radius: 4px; 
         -moz-border-radius: 4px;
         }
         textarea:focus {
         color:#000;
         }
         .box_top {
         float:left;
         margin-top:5px;
         height:5px;
         }
         .box_top_918 {
         background-image:url(/images/head/box_top_918.png);
         width:918px;
         }
         .box_top_148 {
         background-image:url(/images/head/box_top_148.png);
         width:148px;
         }
         .box_center {
         float:left;
         background-image:url(/images/head/box_center.png);
         background-position:right;
         background-repeat:repeat-y;
         padding-left:5px;
         padding-right:7px;
         }
         .box_center_918 {
         width:918px;
         }
         .box_center_148 {
         width:148px;
         }
         .box_bottom {
         float:left;
         height:7px;
         }
         .box_bottom_918 {
         background-image:url(/images/head/box_bottom_918.png);
         width:918px;
         }
         .box_bottom_148 {
         background-image:url(/images/head/box_bottom_148.png);
         width:148px;
         }
         /* TOP - BACKGROUNDS */
         .top_bg_10 {
         background-image:url();
         background-position:right -235px;
         color:#FFF;
         }
         /* TOP - WIDTH */
         .top_918 {
         border:1px hidden; 
         border-radius: 4px; 
         -webkit-border-radius: 4px;
         -moz-border-radius: 4px;  
         width:906px; 
         padding:5px; 
         max-height:25px; 
         overflow:hidden;
         font-weight:bold;
         }
         .top_148 {
         border:1px hidden; 
         border-radius: 4px; 
         -webkit-border-radius: 4px;
         -moz-border-radius: 4px;  
         width:136px; 
         padding:5px; 
         max-height:25px; 
         overflow:hidden;
         font-weight:bold;
         }
         #show_div {
         width:500px; 
         position:absolute; 
         z-index:99999999999; 
         left:50%; 
         top:50%; 
         margin-left:-250px; 
         margin-top:-175px; 
         border:5px #0e84ab solid; 
         border-radius: 4px; 
         -webkit-border-radius: 4px; 
         -moz-border-radius: 4px; 
         background-color:#F5F5F5;
         display:none;
         }
         #show_img {
         width:100%;
         height: 100%;
         position: absolute;
         background-color:none;
         display:none;
         z-index:99999999999;
         float:left;
         left:0;
         top:0;
         margin:auto;
         text-align:center;
         vertical-align:middle;
         }
      </style>
      <?php } ?>
      <!-- Begin Cookie Consent plugin by Silktide - http://silktide.com/cookieconsent -->
      <script type="text/javascript">
         window.cookieconsent_options = {"message":"Este sitio web utiliza cookies para garantizar que obtenga la mejor experiencia en nuestro sitio web","dismiss":"Acepto los terminos","learnMore":"Más información","link":"","theme":"light-floating"};
      </script>
      <!-- End Cookie Consent plugin -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
      <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
         <script>
            $( function() {
            $( "#draggable" ).draggable();
            } );
         </script>
   </head>
   <body>
      <script>(function(d, s, id) {
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) return;
         js = d.createElement(s); js.id = id;
         js.src = "https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v2.8&appId=849796585153602";
         fjs.parentNode.insertBefore(js, fjs);
         }(document, 'script', 'facebook-jssdk'));
      </script>

