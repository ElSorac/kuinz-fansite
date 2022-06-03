<?php



   // Alertas HK Baneos



   



   if(isset($_GET['userbaneado'])){



   echo "



   <script>swal({   title: '$lang[235]',   text: '$lang[227]',   icon: 'success',  timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['usuarioexistente'])){



   echo "



   <script>swal({   title: '$lang[236]',   text: '$lang[228]',   icon: 'warning',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['rangoguardado'])){



   echo "



   <script>swal({   title: '$lang[237]',   text: '$lang[229]',   icon: 'success',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   if(isset($_GET['noticiacreada'])){



   echo "



   <script>swal({   title: '$lang[238]',   text: '$lang[230]',   icon: 'success',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['iniciohk'])){



   echo "



   <script>swal({   title: '$lang[239]',   text: '$lang[231]  $nameweb $lang[71].',   icon: 'success',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['hkcerrada'])){



   echo "



   <script>swal({   title: '$lang[240]',   text: '$lang[232]',   icon: 'success',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   echo "";



   if(isset($_GET['iniciado'])){



   echo "



   <script>swal({   title: '$lang[241]',   text: '$lang[233]',   icon: 'success',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   if(isset($_GET['recargar-nequi'])){



   echo "



   <script>swal({   title: 'Compras con Nequi',   text: 'Para comprar mediante Nequi comunicate con Rutierrez',   icon: 'warning', buttons: true, });</script>



   ";



   }else{



   echo "";



   }



   if(isset($_GET['compra-cancelada'])){



   echo "



   <script>swal({   title: 'Tu compra en PayPal',   text: 'Fue cancelada/rechazada.',   icon: 'error', timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   if(isset($_GET['compra-aceptada'])){



   echo "



   <script>swal({   title: 'Tu compra en PayPal',   text: 'Fue realizada correctamente.',   icon: 'success', timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['sessionerror'])){



   echo "



   <script>swal({   title: '$lang[242]',   text: '$lang[234]',   icon: 'warning',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['errorpass'])){



   echo "



   <script>swal({   title: '$lang[243]',   text: '$lang[254]',   icon: 'error',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['registrobloqueado'])){



   echo "



   <script>swal({   title: '$lang[244]',   text: '$lang[255]',   icon: 'error',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['loginbloqueado'])){



   echo "



   <script>swal({   title: '$lang[245]',   text: '$lang[256]',   icon: 'error',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['nopass'])){



   echo "



   <script>swal({   title: '$lang[246]',   text: '$lang[257]',   icon: 'warning',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['nocompletado'])){



   echo "



   <script>swal({   title: '$lang[247]',   text: '$lang[258]',   icon: 'warning',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['logout'])){



   echo "



   <script>swal({   title: '$lang[248]',   text: '$lang[259]',   icon: 'success',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['sucess'])){



   echo "



   <script>swal({   title: '$lang[249]',   text: '$lang[260]',   icon: 'success',   timer: 3000,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['errordat'])){



   echo "



   <script>swal({   title: '$lang[250]',   text: '$lang[261]',   icon: 'error',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['errordb'])){



   echo "



   <script>swal({   title: '$lang[251]',   text: '$lang[262]',   icon: 'warning',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['passworderror'])){



   echo "



   <script>swal({   title: '$lang[252]',   text: '$lang[263]',   icon: 'warning',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['emailerror'])){



   echo "



   <script>swal({   title: '$lang[252]',   text: '$lang[264]',   icon: 'warning',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['usererror'])){



   echo "



   <script>swal({   title: '$lang[252]',   text: '$lang[265]',   icon: 'warning',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['noguardado'])){



   echo "



   <script>swal({   title: '$lang[250]',   text: '$lang[266]',   icon: 'error',   timer: 3500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if(isset($_GET['guardado'])){



   echo "



   <script>swal({   title: '$lang[253]',   text: '$lang[267]',   icon: 'success',   timer: 2500,buttons: false, });</script>



   ";



   }else{



   echo "";



   }

    
    if(isset($_GET['errorseguir'])){

   echo "

   <script>swal({   title: 'Error',   text: 'Al parecer ya sigues a este usuario!',   icon: 'error',   timer: 3500,buttons: false, });</script>

   ";

   }else{

   echo "";

   }


   if(isset($_GET['cambiarnick'])){



   echo "



   <script>swal({   title: 'Aviso',   text: 'Recuerda actualizar tu nombre de usuario al mismo de KekoCiy, esto nos ayudara a saber que es tu cuenta!',   icon: 'warning',   timer: 5000,buttons: false, });</script>



   ";



   }else{



   echo "";



   }



   



   if (isset($_GET['derechos-de-autor'])) {



   	echo "<script>swal('Aviso importante', 'Kuiz Fansite, este fansite esta totalmente autorizado por los staff de KekoCity.', 'info');</script>";



   }



   



   



   ?>