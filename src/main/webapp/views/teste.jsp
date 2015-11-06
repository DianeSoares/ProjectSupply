<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Geração gráficos</title>
    
    <%@ include file="/templates/header.jsp"%>
	
</head>
<body>

<div id="wrapper">

        
		<%@ include file="/templates/menu.jsp"%>
	
	
	 <div id="page-wrapper">
		
		<!-- CONTAINER -->
		<div class="container">
		<div class="row">
		    <div class="col-md-12">
		        <div class="row">
		        
		        <h1>${list}</h1>
		        <h1>${listName}</h1>
		        <h1>${listValor}</h1>
		        	
			</div>
		</div>
		</div>
		</div><!--/CONTAINER -->
	</div>
</div>

		
		</body>
		</html>
