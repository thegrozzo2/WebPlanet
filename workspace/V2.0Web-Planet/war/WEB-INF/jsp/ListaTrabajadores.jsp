<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="beans.*"%>
<%@page import="servlets.*"%>
<%List<Usuariotra> us = Contenido.listatra();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Trabajadores Registrados</title>
	<link href="css/estilo.css" type="text/css" rel="stylesheet" />
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

<table border="1"  bgcolor="white">
    <tr>
     <th>Nombres</th>
     <th>User</th>
     <th>Password</th>
     <th>E-mail</th>
    </tr>
  <tbody>
<%
 for (int idx = 0; idx < us.size(); idx++) {
     Usuariotra a = (Usuariotra)us.get(idx);
%>
   <tr>
    <td><%= a.getNombre() +" "+ a.getApellido() %></td>
    <td><%= a.getUser() %></td>
    <td><%= a.getPass() %></td>
    <td><%= a.getEmail() %></td>
   </tr>

<%}%>
  </tbody>
 </table>
 
 </div>
</body>
</html>