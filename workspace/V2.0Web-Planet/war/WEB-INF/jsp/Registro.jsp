<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
	<title>Registro</title>
</head>
<body>
<div id="barra-lateral">
			<div id="logo-menu">
			</div>

			<div id="contenedor-logos-primero" class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="index.jsp">HOME</a></p>
			</div>
			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=3">CARTELERA</a></p>
			</div>

			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=16">SUGERENCIAS</a></p>
			</div>
		</div>
		
		
		
<div id="all">

                <h1>Registro</h1>
		<form action="registro" method="POST">
		
		<label>Username: </label>
		
  		<input type="text" name="user">
  		
  		<label>Password: </label>
  		
  		<input type="password" name="pass">
  		
  		<label>Nombres: </label>
  		
  		<input type="text" name="nombre">
 
  		<label>Apellidos: </label>
  		
  		<input type="text" name="apellido">
  		
  		<label>DNI: </label>
  		
  		<input type="text" name="dni">
  		
  		<label>Sexo: </label>
		
  		<select name="listaSexo">
  			<option>Sexo</option>
  			<option value="Masculino">Masculino</option>
  			<option value="Femenino">Femenino</option>
  		</select>
  		<label>Fecha de Nacimiento: </label>
  		
  		<input type="number" name="day">
  		<input type="number" name="month">
  		<input type="number" name="year">
		
  		<label>Email: </label>
  		
  		<input type="email" name="email" value="..@gmail.com"><br>
		
  		<input type="reset" name="Limpiar">
  		<input type="submit" value="Enviar">
		</form>
 
	</div>
</body>
</html>