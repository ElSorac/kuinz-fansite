<?php
   include "../Templates/Hk_Head.php";
   
   $query = $link->query('SELECT rank FROM usuarios WHERE username = "' .$username. '"');
   while($row = mysqli_fetch_array($query))
   {
     $rangouser = $row['rank'];
   }
   if("$rangouser" == "2"){
   header("Location: " . $_SERVER['HTTP_REFERER']);
     exit;
   }
   if("$rangouser" == "1"){
   header("Location: " . $_SERVER['HTTP_REFERER']);
     exit;
   }
   if("$rangouser" == "3"){
   header("Location: " . $_SERVER['HTTP_REFERER']);
     exit;
   }
   if("$rangouser" == "4"){
   header("Location: " . $_SERVER['HTTP_REFERER']);
     exit;
   }
   if("$rangouser" == "7"){
   header("Location: " . $_SERVER['HTTP_REFERER']);
     exit;
   }
   
   include "../Templates/Hk_Nav.php";
   
   ?>
<div class="container">
   <!-- Main component for a primary marketing message or call to action -->
   <div class="row">
      <div class="panel panel-default">
         <div class="panel-heading green">
            <h3 class="panel-title"><?php echo $lang[345]; ?></h3>
         </div>
         <div class="panel-body">
            <div style="border-bottom: #ddd solid 1px;padding: 0px 0px 10px 15px;"><a href="eliminar/logs.php"><button type="button" class="btn btn-sm btn-danger"><?php echo $lang[346]; ?></button></a></div>
            <div id="loader" style="text-aling:center;margin-left:50%;"> <img src="loader.gif"></div>
            <div class="outer_div"></div>
            <!-- Datos ajax Final -->
         </div>
      </div>
      <br>
      <div class="panel panel-default">
         <div class="panel-heading red">
            <h3 class="panel-title"><?php echo $lang[347]; ?></h3>
         </div>
         <div class="panel-body">
            <div style="border-bottom: #ddd solid 1px;padding: 0px 0px 10px 15px;"><a href="eliminar/logs_sospechosos.php"><button type="button" class="btn btn-sm btn-danger"><?php echo $lang[348]; ?></button></a></div>
            <div id="loader1" style="text-aling:center;margin-left:50%;"> <img src="loader.gif"></div>
            <div class="logs-sospechosos"></div>
            <!-- Datos ajax Final -->
         </div>
      </div>
   </div>
</div>
<!-- /container -->
<?php 
   include "../Templates/Footer.php";
   
   ?>
<script>
   $(document).ready(function(){
     load1(1);
   });
   
   function load1(page){
     var parametros = {"action":"ajax","page":page};
     $("#loader1").fadeIn('slow1');
     $.ajax({
       url:'../kernel/ajax/Hk_logs_sospechosos_ajax.php',
       data: parametros,
        beforeSend: function(objeto){
       $("#loader1").html("<img src='loader.gif'>");
       },
       success:function(data){
         $(".logs-sospechosos").html(data).fadeIn('slow1');
         $("#loader1").html("");
       }
     })
   }
</script>
<script>
   $(document).ready(function(){
     load(1);
   });
   
   function load(page){
     var parametros = {"action":"ajax","page":page};
     $("#loader").fadeIn('slow');
     $.ajax({
       url:'../kernel/ajax/Hk_logs_ajax.php',
       data: parametros,
        beforeSend: function(objeto){
       $("#loader").html("<img src='loader.gif'>");
       },
       success:function(data){
         $(".outer_div").html(data).fadeIn('slow');
         $("#loader").html("");
       }
     })
   }
</script>