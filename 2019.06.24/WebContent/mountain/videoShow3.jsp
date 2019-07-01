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
						src="https://www.youtube.com/embed/mXaA--r7iPQ?enablejsapi=1&amp;origin=https://www.noxinfluencer.com"
						frameborder="0" enablejsapi="true"></iframe>
				</div>
				<div title="배그판 '테두리핵' 탬탬버린&amp;코렛트를 캐리해야합니다 ㅋㅋㅋ | 배틀그라운드 |  윤루트"
					class="title ellipsis">배그판 '테두리핵' 탬탬버린&amp;코렛트를 캐리해야합니다 ㅋㅋㅋ |
					배틀그라운드 | 윤루트</div>
				<a href="/youtube/channel/UCmJ4DkPFPzjR2TkJ7lXSQWw"
					class="block mt-8"><img
					src="https://res06.bignox.com/noxinfluencer/youtube/avatar/2fe74c03c7fa443b1c98db46b49a1aef.png"
					class="img">
				<div class="info-block">
						<span class="title">YoonRoot</span>
						<div>
							<span>22.9만 </span><span> 구독자 수</span><span class="ml-8">1024
							</span><span> 동영상 수</span><span class="ml-8">5488.58만 </span><span>
								누적 조회수</span><span>· 2019-06-23</span>
						</div>
					</div></a>
			</div>
			<div class="detail-content">
				<div class="detail-block">
					<span class="title"> 동영상 분석 보고서 </span>
					<ul class="detail-list">
						<li class="detail-item"><div class="title">동영상 조회수</div>
							<div class="content">6.95만</div></li>
						<li class="detail-item"><div class="title">
								<span>구독자 조회비율<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="동영상이 구독자에게&nbsp;도달하는 퍼센트,&nbsp;퍼센트가 높을수록 구독자의&nbsp;활동량이&nbsp;높습니다."></i></span>
							</div>
							<div class="content">
								30.3% <span class="detail">(<span class="c-success">아주
										좋아요</span>)
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
								98.7% <span class="detail">(1029 <i
									class="kol-icon kol-icon-like"></i> / 14 <i
									class="kol-icon kol-icon-dislike"></i>)
								</span>
							</div></li>
						<li class="detail-item"><div class="title">댓글수</div>
							<div class="content">119</div></li>
						<li class="detail-item"><div class="title">
								<span>구독자 참여율<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="댓글 및 좋아요&nbsp;등 데이터를&nbsp;기준으로&nbsp;분석한 결과입니다.&nbsp;"></i></span>
							</div>
							<div class="content">3.2%</div></li>
					</ul>
				</div>
				<div class="detail-block">
					<span class="title"><span data-toggle="tooltip" title=""
						data-original-title="동영상 태그는 동영상의 중요 정보를 반영하는 것입니다. 태그를 클릭하여 자세한 정보를 확인해보십시오.">동영상
							태그</span></span>
					<ul class="tag-list">
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">pubg</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">윤루트</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">yoonroot</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">실력파게이머</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">게이머</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">실력</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">에임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">battleground</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">게임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">게임실황</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그실황</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">비디오게임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">에임향상</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그에임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드에임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그프로게이머</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드프로게이머</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">스팀</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">블루홀</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">fps</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">슈팅게임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">3인칭슈팅게임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">1인칭슈팅게임</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">프로게임단</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">샌드박스</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">샌드박스네크워크</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드고인물</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">고인물</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">반동제어</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그반동제어</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배틀그라운드반동제어</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">단발광클</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그전설</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">탬탬버린</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">코렛트</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">탬코코인</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">배그
							캐리</span>
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