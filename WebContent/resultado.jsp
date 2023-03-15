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

</style>
</head>
<body>
    <h1>Resultado da operação:</h1>
    
    <p>Valor 1: ${calculadora.valor1}</p>
    <p>Valor 2: ${calculadora.valor2}</p>
    <p style="color: #ffa500">Operação: <strong>${calculadora.resultado}</strong></p>
    
    <a href="index.jsp">Nova operação</a>
</body>
</html>