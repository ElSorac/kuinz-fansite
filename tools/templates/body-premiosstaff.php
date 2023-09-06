<div class="row">
    <section class="main flex justify-center">
      <div class="card w-70 m-14">
        <div class="card-head">
          <h2>MODTOOLS - Kuinz Fansite <span class="f-right card-minititle">Formulario</span></h2>
        </div>
        <div class="card-cont flex justify-center">
          <form action="app/sendpremios-staff.php" method="post" enctype="multipart/form-data" class="form-dash flex flex-column w-40"> 
            <h2>Envia o quita premios</h2>
            <div class="form-cont flex flex-column">
              <label for="user">Nombre ganador</label>
              <input type="text" name="user" id="" placeholder="Nombre usuario">
              <label for="tipo">Tipo moneda</label>
              <select name="tipo" id="opciones">
                <option value="nada" selected disabled>Selecciona</option>
                <option value="fichas">Fichas</option>
                <option value="puntos">Puntos</option>
                <option value="puntos">Tokens</option>
              </select>
              <label for="cantidad">Cantidad</label>
              <input type="number" name="cantidad" id="fichas" placeholder="Cantidad">
            </div>
            <div class="flex justify-center">
              <button class="btn btn-green w-40" name="send" type="submit"> Enviar</button>
            </div>
          </form>
        </div>
      </div>
    </section>
  </div>
<?php
if (isset($_GET['status'])) {
    switch ($_GET['status']) {
        case 0:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Enviaste el premio correctamente.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 1:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes dejar ninguna casilla vacia.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 2:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> El usuario no existe.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 3:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Solo se acepta cantidad en numeros.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 4:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No estas autorizado para esto.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 500:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Error al procesar formulario.</p>
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