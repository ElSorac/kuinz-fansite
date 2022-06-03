<?php
	# conectare la base de datos
	require ('../../global.php');

	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
	if($action == 'ajax'){
		require ('../../hk/pagination.php'); //incluir el archivo de paginación
		//las variables de paginación
		$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
		$per_page = 10; //la cantidad de registros que desea mostrar
		$adjacents  = 4; //brecha entre páginas después de varios adyacentes
		$offset = ($page - 1) * $per_page;
		//Cuenta el número total de filas de la tabla*/
		$count_query   = $link->query("SELECT count(*) AS numrows FROM logs_sospechosos ");
		if ($row= mysqli_fetch_array($count_query)){$numrows = $row['numrows'];}
		$total_pages = ceil($numrows/$per_page);
		$reload = 'logs.php';
		//consulta principal para recuperar los datos
		$query = $link->query("SELECT * FROM logs_sospechosos  order by id DESC LIMIT $offset,$per_page");
		
		if ($numrows>0){
			?>
<table class="table table-striped table-hover ">
			  <thead>
				<tr>
                              <th><?php echo $lang[312]; ?></th>
                              <th><?php echo $lang[27]; ?></th>
                              <th><?php echo $lang[369]; ?></th>
                              <th><?php echo $lang[140]; ?></th>
                              <th><?php echo $lang[415]; ?></th>
				</tr>
			</thead>
			<tbody>
			<?php
			while($row = mysqli_fetch_array($query)){
				?>
				<tr>
                              <td><?php echo "$row[id]"; ?></td>
                              <td><?php echo "$row[user_logeado]"; ?></td>
                              <td><?php echo "$row[ip]"; ?></td>
                              <td><?php echo "$row[accion]"; ?></td>
                              <td><?php echo "$row[fecha]"; ?></td>
				</tr>
				<?php
			}
			?>
			</tbody>
		</table>
		
			<?php
			
		} else {
			?>
			<div class="alert alert-warning alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <?php echo $lang[195]; ?>
            </div>
			<?php
		}
	}
?>