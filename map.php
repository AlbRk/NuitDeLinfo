<?php
	$title = "Refuge sans frontières"; 
	require ('templates/head.php'); ?>
	<script src="js/maps.js"></script>
<?php
	require ('templates/header.php');
?>

<script>
    var map;
    function initialize() {
        map = new google.maps.Map(document.getElementById('map-canvas'), {
            zoom: 4,
            center: new google.maps.LatLng(37.3451, 97.3814)
        });
		if(navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				map.setCenter(new google.maps.LatLng(position.coords.latitude, position.coords.longitude));
			});
		}

        <?php    // Ajout des marqueurs des établissements
            $select = Cnx::get()->query("SELECT e.etablissement_nom, t.type_libelle, c.coordonnees_lat, c.coordonnees_long
            FROM tbl_etablissement e, tbl_coordonnees c, tbl_type t
            WHERE e.coordonnees_id = c.coordonnees_id AND t.type_id = e.type_id");
            $select->setFetchMode(PDO::FETCH_OBJ);
            while($e = $select->fetch()) { ?>
                new google.maps.Marker({
                    position: new google.maps.LatLng(<?php echo $e->coordonnees_lat; ?>, <?php echo $e->coordonnees_long; ?>),
                    map: map,
                    title: "<?php echo $e->etablissement_nom; ?>"
                });
        <?php } ?>

        <?php    // Ajout des zones dangereuses
            $select = Cnx::get()->query("SELECT z.zone_id, z.zone_radius, tz.type_zone_color, c.coordonnees_lat, c.coordonnees_long
            FROM tbl_zone z, tbl_coordonnees c, tbl_type_zone tz
            WHERE z.coordonnees_id = c.coordonnees_id AND tz.type_zone_id = z.type_zone_id");
            $select->setFetchMode(PDO::FETCH_OBJ);
            while($e = $select->fetch()) { ?>
				new google.maps.Circle(
					populationOptions = {
						strokeColor: "#<?php echo $e->type_zone_color; ?>",
						strokeOpacity: 0.8,
						strokeWeight: 2,
						fillColor: "#<?php echo $e->type_zone_color; ?>",
						fillOpacity: 0.35,
						map: map,
						center: new google.maps.LatLng(<?php echo $e->coordonnees_lat; ?>, <?php echo $e->coordonnees_long; ?>),
						radius: Math.sqrt(<?php echo $e->zone_radius; ?>) * 100
                }
            );
        <?php } ?>
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>

	<div id="wrap">
		<div id="gauche">
		
			<div id="event"><span class="entypo-bell"></span>- nom catastrophe -</div>
			
			<div id="map">
				<div id="titre"><span class="entypo-location"></span>carte</div>
				<div id="map-canvas" style="width:100%; height:100%;"></div>
			</div>
			
			<div id="infos">
				<div id="titre"><span class="entypo-info"></span>infos</div><br/>
				- la description de la catastrophe -
			</div>
			
			<div id="ong">
				<div id="titre"><span class="entypo-cc-by"></span>ONG impliquées</div><br/>
				- une liste des ONG (ne sera pas implémenté)
			</div>
		</div>
		
		<div id="droite">
		
			<div id="personnes">
				<div id="titre"><span class="entypo-user"></span>réfugiés</div><br/>
			</div>
			
		</div>
		
	</div>


