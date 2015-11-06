<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="http://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.highcharts.com/highcharts-3d.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	<script src="resources/js/charts.js"></script>

<script>

</script>

<title>Página Principal</title>

<%@ include file="/templates/header.jsp"%>

</head>
	<body>
	 <div id="wrapper">

        
		<%@ include file="/templates/menu.jsp"%>
	
	
	 <div id="page-wrapper">
	            <div class="container-fluid">
	                <div class="row">
	                    <div class="col-lg-12">
	                        <h1 class="page-header">
	                            Página principal <small>Visão geral</small>
	                        </h1>
	                        <ol class="breadcrumb">
	                            <li class="active">
	                                <i class="fa fa-dashboard"></i> Dashboard
	                            </li>
	                        </ol>
	                    </div>
	                </div>
	                <!-- /.row -->
	
	                <div class="row">
	                    <div class="col-lg-3 col-md-6">
	                        <div class="panel panel-primary">
	                            <div class="panel-heading">
	                                <div class="row">
	                                    <div class="col-xs-3">
	                                        <i class="fa fa-line-chart fa-5x"></i>
	                                    </div>
	                                    <div class="col-xs-9 text-right">
	                                        <div class="huge">${rawMaterial}</div>
	                                        <div> Matéria prima </div>
	                                    </div>
	                                </div>
	                            </div>
	                            <a href="<%= request.getContextPath() %>/listRawMaterial">
	                                <div class="panel-footer">
	                                    <span class="pull-left">Detalhes</span>
	                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
	                                    <div class="clearfix"></div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                    <div class="col-lg-3 col-md-6">
	                        <div class="panel panel-green">
	                            <div class="panel-heading">
	                                <div class="row">
	                                    <div class="col-xs-3">
	                                        <i class="fa fa-tasks fa-5x"></i>
	                                    </div>
	                                    <div class="col-xs-9 text-right">
	                                        <div class="huge">${product}</div>
	                                        <div> Produtos </div>
	                                    </div>
	                                </div>
	                            </div>
	                            <a href="<%= request.getContextPath() %>/listProduct">
	                                <div class="panel-footer">
	                                    <span class="pull-left"> Detalhes </span>
	                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
	                                    <div class="clearfix"></div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                    <div class="col-lg-3 col-md-6">
	                        <div class="panel panel-yellow">
	                            <div class="panel-heading">
	                                <div class="row">
	                                    <div class="col-xs-3">
	                                        <i class="fa fa-long-arrow-up fa-5x"></i>
	                                    </div>
	                                    <div class="col-xs-9 text-right">
	                                        <div class="huge">${rawMajor}</div>
	                                        <div>Maior estoque de ${rawMajorM}</div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-3 col-md-6">
	                        <div class="panel panel-red">
	                            <div class="panel-heading">
	                                <div class="row">
	                                    <div class="col-xs-3">
	                                        <i class="fa fa-long-arrow-down fa-5x"></i>
	                                    </div>
	                                    <div class="col-xs-9 text-right">
	                                        <div class="huge">${raw}</div>
	                                        <div>Menor estoque de ${rawNameM}.</div>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                        </div>
	                    </div>
	                </div>
	                <!-- /.row -->
	
	                <div class="row">
	                    <div class="col-lg-12">
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> Gráfico de serra</h3>
	                            </div>
	                            <div class="panel-body">
	                                <div id="chart" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <!-- /.row -->
	
	                <div class="row">
	                    <div class="col-lg-6">
	                        <div class="panel panel-default">
	                            <div class="panel-heading">
	                                <h3 class="panel-title"><i class="fa fa-long-arrow-right fa-fw"></i> Donut Chart</h3>
	                            </div>
	                            <div class="panel-body">
	                                
									<div id="chartPie" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	                                <div class="text-right">
	                                    <a href="#">Ver mais gráficos <i class="fa fa-arrow-circle-right"></i></a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-4">
	                        
	                        </div>
	                    </div>
	                    <div class="col-lg-4">
	                        
	                    </div>
	                </div>
	                <!-- /.row -->
	
	            </div>
	            <!-- /.container-fluid -->
	
	        </div>
	        <!-- /#page-wrapper -->
	   </div>
		<!-- /#wrapper -->
</body>

</html>


