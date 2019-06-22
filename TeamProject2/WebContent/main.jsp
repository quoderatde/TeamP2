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
	<% MemberDTO info = (MemberDTO)session.getAttribute("info"); //다운캐스팅 %>
	
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="index.html">치현과 아이들</a>
				</h1>
				<p>머신러닝을 통한 조회수 예측 시스템</p>

				<!-- Nav -->
					
				
				<!-- Menu -->
				<nav id="nav1" class="nav">
				<ul class="login1">
						<li>
						<%if(info==null){ %>
						<a class="icon solid fa-home"
							href="login_.jsp"><span>로그인</span></a></li>
							
							<%}else{ %>
							<a href="update.jsp">회원정보수정</a>
							<a href="logout.do">로그아웃</a>
							<%} %>
														
						
						<%if(info==null){ %>
						<li><a class="icon solid fa-home"
							href="join_.jsp"><span>회원가입</span></a></li>
							<%} %>
					</ul>
					</nav>
					
									<!-- Menu -->
					<nav id="menu">	
						<ul class="links">
							<li><h5>로그인</h5></li>
								<form action="login.do" method="post">
									<li><input type="text"  placeholder="Email을 입력하세요" name="email"></li>
									<li><input type="password"  placeholder="PW를 입력하세요" name="pw"></li>
									<li><input type="submit" value="LogIn" class="button fit"></li>
														
								</form>
						</ul>
						<ul class="actions vertical">
							<li><h5>회원가입</h5></li>
								<form action = "join.do" method="post">
									<li><input type="text"  placeholder="Email을 입력하세요" name="email"></li>
									<li><input type="password"  placeholder="PW를 입력하세요" name="pw"></li>
									<li><input type="text"  placeholder="전화번호를 입력하세요" name="tel"></li>
									<li><input type="text"  placeholder="집주소를 입력하세요" name="addr"></li>
									<li><input type="submit" value="JoinUs" class="button fit"></li>
								</form>
						</ul>
					</nav>			
					
				
					
				<nav id="nav" class="nav">
					<ul>
						<li><a class="icon solid fa-home" href="index.html"><span>메인</span></a></li>
						<li><a href="#" class="icon fa-chart-bar"><span>조회수예측</span></a>
							<ul>
								<li><a href="#">유튜브</a></li>
								<li><a href="#">조회수</a></li>
								<li><a href="#">예측</a></li>
								<li><a href="#">해보아요</a>
									<ul>
										<li><a href="#">룰루랄라</a></li>
										<li><a href="#">댓글도</a></li>
										<li><a href="#">분석해보아요</a></li>
									</ul>
								<li><a href="#">성공!!</a></li>
							</ul>
						</li>
						<li><a class="icon solid fa-cog" href="left-sidebar.html"><span>댓글분석</span></a></li>
						<li><a class="icon solid fa-retweet"
							href="right-sidebar.html"><span>좋아요</span></a></li>
						<li><a class="icon solid fa-sitemap" href="no-sidebar.html"><span>분석 신청서</span></a></li>
					</ul>
				</nav>

			</div>
		</section>

		<!-- Features -->
		<section id="features">
			<div class="container">
				<header>
					<h2>
						유튜브 동영상 링크 !! <strong>링크!!</strong>!
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
									href="http://twitter.com/ajlkn">AJ’s</a> (= me). I started it
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
							<p>질문 및 문의사항 기재해주세요!!</p>
							<div class="row">
								<div class="col-6 col-12-small">
									<ul class="icons">
										<li class="icon solid fa-home">광주광역시 남구 송암로 60<br />
											2층 빅데이터반<br /> 대한민국
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
		<a class="link depth-0" href="index.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>로그인</a>
	
		<a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>회원가입</a>
	
	<a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>메인</a>
	<a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>조회수예측</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>▶유튜브</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>▶조회수</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>▶예측</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>▶해보아요</a>
	<a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span> -룰루랄라</a>
	<a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span> -댓글도</a>
	<a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span> -분석해보아요</a>
	<a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>성공!!</a>
	<a class="link depth-0" href="left-sidebar.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>댓글분석</a>
	<a class="link depth-0" href="right-sidebar.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>좋아요</a>
	<a class="link depth-0" href="no-sidebar.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>싫어요</a>
	</nav>
	</div>


	

</body>
</html>