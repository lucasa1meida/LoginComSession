<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página de Login</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="static/materialize/css/materialize.min.css"  media="screen,projection"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<style>
body {
  background-image: url("https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");
  background-size: 100%;
}

span{
	color: black;
	font-size: 25px;
}

c1{
	color: black;
	font-size: 25px;
	font-style: oblique;
}

</style>

</head>
<body>

<%@ page import="entity.Login" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%
	if(session.getAttribute("login")!=null){
		response.sendRedirect("sistema.jsp");
	}else{
%>

<div class="row">
<div class="col s12 m6" style="margin-left: 25%; margin-top: 13%;">
<div class="" style="background-color: transparent;">
<div class="card-content">

<form action="ControllerLogin" method="post" > 
<c1>
	<b>Email:<br/>
	<input type="email" name="email" value="" id="email">
	<br/>Senha:<br/>
	<input type="password" name="senha" value="" id="senha"><br/></b>
	
		<button type="submit" class="btn" style="width: 50%; margin-left: 25%;">Logar</button><br/>
		</c1>
		${msg}
</form>
</div>
</div>
</div>
</div>
<br/>
<a href="cadastrar.jsp" class="btn" style="margin-left: 90%; margin-top:10%">Cadastrar</a>

<%
}
%>
</body>
</html>