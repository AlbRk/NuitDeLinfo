<?php
	$title = "Refuge sans frontières"; 
	require ('head.php');
	require ('header.php');
?>

	<div id="article">
		<div id="titre"><span class="entypo-login"></span>inscription</div>
		<form action="#" method="post">
		<input name="id" type="text" placeholder="Nom" maxlength="30" size="30" tabindex="1"></textarea>
		<br/>
		<input name="mdp" type="text" placeholder="Prénom" maxlength="30" size="30" tabindex="2"/>
		<br/>
		<input name="mdp" type="text" placeholder="Mot de passe" maxlength="10" size="30" tabindex="2"/>
		<br/>
		<input name="confmdp" type="text" placeholder="Confimer le mot de passe" maxlength="10" size="30" tabindex="2"/>
		<br/>
		<input name="date" type="text" placeholder="Date de naissance (JJ/MM/AAAA)" maxlength="10" size="30" tabindex="2"/>
		<br/>
		<select name="sexe">
			<option selected>Sexe</option>
			<option>Homme</option>
			<option>Femme</option>
		</select>
		<br/>
		<input type="radio" name="enceinte" value="e">Enceinte<br/>
		<input type="radio" name="enceinte" value="pe">Pas enceinte<br/>
		<input type="submit" class="bouton" value="inscription" tabindex="3"/>
	</form>
	
	<div id="inscription">
		Pas encore inscrit? <a href="#">Créez votre compte dès à présent</a>.
	</div>
	
	</div>
