/**
 * 
 */

function validateInfo() {
	// 1. get the textbox value
	var first = document.getElementById("firstname").value;
	
	if (first.length <= 2) {
		alert("Please enter a longer first name!");
		document.getElementById("firstname").focus();
		return false;
	}
}