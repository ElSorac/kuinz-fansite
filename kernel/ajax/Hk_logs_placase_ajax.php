<?php
   # conectare la base de datos
   
   require ('../../global.php');
   
   $action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
   
   if($action == 'ajax'){
   
   	require ('../../hk/pagination.php'); //incluir el archivo de paginaciÃ³n
   
   	//las variables de paginaciÃ³n
   
   	$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
   
   	$per_page = 10; //la cantidad de registros que desea mostrar
   
   	$adjacents  = 4; //brecha entre pÃ¡ginas despuÃ©s de varios adyacentes
   
   	$offset = ($page - 1) * $per_page;
   
   	//Cuenta el nÃºmero total de filas de la tabla*/
   
   	$count_query   = $link->query("SELECT count(*) AS numrows FROM usuarios_placase ");
   
   	if ($row= mysqli_fetch_array($count_query)){$numrows = $row['numrows'];}
   
   	$total_pages = ceil($numrows/$per_page);
   
   	$reload = 'subir.php';
   
   	//consulta principal para recuperar los datos
   
   	$query = $link->query("SELECT * FROM usuarios_placase order by id DESC LIMIT $offset,$per_page");
   
   	
   
   	if ($numrows>0){
   
   		?>
<table class="table table-striped table-hover ">
   <thead>
      <tr>
         <th>ID Furni</th>
         <th>Furni</th>
         <th>Usuario</th>
         <th>Eliminar</th>
      </tr>
   </thead>
   <tbody>
      <?php
         while ($row = mysqli_fetch_array($query))
         {
         
         ?>
      <tr>
         <td><font size="1mm"><?php echo "$row[id]"; ?></font></td>

         <td>
            <!--<div data-toggle="tooltip" title="<?php echo "$row[code_placa]"; ?>" class="badgehabbink" data-original-title="<?php echo "$row[code_placa]"; ?>">
               <div class="iconbadge">
                  <img src="<?php echo "$row[img]"; ?>" alt="" style="padding:7px;">
               </div>
            </div>-->
            <?php echo "$row[code_placa]"; ?>
         </td>

         <td><?php echo "$row[username]"; ?></td>

         <td><a href="eliminar/comprados-elite.php?id=<?php echo "$row[id]"; ?>"><button type="button" class="btn btn-sm btn-danger"><span class="MPicon-cross"></span></button></a></td>
      </tr>
      <?php
         }
         
         ?>
   </tbody>
</table>
<div class="table-pagination pull-right">
   <?php echo paginate($reload, $page, $total_pages, $adjacents);?>
</div>
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