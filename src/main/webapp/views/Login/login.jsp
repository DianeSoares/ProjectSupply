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
	 <div id="wrapper">

        
		<%@ include file="/templates/menu.jsp"%>
	
	
	 <div id="page-wrapper">
	            <div class="container-fluid">
	            <c:if test="${erroLogin == 'sim'}">
					<div class="alert alert-danger" role="alert">
						Email ou senha incorretos!
					</div>
				</c:if>
				<div align="center" >
					    <form action="checkLogin" class="form-signin" method="POST">       
					      <h2>Login</h2>
					      <input type="text" class="form-control" name="email" placeholder="Email" required="" autofocus="" />
					      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
					      <label class="checkbox">
					        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
					      </label>
					      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
					    </form>
					  </div>
 			    </div>		
		
				</div>
			</div>
		</div><!-- div container --><br/>
	</body>
</html>