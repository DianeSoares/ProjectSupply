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
				Indicador de acuracidade de estoque				
			</h3><br><br>

			<div class="col-md-12">
								<!-- div login -->
					<div class="container droppedHover">
						<form name="accuracy" action="<%= request.getContextPath() %>/calcAccuracy">			
										
										<label for="categoryA">Quantidade de matéria prima da categoria A : ${accuracyA}</label>
										<br>
										<input type="text" placeholder="Itens divergentes" name="difA"/><br>
										<input type="hidden" value="${accuracyA}" name="accA"/>
										<label for="categoryB">Quantidade de matéria prima da categoria B : ${accuracyB}</label>
										<br><input type="text" placeholder="Itens divergentes" name="difB"/><br>
										<input type="hidden" value="${accuracyB}" name="accB"/>	
										<label for="categoryC">Quantidade de matéria prima da categoria C :${accuracyC}</label>
										<br><input type="text" placeholder="Itens divergentes" name="difC"/><br>
										<input type="hidden" value="${accuracyC}" name="accC"/>	
										
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