<?php

require_once("php/autenticar.php");


/*
*
*   Esta área no está disponible para logueados, por lo que lo redirigimos a la página principal
*
**/
if(MiCuenta){
    header('location: index.php');
    exit;
}


?>
<!DOCTYPE html>
<html lang="es">
<head>
  <?php require_once('html_head.php'); ?>
</head>
<body>
    
<header>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <?php require_once('html_navbar.php') ?>
    </div>    
    <div class="header-container">
        <div class="header-image">
            <img src="assets/images/slider.jpg" draggable="false">
        </div>
        <div class="header-content">
            <h1>Título de la promoción</h1>
            <p>Descripción corta de la promoción</p>
            <a href="#" class="btn-promo">Ir al producto</a>
        </div>
    </div>
</header>
      
<section class="cont-login">
    <div class="card-login">
        <div class="login-head">
            <h2><i class="bi bi-person-add"></i> Iniciar sesión</h2>
        </div>
       <div class="login-cont">
        <form method="POST" id="dlogin">
            <div class="box-error" style="display:none;padding:10px;color:#fff;background:red;text-align: center;"></div>

            <label for="usuario">Ingresa tu usuario</label>
            <input type="text" name="username" maxlength="48" placeholder="Usuario" required>
            <label for="password">Ingresa tu contraseña</label>
            <input type="password" name="password"  placeholder="Contraseña">
            <span>
                <input type="checkbox" name="session" id="session">
                <p>Recordarme</p>
            </span>
            <button type="submit">Iniciar sesión</button>
        </form>
       </div>
    </div>
</section>

<script type="text/javascript">
    
    window.Login = {
        form: dlogin
    }

    Login.mostrarMensaje = function(mensaje){
        var cont = Login.form.querySelector('.box-error');

        cont.innerHTML = mensaje;
        cont.style.display = '';
    }

    Login.form.onsubmit = function(){

        var form = this;

        if(form.password.value != form.repeat_password.value){
            Login.mostrarMensaje('Las contraseñas no coinciden');
            event.preventDefault();
        }

    }

<?php

if(isset($_POST['username']) && isset($_POST['password'])){

$login = Usuario::login($_POST['username'], $_POST['password']);

if(!$login['exito']){

echo 'Login.mostrarMensaje(\''.$login['msg'].'\')';

}else{

echo 'location.reload();';

}


}

?>

</script>

<?php require_once("html_scripts_inserteds.php"); ?>

</body>
</html>