<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

<link href="main.550dcf66.css" rel="stylesheet">

<style type="text/css">
li{
 list-style: none;
}
body{
background-color: #F6F6F6;
}
</style>



</head>

<body>
	<!-- Add your content of header -->
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
								<a href="./login.jsp" class="btn btn-default navbar-btn"
									title="">로그인</a>

							</p>
						</li>

					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="page-container">
		<h1>YouTube 동영상 분석하기</h1>
		<form class="search-form" action="videoShow.jsp">
			<table border="1">
			<tr>
			<td>
			<input id="video-url" class="form-input"
				placeholder="YouTube 동영상 링크를 입력하십시오: https://www.youtube.com/watch?v=ABC"
				autocomplete="off"><a href="https://www.youtube.com/watch?v=s54bsh0OOu4"></a>
				</td>
				
				
			<td><button id="search-btn" type="submit" class="form-btn"
				sensors-name="kol_web_ytbvideo_start">분석하기</button></td>
				</tr>
				</table>
				<br>
			<span class="form-error" data-form-error=""></span>
		</form>
		<div data-dom-result="" class="result-block">
			<div class="main-content">
				<div class="video-wrapper">
					
					<iframe id="player" class="player" type="text/html" width="482"
						height="272" allowfullscreen="1"
						src="https://www.youtube.com/embed/s54bsh0OOu4?enablejsapi=1&amp;origin=https://www.noxinfluencer.com"
						frameborder="0" enablejsapi="true"></iframe>
						
				</div>
				
				<div title="Brawl Stars Summer Brawl Talk!" class="title ellipsis">Brawl
					Stars Summer Brawl Talk!</div>
				<a href="/youtube/channel/UCooVYzDxdwTtGYAkcPmOgOw"
					class="block mt-8"><img
					src="https://res06.bignox.com/noxinfluencer/youtube/avatar/a1073921a031e43e95b71d680bb415a5.png"
					class="img">
				<div class="info-block">
						<span class="title">Brawl Stars</span>
						<div>
							<span>192.24만 </span><span> 구독자 수</span><span class="ml-8">31
							</span><span> 동영상 수</span><span class="ml-8">1.37억 </span><span>
								누적 조회수</span><span>· 2019-06-25</span>
						</div>
					</div></a>
			</div>
			<div class="detail-content">
				<div class="detail-block">
					<span class="title"> 동영상 분석 보고서 </span>
					<ul class="detail-list">
						<li class="detail-item"><div class="title">동영상 조회수</div>
							<div class="content">24.75만</div></li>
						<li class="detail-item" ><div class="title">
								<span>구독자 조회비율<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="동영상이 구독자에게&nbsp;도달하는 퍼센트,&nbsp;퍼센트가 높을수록 구독자의&nbsp;활동량이&nbsp;높습니다."></i></span>
							</div>
							<div class="content">
								20.9% <span class="detail">(<span class="c-success">좋아요</span>)
								</span>
							</div></li>
					
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
								97.2% <span class="detail">(2851만 <i
									class="kol-icon kol-icon-like"></i> / 83만 <i
									class="kol-icon kol-icon-dislike"></i>)
								</span>
							</div></li>
						<li class="detail-item"><div class="title">댓글수</div>
							<div class="content">207</div></li>
						<li class="detail-item"><div class="title">
								<span>구독자 참여율<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="댓글 및 좋아요&nbsp;등 데이터를&nbsp;기준으로&nbsp;분석한 결과입니다.&nbsp;"></i></span>
							</div>
							<div class="content">2%</div></li>
					</ul>
				</div>
				<div class="detail-block">
					<span class="title"><span data-toggle="tooltip" title=""
						data-original-title="동영상 태그는 동영상의 중요 정보를 반영하는 것입니다. 태그를 클릭하여 자세한 정보를 확인해보십시오.">동영상
							태그</span></span>
					<ul class="tag-list">
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">brawl
							stars</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">brawl
							stars mobile game</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">brawl
							stars download</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">mobile
							game</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">mobile
							strategy game</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">supercell</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">brawl
							talk</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">update</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">tick</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">mecha</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">robots</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">brawl
							stars game</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">star
							powers</span>
					</ul>
				</div>
			</div>
		</div>
				
	<div id="Auth" class="hide" data-auth-state=""></div>
	<input id="uid" type="hidden" value="">
	<input id="id" type="hidden" value="">
	<input id="userType" type="hidden" value="visitor">
	<input id="fansNum" type="hidden" value="">
	<input id="pageId" type="hidden" value="video-report">
	<input id="isExperienceVip" type="hidden" value="">
	<input id="vipLevel" type="hidden" value="">
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



	<input id="countryCode" type="hidden" value="KR">
	<div class="popup" id="popup-tag">
		<div class="content-container">
			<div class="content">
				<span data-close-popup class="kol-icon kol-icon-fork"></span> <span
					class="kol-tag ellipsis" id="popup-data-tag"></span>
				<div>
					<div class="content-block">
						<div class="title">YouTube 에서 이 태그의 조회수 추이 (최근 30일)</div>
						<div class="content-detail">
							<div class="chart-wrapper" id="popup-dom-chart"></div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>		
			
			
			
			

<footer class="footer-container white-text-container">
  <div class="container">
    <div class="row">

     
      <div class="col-xs-12">
        <h3>치현이와 아이들</h3>

        <div class="row">
          <div class="col-xs-12 col-sm-7">
            <p><small>머신러닝을 통한 컨설팅<a href="http://www.mashup-template.com/" title="Create website with free html template"></a>/<a href="https://www.unsplash.com/" title="Beautiful Free Images"></a></small>
            </p>
          </div>
          <div class="col-xs-12 col-sm-5">
            <p class="text-right">
              <a href="https://facebook.com/" class="social-round-icon white-round-icon fa-icon" title="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="https://twitter.com/" class="social-round-icon white-round-icon fa-icon" title="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="https://www.linkedin.com/" class="social-round-icon white-round-icon fa-icon" title="">
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
  document.addEventListener("DOMContentLoaded", function (event) {
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

--> <script type="text/javascript" src="./main.0cf8b554.js"></script></body>

</html>