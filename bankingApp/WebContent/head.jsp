	<div class="top-main">
		<div class="number">
			<h3><i class="fa fa-phone" aria-hidden="true"></i> +91 080 987 6541</h3>
			<div class="clearfix"></div>
		</div>
		<div class="social-icons">
		<ul class="top-icons">
			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
		</ul>
		<div class="form-top">
		  <form action="#" method="post" class="navbar-form navbar-left">
			<div class="form-group">
				<input type="search" class="form-control" placeholder="Search">
			</div>
				<button type="submit" class="btn btn-default"><i class="fa fa-search" aria-hidden="true"></i></button>
				<!-- <button type="submit" class="btn btn-default">Submit</button> -->
			</form>
		</div>
			<div class="clearfix"></div>
		</div>
			<div class="clearfix"></div>
	</div>
		<!-- Top-Bar -->
		<div class="top-bar">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<%
							String user=(String)session.getAttribute("user");
						if(user!=null)
						{
							%>
				
				
							<li><a href="my_account.jsp" class="scroll">MyAccount</a></li>
							<li><a href="#about" class="scroll">Balance</a></li>
							<li><a href="#services" class="scroll">Deposite</a></li>
							<li><a href="#skills" class="scroll">Withdraw</a></li>
							<li><a href="#team" class="scroll">ChangePass</a></li>
							<li><a href="#payment" class="scroll">ChangePin</a></li>
							<li><a href="#contact" class="scroll">contact</a></li>
							<li><a href="logout.jsp">logout</a></li>
							
							<%
						}else{
							
				%>
				
							<li><a href="#index.jsp" class="scroll">home</a></li>
							<li><a href="#about" class="scroll">about</a></li>
							<li><a href="#services" class="scroll">services</a></li>
							<li><a href="#skills" class="scroll">skills</a></li>
							<li><a href="#team" class="scroll">team</a></li>
							<li><a href="#payment" class="scroll">payment</a></li>
							<li><a href="#blog" class="scroll">blog</a></li>
							<li><a href="#contact" class="scroll">contact</a></li>
							<li><a href="login.jsp">login</a></li>
				
				<%			
						}
							%>
									</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="logo">
			<a href="index.jsp"><!--<i class="fa fa-inr" aria-hidden="true"></i>-->Corporate <span>bank</span></a>
		</div>