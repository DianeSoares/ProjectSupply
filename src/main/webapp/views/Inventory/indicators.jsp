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
				Indicadores			
			</h3><br><br>

			<h1>Acuracidade de estoque: ${result}%</h1>
			
			<div class="col-md-12">


					   </div>		
					 </div>	
					</div><!-- div row container -->
				  </div><!-- div row container -->
			    </div><!-- div row container -->	
			</div>
									
</body>
</html>