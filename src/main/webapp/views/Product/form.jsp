<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Cadastro de Produto</title>

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
						<form:form action="saveProduct" name="f" method="post" modelAttribute="product" commandName="product" class="form-signin" role="form">
							<form:hidden path="id"/>
							<h2 class="form-signin-heading" contenteditable="false">Cadastro de Produto</h2><br/>

							<form:input path="name" class="form-control" placeholder="Nome" required="true" autofocus="" contenteditable="false"/>
							<br>
							<form:input path="unit" class="form-control" placeholder="Unidades" required="true" autofocus="" contenteditable="false"/>
							<br>		
							<form:input path="sold" class="form-control" placeholder="Vendido" required="true" autofocus="" contenteditable="false"/><br>
							
							<button class="btn btn-lg btn-primary btn-block" type="submit">Enviar</button><br/>

							</div>							
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