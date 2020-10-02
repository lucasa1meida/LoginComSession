<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página de Cadastro</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="static/materialize/css/materialize.min.css"  media="screen,projection"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<style>
body {
  background-image: url("https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");
  background-size: 100%;
}
span{
	font-size: 50px;
}

</style>

</head>
<body>

<div class="row">
<div class="col s12 m6" style="margin-left: 25%; margin-top: 8%;">
<div class="card-content">
<form method="post" action="ControllerCadastro">
<span class="card-title" style="margin-left: -2%">Cadastre-se</span><br/>
<b>Digite um Email:<br/>
<input type="email" value="" name="email">
<br/>Digite uma Senha:<br/></b>
<input type="password" value="" name="senha"><br/>
<button type="submit" class="btn" style="margin-left: 83%">Cadastrar</button><br/>
${msg}
</form>


</div>
</div>
</div>



<a href="login.jsp" style="color:white; margin-left:70%; margin-top: -5%"><b>Inicio</b></a>
</body>
</html>