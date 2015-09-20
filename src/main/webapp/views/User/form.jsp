<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Cadastro de Usuário</title>

<%@ include file="/templates/header.jsp"%>
</head>
<body>
	<div id="wrapper">

        
		<%@ include file="/templates/menu.jsp"%>
	
	
	 <div id="page-wrapper">
	            <div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<!-- div login -->
					<div class="container droppedHover">
						<form:form action="saveUser" name="f" method="post" modelAttribute="user" commandName="user" class="form-signin" role="form">
							<form:hidden path="id"/>
							<h2 class="form-signin-heading" contenteditable="false">Cadastro</h2><br/>
							<label class="">
								Dados Pessoais
							</label><br/>
							<form:input path="name" class="form-control" placeholder="Nome Completo" required="true" autofocus="" contenteditable="false"/>
							<!-- <input type="text" name="cpf" class="form-control" placeholder="CPF" required="" contenteditable="false">
							
							<label class="">
								Data de Nascimento
							</label><br/>
							<input type="date" class="form-control">-->
							<br/>
							<label class="">
								Dados de Login
							</label><br/>
							<form:input path="email" class="form-control" placeholder="Email" required="true" autofocus="" contenteditable="false"/>
							<form:errors path="email" class="form-control alert-danger" role="alert" contenteditable="false"/><br/>
							
							<form:password path="password" class="form-control" placeholder="Senha" required="true" autofocus="" contenteditable="false"/>
							<form:errors path="password" class="form-control alert-danger" role="alert" contenteditable="false"/><br/>
							
							<input type="password" name="passwordRepeat" class="form-control" placeholder="Confirme a senha" required="true" autofocus="" contenteditable="false" onchange="validarSenha()">
							<div id="mostrarErroSenha">
							
							</div>							
							<br/>
							<button class="btn btn-lg btn-primary btn-block" type="submit">Enviar</button><br/>
						</form:form>
						
						<div id="whiteSpace">
						
						</div>
					</div><!-- fim div login -->	
				</div><!-- div conteudo -->
			</div><!-- div row container -->
		</div><!-- div container -->
	</div><!-- div wrapper -->
</div>
	
</body>
</html>