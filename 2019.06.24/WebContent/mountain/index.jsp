<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="com.member.MemberDTO"%>
<%@page import="com.application.ApplicationDTO"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width,initial-scale=1" name="viewport">
<meta content="description" name="description">
<meta name="google" content="notranslate" />
<meta content="Mashup templates have been developped by Orson.io team"
	name="author">

<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">

<link href="" rel="stylesheet">
<link href="css/common.2fef164c.css" rel="stylesheet">
<link href="css/home.2f72f8e5.css" rel="stylesheet">

<title>메인</title>

<link href="main.550dcf66.css" rel="stylesheet">
<style type="text/css">
input#search-input {
	width: 500px;
	height: 35px;
}

h6 {
	color: white;
}

button#search-btn {
	height: 35px;
}

h2, h3 {
	font-style:
}

li {
	list-style: none;
}
</style>



</head>

<body>
	<!-- Add your content of header -->
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<header>
		<nav class="navbar navbar-default active">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="./index.jsp" title=""> <img
						src="./assets/images/mashup-icon.svg" class="navbar-logo-img"
						alt=""> 치현이와 아이들
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="./index.jsp" title="">Home</a></li>
						<li><a href="./application.jsp" title="">분석신청</a></li>
						<li><a href="./board.jsp" title="">게시판</a></li>

						<li>
							<p>
								<%
									System.out.println(info);
								%>
								<%
									if (info == null) {
								%>
								<a href="login.jsp" class="btn btn-default navbar-btn" title="">로그인</a>
								<%
									} else {
								%>
								<a href="login.jsp" class="btn btn-default navbar-btn" title=""><%=info.getName()%>님
									환영합니다!</a> <a href="logout.do" class="btn btn-default navbar-btn"
									title="">로그아웃</a>

								<%
									}
								%>
							</p>
						</li>

					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- Add your site or app content here -->
	<div
		class="hero-full-container background-image-container white-text-container">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<h1>치현이와 아이들</h1>
					<p>WELCOME TO WORLD!!</p>
					<br> <img src="aa.png"> <input type="text"
						id="search-input" class="kol-input" placeholder="동영상 주소를 입력해주세요. ">
					<button id="search-btn" class="kol-btn kol-btn-primary">바로가기</button>


				</div>
			</div>
		</div>
	</div>



	<section class="section-block card-block">
		<div class="section-container">
			<h2>치현이와 아이들 플랫폼 자세히 보기</h2>
			<h3>YouTube 조회</h3>
			<ul class="card-list">

				<li class="card-item"><a class="card-link" href="influ.jsp"
					style="text-decoration: none">
						<div class="icon-wrapper">
							<i class="kolicon kol-icon-rank"><img src="img/qq.PNG"></i>
						</div>
						<div class="title">인기 유튜버 순위</div>
						<div class="sub-title">다른 카테고리의 인기 YouTube 사용자</div>
				</a></li>
				<li class="card-item"><a class="card-link"
					href="rank.html" style="text-decoration: none"><div	class="icon-wrapper">
							<i class="kolicon kol-icon-videos"><img src="img/ww.PNG"></i>
						</div>
						<div class="title">YouTube 동영상 랭킹</div>
						<div class="sub-title">YouTube 인기 동영상 한눈에 보기 </div></a></li>

				<li class="card-item"><a class="card-link" href="view2.jsp"
					style="text-decoration: none"><div class="icon-wrapper">
							<i class="kolicon kol-icon-followers"><img src="img/ss.PNG"></i>
						</div>
						<div class="title">실시간 YouTube 구독자 수</div>
						<div class="sub-title">실시간 구독자 통계</div></a></li>

				<li class="card-item"><a class="card-link"
					href="video.jsp" style="text-decoration: none"><div class="icon-wrapper">
							<i class="kolicon kol-icon-video"><img src="img/ff.PNG"></i>
						</div>
						<div class="title">YouTube 동영상 분석하기</div>
						<div class="sub-title">머신러닝을 통한 조회수 예측</div></a></li>
			</ul>
		</div>

	</section>

	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navbarFixedTopAnimation();
		});
	</script>

	<footer class="footer-container white-text-container">
		<div class="container">
			<div class="row">

				<div class="col-xs-12">
					<h3>치현이와 아이들</h3>

					<div class="row">
						<div class="col-xs-12 col-sm-7">
							<p>
								<small>Website created with <a
									href="http://www.mashup-template.com/"
									title="Create website with free html template">Mashup
										Template</a>/<a href="https://www.unsplash.com/"
									title="Beautiful Free Images">Unsplash</a></small>
							</p>
						</div>
						<div class="col-xs-12 col-sm-5">
							<p class="text-right">
								<a href="https://facebook.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-facebook" aria-hidden="true"></i>
								</a> <a href="https://twitter.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-twitter" aria-hidden="true"></i>
								</a> <a href="https://www.linkedin.com/"
									class="social-round-icon white-round-icon fa-icon" title="">
									<i class="fa fa-linkedin" aria-hidden="true"></i>
								</a>
							</p>
						</div>
					</div>


				</div>
			</div>
		</div>
	</footer>

	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navActivePage();
			scrollRevelation('.reveal');
		});
	</script>

	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

-->
	<script type="text/javascript" src="./main.0cf8b554.js"></script>
</body>
<script>
	var egg = document.getElementById('close-egg');
	egg.onclick = function(e) {
		$('#home-egg').remove();
		if (e.preventDefault) {
			e.preventDefault();
		} else {
			window.event.returnValue == false;
		}
		;
	}
</script>
<script type="text/javascript" src="/js/runtime.6bab12ae4.js"></script>
<script type="text/javascript" src="/js/chunk.vendor.33ee32fb.js"></script>
<script type="text/javascript" src="/js/chunk.common.6664abf5.js"></script>
<script type="text/javascript" src="/js/chunk.home.86f7275f.js"></script>
<script type="text/javascript">
	sa.track('page_visit');
</script>

</html>