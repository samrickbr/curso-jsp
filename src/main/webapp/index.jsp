<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Curso JSP - Login</title>
</head>
<body>

	<h1>Bem vindo ao curso de JSP</h1>

	<form action="ServletLogin" method="post">
		<input type="hidden" value="<%=request.getParameter("url")%>"
			name="url">
		<table>
			<tr>
				<td><label>Login:</label></td>
				<td><input name="login" type="text"></td>
			</tr>
			<tr>
				<td><label>Senha:</label></td>
				<td><input name="senha" type="password"></td>
			</tr>
			<tr>
				<td></td>
				<td align="center"><input type="submit" value="Enviar"
					style="width: 45%"></td>
			</tr>
		</table>
	</form>
	<h3 style="color: orange;">${msg}</h3>
</body>
</html>