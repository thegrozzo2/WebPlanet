<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>reservas</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">

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


	<form action="cerrar" method="POST">
	
	<h3>Selecciona tu pelicula</h3>
	
	<select id="nombre" name="nombre">
  	<option value="JW">Jurassic World</option>
  	<option value="IN">Intensamente</option>
  	<option value="DBZ">Dragon Ball Z La Resurreccion de Frezzer</option>
  	<option value="MB">Mujer Bonita</option>
  	<option value="HCC2">Heroe de Centro Comercial 2</option>
   	<option value="UED">Una espia despistada</option>
  	<option value="LND3">La Noche del Demonio 3</option>
  	<option value="TE">Terremoto</option>
   	<option value="TO">Tomorrowland</option>
	</select>

	<h3>Ingresa el dia</h3>

	<input type="text" name="dia" >

	<h3>Selecciona tu horario</h3>
	<select id="horario" name="horario">
  	<option value="horario1">13:30</option>
  	<option value="horario2">14:20</option>
  	<option value="horario3">16:10</option>
  	<option value="horario4">17:00</option>
  	<option value="horario5">18:50</option>
  	<option value="horario6">19:40</option>
  	<option value="horario7">20:30</option>
  	<option value="horario8">21:10</option>
  	<option value="horario9">22:20</option>
  	<option value="horario10">22:50</option>
	</select>
	
	<h3>Selecciona tu combo</h3>
	
	<select id="combo" name="combo">
  	<option value="combo1">Combo Tu y Yo - 18soles</option>
  	<option value="combo2">Combo Snack - 14soles</option>
  	<option value="combo3">Combo Mio - 17soles</option>
  	<option value="combo4">Combo Kids - 10soles</option>
  	<option value="combo5">Combo Amigos - 41soles</option>
  	<option value="combo6">Combo Familiar - 29soles</option>
	</select>
	<input type="submit" value="Hecho">
</form>


<p><h3><b>Nota:</b>La reserva solo tiene validez 3 dias.</h3>
</div>
</body>
</html>