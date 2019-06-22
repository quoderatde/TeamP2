<%@page import="com.member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>



<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Strongly Typed by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="homepage is-preload">
	<% MemberDTO info = (MemberDTO)session.getAttribute("info"); //�ٿ�ĳ���� %>
	
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.html">ġ���� ���̵�</a>
				</h1>
				<p>�ӽŷ����� ���� ��ȸ�� ���� �ý���</p>

				<!-- Nav -->
					
				
				<!-- Menu -->
				<nav id="nav1" class="nav">
				<ul class="login1">
						<li>
						<%if(info==null){ %>
						<a class="icon solid fa-home"
							href="login_.jsp"><span>�α���</span></a></li>
							
							<%}else{ %>
							<a href="update.jsp">ȸ����������</a>
							<a href="logout.do">�α׾ƿ�</a>
							<%} %>
														
						
						<%if(info==null){ %>
						<li><a class="icon solid fa-home"
							href="join_.jsp"><span>ȸ������</span></a></li>
							<%} %>
					</ul>
					</nav>
					
									<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
							<li><h5>�α���</h5></li>
								<form action="login.do" method="post">
									<li><input type="text"  placeholder="Email�� �Է��ϼ���" name="email"></li>
									<li><input type="password"  placeholder="PW�� �Է��ϼ���" name="pw"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
														
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>ȸ������</h5></li>
								<form action = "join.do" method="post">
									<li><input type="text"  placeholder="Email�� �Է��ϼ���" name="email"></li>
									<li><input type="password"  placeholder="PW�� �Է��ϼ���" name="pw"></li>
									<li><input type="text"  placeholder="��ȭ��ȣ�� �Է��ϼ���" name="tel"></li>
									<li><input type="text"  placeholder="���ּҸ� �Է��ϼ���" name="addr"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
					
				
					
				<nav id="nav" class="nav">
					<ul>
						<li><a class="icon solid fa-home" href="index.html"><span>����</span></a></li>
						<li><a href="#" class="icon fa-chart-bar"><span>��ȸ������</span></a>
							<ul>
								<li><a href="#">��Ʃ��</a></li>
								<li><a href="#">��ȸ��</a></li>
								<li><a href="#">����</a></li>
								<li><a href="#">�غ��ƿ�</a>
									<ul>
										<li><a href="#">������</a></li>
										<li><a href="#">��۵�</a></li>
										<li><a href="#">�м��غ��ƿ�</a></li>
									</ul>
								<li><a href="#">����!!</a></li>
							</ul>
						</li>
						<li><a class="icon solid fa-cog" href="left-sidebar.html"><span>��ۺм�</span></a></li>
						<li><a class="icon solid fa-retweet"
							href="right-sidebar.html"><span>���ƿ�</span></a></li>
						<li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>�м� ��û��</span></a></li>
					</ul>
				</nav>

			</div>
		</section>

		<!-- Features -->
		<section id="features">
			<div class="container">
				<header>
					<h2>
						��Ʃ�� ������ ��ũ !! <strong>��ũ!!</strong>!
					</h2>
				</header>
				<div class="row aln-center">
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="#" class="image featured"><img
								src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3>Okay, so what is this?</h3>
							</header>
							<p>
								This is <strong>Strongly Typed</strong>, a free, fully
								responsive site template by <a href="http://html5up.net">HTML5
									UP</a>. Free for personal and commercial use under the <a
									href="http://html5up.net/license">CCA 3.0 license</a>.
							</p>
						</section>

					</div>
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="#" class="image featured"><img
								src="images/pic02.jpg" alt="" /></a>
							<header>
								<h3>Nice! What is HTML5 UP?</h3>
							</header>
							<p>
								<a href="http://html5up.net">HTML5 UP</a> is a side project of <a
									href="http://twitter.com/ajlkn">AJ��s</a> (= me). I started it
								as a way to both test my responsive tools and sharpen up my
								coding and design skills a bit.
							</p>
						</section>

					</div>
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="#" class="image featured"><img
								src="images/pic03.jpg" alt="" /></a>
							<header>
								<h3>What's this built with?</h3>
							</header>
							<p>
								<strong>Responsive Tools</strong> is a simple set of tools for
								building responsive sites and apps. All of my templates at <a
									href="http://html5up.net">HTML5 UP</a> are built using these
								tools.
							</p>
						</section>

					</div>
					<div class="col-12">
						<ul class="actions">
							<li><a href="#" class="button icon solid fa-file">Tell
									Me More</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>


		<!-- Footer -->
		<section id="footer">
			<div class="container">
				<header>
					<h2>
						Questions or comments? <strong>Get in touch:</strong>
					</h2>
				</header>
				<div class="row">
					<div class="col-6 col-12-medium">
						<section>
							<form method="post" action="#">
								<div class="row gtr-50">
									<div class="col-6 col-12-small">
										<input name="name" placeholder="Name" type="text" />
									</div>
									<div class="col-6 col-12-small">
										<input name="email" placeholder="Email" type="text" />
									</div>
									<div class="col-12">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="col-12">
										<a href="#"
											class="form-button-submit button icon solid fa-envelope">Send
											Message</a>
									</div>
								</div>
							</form>
						</section>
					</div>
					<div class="col-6 col-12-medium">
						<section>
							<p>���� �� ���ǻ��� �������ּ���!!</p>
							<div class="row">
								<div class="col-6 col-12-small">
									<ul class="icons">
										<li class="icon solid fa-home">���ֱ����� ���� �۾Ϸ� 60<br />
											2�� �����͹�<br /> ���ѹα�
										</li>
										<li class="icon solid fa-phone">(000) 000-0000</li>
										<li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a>
										</li>
									</ul>
								</div>
								<div class="col-6 col-12-small">
									<ul class="icons">
										<li class="icon brands fa-twitter"><a href="#">@untitled</a>
										</li>
										<li class="icon brands fa-instagram"><a href="#">instagram.com/untitled</a>
										</li>
										<li class="icon brands fa-dribbble"><a href="#">dribbble.com/untitled</a>
										</li>
										<li class="icon brands fa-facebook-f"><a href="#">facebook.com/untitled</a>
										</li>
									</ul>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
			<div id="copyright" class="container">
				<ul class="links">
					<li>&copy; Untitled. All rights reserved.</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</section>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	
	
	<div id="navPanel">
	<nav>
		<a class="link depth-0" href="index.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>�α���</a>
	
		<a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>ȸ������</a>
	
	<a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>����</a>
	<a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>��ȸ������</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>����Ʃ��</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>����ȸ��</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>������</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>���غ��ƿ�</a>
	<a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span> -������</a>
	<a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span> -��۵�</a>
	<a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span> -�м��غ��ƿ�</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>����!!</a>
	<a class="link depth-0" href="left-sidebar.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>��ۺм�</a>
	<a class="link depth-0" href="right-sidebar.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>���ƿ�</a>
	<a class="link depth-0" href="no-sidebar.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>�Ⱦ��</a>
	</nav>
	</div>


	

</body>
</html>