<?php 
if (!isset($_SESSION['logeado']) == "Si")
{
    echo "1";
    return 0;
}
$User = $_SESSION['usuario'];
$p = $_GET['p'];
$stmt = $con->prepare("SELECT * FROM `usuarios` WHERE `Username` = :usuario");
$stmt->bindParam(':usuario', $User, PDO::PARAM_STR);
$stmt->execute();
$num_rows = $stmt->rowCount();
if ($num_rows > 0)
{
    while ($datos = $stmt->fetch())
    {
        if ($datos['Online'] == 1)
        {
            echo "2";
            return 0;
        }
    }
}
$stm = $con->prepare("SELECT * FROM `prendas` WHERE ID=:prenda AND Propietario =:user AND `Web`= '0'");
$stm->bindParam(':user', $User, PDO::PARAM_STR);
$stm->bindParam(':prenda', $p, PDO::PARAM_INT);
$stm->execute();
$rows = $stm->rowCount();
if ($rows > 0)
{
    $stm = $con->prepare("UPDATE prendas SET Web=1,Slot=0,ObjUsed=0 WHERE ID = :prenda");
    $stm->bindParam(':prenda', $p, PDO::PARAM_INT);
    $stm->execute();
    echo "5";
    return 0;
}
else
{
    echo "3";
    return 0;
} ?>
