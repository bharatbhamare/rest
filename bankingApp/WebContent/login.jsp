<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>Bank</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Corporate Bank a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- .css files -->
	<link href="css/bars.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.css" />
<!-- //.css files -->
<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Ropa+Sans:400,400i&amp;subset=latin-ext" rel="stylesheet">
<!-- //fonts -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //scrolling script -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
<%@include file="head.jsp" %>
		<!-- //Top-Bar -->
		<div class="banner-main jarallax">
			<div class="container">
				<div class="banner-inner">
					<div class="col-md-5 banner-left">
						<form action="login" method="post">
						<h3>Start savings account</h3>
								<input type="email"name="email" placeholder="Your mail" required=""/>
							<input type="text" name="pass" placeholder="Password" required=""/>
							<div class="submit">
								<input type="submit" value="get Login">
								<font color="red">
								<%
								String alert=(String)request.getAttribute("alert");
								if(alert!=null)
								{
									out.print(alert);
								}
								
								%>
								
								</font>
							</div>
						</form>
					</div>
					<div class="col-md-7 banner-right">
						<h1>Account Processing Steps !</h1>
						<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquet venenatis vehicula. Etiam malesuada arcu metus, sollicitudin ullamcorper leo lobortis ut.</h4>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Donec aliquet venenatis vehicula. Etiam malesuada arcu.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Donec aliquet venenatis vehicula. Etiam malesuada arcu sed mi.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Etiam felis tellus, interdum in fringilla ac, imperdiet sed mi.</p>	
							<div class="clearfix"></div>
							</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
<!-- about -->
<!-- //contact -->

<!-- footer -->
<section class="footer">
	<div class="container">
		<div class="footer-grids">
			<div class="col-md-4 footer-grid1">
				<div class="logo1">
					<a href="index.jsp">Corporate <span>Bank</span></a>
				</div>
				<p> Donec in neque quis orci consequat lobortis. Sed non vestibulum mauris. Donec in neque quis orci</p>
				<p> Donec in neque quis orci consequat lobortis. Sed non vestibulum mauris. Donec in neque quis orci</p>
			</div>
			<div class="col-md-3 footer-grid2">
				<h4>Locations</h4>
				<p class="p1">Stoke Newington,London,</p>
				<p>Smith street,8814DM</p>
				<p class="p1">Paris,arrondissement</p>
				<p>on the Right Bank,2216TF</p>
				<p class="p1">Los Vegas,Nevada,</p>
				<p>Eiffel Tower road,2243FR</p>
			</div>
			<div class="col-md-2 footer-grid3">
				<h4>menu</h4>
					<p><a href="#index.jsp" class="scroll">home</a></p>
					<p><a href="#about" class="scroll">about</a></p>
					<p><a href="#services" class="scroll">services</a></p>
					<p><a href="#skills" class="scroll">skills</a></p>
					<p><a href="#team" class="scroll">team</a></p>
					<p><a href="#payment" class="scroll">payment</a></p>
					<p><a href="#blog" class="scroll">blog</a></p>
					<p><a href="#contact" class="scroll">contact</a></p>
			</div>
			<div class="col-md-3 footer-grid4">
				<h4>our links</h4>
				<p><a href="#">Funds transfer</a></p>
				<p><a href="#">Mobile banking</a></p>
				<p><a href="#">Deposits</a></p>
				<p><a href="#">New joint accounts</a></p>
				<p><a href="#">Internet online banking</a></p>
				<p><a href="#">Balance enquiry</a></p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //footer -->

<!-- copyright -->
<section class="copyright">
	<div class="agileits_copyright text-center">
			<p>© 2017 Corporate Bank. All rights reserved | Design by <a href="//w3layouts.com/" class="w3_agile">W3layouts</a></p>
	</div>
</section>
<!-- //copyright -->

	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>

	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="js/bars.js"></script>
</body>
<!-- //Body -->
</html>
<!-- //html -->