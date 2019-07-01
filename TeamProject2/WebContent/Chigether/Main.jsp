<%@page import="com.CrollingDTO"%>
<%@page import="com.CROOLING"%>
<%@page import="com.comu_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.comu_DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="EUC-KR">
  <head>
    <meta charset="utf-8">
    <title>치현이와 아이들</title>
   <meta property="og:image" content="https://d4fodtu7cqfym.cloudfront.net/images/logo_new.png">
    <meta name="robots" content="index, follow" />
    <link rel="canonical" href="https://tgd.kr/">
    <meta property="og:url" content="https://tgd.kr/">
    <meta property="og:type" content="website">
    <meta name="naver-site-verification" content="8104a232949961aa532404ed63ad09672203379c"/>
    <link rel="shortcut icon" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="57x57" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" si]zes="152x152" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="https://d4fodtu7cqfym.cloudfront.net/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon-16x16.png">
    <link rel="manifest" href="https://d4fodtu7cqfym.cloudfront.net/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#6441a5">
    <meta name="msapplication-TileImage" content="https://d4fodtu7cqfym.cloudfront.net/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#6441a5">
    <link rel="stylesheet" type="text/css" href="https://d4fodtu7cqfym.cloudfront.net/ee3c296c155decedfd2e27c4f55e6652.min.css?v=190623">
            <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-71349615-1', 'auto');
  ga('send', 'pageview');

</script>
<style type="text/css">
#comu_rank{
	text-align: left;
}
.col-xs-4{
	text-align: left;
}

#esports-list{
		text-align: left;
}
html{
background-color: white;
}
body{
background-color: white;
}
</style>

<% CROOLING cro = new CROOLING(); 
	CrollingDTO dto = cro.list_up();
	String name = "";
	if(session.getAttribute("email")==null)
	{
		name = "";
	}
	else
	{
		name = (String)session.getAttribute("email");
	}
	

%>
  </head>
  <body>
   <nav >
        <div class="container">
            <div class="navbar-header">
                <div class="navbar-brand" data-toggle="tooltip" data-placement="bottom" title="크고 아름다운 UCC 커뮤니티!">
                    <a class="tvple-logo" href="/" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_logo&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">
              
                    </a>
                </div>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tvple_bs_navbar" aria-expanded="false" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_expansion&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>

            <div class="navbar-collapse collapse" aria-expanded="false" id="tvple_bs_navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/TeamProject2/Chigether/Main.jsp" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_ranking&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">홈</a>
                    </li>
                    <li >
                        <a href="/channels" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_channel&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">채널</a>
                    </li>
                    <li >
                        <a href="/board/notice" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_notice&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">공지</a>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <p class="navbar-btn">
                        <% if(name.equals("")){ %>
                            <a class="btn btn-primary" href="/user/login?url=Imh0dHA6Ly90dnBsZS5jb20vIg.D_Rm3w.qb-pLTEU71QDKcdhdNTU_Xp8Ync">
                                <i class="fa fa-sign-in"></i> 로그인
                            </a>
                            <%}else{%>
                            <%=name %>님 환영합니다.
                            <a class="btn btn-primary" href="/user/login?url=Imh0dHA6Ly90dnBsZS5jb20vIg.D_Rm3w.qb-pLTEU71QDKcdhdNTU_Xp8Ync">
                                <i class="fa fa-sign-in"></i> 로그아웃
                            </a>
                            <%} %>
                        </p>
                    </li>
                </ul>


            </div><!--. navbar-collapse -->
        </div>
        <div>
<img src="https://tpc.googlesyndication.com/simgad/7541818521061387057?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qlTAxeNiqBuA_VOBmYBgZSKy9E_eA" style="margin-left: 400px; margin-top: 50px; mar">

</div>
    </nav>


