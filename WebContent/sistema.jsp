<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página do Usuario</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="static/materialize/css/materialize.min.css"  media="screen,projection"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<style>
body {
  background-image: url("https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");
  background-size: 100%;
}
</style>
</head>
<body>

<%@ page import="entity.Login" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%
	if(session.getAttribute("login")==null){
		response.sendRedirect("logout.jsp");
	}
%>

<h1 style="margin-top:15%;margin-left:12%">Seja muito bem vindo à sua página!</h1>


<a href="logout.jsp" class="btn" style="margin-top: 20%; margin-left: 90%">Logout</a>


</body>
</html>