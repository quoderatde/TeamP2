<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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

<title>�м���û</title>

<link href="./main.550dcf66.css" rel="stylesheet">

<style type="text/css">
li{
 list-style: none;
}
span.title{
font-size:15px;

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
						alt=""> ġ���̿� ���̵�
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="./index.jsp" title="">Home</a></li>
						<li><a href="./application.jsp" title="">�м���û</a></li>
						<li><a href="./board.jsp" title="">�Խ���</a></li>
						<li>
							<p>
								<a href="./login.jsp" class="btn btn-default navbar-btn"
									title="">�α���</a>

							</p>
						</li>

					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="page-container">
		<h1>YouTube ������ �м��ϱ�</h1>
	
		<form class="search-form" action="videoShow.jsp">
		<table border="1">
		<tr>
		<td>
			<input id="video-url" class="form-input" autocomplete="off"
				placeholder="https://www.youtube.com/watch?v=6XSa_sVERfo"><a
				href="https://www.youtube.com/watch?v=6XSa_sVERfo"> </a>
			
			
			</td>
			<td><button id="search-btn" type="submit" class="form-btn"
				sensors-name="kol_web_ytbvideo_start">�м��ϱ�</button></td>
				</tr>
				</table>
				<br>
			
			
		</form>

		<div data-dom-result="" class="result-block">
			<div class="main-content">
				<div class="video-wrapper">
					<iframe id="player" class="player" type="text/html" width="482"
						height="272" allowfullscreen="1"
						src="https://www.youtube.com/embed/6XSa_sVERfo?enablejsapi=1&amp;origin=https://www.noxinfluencer.com"
						frameborder="0" enablejsapi="true"></iframe>
				</div>
				<div title="�����׷����� ������ �� �� ������? [��Ʋ�׶���]" class="title ellipsis">�����׷�����
					������ �� �� ������? [��Ʋ�׶���]</div>
				<a href="/youtube/channel/UCHxKSivB6JLZ1SEMdxd1fAg"
					class="block mt-8"><img
					src="https://res06.bignox.com/noxinfluencer/youtube/avatar/0fa2d06f02689c60c99f179d43ae4247.png"
					class="img">
				<div class="info-block">
						<span class="title">�߶߶߶�</span>
						<div>
							<span>118.19�� </span><span> ������ ��</span><span class="ml-8">740
							</span><span> ������ ��</span><span class="ml-8">3.22�� </span><span>
								���� ��ȸ��</span><span>�� 2019-06-26</span>
						</div>
					</div></a>
			</div>
			<div class="detail-content">
				<div class="detail-block">
					<span class="title"> ������ �м� ���� </span>
					<ul class="detail-list">
						<li class="detail-item"><div class="title">������ ��ȸ��</div>
							<div class="content">24.75��</div></li>
						<li class="detail-item"><div class="title">
								<span>������ ��ȸ����<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="�������� �����ڿ���&nbsp;�����ϴ� �ۼ�Ʈ,&nbsp;�ۼ�Ʈ�� �������� ��������&nbsp;Ȱ������&nbsp;�����ϴ�."></i></span>
							</div>
							<div class="content">
								20.9% <span class="detail">(<span class="c-success">���ƿ�</span>)
								</span>
							</div></li>
					</ul>
				</div>
				<div class="detail-block">
					<span class="title"> ������ </span>
					<ul class="detail-list">
						<li class="detail-item"><div class="title">
								<span>���ƿ� Ŭ������<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="�����ڵ��� ���� ���� ���ƿ� �� �Ⱦ�並 �� �� �ֽ��ϴ�."></i></span>
							</div>
							<div class="content">
								97.2% <span class="detail">(2851 <i
									class="kol-icon kol-icon-like"></i> / 83 <i
									class="kol-icon kol-icon-dislike"></i>)
								</span>
							</div></li>
						<li class="detail-item"><div class="title">��ۼ�</div>
							<div class="content">207</div></li>
						<li class="detail-item"><div class="title">
								<span>������ ������<i data-toggle="tooltip" title=""
									class="kolicon kol-icon-question-circle ml-8"
									data-original-title="��� �� ���ƿ�&nbsp;�� �����͸�&nbsp;��������&nbsp;�м��� ����Դϴ�.&nbsp;"></i></span>
							</div>
							<div class="content">2%</div></li>
					</ul>
				</div>
				<div class="detail-block">
					<span class="title"><span data-toggle="tooltip" title=""
						data-original-title="������ �±״� �������� �߿� ������ �ݿ��ϴ� ���Դϴ�. �±׸� Ŭ���Ͽ� �ڼ��� ������ Ȯ���غ��ʽÿ�.">������
							�±�</span></span>
					<ul class="tag-list">
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">�߶߶߶�</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">��Ʋ�׶���</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">���</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">������ġ</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">��ġ</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">���ʿ���</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">Ʈ��ġ</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">��Ʈ����</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">�߶�</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">������ī</span>
						<span sensors-name="web_ytbvideo_tags" data-tag="" class="kol-tag">������īTV</span>
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
		<td>
		<input id="countryCode" type="hidden" value="KR">
		<div class="popup" id="popup-tag">
			<div class="content-container">
				<div class="content">
					<span data-close-popup class="kol-icon kol-icon-fork"></span> <span
						class="kol-tag ellipsis" id="popup-data-tag"></span>
					<div>
						<div class="content-block">
							<div class="title">YouTube ���� �� �±��� ��ȸ�� ���� (�ֱ� 30��)</div>
							<div class="content-detail">
								<div class="chart-wrapper" id="popup-dom-chart"></div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		</td>
		<td>
		
		<div>���� ��ȸ�� </div>
		
		</td>
		</tr>
		</table>











		<footer class="footer-container white-text-container">
			<div class="container">
				<div class="row">


					<div class="col-xs-12">
						<h3>Mountain</h3>

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