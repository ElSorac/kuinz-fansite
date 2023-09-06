<?php
if ($avanzado) {
  #Comenzamos con validaciones de tiempo
  $sql = "SELECT * FROM avanzados WHERE user_id = :id";
  $stmt = $conn->prepare($sql);
  $stmt->execute([
      ':id'=> $myID
  ]);
  $dataA = $stmt->fetch(PDO::FETCH_ASSOC);
  if (!$dataA) {
      $stmt = $conn->prepare("INSERT INTO avanzados (user_id,limite) VALUES (:id,:limite)");
      $stmt->execute([
          ':id'=> $myID,
          ':limite' => 2
      ]);
  } 
}
?>
<div class="row">
    <section class="main flex justify-center">
      <div class="card w-70 m-14">
        <div class="card-head">
          <h2>MODTOOLS - Kuinz Fansite <span class="f-right card-minititle">Enviar premios (Avanzados)</span></h2>
        </div>
        <div class="card-cont flex justify-center">
          <div class="cont-main">
            <h2>Informacion de envios de premios</h2>
            <div class="cont-info flex flex-column">
              <h3 class="bg-red">
                Reglas del uso de esta herramienta de premios:
                <p class="subtitle">Al momento de enviar cualquier premio aceptas cada una de las reglas de envio y del fansite.</p>
              </h3>
              <p>1. Esta totalmente prohibido el regalar fichas, puntos o tokens, sin autorizacion de alguno de los fundadores del fansite <b>Sorac o Krozox</b>.</p>
              <p>2. Es totalmente obligatorio rellenar cada dato requerido, no pueden inventar eventos para dar premios, esto se revisara en el app si es necesario.</p>
              <p>3. Si un usuario gana el evento y te da a ti el premio sea fichas o puntos, deberas pedirle a otro moderador que las envie. Recuerda que si usan esto como vacio legal para el envio de premios con eventos falsos, <b>ambos moderadores que transcurran esta accion seran tendran consecuencias con su puesto de moderador en kekocity y en el fansite</b>.</p>
              <p><b>Nota:</b> Al momento de poner el organizador de evento, si tiene rango oficial como Becario, Helper o Moderador, solo ponen su nombre y ya.</p>
              <hr style="min-width: 60%;">
              <h3 class="bg-info">
                Cantidad de fichas/puntos que se dan en los siguientes eventos.
                <p class="subtitle">
                  Siempre deberas tener en cuenta esto y evitar problemas futuros.
                </p>
              </h3>
              <p>Cerraduras, Dado Kick, Carreras, Patea al guia o eventos similares <span style="color: #009cff; font-weight: bolder;">3 fichas + 1 puntos</span></p>
              <p>Bingo,Llega al trono, Busca el alimento y Pizza Asesina <span style="color: #009cff; font-weight: bolder;">5 Fichas + 2 puntos</span></p>
              <p>Atrapa al guia, Sillas Locas, Encuentra el port y Escondidas <span style="color: #009cff; font-weight: bolder;">4 Fichas + 2 puntos</span></p>
              <p>Eventos de disparos, Skywars y eventos similares <span style="color: #009cff; font-weight: bolder;">5 Fichas + 3 puntos</span></p>
              <p>Eventos de varios tramos <span style="color: #009cff; font-weight: bolder;">10 fichas + 4 puntos</span></p>
              <p>Mega Eventos(Crea tu sala, dibujo, ect...) pueden dar de <span style="color: #009cff; font-weight: bolder;">15 a 25 fichas + 1 a 10 puntos</span></p>
              <p><b>Nota:</b> Si el evento que vas a realizar no esta en la lista, puedes tomar como referencia uno similar. <span style="color: #009cff; font-weight: bolder;">Ej: Voy a realizar Ev Atrapados, entonces me guio por el mismo premio de Atrapa al guia.</span></p>
            </div>
          </div>
          <form action="app/sendpremios-avanzados.php" method="post" enctype="multipart/form-data" class="form-dash flex flex-column w-40"> 
            <h2>Enviar premio a usuario</h2>
            <div class="form-cont flex flex-column">
              <label for="user">Nombre ganador</label>
              <input type="text" name="user" id="" placeholder="Nombre del ganador...">
              <label for="user">Nombre organizador</label>
              <input type="text" name="organizador" id="" placeholder="Nombre del organizador...">
              <label for="razon">Razon de envio</label>
              <input type="text" name="razon" placeholder="Nombre del evento...">
              <label for="tipo">Tipo moneda</label>
              <select name="tipo" id="opciones">
                <option value="nada" selected disabled>Selecciona</option>
                <option value="fichas">Fichas</option>
                <option value="puntos">Puntos</option>
                <option value="ambos" style="display:none;">Fichas y Puntos</option>
              </select>
              <div id="cantidad" style="display: block;">
                <label for="cantidad">Cantidad</label>
                <input type="number" name="cantidad" id="fichas" min="1" max="30" placeholder="Cantidad (Max 30...)">
              </div>
              <div id="c-fichas" style="display: none;">
                <label for="c-fichas">Cantidad de fichas:</label>
                <input type="number" id="fichas" name="c-fichas" min="1" max="30" placeholder="Cantidad (Max 30...)">
              </div>
              <div id="c-puntos" style="display: none;">
                <label for="c-puntos">Cantidad de puntos:</label>
                <input type="number" id="puntos" name="c-puntos" min="1" max="30" placeholder="Cantidad (Max 30...)">
              </div>
            </div>
            <div class="flex justify-center">
              <button class="btn btn-green w-40" name="send" type="submit"> Enviar</button>
            </div>
          </form>
        </div>
      </div>
    </section>
  </div>
  <script>
  var opciones = document.getElementById('opciones');
  var cPuntos = document.getElementById('c-puntos');
  var cFichas = document.getElementById('c-fichas');
  var cantidad = document.getElementById('cantidad');

  opciones.addEventListener('change', function() {
    if (opciones.value === 'ambos') {
      cPuntos.style.display = 'block';
      cFichas.style.display = 'block';
      cantidad.style.display = 'none';
    } else {
      cPuntos.style.display = 'none';
      cFichas.style.display = 'none';
      cantidad.style.display = 'block';
    }
  });
</script>
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
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> La cantidad debe ser numeros y mayor a 1.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 4:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No puedes enviarte premios a ti mismo, pidele a otro mod que lo haga por ti.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 5:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> No autorizado.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 6:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Su limite se reinicio, vuelva enviar el premio.</p>
                <span class="notification__progress"></span>
            </div>
            ';
            break;
        case 7:
            echo '
            <div class="notification">
                <p class="flex-inline"><img src="assets/images/icons/alert.png" alt="alert"> Superaste limites de envio, espera 20min.</p>
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