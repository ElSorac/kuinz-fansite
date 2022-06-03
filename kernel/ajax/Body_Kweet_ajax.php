<?php
function paginate($reload, $page, $tpages, $adjacents)
{

    $prevlabel = "&lsaquo; $lang[196]";

    $nextlabel = "$lang[197] &rsaquo;";

    $out = '<ul class="pagination pagination-large">';

    // previous label
    

    if ($page == 1)
    {

        $out .= "<li class='disabled'><span><a>$prevlabel</a></span></li>";

    }
    else if ($page == 2)
    {

        $out .= "<li><span><a href='javascript:void(0);' onclick='load(1)'>$prevlabel</a></span></li>";

    }
    else
    {

        $out .= "<li><span><a href='javascript:void(0);' onclick='load(" . ($page - 1) . ")'>$prevlabel</a></span></li>";

    }

    // first label
    if ($page > ($adjacents + 1))
    {

        $out .= "<li><a href='javascript:void(0);' onclick='load(1)'>1</a></li>";

    }

    // interval
    if ($page > ($adjacents + 2))
    {

        $out .= "<li><a>...</a></li>";

    }

    // pages
    

    $pmin = ($page > $adjacents) ? ($page - $adjacents) : 1;

    $pmax = ($page < ($tpages - $adjacents)) ? ($page + $adjacents) : $tpages;

    for ($i = $pmin;$i <= $pmax;$i++)
    {

        if ($i == $page)
        {

            $out .= "<li class='active'><a>$i</a></li>";

        }
        else if ($i == 1)
        {

            $out .= "<li><a href='javascript:void(0);' onclick='load(1)'>$i</a></li>";

        }
        else
        {

            $out .= "<li><a href='javascript:void(0);' onclick='load(" . $i . ")'>$i</a></li>";

        }

    }

    // interval
    

    if ($page < ($tpages - $adjacents - 1))
    {

        $out .= "<li><a>...</a></li>";

    }

    // last
    

    if ($page < ($tpages - $adjacents))
    {

        $out .= "<li><a href='javascript:void(0);' onclick='load($tpages)'>$tpages</a></li>";

    }

    // next
    

    if ($page < $tpages)
    {

        $out .= "<li><span><a href='javascript:void(0);' onclick='load(" . ($page + 1) . ")'>$nextlabel</a></span></li>";

    }
    else
    {

        $out .= "<li class='disabled'><span><a>$nextlabel</a></span></li>";

    }

    $out .= "</ul>";

    return $out;

}

?>
<?php
require ('../../global.php');

$action = (isset($_REQUEST['action']) && $_REQUEST['action'] != NULL) ? $_REQUEST['action'] : '';

if ($action == 'ajax')
{

    //las variables de paginación
    $page = (isset($_REQUEST['page']) && !empty($_REQUEST['page'])) ? $_REQUEST['page'] : 1;

    $per_page = 4; //la cantidad de registros que desea mostrar
    $adjacents = 4; //brecha entre páginas después de varios adyacentes
    $offset = ($page - 1) * $per_page;

    //Cuenta el número total de filas de la tabla*/
    $count_query = $link->query("SELECT count(*) AS numrows FROM eventos ");

    if ($row = mysqli_fetch_array($count_query))
    {
        $numrows = $row['numrows'];
    }

    $total_pages = ceil($numrows / $per_page);

    $reload = 'furni.php';

    //consulta principal para recuperar los datos
    $query = $link->query('SELECT * FROM usuarios WHERE username = "' .$username. '"');
	while($row = mysqli_fetch_array($query))
	{
  		$u_avatar = $row['avatar'];
	}

    $query = $link->query("SELECT * FROM eventos order by id DESC");

    if ($numrows > 0)
    {

        while ($row = mysqli_fetch_array($query))
        {

            $avatar_user = $row['avatar'];

?>
<div class="boxkweet">
   <div class="tituloglobos" style="height:40px;">
      <img src="<?php echo "$avatar_user"; ?>" class="linkde fleft radinoti">
      <div class="fleft">
         <span class="linkde">                                   <font face="verdana">
         <?php echo "$row[usuario]"; ?></span>
         <div class="hace"><?php echo "$row[fecha]"; ?>
         </div>
      </div>
      <a href="/hk/eliminar/kweet.php?id=<?php echo "$row[id]"; ?>"><img src="./images/x.png" class="opciones fright" width="15px"></a>
   </div>
   <div style="font-size:14px;margin-top:8px;margin-bottom:8px;padding:5px;"><?php echo "$row[publicacion]"; ?></div>
   <div>
      <a onclick="" class="links">Comentar</a>
   </div>
   <ul class="boxcomentsya"></ul>
   <div class="boxcoments">
      <img src="<?php echo "$u_avatar"; ?>" class="fleft radinoti icocomsflo">
      <div class="texcomswrap">
         <div class="texcoms">
            <form>
               <input type="text" class="texinput" placeholder="¡Pronto estara en funcion los comentarios y likes!">
            </form>
         </div>
      </div>
   </div>
</div>
<?php
        }

?>
<?php
    }
    else
    {

?>
<div class="alert alert-warning alert-dismissable">
   <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
   <?php echo $lang[195]; ?>
</div>
<?php
    }

}

?>
