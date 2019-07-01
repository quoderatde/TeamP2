<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@page import="com.application.ApplicationDTO"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>

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
<link href="css/videoReport.d34fa792.css" rel="stylesheet">

<title>인기유투버</title>

<link href="main.550dcf66.css" rel="stylesheet">

<style type="text/css">
li{
 list-style: none;
}
body{
background-color: #F6F6F6;
}
.page-container{
height: 800px;
width: 1000px;
align:center;
}
td{
font-style : Monospace;
text-align: center; 
}

.rew{

}
img.avatar{
   width: 64px;
   height: 64px;
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
   
   
<div class="page-container" style="overflow:scroll;">

<%    
Document doc2 = Jsoup.connect("https://kr.noxinfluencer.com/youtube-channel-rank/top-100-all-all-youtuber-sorted-by-subs-weekly").get();   

Elements head = doc2.getElementsByClass("kol-table.tr-of-th");
Elements profile1 = doc2.body().getElementsByClass("avatar");
Elements profile2 = doc2.body().getElementsByClass("name kol-name");
Elements category = doc2.body().getElementsByClass("category-text");
Elements followerNum = doc2.body().getElementsByClass("text followerNum with-num");
Elements avgView = doc2.body().getElementsByClass("text avgView with-num");

Elements head1 = profile1.select("th");
Elements file1 = profile1.select("img");
Elements file2 = profile2.select("span");
Elements file3 = category.select("a");
Elements file4 =followerNum.select("span.num");
Elements file5 = avgView.select("span.num");

%>
<table id="table" align="center" style="width: 900px;" >

   <tr>
      <td><b>랭킹</b></td>
        <td colspan="2"><b>기본정보</b></td>
        <td><b>카테고리</b></td>
        <td><b>구독자</b></td>
        <td><b>평균조회수</b></td>

    </tr>


<% for(int i =0 ; i<50 ; i++){   %>
   <tr>
      <td><%=i+1 %></td>
      <td><%=file1.get(i+1)%></td>
      <td><%=file2.get(i) %></td>
      <td><%=file3.get(i).text() %></td>
      <td><%=file4.get(i) %></td>
      <td><%=file5.get(i) %></td>
   </tr>

<% }%>



         
   


</table>
   
      
         
   </div>
         
        

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
<script>window.twttr = (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0],
            t = window.twttr || {};
    if (d.getElementById(id)) return t;
    js = d.createElement(s);
    js.id = id;
    js.src = "https://platform.twitter.com/widgets.js";
    fjs.parentNode.insertBefore(js, fjs);

    t._e = [];
    t.ready = function(f) {
        t._e.push(f);
    };

    return t;
}(document, "script", "twitter-wjs"));</script>
   <script>window.fbAsyncInit = function() {
        FB.init({
            appId            : '314894179081566',
            autoLogAppEvents : true,
            xfbml            : true,
            version          : 'v3.1'
        });
    };

    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
   <script type="text/javascript" src="/js/runtime.6bab12ae4.js"></script>
   <script type="text/javascript" src="/js/chunk.vendor.33ee32fb.js"></script>
   <script type="text/javascript" src="/js/chunk.common.6664abf5.js"></script>
   <script type="text/javascript" src="/js/chunk.videoReport.a9909c69.js"></script>
   <script type="text/javascript">sa.track('page_visit');</script>

</html>