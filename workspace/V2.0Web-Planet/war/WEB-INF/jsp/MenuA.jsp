<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%HttpSession misesion= request.getSession();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>menu-administrador</title>
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<style>
.button {
	background:#7f8c8d;
	color:#fff;
	display:inline-block;
	font-size:1.25em;
	margin:20px;
	padding:10px 0;
	text-align:center;
	width:200px;
	text-decoration:none;
	box-shadow:0px 3px 0px #373c3c;
}
 
.button span {
	margin-right:10px;
}
 
/*Colores*/
.button.blue {
	background:#3498db;
	box-shadow:0px 3px 0px #266792;
}
 
.button.yellow {
	background:#e67e22;
	box-shadow:0px 3px 0px #b55704;
}
 
 
/*Tamaños*/
.button.medium {
	width:180px;
}
 
 
.button.large {
	width:410px;
}
 
 
.button.radius {
	border-radius:50px;
}
 
/*Efectos, Hover*/
.button:hover {
	box-shadow:0px 0px 0px;

}
</style>
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
				<p class="title-menu"><a href="controljsp?v=16">SUGERENCIAS</a></p>
			</div>

		</div>

<div id="all">
<h3>Sesion iniciada con: <%=misesion.getAttribute("usuario") %> ===> <a href="/cerrarsesion"><button>CERRAR SESION</button></a> </h3>
<div id="empleados">


	<a href="controljsp?v=6" class="button large">
		<span class="icon-code"></span>LISTA DE TRABAJADORES</a>
	 <br>
	 <a href="controljsp?v=14" class="button large">
		<span class="icon-code"></span>REGISTRAR TRABAJADOR</a>
	 <br>
	 <a href="controljsp?v=2" class="button medium">
		<span class="icon-code"></span>BUSCAR TRABAJADOR</a>

	 <a href="controljsp?v=2" class="button medium">
		<span class="icon-code"></span>ELIMINAR TRABAJADOR</a>
	 <br>

</div>
	 <div id="usuarios">
	
	<a href="controljsp?v=7" class="button large">
		<span class="icon-code"></span>LISTA DE CLIENTES</a>
  <br>
   <a href="controljsp?v=2" class="button large">
		<span class="icon-code"></span>BUSCAR CLIENTE</a>
	 <br>
	  <a href="controljsp?v=2" class="button large">
		<span class="icon-code"></span>ELIMINAR CLIENTE</a>
	 <br>
	 </div>
<div id="otro">
<a href="controljsp?v=4" >ver lista de reservas</a>
<br>
<a href="controljsp?v=5" >ver sugerencias</a>
</div>
</div>
</body>
</html>