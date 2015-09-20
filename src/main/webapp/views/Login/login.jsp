<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Login</title>
<%@ include file="/templates/header.jsp"%>

</head>
	<body>
	 <div id="wrapper">

        
		<%@ include file="/templates/menu.jsp"%>
	
	
	 <div id="page-wrapper">
	            <div class="container-fluid">
	            <c:if test="${erroLogin == 'sim'}">
					<div class="alert alert-danger" role="alert">
						Email ou senha incorretos!
					</div>
				</c:if>
				<div id="wrapper">
			    <form:form action="checkLogin" name="f" method="post" modelAttribute="user" commandName="user" class="form-signin" role="form">
						
							<h2 class="form-signin-heading" contenteditable="false">Login</h2><br/>
							<form:input path="email" class="form-control" placeholder="Email" required="true" autofocus="" contenteditable="false"/>
							<form:password path="password" class="form-control" placeholder="Senha" required="true" autofocus="" contenteditable="false"/>
							<label class="checkbox">
								<input type="checkbox" value="remember-me" class="">Lembre-me</label><br/>
							<button id="corPadrao" class="btn btn-lg btn-default btn-block" type="submit">Entrar</button><br/>
							<a href="<%= request.getContextPath() %>/newUser">Novo por aqui? Cadastre-se</a>
				</form:form>
  </div>		
		
		</div></div></div><!-- div container --><br/>
	</body>
</html>