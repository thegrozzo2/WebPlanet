<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
	<title>login-usuarios</title>
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
        <h1>----Logueese----</h1>

	

			<form action="login" method="get">
		
  			<label>Ingrese Usuario: </label>
  			<input type="text" name="user">
  			
  		
  			<label>Password: </label>
			<input type="password" name="pass">
			
			
  			<input type="reset" name="Limpiar">
  			<input type="submit" value="Login">
  			
  			

			</form>
	</div>
</body>
</html>