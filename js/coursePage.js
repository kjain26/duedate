$(document).ready(function () {

	$(".semester").click(function() {
		$(this).css({
			"background-color": "#315D7F",
			"border": "3px solid #315D7F"
		});
		$(".homeworks").css({
			"background-color": "#D9D9D6",
			"border": "3px solid #D9D9D6"
		});
	});

	$(".homeworks").click(function() {
		$(this).css({
			"background-color": "#315D7F",
			"border": "3px solid #315D7F"
		});
		$(".semester").css({
			"background-color": "#D9D9D6",
			"border": "3px solid #D9D9D6"
		});
	});

});