<!DOCTYPE html>
<meta charset="utf-8">
<script src="js/jquery.min.js"></script>
<script src="js/keySequence.js"></script>
<script>
$(document).ready(function() {
    new KeySequence ([65, 38, 69], function() {
        $.ajax({
            url:"gen_vps.php",
            cache:false,
            success:function(txt) {
                var audio = new Audio(txt);
                audio.play();
            }
        });

    });
});
</script>