<!--     <header>
      <div class="container">
        <div class="row">
          <div class="col-xs-4">
            <a href="/"><img src="CHIHYUN.PNG" alt=""></a>
          </div>
          <div class="col-xs-8" align="right">
            <form action="/search" method="get" id="right-search-form">
              <input type="text" placeholder="검색창" value="" id="right-search-input" name="q">
              <button type="submit" id="right-search-btn"><i class="fa fa-search"></i></button>
            </form>
          </div>
        </div>
      </div>

    </header>
    
 -->    <div id="content-area">
      
      
      <div class="container" id="main" style="margin-top: 30px;">
        <div class="row">
                    <div class="col-xs-2" id="main-menu">
            <div class="menu-wrapper">
              <div class="header"><i class="fa fa-bars">전체메뉴</i> </div>
              <a class="shortcut-link" data-shortcut="A" href="/TeamProject2/Chigether/TESTPAGE.jsp?type=all"><em>A</em>전체글보기</a>
              <div class="spacer"></div>
              <a class="shortcut-link" data-shortcut="b" href="/TeamProject2/Chigether/TESTPAGE.jsp?type=free"><em>B</em>커뮤니티</a>
              <div class="spacer"></div>
              <a class="shortcut-link" data-shortcut="c" href="/TeamProject2/Chigether/TESTPAGE.jsp?type=ad"><em>C</em>유튜브 채널홍보</a>
              <div class="spacer"></div>
              <a class="shortcut-link" data-shortcut="d" href="/TeamProject2/Chigether/TESTPAGE.jsp?type=notice"><em>D</em>공지사항</a>
              <div class="spacer"></div>
              <a class="shortcut-link" data-shortcut="e" href="/TeamProject2/Chigether/TESTPAGE.jsp?type=tip"><em>E</em>채널 TIP</a>

            </div>

<!-- tgd_sidebar -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-5807968391783575"
     data-ad-slot="2221690044"
     data-ad-format="auto"></ins>
          </div>
          <div class="col-xs-10" id="main-content" >
                      <div class="row" id="upperBannerArea">
    <div class="col-xs-12" align="center">
<div class="row">
    <div class="col-xs-12">
        <h3 id="hot-clip-header"><a href="/clips">영상 조회수별 탑 18 영상</a> <a href="/clips" class="more">&gt;</a></h3>

        <div id="hot-clip-list">
            <a href="#" class="nav left"><i class="fa fa-chevron-left"></i></a>
            <% int count=0; 
            for(int i=0; i<=18; i++)
            { 
            
            %>
                        <a href="<%=dto.getList_link().get(i) %>" class="hot-clip">
                <img src="<%=dto.getList_img().get(count) %>" class="img-rounded">
                <span>
                <% if(dto.getList_title().get(i).length()>30){%>
                <%=dto.getList_title().get(i).substring(0,30)+"..."%>
                <%}else{%>
                <%=dto.getList_title().get(i)%>
                <%} %>
                </span>
            </a>
<%count+=2;} %>

                        <a href="#" class="nav right"><i class="fa fa-chevron-right"></i></a>
  </div>
    </div>
</div>


<div class="row" id="comu_rank">
    <div class="col-xs-6">
        <h3><a href="/commall">커뮤니티 인기글</a> <a href="http://localhost:8086/TeamProject2/Chigether/TESTPAGE.jsp?type=all" class="more">&gt;</a></h3>
        <ul class="latest-articles">
        <%  comu_DAO dao = new comu_DAO();
        ArrayList<comu_DTO> list = new ArrayList<comu_DTO>();	
        list = dao.select_ViewCount();
        
        for(int i=0; i<list.size(); i++)
        {
        	if(i==10)
        	{
        		break;
        	}
        %>
            <li><a href="/TeamProject2/Chigether/ViewPage-test.jsp?code=<%=list.get(i).getCode()%>" class="board-name"><%=list.get(i).getTitle_tag() %></a><a href="/TeamProject2/Chigether/ViewPage-test.jsp?code=<%=list.get(i).getCode()%>" data-board-alias="gamenews"><%=list.get(i).getTitle() %></a>
            <%} %>
    </div>
    <div class="col-xs-6">
        <h3><a href="/focus">광고 배너</a> <a href="/focus" class="more">&gt;</a></h3>
		<a href="https://www.smhrd.or.kr/" target="_blank" style="display:inline-block;margin-right:20px;"><img src="banner1.jpg" style="width:400px;height:auto;"></a>

    </div>
