	<nav class="navbar navbar-default" id="corMenu" role="navigation">
			<div class="container">
				<div class="navbar-header ">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Meu Site</a>
				</div>
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="<%= request.getContextPath() %>/">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Categorias <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Jogos</a></li>
								<li class="divider"></li>
								<li><a href="#">Tutoriais</a></li>
								<li class="divider"></li>
								<li><a href="#">Vídeo aulas</a></li>
							</ul>
						</li>
						<li><a href="#">Empresa</a></li>
						<li><a href="<%= request.getContextPath() %>/contact">Contato</a></li>
						<li>&nbsp;&nbsp;&nbsp;</li><li>&nbsp;&nbsp;&nbsp;</li>
						<li><a href="<%= request.getContextPath() %>/loginUser">Login</a></li>
					</ul>
					<!--<form class="navbar-form navbar-right" role="search" action="C:/Users/Karen/Desktop/TG/Layout/tutwd-bootstrap-layout1/html/login/login.html">
						<button type="submit" class="btn btn-success">Entrar</button>
					</form>-->
				</div>
			</div>
		</nav> <!-- final do navbar -->