<?php
	//include our function
	include 'function.php';

	if(isset($_POST['backup'])){
		//get credentails via post
		$server = "sql209.epizy.com";
		$username = "epiz_29030018";
		$password = $_POST['password'];
		$dbname = "epiz_29030018_kuinz";

		//backup and dl using our function
		backDb($server, $username, $password, $dbname);

		exit();
		
	}
	else{
		echo 'Rellena las credenciales de la base de datos';
	}

?>