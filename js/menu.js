$(document).ready(function() {
	$("#apropos_dialog").dialog({
		autoOpen:false,
		modal:true,
		width:600,
		resizable:false,
		show: {
			effect:"scale",
			duration:512
		},
		hide: {
			effect:"scale",
			duration:512
		}
	});
	$("#apropos_link").on ('click', function (event) {
		$("#apropos_dialog").dialog("open");
	});
	$("#apropos_accordion").accordion({
		collapsible:true,
		active:false
	});
});
