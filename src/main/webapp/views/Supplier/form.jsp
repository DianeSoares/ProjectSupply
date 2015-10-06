<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Cadastro de Fornecedor</title>

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
						<form:form action="saveSupplier" name="f" method="post" modelAttribute="supplier" commandName="supplier" class="form-signin" role="form">
							<form:hidden path="id"/>
							<h2 class="form-signin-heading" contenteditable="false">Cadastro de Fornecedor</h2><br/>

							<form:input path="companyName" class="form-control" placeholder="Razão Social" required="true" autofocus="" contenteditable="false"/>
							</br>
							<form:input path="cnpj" class="form-control" placeholder="CNPJ" required="true" autofocus="" contenteditable="false"/>
							<form:errors path="cnpj" class="form-control alert-danger" role="alert" contenteditable="false"/><br/>
							</br>		
							<form:input path="telephone" class="form-control" placeholder="Telefone" required="true" autofocus="" contenteditable="false"/>
							<form:errors path="telephone" class="form-control alert-danger" role="alert" contenteditable="false"/><br/>
							</br>
							<input type="text" name="category" class="form-control" placeholder="Categoria" required="" contenteditable="false">
							</br>
							<input type="text" name="state" class="form-control" placeholder="Estado" required="" contenteditable="false">
							</br>
							<input type="text" name="city" class="form-control" placeholder="Cidade" required="" contenteditable="false">
							</br>
							<input type="text" name="address" class="form-control" placeholder="Endereço" required="" contenteditable="false">
							</br>
							<input type="text" name="name" class="form-control" placeholder="Nome" required="" contenteditable="false">
							</br>
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