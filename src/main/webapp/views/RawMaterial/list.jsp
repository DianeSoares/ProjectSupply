<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Listar Fornecedores</title>
<%@ include file="/templates/header.jsp"%>
</head>
<body>
	<div id="wrapper">

        
		<%@ include file="/templates/menu.jsp"%>
	
	
	 <div id="page-wrapper">
		<!-- SEU CONTEÚDO -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
					  <!-- Default panel contents -->
					  <div class="panel-heading"> Insumos em estoque</div>
					
					  <!-- Table -->
					  <table class="table">
					  	<thead>
					  		<tr>
					  			<th>#</th>
					  			<th>Descrição</th>
					  			<th>Unidade</th>
					  		</tr>
					  	</thead>
					  	<tbody>
					  		<c:forEach var="rawMaterial" items="${rawMaterialList}" varStatus="status">
					        	<tr>
					        		<th scope="row">${status.index + 1}</th>
									<td>${rawMaterial.description}</td>
									<td>${rawMaterial.unit}</td>
									<td>			
										<table border="0">
											<tr>
												<td>
													<form action="<%= request.getContextPath() %>/editRawMaterial">
														<input type="hidden" name="id" value="${rawMaterial.id}">
														<button type="submit" class="btn btn-primary">
														<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</form>
												</td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td>
													<form action="<%= request.getContextPath() %>/deleteRawMaterial">
														<input type="hidden" name="id" value="${rawMaterial.id}">
														<button type="submit" class="btn btn-danger">
														<span class="glyphicon glyphicon-trash"></span>
														</button>
													</form>
												</td>
											</tr>
										</table>
									</td>
					        	</tr>
							</c:forEach>
					  	</tbody>
					  </table>
					</div>
				</div>
			</div>
		</div>

			</div>
		</div>
		<%@ include file="/templates/footer.jsp"%>	
	</body>
</html>