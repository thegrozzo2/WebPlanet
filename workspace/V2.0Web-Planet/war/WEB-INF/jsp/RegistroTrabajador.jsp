<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/estilo.css" type="text/css" rel="stylesheet" />
	<title>Registro de Trabajadores</title>
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

			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=12">NOSOTROS</a></p>
			</div>
			
			<div class="contenedor-logos">
				<div class="logo">
				</div>
				<p class="title-menu"><a href="controljsp?v=8">ADMINISTRAR</a></p>
			</div>
		</div>
<div id="all">
  <header>
                <h1>Registro</h1>
            </header>

	
		<form action="registrotra" method="POST">
		<label>Username: </label>

  		<input type="text" name="user">
  		
  		<label>password: </label>
  		
  		<input type="password" name="pass">
  		
  		<label>KeyID: </label>
  		
  		<input type="text" name="id" maxlength="5">
  		
  		<label>Nombres:</label>
  		
  		<input type="text" name="nombre">
  		
  		<label>Apellidos: </label>
  		
  		<input type="text" name="apellido">
  		
  		
		
  		<label>Sexo: </label>
  		
  		<select name="listaSexo">
  			<option>Sexo</option>
  			<option value="Masculino">Masculino</option>
  			<option value="Femenino">Femenino</option>
  		</select>
  		<label>Email: </label>
  		
  		<input type="email" name="email" value="..@gmail.com"><br>
	
  		<input type="reset" name="Limpiar">
  		<input type="submit" value="Enviar">
  		
  		
		</form>
	</div>
</body>
</html>