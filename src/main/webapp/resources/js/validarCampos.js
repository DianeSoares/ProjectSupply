function validarSenha() {
	senha1 = document.f.password.value
	senha2 = document.f.passwordRepeat.value

	var div = document.getElementById("mostrarErroSenha");

	if (senha1 == senha2)
		div.innerHTML = " ";
	else
		div.innerHTML = "<div class='form-control alert-danger' role='alert'>" + 'As senhas devem ser iguais!' + "</div>";
		
}