<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Curso JSP - Login</title>

<style type="text/css">
form {
	position: absolute;
	top: 40%;
	left: 33%
}

h1 {
	position: absolute;
	top: 30%;
	left: 33%;
}

.msg {
	position: absolute;
	bottom: 30%;
	left: 33%;
	font-size: 24px;
	color: red;
}
</style>

</head>
<body>

	<h1>Bem vindo ao curso de JSP</h1>

	<form action="ServletLogin" method="post"
		class="row g-3 needs-validation" novalidate>
		
		<input type="hidden" value="<%=request.getParameter("url")%>" name="url">
			
		<div class="row g-3">
  			<div class="col-md">
    			<div class="form-floating">
					<input name="login" id="login" class="form-control" type="text" required="required" placeholder="Digite seu Login...">
					<label for="login" class="form-label">Login:</label> 
					<div class="invalid-feedback">Informe o Login!</div>
					<div class="valid-feedback">OK!</div>
				</div>
			</div>
			
			<div></div>

			<div class="col-md">
	   			<div class="form-floating">
					<input name="senha" id="senha" class="form-control" type="password" required placeholder="Digite sua senha...">
					<label for="senha" class="form-label">Senha:</label> 
					<div class="invalid-feedback">Informe a senha!</div>
					<div class="valid-feedback">OK!</div>
				</div>
			</div>

			<input type="submit" value="Enviar" class="btn btn-success">

		</div>
	</form>

		<h3 align="center" class="msg">${msg}</h3>
	
	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}
					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>
</body>
</html>