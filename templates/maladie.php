<?php
	$title = "Refuge sans frontières"; 
	require ('head.php');
	require ('header.php');
?>
	<div id="wrap">
	
		<div id="gauche">
		
			<div id="event"><span class="entypo-bell"></span>- nom maladie -</div>
			
			<div id="map">
				<div id="titre"><span class="entypo-location"></span>carte</div><br/>
			</div>
			
			<div id="infos">
				<div id="titre"><span class="entypo-info"></span>infos</div><br/>
				- la description de la maladie -
			</div>
			
			<div id="ong">
				<div id="titre"><span class="entypo-cc-by"></span>ONG impliquées</div><br/>
				- une liste des ONG (ne sera pas implémenté)
			</div>
		</div>
		
		<div id="droite">
						
			<div id="autre">
				<div id="titre"><span class="entypo-layout"></span>test de dépistage</div><br/>
				<form>
					<input type="checkbox" name="toux" value="1">Toux<br/>
					<input type="checkbox" name="fievre" value="2">Fièvre<br/>
					<input type="checkbox" name="boutons" value="3">Boutons<br/>
					<input type="checkbox" name="diarhée" value="4">Diarhée<br/>
					<input type="checkbox" name="ventre" value="5">Maux de vente<br/>
					<input type="checkbox" name="nausees" value="6">Nausées<br/>
					<input type="checkbox" name="tete" value="7">Maux de tête<br/>
					<input type="checkbox" name="artis" value="8">Maux d'articulations<br/>
					<input type="checkbox" name="fatigue" value="9">Fatigue Générale<br/>
					<input type="checkbox" name="saignement" value="10">Saignement(s)<br/>
					<input type="text" name="autre" placeholder="autre(s)"/><br>
					<input type="submit" value="lancer le test"/>
				</form>
			</div>
		</div>
		
	</div>
