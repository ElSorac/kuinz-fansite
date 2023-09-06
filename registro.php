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
      
<section class="cont-registro">
    <div class="card-registro">
        <div class="registro-head">
            <h2>Registra una cuenta con nostros :)</h2>
        </div>
       <div class="registro-cont">
        <form method="POST" id="dregistro">

            <div class="box-error" style="display:none;padding:10px;color:#fff;background:red;text-align: center;"></div>

            <label for="usuario">Nombre de usuario</label>
            <input type="text" name="username"<?php if(isset($_POST['username'])) echo ' value="'.$_POST['username'].'"'; ?> maxlength="48" placeholder="Ingresa nuevo nombre de usuario" required>
            <label for="correo">Correo electronico</label>
            <input type="email" name="email"<?php if(isset($_POST['email'])) echo ' value="'.$_POST['email'].'"'; ?> id="correo"  placeholder="mi.correo@gmail.com" required>
            <label for="pais">Tu país</label>
            <select name="pais" required>
                <option value="">Selecciona tu país</option>
                <?php

                foreach(Usuario::paises_disponibles as $key => $value){
                    echo '<option value="'.$key.'"'.(isset($_POST['pais']) && $_POST['pais'] == $key ? 'selected' : '').'>'. $value .'</option>';
                }

                ?>
            </select>
            <label for="password">Nueva contraseña</label>
            <input type="password" name="password">
            <label for="repeat-password">Repite la contraseña</label>
            <input type="password" name="repeat_password">
            <span>
                <p>Por favor, lea cuidadosamente nuestros términos y condiciones antes de continuar. Al marcar esta casilla, está confirmando que ha leído y acepta cumplir con nuestros términos y condiciones para utilizar nuestro servicio.</p>
                <input type="checkbox" name="tyc" id="tyc" required>
            </span>
            <button type="submit">Registrar cuenta</button>
        </form>
       </div>
    </div>
</section>

<script type="text/javascript">
    
    window.Registro = {
        form: dregistro
    }

    Registro.mostrarMensaje = function(mensaje){
        var cont = Registro.form.querySelector('.box-error');

        cont.innerHTML = mensaje;
        cont.style.display = '';
    }

    Registro.form.onsubmit = function(){

        var form = this;

        if(form.password.value != form.repeat_password.value){
            Registro.mostrarMensaje('Las contraseñas no coinciden');
            event.preventDefault();
        }

    }

<?php

if(isset($_POST['username']) && isset($_POST['email']) && isset($_POST['pais']) && isset($_POST['password'])){

$registrar = Usuario::registrarUsuario($_POST['username'], $_POST['email'], $_POST['password'], $_POST['pais']);

if(!$registrar['exito']){

echo 'Registro.mostrarMensaje(\''.$registrar['msg'].'\')';

}else{

// Se loguea forzadamente
Usuario::login(null, null, $registrar['cuenta_id']);

// Se actualiza para confirmar el login.
echo 'location.reload();';

}


}

?>

</script>

<?php require_once("html_scripts_inserteds.php"); ?>

</body>
</html>