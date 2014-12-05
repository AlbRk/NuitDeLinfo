<?php
	$title = "Refuge sans frontières"; 
	require ('head.php');
	require ('header.php');
?>

	<div id="article">
		<div id="titre"><span class="entypo-login"></span>connexion</div>
		<form action="#" method="post">
		<input name="id" type="text" placeholder="Identifiant" maxlength="50" size="25" tabindex="1"></textarea>
		<br/>
		<input name="mdp" type="password" placeholder="Mot de passe" maxlength="50" size="25" tabindex="2"/><br/>
		<input type="submit" class="bouton" value="se connecter" tabindex="3"/>
	</form>
	
	<div id="inscription">
		Pas encore inscrit? <a href="#">Créez votre compte dès à présent</a>.
	</div>
