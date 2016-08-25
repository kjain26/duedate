    var userInputData = function() {
    var name = document.getElementById("nameContact").value;
    var email = document.getElementById("emailContact").value;
    var message = document.getElementById("messageContact").value;
    var userData = {
        userName: name,
        userEmail: email,
        userMessage: message
    }
    return userData 
    };


$(document).ready(function() {

		$(".buttonSub").hover(function () {
		$(this).css("background-color", "#315D7F");
		$(this).css("color","white");
	}, 
	function() {
		$(this).css("background-color", "#D9D9D6");
		$(this).css("color", "#315D7F");
	}
	);

});

