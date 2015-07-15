<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@page import="java.util.*"%>
	<%@page import="beans.*"%>
	<%@page import="servlets.*"%>
	<%List<Reserva> res = Contenido.listaRes();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/estilo.css">
	<title>Lista de Reservas</title>
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
           
                <h1>----Base de Datos de Reservas----</h1>
            
		<table border="1"  bgcolor="white">
    <tr>
     <th>Usuario</th>
     <th>Pelicula</th>
     <th>Dia</th>
     <th>Horario</th>
     <th>Combo</th>
    </tr>
  <tbody>
<%
 for (int idx = 0; idx < res.size(); idx++) {
     Reserva pel = (Reserva)res.get(idx);
%>
   <tr>
    <td><%= pel.getUsuario() %></td>
    <td><%= pel.getNombre() %></td>
    <td><%= pel.getDia() %></td>
    <td><%= pel.getHora() %></td>
 
   </tr>

<%}%>
  </tbody>
 </table>
	</div>
</body>
</html>

