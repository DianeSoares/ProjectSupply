<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<title>Listar Usuários</title>
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
					  
					 <!--  <span ><h3>${message}</h3>
    					${user.name} adicionado com sucesso..</span> -->
					  
					  <div id="usersList" class="panel-heading"><strong>Usuários Cadastrados</strong></div>
					
					  <!-- Table -->
					  <table class="table">
					  	<thead>
					  		<tr>
					  			<th>#</th>
					  			<th>Nome</th>
					  			<th>Email</th>
					  		</tr>
					  	</thead>
					  	<tbody>
					  		<c:forEach var="user" items="${userList}" varStatus="status">
					        	<tr>
					        		<th scope="row">${status.index + 1}</th>
									<td>${user.name}</td>
									<td>${user.email}</td>
									<td>			
										<table border="0">
											<tr>
												<td>
													<form action="<%= request.getContextPath() %>/editUser">
														<input type="hidden" name="id" value="${user.id}">
														<button type="submit" class="btn btn-primary">
														<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</form>
												</td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td>
													<form action="<%= request.getContextPath() %>/deleteUser">
														<input type="hidden" name="id" value="${user.id}">
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
	</body>
</html>