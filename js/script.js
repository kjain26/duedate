

$(document).ready(function() {

	
	$(".button").hover(function () {
		$(this).css("background-color", "#315D7F");
		$(this).css("color","white");
	}, 
	function() {
		$(this).css("background-color", "#D9D9D6");
		$(this).css("color", "#315D7F");
	}
	);

	$(function() {
		var courses = [
			"ME 3180",
			"ME 3210",
			"ME 3322",
			"ME 3340",
			"ME 3345",
			"ME 4189"
		];
		$("#course-control").autocomplete({
			source: courses
		});
	});

	$(function() {
		var professors = [
			"Wingate K",
			"Larson G",
			"Loutzenhiser P",
			"Hesketh P",
			"Mead J",
			"Ghiaasiaan S",
			"Aidun C"
		];
		$("#prof-control").autocomplete({
			source: professors
		});
	});


});