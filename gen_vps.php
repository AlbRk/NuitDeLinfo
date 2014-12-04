<?php
$heure = date('h:i');
$fwav = "tmp/vps-$heure.wav";
if (! file_exists($fwav))
    exec ("espeak -vfr 'La base virale VPS a été mise à jour à $heure' -w $fwav");
echo $fwav;
?>
