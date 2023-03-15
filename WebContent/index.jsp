<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora</title>
<style>
body {
	background-color: #DFDEDE;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-weight: bold;
}

.btn-calcular {
	background-color: #008000;
	color: #fff;
	height: 25px;
	width: 100px
}

</style>
</head>
<body>
	<h1>Calculadora</h1>

	<form method="post" action="calculadora">
		<p>
			Valor 1: <input type="number" name="valor1">
		</p>
		<p>
			Valor 2: <input type="number" name="valor2">
		</p>
		<p>
			Operação: <input type="radio" name="operacao" value="soma" checked>
			Soma <input type="radio" name="operacao" value="subtrai">
			Subtração
		</p>
		<p>
			<input class="btn-calcular" type="submit" value="Calcular">
		</p>
	</form>
</body>
</html>