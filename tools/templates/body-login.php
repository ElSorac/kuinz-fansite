<body class="body-login">
    <video class="login-video" src="assets/images/videos/bg-login.mp4" oncontextmenu="return false;" autoplay muted loop></video>
    <div class="flex justify-center">
        <div class="login bg-login">
            <form action="app/autenticar.php" method="post">
                <div class="login-head">
                    <h2>Ingresa a tu cuenta</h2>
                </div>
                <div class="login-cont flex flex-column">
                    <label for="username">Ingresa usuario</label>
                    <input type="text" placeholder="Usuario" name="username">
                    <label for="password">Ingresa contraseña</label>
                    <input type="password" placeholder="Contraseña" name="password">
                </div>
                <div class="flex justify-center">
                    <button type="submit" name="logearse" class="btn btn-green login-btn">Entrar</button>
                </div>
            </form>
        </div>
    </div>
<?php
if (isset($_GET['error'])) {
    switch ($_GET['error']) {
        case 1:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Ingresaste algún dato mal.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 2:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes dejar ninguna casilla vacia.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 3:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Solo moderadores pueden acceder.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 4:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> La contraseña ingresada es incorrecta.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        default:
            echo '';
            break;
    }
}
?>