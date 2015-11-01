<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Geração gráficos</title>
    
    <%@ include file="/templates/header.jsp"%>
	
	<script src="resources/js/jquery-1.10.2.min.js"></script>
	<script src="resources/js/highcharts.js"></script>
	<script src="resources/js/exporting.js"></script>
	<script src="resources/js/custom-chart.js"></script>

    <script type="text/javascript">
        var contextPath = '<c:out value="${pageContext.request.contextPath}"/>';
        $(document).ready(function() {
            getRemoteDataDrawChart(contextPath + '/linechart1', createNewLineChart('chart1-container'));
            getRemoteDataDrawChart(contextPath + '/linechart2', createNewLineChart('chart2-container'));
            getRemoteDataDrawChart(contextPath + '/linechart3', createNewLineChart('chart3-container'));
        });
    </script>
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
		        	<h2>Gráficos baseados em indicadores</h2><br>
		            <div class="col-md-9">
		                <div class="panel panel-danger">
		                    <div class="panel-heading">
		                        <h3 class="panel-title">Estoque</h3>
		                    </div>
		                    <div id="chart1-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
		                </div>
		            </div><br>
		            <div class="col-md-9">
		                <div class="panel panel-primary">
		                    <div class="panel-heading">
		                        <h3 class="panel-title">Highchart Chart 2</h3>
		                    </div>
		                    <div id="chart2-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
		                </div>
		            </div><br>
		            <div class="col-md-9">
		                <div class="panel panel-warning">
		                    <div class="panel-heading">
		                        <h3 class="panel-title">Highchart Chart 3</h3>
		                    </div>
		                    <div id="chart3-container" style="min-width: 300px; max-width: 500px;  height: 300px; margin: 0 auto"></div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		
		
		</div><!--/CONTAINER -->
	</div>
</div>

		
		</body>
		</html>
