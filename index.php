<?php
	$title = "Refuge sans frontières"; 
	require ('templates/head.php');
	require ('templates/header.php');
?>

<div id="desc">
	Refuge sans frontières est un site non lucratif à but humanitaire.
</div>

<div id="konami_ltlm" title="Hey toi...">
	<p></p>
	<p>... Laves toi les mains !</p>
	<p></p>
</div>

<script>
	$(document).ready(function() {
		$("#konami_ltlm").dialog({
			autoOpen:false,
			modal:true,
			width:600,
			show:{effect:"scale",duration:512},
			hide:{effect:"scale",duration:512},
			resizable:false
		});

		new KeySequence ([66, 65], function() {
			$("#konami_ltlm").dialog("open");
		});
	});
</script>
