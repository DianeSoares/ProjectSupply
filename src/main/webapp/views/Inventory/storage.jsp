<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Inventário</title>
<%@ include file="/templates/header.jsp"%>

</head>
	<body>
	 <div id="wrapper">

        
		<%@ include file="/templates/menu.jsp"%>
	
	
	 <div id="page-wrapper">
	 
	 <div class="container-fluid">
		<div class="row">
				
		<div align="center" class="col-md-12">
			<h3 class="text-primary">
				Indicador de capacidade de estocagem				
			</h3><br><br>

			<div class="col-md-12">
								<!-- div login -->
					<div class="container droppedHover">
						<form name="accuracy" action="<%= request.getContextPath() %>/calcStorage">			
										
										<label for="total">Quantidade de matéria prima em estoque: ${total}</label>
										<br>
										<input type="text" placeholder="Espaço total" name="spaceTot"/><br>
										<input type="hidden" value="${total}" name="total"/>	
										
										<br>
										<button class="btn btn-lg btn-primary" type="submit">Calcular</button><br/>
			
													
						</form>
					   </div>		
					 </div>	
					</div><!-- div row container -->
				  </div><!-- div row container -->
			    </div><!-- div row container -->	
			</div>
									
</body>
</html>