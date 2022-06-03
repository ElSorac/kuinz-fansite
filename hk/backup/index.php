<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Kuinz - Fansite Kekocity</title>
	<link rel="stylesheet" type="text/css" href="bootstrap4/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h1 class="text-center" style="margin-top:30px;">Copia de respaldo de la base de datos</h1>
	<hr>
	<div class="row justify-content-center">
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h3>Ingresar clave para realizar copia de seguridad.</h3>
					<br>
					<form method="POST" action="backup.php">
					    <div class="form-group row">
					      	<label for="password" class="col-sm-3 col-form-label">Contraseña</label>
					      	<div class="col-sm-9">
					        	<input type="text" class="form-control" id="password" name="password" placeholder="Contraseña">
					      	</div>
					    </div>
					    <button type="submit" class="btn btn-primary" name="backup">Respaldo</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>