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
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
 
  <link href="" rel="stylesheet">


  <title>�м���û</title>

<link href="main.550dcf66.css" rel="stylesheet">

<style type="text/css">
tbody{

font-family: Hind Siliguri,Helvetica,Arial,sans-serif;
font-size: 18px;
}

</style>



</head>

<body> <!-- Add your content of header -->
<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>

<header>
  <nav class="navbar navbar-default active">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="./index.jsp" title="">
          <img src="./assets/images/mashup-icon.svg" class="navbar-logo-img" alt="">
          ġ���̿� ���̵�
        </a>
      </div>

      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
         
          <li>
            <p>
            <%
									System.out.println(info);
								%>
								<%
									if (info == null) {
								%>
								<a href="login.jsp" class="btn btn-default navbar-btn" title="">�α���</a>
								<%
									} else {
								%>
								<a href="login.jsp" class="btn btn-default navbar-btn" title=""><%=info.getName()%>��
									ȯ���մϴ�!</a> <a href="logout.do" class="btn btn-default navbar-btn"
									title="">�α׾ƿ�</a>

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



<iframe src="http://localhost:8081/test/NewFile.html" width="1300" height="1200">

</iframe>

<footer class="footer-container white-text-container">
  <div class="container">
    <div class="row">

     
      <div class="col-xs-12">
        <h3 align="left">ġ���̿� ���̵�</h3>

        <div class="row">
          <div class="col-xs-12 col-sm-7">
            <p><small>�ӽŷ����� ���� ������<a href="http://www.mashup-template.com/" title="Create website with free html template"></a>/<a href="https://www.unsplash.com/" title="Beautiful Free Images"></a></small>
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