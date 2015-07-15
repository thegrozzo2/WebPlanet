<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>sugerencias</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
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

		</div>
<div id="all">
	<br>
	<div id="libro">
	<p id="librodereclamaciones">Libro de reclamaciones</p>
	</div>
	<br>
	<h1>Escribenos tu sugerencia o reclamo</h1>
	<p>Todas sus sugerencias seran utilizadas para mejorar la estadia en nuestros establecimientos</p>
	<form action="guardarsug" method="POST">
	<label>Email</label>
	<br>
	<br>
	<input type="email" name="email">
	<br>
	<br>
	<label>Sugerencia</label>
	<br>
	<br>
	<textarea name="comentario" rows="10" cols="80">
	</textarea>
	<br>
	<br>
	<input type="submit" value="Enviar Sugerencia">
	</form>
	</div>
</body>
</html>