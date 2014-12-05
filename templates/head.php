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

<!DOCTYPE html>
<meta  charset="utf-8" />
<title><?php echo $title ?></title>

<link rel="StyleSheet" href="/Soft_qui_peut/css/style.css"/>
<link rel="stylesheet" href="/Soft_qui_peut/css/jquery-ui.min.css">

<script src="/Soft_qui_peut/js/jquery.min.js"></script>
<script src="/Soft_qui_peut/js/jquery-ui.min.js"></script>
<script src="/Soft_qui_peut/js/keySequence.js"></script>
<script src="/Soft_qui_peut/js/menu.js"></script>
