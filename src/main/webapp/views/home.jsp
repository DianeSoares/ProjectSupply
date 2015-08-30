<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ include file="/templates/header.jsp"%>

<title>Página Principal</title>
</head>
	<body>
		<%@ include file="/templates/menu.jsp"%>
		
		<!-- Carousel
		================================================== -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner" role="listbox">
			<div class="item active">
			  <img class="first-slide" src="resources/img/carousel/imageCarousel.jpg" alt="First slide">
			  <div class="container">
				<div class="carousel-caption">
				  <h1>Example headline.</h1>
				  <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
				  <p><a class="btn btn-lg btn-default" href="#" role="button">Sign up today</a></p>
				</div>
			  </div>
			</div>
			<div class="item">
			  <img class="second-slide" src="resources/img/carousel/imageCarousel2.jpg" alt="Second slide">
			  <div class="container">
				<div class="carousel-caption">
				  <h1>Another example headline.</h1>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				  <p><a class="btn btn-lg btn-default" href="#" role="button">Learn more</a></p>
				</div>
			  </div>
			</div>
			<div class="item">
			  <img class="third-slide" src="resources/img/carousel/imageCarousel3.jpg" alt="Third slide">
			  <div class="container">
				<div class="carousel-caption">
				  <h1>One more for good measure.</h1>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				  <p><a class="btn btn-lg btn-default" href="#" role="button">Browse gallery</a></p>
				</div>
			  </div>
			</div>
		  </div>
		  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		  </a>
		</div><!-- /.carousel -->
		
		
		
		<div class="container text-center">
			<!-- começo conteúdo -->
			
			<hr>
			<h2>
				Eventos acontecendo na sua região  &nbsp;
				<a href="<%= request.getContextPath() %>/event"><img class="img-circle" src="http://oi61.tinypic.com/2mnrex3.jpg"/></a>
			</h2>
			<br/>
			<hr>
			<br/>
		</div>
		<!-- Marketing messaging and featurettes
		================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="container marketing">

		  <!-- Three columns of text below the carousel -->
		  <div class="row text-center">
			<div class="col-lg-4">
			  <img class="img-circle" src="http://www.bizcomweb.com/Themes/Theme_01/Images/hosted-lync-icon1.png" alt="Generic placeholder image" width="140" height="140">
			  <h2>Conheça outras pessoas</h2>
			  <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
			  <p><a href="#" >View details &raquo;</a></p>
			</div><!-- /.col-lg-4 -->
			<div class="col-lg-4">
			  <img class="img-circle" src="http://www.bizcomweb.com/Themes/Theme_01/Images/email-archiving-icon1.png" alt="Generic placeholder image" width="140" height="140">
			  <h2>Receba por Email</h2>
			  <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
			  <p><a href="#" >View details &raquo;</a></p>
			</div><!-- /.col-lg-4 -->
			<div class="col-lg-4">
			  <img class="img-circle" src="http://www.bizcomweb.com/Themes/Theme_01/Images/file-sharing-storage-icon.png" alt="Generic placeholder image" width="140" height="140">
			  <h2>Compartilhe</h2>
			  <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
			  <p><a href="#" >View details &raquo;</a></p>
			</div><!-- /.col-lg-4 -->
		  </div><!-- /.row -->


		  <!-- START THE FEATURETTES -->

		  <hr class="featurette-divider">

		  <div class="row featurette">
			<div class="col-md-7">
			  <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
			  <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
			  <img class="featurette-image img-responsive center-block" src="http://1.bp.blogspot.com/-Am6MmLulsEU/Uc5TP_H4zRI/AAAAAAAAHGg/upztDk8CsiI/s400/New_Firefox_Logo.png" alt="Generic placeholder image">
			</div>
		  </div>

		  <hr class="featurette-divider">

		  <div class="row featurette">
			<div class="col-md-7 col-md-push-5">
			  <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
			  <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
			  <img class="featurette-image img-responsive center-block" src="http://1.bp.blogspot.com/-Am6MmLulsEU/Uc5TP_H4zRI/AAAAAAAAHGg/upztDk8CsiI/s400/New_Firefox_Logo.png" alt="Generic placeholder image">
			</div>
		  </div>

		  <hr class="featurette-divider">

		  <div class="row featurette">
			<div class="col-md-7">
			  <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
			  <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
			  <img class="featurette-image img-responsive center-block" src="http://1.bp.blogspot.com/-Am6MmLulsEU/Uc5TP_H4zRI/AAAAAAAAHGg/upztDk8CsiI/s400/New_Firefox_Logo.png" alt="Generic placeholder image">
			</div>
		  </div>

		  <hr class="featurette-divider">
		  <!-- /END THE FEATURETTES -->

		</div><!-- /.container -->
		
		<%@ include file="/templates/footer.jsp"%>
	</body>
</html>