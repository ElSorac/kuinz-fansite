<?php

class SQL extends PDO{
	/*
		Conectar a la base de datos
	*/
	static $conexion = null;
	static function conectar(){

		/*
			Ingresa todos los datos de la base de datos aquii::
		*/
		$dbname = 'kuinz';
		$usuario = 'root';
		$pass = '';

		if(!self::$conexion){
			self::$conexion = new PDO('mysql:host=localhost;dbname='.$dbname.';', $usuario, $pass);
		}
		return self::$conexion;
	}
}

?>