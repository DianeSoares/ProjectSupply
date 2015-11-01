<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                 <a id="navbar-brand" href="<%= request.getContextPath() %>">SUPPLY CHAIN</a>
                <br>
                	<br>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                
                <c:if test="${!empty usuarioLogado.email}">
							<a id="login" href="<%= request.getContextPath() %>/" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Olá, ${usuarioLogado.name}<b class="caret"></b></a>
							<ul class="dropdown-menu">
		                        <li><a href="<%= request.getContextPath() %>/logout"><b>Sair</b></a></li>
							</ul>	
				</c:if>
				<c:if test="${empty usuarioLogado.email}">
							<li><a id="login" href="<%= request.getContextPath() %>/loginUser"> Login </a></li>
				</c:if>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->

            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="<%= request.getContextPath() %>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="<%= request.getContextPath() %>/charts"><i class="fa fa-fw fa-bar-chart-o"></i> Dados </a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-shopping-cart"></i> Estoque <i class="fa fa-fw fa-caret-down"></i></a>
                         <ul id="demo" class="collapse">
                            <li>
                                <a href="<%= request.getContextPath() %>/inventoryRaw">Cadastro de matéria prima</a>
                            </li>
                             <li>
                                <a href="<%= request.getContextPath() %>/newProduct">Cadastro de produto</a>
                            </li>
                            <li>
                                <a href="#">Relatório de estoque</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo1"><i class="fa fa-fw fa-group"></i> Cadastros <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo1" class="collapse">
                            <li>
                                <a href="<%= request.getContextPath() %>/newUser">Cadastro de usuários</a>
                            </li>
                            <li>
                                <a href="<%= request.getContextPath() %>/newSupplier">Cadastro de fornecedores</a>
                            </li>
                        </ul>
                    </li>
                    
                   <!-- <li>
                        <a href=""><i class="fa fa-fw  fa-truck"></i> Entregas </a>                   
                    </li>
                    
                    <li>
                        <a href="" ><i class="fa fa-fw  fa-truck"></i> Recebimentos </a>                   
                    </li> --> 
                    <li>
                        <a href="<%= request.getContextPath() %>/about" ><i class="fa fa-fw  fa-info-circle"></i> Sobre </a>                   
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>