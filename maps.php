<?php require ('php/cnx.class.php'); ?>
<!DOCTYPE html>
<script src="js/jquery.min.js"></script>
<script src="js/keySequence.js"></script>
<script src="js/maps.js"></script>
<style>
html, body, #map-canvas {
    height: 100%;
    margin: 0px;
    padding: 0px
}
</style>

<script>
    var map;
    function initialize() {
        map = new google.maps.Map(document.getElementById('map-canvas'), {
            zoom: 8,
            center: new google.maps.LatLng(-34.397, 150.644)
        });

        <?php
            $select = Cnx::get()->query("SELECT e.etablissement_nom, t.type_libelle, c.coordonnees_lat, c.coordonnees_long
            FROM tbl_etablissement e, tbl_coordonnees c, tbl_type t
            WHERE e.coordonnees_id = c.coordonnees_id AND t.type_id = e.type_id");
            $select->setFetchMode(PDO::FETCH_OBJ);
            while($e = $select->fetch()) { ?>
                new google.maps.Marker({
                    position: new google.maps.LatLng(<?php echo $e->coordonnees_lat; ?>, <?php echo $e->coordonnees_long; ?>),
                    map: map,
                    title: <?php echo $e->etablissement_nom; ?>
                });
            <?php } ?>

    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<div id="map-canvas"></div>
