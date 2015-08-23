<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Login</title>
<%@ include file="/templates/header.jsp"%>
</head>
	<body>
		<%@ include file="/templates/menu.jsp"%>
		<!-- SEU CONTEÚDO -->
		<div class="container">
			<div class="row">
				<div id="conteudo" class="col-md-9">	
					<!-- div login -->
					<div class="container droppedHover">
						<form class="form-signin" role="form">
							<h2 class="form-signin-heading" contenteditable="false">Contato</h2><br/>
							<input type="text" class="form-control" name="name" placeholder="Nome" required="" autofocus="" contenteditable="false">
							<input type="text" class="form-control" name="email" placeholder="Email" required="" contenteditable="false">
							<br/>
							<input type="text" class="form-control" name="title" placeholder="Assunto" required="" contenteditable="false">
									
							<div class="form-group">
								<textarea class="form-control" name="message" rows="5" id="comment" placeholder="Mensagem"></textarea>
							</div>
							<button id="corPadrao" class="btn btn-lg btn-primary btn-block" type="submit">Enviar</button><br/>
						</form>
					</div><!-- fim div login -->
				</div><!-- div conteudo -->
			</div><!-- div row container -->
		</div><!-- div container --><br/>
		<%@ include file="/templates/footer.jsp"%>	
	</body>
</html>