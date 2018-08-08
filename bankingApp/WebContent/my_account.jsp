<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.b3.banking.dto.BankInfo"%>
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
					
					<div class="col-md-12 banner-right">
						<h1><font color="red">
						<%
						
						String msg=(String)request.getAttribute("msg");
						
						
						if (msg!=null)
						{
							out.print(msg);
						}else{
							%>
							Welcome
							<%
						}
						
						%>
						
						</font>
						</h1>
						<%

		SessionFactory sessionfactory= new Configuration().configure().buildSessionFactory();
	Session sessio= sessionfactory.openSession();
	String email=(String)session.getAttribute("email");
	String pass=(String)session.getAttribute("pass");
	System.out.println(email);
	System.out.println(pass);
	Criteria criteria =sessio.createCriteria(BankInfo.class);
	criteria.add(Restrictions.eq("email", email));
	criteria.add(Restrictions.eq("pass", pass));
	BankInfo user1=(BankInfo)criteria.uniqueResult();

						
						%>
						<h4>Your Account Information is: </h4>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p><strong>Email Address: </strong> <%=user1.getEmail() %>.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p><strong>Aadhar Number: </strong> <%=user1.getAdhar() %>.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p><strong>Mobile Number: <%=user1.getMob() %></strong></p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p><strong>Password: </strong> <%=user1.getPass() %>.</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p><strong>Pin Number: <%=user1.getPin()%>.</strong> </p>	
							<div class="clearfix"></div>
							</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
<!-- about -->
<section class="about" id="about">
	<div class="container">
	<div class="about-heading">
		<h2>Balence</h2>
	</div>
		<div class="about-grids">
		<div class="col-md-6 about-left">
			<img src="images/1.jpg" alt="" />
		</div>
		<div class="col-md-6 about-right">
			<h3>Your Account Balance is.</h3>
			<p><%=user1.getBal() %></p>
			<div class="more">
				<a href="#" data-toggle="modal" data-target="#myModal">Transaction Details</a>
			</div>
		</div>
		<div class="clearfix"></div>
		</div>
		</div>
</section>
<!-- //about -->

<!-- services -->
<section class="services" id="services">
	<div class="container">
		<div class="services-heading">
			<h3>Deposit</h3>
		</div>
		<div class="service-grids">
			<div class="service-grid-top">
				<div class="col-md-12 service-grid-1">
				
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-handshake-o" aria-hidden="true"></i></div>
						<h4>Enter Ammount</h4>
						<p>
						<form action="Deposite" method="post">
						<input type="hidden" name="curAmt" value="<%=user1.getBal()%>">
						<input type="number"name="pin" placeholder="your pin" required=""/>
						<input type="number" name="amt" placeholder="amount" required=""/>
							<div class="submit">
								<input type="submit" value="deposite">
								
								</font>
							</div>
						</form></p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="service-grid-bottom">
				<div class="col-md-4 service-grid-1">
				
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-money" aria-hidden="true"></i>
						</div>
						<h4>Saving Account</h4>
						<p><%=user1.getBal() %></p>
					</div>
				</div>
				
				<div class="col-md-4 service-grid-1">
				
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-briefcase" aria-hidden="true"></i>
						</div>
						<h4>current account</h4>
						<p><%=user1.getBal() %>.</p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-credit-card" aria-hidden="true"></i>
						</div>
						<h4>Selery account</h4>
						<p><%=user1.getBal() %></p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</section>
<!-- //services -->

<!-- clients -->
<section class="skills" id="skills">
	<div class="container">
		<div class="skills-heading">
			<h3>WithDraw</h3>
		</div>
		<section class='col-md-12 bar'>
			<form action="Withdraw" method="post">
						<input type="number"name="pin" placeholder="Emter Pin" required=""/>
							<input type="number" name="amt" placeholder="Enter Amount" required=""/>
							<div class="submit">
								<input type="submit" value="Withdraw">
								
								
								
							</div>
						</form>
			
			<div class='clearfix'></div>
		</section>
			<div class='clearfix'></div>
	</div>
</section>
<!-- //clients -->

<!--team-->
<div class="team" id="team">
	<div class="container">
		<h4 class="title-w3">Change Password</h4>
		<div class="team-grids">
		
		<section class='col-md-12 bar'>
			<form action="ChangePass" method="post">
						<input type="email"name="email" placeholder="Enate Email Id" required=""/>
							<input type="text" name="pass" placeholder="Enter new Password" required=""/>
							<div class="submit">
								<input type="submit" value="Change">
								
								
								
							</div>
						</form>
			
			<div class='clearfix'></div>
		</section>
		
		
	</div>
	</div>
</div>
<!--//team-->

<!-- payment -->
<section class="payment jarallax" id="payment">
	<div class="container">
		<div class="payments-heading">
			<h3>Change Pin</h3>
		</div>
		
		<section class='col-md-12 bar'>
			<form action="ChangePin" method="post">
						<input type="email"name="email" placeholder="Enate Email Id" required=""/>
							<input type="number" name="pin" placeholder="Enter new Pin" required=""/>
							<div class="submit">
								<input type="submit" value="Change">
								
								
								
							</div>
						</form>
			
			<div class='clearfix'></div>
		</section>
		</div>
	</div>
</section>
<!-- //payment -->

<!-- our blog -->
<section class="blog" id="blog">
	<div class="container">
		<div class="blog-heading">
			<h3>Our blog</h3>
		</div>
		<div class="blog-grids">
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b2.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 21/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">lorem ipsum</a></h4>
			<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique sapien. Integer sit amet dictum libero.</p>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b1.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 20/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">dolor sit</a></h4>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique.</p>
		</div>
		<div class="col-md-4 blog-grid">
			<a href="#"><img src="images/b3.jpg" alt="" /></a>
			<h5><i class="fa fa-calendar" aria-hidden="true"></i> 19/2/2017 | by <i class="fa fa-user" aria-hidden="true"></i> <a href="#"> Admin</a></h5>
			<h4><a href="#" data-toggle="modal" data-target="#myModal">sit amet</a></h4>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum orci justo, vehicula vel sapien et, feugiat tristique sapien. Integer sit amet.</p>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //our blog -->

<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="span1"aria-hidden="true">&times;</span></button>						
						<h4 class="modal-title"> Corporate<span> Bank</span></h4>
					</div> 
					<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/business.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque ac fermentum diam. Integer eu facilisis nunc, a iaculis felis. Pellentesque pellentesque tempor enim, in dapibus turpis porttitor quis. Suspendisse ultrices hendrerit massa. Nam id metus id tellus ultrices ullamcorper.  Cras tempor massa luctus, varius lacus sit amet, blandit lorem. Duis auctor in tortor sed tristique. Proin sed finibus sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //modal -->
	
<!-- contact -->
<section class="contact" id="contact">
	<div class="container">
		<div class="contact-heading">
			<h3>Contact us</h3>
		</div>
		<div class="contact-grids">
			<div class=" col-md-6 contact-form">
				<form action="#" method="post">
						<input type="text" placeholder="Subject" required=""/>
						<input type="text" placeholder="Your name" required=""/>
						<input type="email" placeholder="Your mail" required=""/>
						<textarea placeholder="Message" required=""></textarea>
						<div class="submit1">
							<input type="submit" value="submit">
						</div>
				</form>
			</div>
			<div class=" col-md-6 map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d167998.10803373056!2d2.2074740643680624!3d48.85877410312378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e1f06e2b70f%3A0x40b82c3688c9460!2sParis%2C+France!5e0!3m2!1sen!2sin!4v1488168816174"></iframe>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</section>
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