</div>

<div class="row">
    <div class="col-xs-12" id="esports-container">
        <h3 class="pull-left"><a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=notice">공지사항</a> <a href="/esports" class="more">&gt;</a></h3>

        <div id="esports-list" >
                        
                        <div style="display:inline-block;width:400px;margin-top:2px;" >
                        <% 
                        ArrayList<comu_DTO> list1 = new ArrayList<comu_DTO>();
                        list1 =dao.select("notice");
                        for(int i=0; i<list1.size(); i++)
                        {
							if(i>5)
							{
								break;
							}
                        
                        %>
                            <a class="more" href="/TeamProject2/Chigether/ViewPage-test.jsp?code=<%=list1.get(i).getCode()%>" target="_blank"><strong style="color:#6441a5;"><i class="fa fa-gamepad"></i> <%=list1.get(i).getTitle_tag() %></strong><%=list1.get(i).getTitle()%></a>
                        <%} %>
                        </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-4">
        <h3><a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=ad">유튜브 채널홍보</a> <a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=ad" class="more">&gt;</a></h3>
        <ul class="latest-articles">
          <% 
                        ArrayList<comu_DTO> list2 = new ArrayList<comu_DTO>();
                        list2 =dao.select("ad");
                        for(int i=0; i<list2.size(); i++)
                        {
							if(i>5)
							{
								break;
							}
                        
          %>
            <li><a href="/TeamProject2/Chigether/ViewPage-test.jsp?code=<%=list2.get(i).getCode() %>" data-board-alias="pr">[<%=list2.get(i).getTitle_tag()%>]<%=list2.get(i).getTitle() %></a> <strong class="comments"></strong></li>
            <%} %>   </div>
    <div class="col-xs-4">
        <h3><a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=free">자유게시판</a> <a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=free" class="more">&gt;</a></h3>
        <ul class="latest-articles">
         <% 
                        ArrayList<comu_DTO> list3 = new ArrayList<comu_DTO>();
                        list3 =dao.select("free");
                        for(int i=0; i<list3.size(); i++)
                        {
							if(i>5)
							{
								break;
							}
                        
          %>
            <li><a href="/TeamProject2/Chigether/ViewPage-test.jsp?code=<%=list3.get(i).getCode() %>" data-board-alias="pr">[<%=list3.get(i).getTitle_tag()%>]<%=list3.get(i).getTitle() %></a> <strong class="comments"></strong></li>
            <%} %>   </div>
    <div class="col-xs-4">
        <h3><a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=tip">채널 TIP</a> <a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=tip" class="more">&gt;</a></h3>
        <ul class="latest-articles">
         <% 
                        ArrayList<comu_DTO> list4 = new ArrayList<comu_DTO>();
                        list4 =dao.select("tip");
                        for(int i=0; i<list4.size(); i++)
                        {
							if(i>5)
							{
								break;
							}
                        
          %>
            <li><a href="/TeamProject2/Chigether/ViewPage-test.jsp?code=<%=list4.get(i).getCode() %>" data-board-alias="pr">[<%=list4.get(i).getTitle_tag()%>]<%=list4.get(i).getTitle() %></a> <strong class="comments"></strong></li>
            <%} %>    </div>
</div>          </div>
        </div>



      </div>
    </div>


    
    <script type="text/javascript" src="https://d4fodtu7cqfym.cloudfront.net/0a18972031b025305aa595c7f8b932f3.min.js?v=190623"></script>
    <script type="text/javascript" src="https://d4fodtu7cqfym.cloudfront.net/5f1b439bdf9bf52de0892c7e5bf81ffe.min.js?v=190623"></script>
      </body>
</html>