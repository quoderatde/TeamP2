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


<link rel="apple-touch-icon" sizes="180x180"
	href="./assets/apple-icon-180x180.png">
<link href="./assets/favicon.ico" rel="icon">

<link href="" rel="stylesheet">
<link href="css/common.2fef164c.css" rel="stylesheet">
<link href="css/videoReport.d34fa792.css" rel="stylesheet">

<title>분석신청</title>

<link href="./main.550dcf66.css" rel="stylesheet">

<style type="text/css">
li {
	list-style: none;
}

span.title {
	font-size: 15px;
}

body {
	background-color: #F6F6F6;
}
</style>



</head>

<body>
	<!-- Add your content of header -->
	
	<%
	 String email = (String) session.getAttribute("email");
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
						alt=""> Y-Mining
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
					
						<li>
							<p>
								<%
									System.out.println(email);
								%>
								<%
									if (email == null) {
								%>
								<a href="login.jsp" class="btn btn-default navbar-btn" title="">로그인</a>
								<%
									} else {
								%>
								<a href="login.jsp" class="btn btn-default navbar-btn" title=""><%=email%>님
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

	<div class="page-container">
		<h1>YouTube 동영상 분석하기</h1>

		<form class="search-form" action="videoShow3.jsp">
			<table border="1">
				<tr>
					<td><input id="video-url" class="form-input"
						autocomplete="off"
						placeholder="https://www.youtube.com/watch?v=qrTl-1yAv4w"><a
						href="https://www.youtube.com/watch?v=qrTl-1yAv4w"> </a></td>
					<td><button id="search-btn" type="submit" class="form-btn"
							sensors-name="kol_web_ytbvideo_start">분석하기</button></td>
				</tr>
			</table>
			<br>


		</form>

		<div data-dom-result="" class="result-block">
			<div class="main-content">
				<div class="video-wrapper">
					<iframe id="player" class="player" type="text/html" width="482"
						height="272" allowfullscreen="1"
						src="https://www.youtube.com/embed/qrTl-1yAv4w?enablejsapi=1&amp;origin=https://www.noxinfluencer.com"
						frameborder="0" enablejsapi="true"></iframe>
				</div>
				<div title="배그 2년인생 처음으로 신규 패치 리뷰를 했더니.. [배틀그라운드]"
					class="title ellipsis">배그 2년인생 처음으로 신규 패치 리뷰를 했더니.. [배틀그라운드]</div>
				<a href="/youtube/channel/UCAaLhok91QDrweyuDRsmjqQ"
					class="block mt-8"><img
					src="https://res06.bignox.com/noxinfluencer/youtube/avatar/e90cf15a07acad1938a50c5b36b6452e.png"
					class="img">
				<div class="info-block">
						<span class="title">킴성태TV</span>
						<div>
							<span>86.89만 </span><span> 구독자 수</span><span class="ml-8">
							</span><span> 동영상 수</span><span class="ml-8">3.05억 </span><span>
								누적 조회수</span><span>· 2019-06-27</span>
						</div>
					</div></a>
			</div>
			<div class="detail-content">
				<div class="detail-block">
					<span class="title"> 동영상 분석 보고서 </span>
					<ul class="detail-list">
						<li class="detail-item"><div class="title">동영상 조회수</div>
							<div class="content">14.46만</div></li>
						<li class="detail-item"><div class="title">
								<span>구독자 조회비율<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="동영상이 구독자에게&nbsp;도달하는 퍼센트,&nbsp;퍼센트가 높을수록 구독자의&nbsp;활동량이&nbsp;높습니다."></i></span>
							</div>
							<div class="content">
								16.6% <span class="detail">(<span class="c-success">좋아요</span>)
								</span>
							</div></li>
							<li class="detail-item"><span class="title"> 예상 조회수</span>
							<div class="content" style="color:crimson;font-size: 25px;font-weight: bold;"><% if(request.getParameter("y_pred")!=null) {%>
								<%= request.getParameter("y_pred")  %>
								<%} %></div></li>
					</ul>
				</div>
				<div class="detail-block">
					<span class="title"> 참여도 </span>
					<ul class="detail-list">
						<li class="detail-item"><div class="title">
								<span>좋아요 클릭비율<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="구독자들이 영상에 대한 좋아요 및 싫어요를 볼 수 있습니다."></i></span>
							</div>
							<div class="content">
								96.4% <span class="detail">(1401 <i
									class="kol-icon kol-icon-like"></i> / 52 <i
									class="kol-icon kol-icon-dislike"></i>)
								</span>
							</div></li>
						<li class="detail-item"><div class="title">댓글수</div>
							<div class="content">162</div></li>
						<li class="detail-item"><div class="title">
								<span>구독자 참여율<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="댓글 및 좋아요&nbsp;등 데이터를&nbsp;기준으로&nbsp;분석한 결과입니다.&nbsp;"></i></span>
							</div>
							<div class="content">2.1%</div></li>
					</ul>
				</div>
				<div class="detail-block">
					<span class="title"><span data-toggle="tooltip" title=""
						data-original-title="동영상 태그는 동영상의 중요 정보를 반영하는 것입니다. 태그를 클릭하여 자세한 정보를 확인해보십시오.">동영상
							태그</span></span>
					<ul class="tag-list">
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">오버워치</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">옵치</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">서든</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">서든어택</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">롤</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">리그오브레전드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">킴성태TV</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">하이즈</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">킴해적단</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">박사장</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">깨박이</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그레전드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드레전드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">철구</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">봉준</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그하이라이트</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">솔쿼드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">보겸</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">킴성태배그</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">battleground</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">랜덤스쿼드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그
							고수</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">에땁</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">awm</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">m24</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">kar98</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">여포</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배킴스</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">APL</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그
							신기록</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드
							최다킬</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">랜쿼드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">랜듀오</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배린이</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그
							하이라이트</span>
					</ul>
				</div>
			</div>
		</div>

		<div id="Auth" class="hide" data-auth-state=""></div>
		<input id="uid" type="hidden" value=""> <input id="id"
			type="hidden" value=""> <input id="userType" type="hidden"
			value="visitor"> <input id="fansNum" type="hidden" value="">
		<input id="pageId" type="hidden" value="video-report"> <input
			id="isExperienceVip" type="hidden" value=""> <input
			id="vipLevel" type="hidden" value="">
		<div class="popup popup-page" id="kol-login-popup"
			style="display: none">
			<div class="content-container">
				<div class="content"></div>
			</div>
		</div>
		<div class="popup over-header no-bg" id="chat-popup"
			data-popup-click="close" style="display: none">
			<div class="content-container">
				<div id="chat-popup-content" class="content"></div>
			</div>
		</div>
		<div class="popup popup-page" id="success-submit-popup"
			style="display: none">
			<div class="content-container success-submit-container">
				<div class="content confirm">
					<div class="confirm-icon"></div>
					<div class="confirm-title">Congratulations</div>
					<button class="form-close" id="success-close">Return</button>
				</div>
			</div>
		</div>



		<table>
			<tr>
				<td><input id="countryCode" type="hidden" value="KR">
					<div class="popup" id="popup-tag">
						<div class="content-container">
							<div class="content">
								<span data-close-popup class="kol-icon kol-icon-fork"></span> <span
									class="kol-tag ellipsis" id="popup-data-tag"></span>
								<div>
									<div class="content-block">
		
									</div>

								</div>
							</div>
						</div>
					</div></td>
	
			</tr>
		</table>


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
	window.twttr = (function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0], t = window.twttr || {};
		if (d.getElementById(id))
			return t;
		js = d.createElement(s);
		js.id = id;
		js.src = "https://platform.twitter.com/widgets.js";
		fjs.parentNode.insertBefore(js, fjs);

		t._e = [];
		t.ready = function(f) {
			t._e.push(f);
		};

		return t;
	}(document, "script", "twitter-wjs"));
</script>
<script>
	window.fbAsyncInit = function() {
		FB.init({
			appId : '314894179081566',
			autoLogAppEvents : true,
			xfbml : true,
			version : 'v3.1'
		});
	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement(s);
		js.id = id;
		js.src = "https://connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<script type="text/javascript" src="/js/runtime.6bab12ae4.js"></script>
<script type="text/javascript" src="/js/chunk.vendor.33ee32fb.js"></script>
<script type="text/javascript" src="/js/chunk.common.6664abf5.js"></script>
<script type="text/javascript" src="/js/chunk.videoReport.a9909c69.js"></script>
<script type="text/javascript">sa.track('page_visit');</script>

</html>