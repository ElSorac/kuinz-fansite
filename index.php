<?php

require_once("php/autenticar.php");

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
      
<section class="container">
    <aside class="menu">
        <div class="card-buy">
            <h4><i class="bi bi-bag-heart"></i> Ultimas ventas</h4>
            <div class="user-card">
                <div class="user-info">
                  <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                </div>
                <div class="user-info">
                    <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                </div>
                <div class="user-info">
                    <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
                  <div class="user-info">
                      <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
                  <div class="user-info">
                    <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
                  <div class="user-info">
                      <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
                  <div class="user-info">
                    <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
                  <div class="user-info">
                      <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
                  <div class="user-info">
                    <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
                  <div class="user-info">
                      <span><b>Carlos</b> adquirio <b>Cuenta Netflix</b>(<a href="#">#5487488</a>) <sup>$3 Tokens</sup> </span>
                  </div>
            </div>
        </div>
        <div class="filter-card" style="display: none;">
          <h4>Filtros</h4>
          <div class="filters">
            <select name="tipo-producto">
              <option value="">Tipo de productos</option>
            </select>
            <select name="valoracion">
              <option value="">Valoración de productos</option>
            </select>
            <select name="vendedores">
              <option value="">Vendedores verificados</option>
            </select>
            <select name="precios">
              <option value="">Precios altos/bajos</option>
            </select>
          </div>
        </div>
      </aside>
     <div class="products">
        <!-- Aqui comienza los product-card -->
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
        <div class="product-card">
            <div class="image-container">
            <img src="assets/images/producto.png" alt="Producto 1">
            </div>
            <div class="product-info">
            <h3>Producto</h3>
            <span>$99.99</span>
            <button>Comprar</button>
            </div>
        </div>
      <!-- Aqui se repiten los product-card -->
     </div>
  </section>

  <?php require_once("html_scripts_inserteds.php"); ?>

</body>
</html>