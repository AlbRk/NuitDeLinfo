<?php

class Cnx {
	private static $connexion;

	public static function get () {
		if (self::$connexion !== null)
			return self::$connexion;
		try {
			self::$connexion = new PDO('mysql:host=localhost;dbname=refuge_sans_frontieres', 'root', 'root');
			return self::$connexion;
		} catch ( Exception $e ) {
			echo "Connection à MySQL impossible : ", $e->getMessage();
			die();
		}
	}
}
?>

