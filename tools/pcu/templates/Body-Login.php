<body class="body-login">
<div class="place-center">
    <p class="name-server noselect"><?php  echo $nameserver ?></p>
    <div class="login">
        <div class="login-h"><img src="/images/iconos/login.png" alt=""> <span>Entra a tu cuenta</span></div>
        <div class="cont-login">
            <form action="" method="post">
                <label for="usuario">Ingresa tu usuario</label>
                <input type="text" name="usuario" id="usuario" placeholder="Nombre_Apellido">
                <label for="password">Ingresa tu contraseña</label>
                <input type="password" name="password" id="password" placeholder="Contraseña">
                <button type="submit">Entrar</button>
            </form>
        </div>
    </div>
    <?php
    if (isset($_POST['usuario']) && isset($_POST['password'])) {

        //Validamos y sanamos los datos ingresados.
        $usu_t1 =  htmlentities(substr($_POST['usuario'], 0, 150));
        $usuario = strip_tags($usu_t1);
        $pass_t1 =  htmlentities(substr($_POST['password'], 0, 150));
        $password = strip_tags($pass_t1);

        //Verificamos nuevamente que no este vacio.
        if (empty($usuario) || empty($password)) {
            echo '<div class="alert-box"><p class="alert alert-warning">Error, dejaste vacio el formulario.</p></div>';
    ?>
    <?php
    exit();
        } else {
            //Hacemos consulta.
            $consulta = $conn->prepare("SELECT ID,Username,Password FROM usuarios WHERE Username = :usuario");
            $consulta->bindParam(':usuario', $usuario);
            $consulta->execute();
            $row = $consulta->fetch();

            //Verificamos que la contraseña sea correcta o exista el usuario.
            if ($row['Password'] != $password) {
                echo '<div class="alert-box"><p class="alert alert-warning">La contraseña ingresada no es correcta o no existe este usuario.</p></div>';
            ?>
            <?php
            exit();
            } else {
                //Hacemos consulta para guardar.
                $consulta = $conn->prepare("SELECT ID,Username,Password FROM usuarios WHERE Username = :usuario");
                $consulta->bindParam(':usuario', $usuario);
                $consulta->execute();
                $row = $consulta->fetch();

                //Datos de la session
                $_SESSION["usuario"] = $row['Username'];
                $_SESSION["id"] = $row['ID'];
                $_SESSION["logeado"]  = "Si";
            ?>
            <script type="text/javascript">
            location.href ="./index";
            </script>
           <?php } } }?>
</div>