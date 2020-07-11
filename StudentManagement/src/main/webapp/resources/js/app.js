function validateName() {
	var name = document.getElementById("name").value;
	regx = /^[A-Za-z]+$/
	if (regx.test(name)) {
		document.getElementById("name_label").style.visibility = "hidden";
	} else {
		document.getElementById("name_label").style.visibility = "visible";
	}
}


function validateMail() {
	var mail = document.getElementById("mailId").value;
	regx = /^([A-Za-z0-9-/.]+)@([A-Za-z0-9-]+).([a-z]{2,5})(.[a-z]{2,5})?$/
	if (regx.test(mail)) {
		document.getElementById("mail_label").style.visibility = "hidden";
	} else {
		document.getElementById("mail_label").style.visibility = "visible";
	}
}