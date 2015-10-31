<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Cadastro de Insumo</title>

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
						<form:form action="saveRawMaterial" name="f" method="post" modelAttribute="rawMaterial" commandName="rawMaterial" class="form-signin" role="form">
							<form:hidden path="id"/>
							<h2 class="form-signin-heading" contenteditable="false">Cadastro de Insumo</h2><br/>

							<form:input path="description" class="form-control" placeholder="Descrição" required="true" autofocus="" contenteditable="false"/>
							<br>
							
							<form:select path="supplier" class="form-control">
								<c:forEach var="supplier" items="${listSupplier}" varStatus="status">
									<form:option value="${supplier.id}" label="${supplier.company}"/>
								</c:forEach>
							</form:select> 
							<br>		
							<form:select path="measure" class="form-control">
									<form:option value="Metros" label="Metros"/>
									<form:option value="Metros" label="Unidade"/>
									<form:option value="Metros" label="Kg"/>
									<form:option value="Metros" label="Litros"/>
									
							</form:select>
							<br>
							<form:input path="unit" type="text" name="unit" class="form-control" placeholder="Unidade" required="" contenteditable="false"/>
							<br>
							<form:input path="price" type="text" name="price" class="form-control" placeholder="Preço por unidade" required="" contenteditable="false"/>
							<br>
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