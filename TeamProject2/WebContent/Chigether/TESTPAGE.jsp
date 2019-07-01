<%@page import="com.comu_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.comu_DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>치현이와 아이들</title>
    <link rel="canonical" href="https://tgd.kr/notice">
    <link rel="shortcut icon" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon.ico">
    <link rel="apple-touch-icon" sizes="57x57" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="https://d4fodtu7cqfym.cloudfront.net/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="https://d4fodtu7cqfym.cloudfront.net/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="https://d4fodtu7cqfym.cloudfront.net/favicon/favicon-16x16.png">
    <link rel="manifest" href="https://d4fodtu7cqfym.cloudfront.net/favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#6441a5">
    <meta name="msapplication-TileImage" content="https://d4fodtu7cqfym.cloudfront.net/favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#6441a5">
    <link rel="stylesheet" type="text/css" href="https://d4fodtu7cqfym.cloudfront.net/fafa47a8e15576e84ca73790cafe60db.min.css?v=190623">
            <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-71349615-1', 'auto');
  ga('send', 'pageview');

</script>
<%
String name = "";
if(session.getAttribute("email")==null)
{
	name = "";
}
else
{
	name = (String)session.getAttribute("email");
}


	String type = request.getParameter("type");
	comu_DAO dao = new comu_DAO();
	ArrayList<comu_DTO> list = new ArrayList<comu_DTO>();
	if(type.equals("all"))
	{
		list = dao.select_all();
	}
	else{
		list = dao.select(type);
	}
	
	String type_list="";
	if(type.equals("notice"))
	{
		type_list="공지사항";
	}
	else if(type.equals("free"))
	{
		type_list="자유게시판";
	}
	else if(type.equals("tip"))
	{
		type_list="채널 팁";
	}
	else if(type.equals("all"))
	{
		type_list="전체게시판";
	}
	else 
	{
		type_list="채널홍보";
	}
	

%>
<style type="text/css">
body{
	background-color: white;
}

</style>
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
    </nav>
    
 <div id="content-area">
    
      
      <div class="container" id="main" style="margin-top: 50px;">
        <div class="row">
                    <div class="col-xs-2" id="main-menu" style="margin-top: 80px;">
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


          </div>
          <div class="col-xs-10" id="main-content">
                      <div class="row" id="upperBannerArea">
    <div class="col-xs-12" align="center">
  <div id="board-info" data-owner-id="global" data-type="general" data-alias="notice" data-name="공지사항">
        <h1>
        <a href="TESTPAGE.jsp?type=<%=type%>">[<%=type_list %>]</a>

        
        
                <span id="viewers-area" class="hide"><i class="fa fa-user"></i> <span id="viewers">0</span></span>
    </h1>
        
    <div id="board-info-bottom">
            </div>
</div>

<!-- tgd_board_list -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-5807968391783575"
     data-ad-slot="5992484593"
     data-ad-format="auto"></ins><div id="article-list">
<div id="article-option-area">
    
</div>

            <div class="article-list-row  notice  " id="article-list-row-1561533376"><div class="item">
        
        <div class="list-header v0">
            <strong></strong>        </div>

        <div class="list-title">
            
            
                        <span class="a-badge"></span><a title="" href="#" target="_blank" style="color:#000000">
                                       </a>

            
            
            
            <div class="list-writer  logged">
                                
            </div>
                    </div>


    </div></div>
        <div class="article-list-row  notice  " id="article-list-row-1145266"><div class="item">
        
        <div class="list-header v89">
            <strong>공지</strong>        </div>

        <div class="list-title">
            
            
                        <span class="a-badge"><i class="fa fa-info-circle"></i></span><a title="" href="#" style="font-weight:bold;color:#6441a5">
                                스마트 미디어 인재개발원에서 학원생 모집!           </a>

            
            
            
            <div class="list-writer  logged">
                                <span>
                    <img src="https://static-cdn.jtvnw.net/chat-badges/globalmod.png" alt="Global Moderator" title="Global Moderator" align="absmiddle" />관리자</span>
            </div>
                    </div>

        <div class="list-time">
            03-28        </div>
    </div></div>
<!--  목록 페이지 start -->
<% for(int i=0; i<list.size(); i++){ %>


  <div class="article-list-row    "><div class="item">
        
        <div class="list-header">
            <span><%=list.get(i).getCode() %></span>        </div>

        <div class="list-title">
            
             
                        <span class="a-badge"><i class="fa fa-commenting-o"></i></span><a href="ViewPage-test.jsp?code=<%=list.get(i).getCode() %>" style="color:#000000" >[<%=list.get(i).getTitle_tag()%>]<%=list.get(i).getTitle() %></a>

            <div class="list-writer  logged">
                               
                     <span><%=list.get(i).getName() %></span>
            </div>
                    </div>

        <div class="list-time">
          <%= list.get(i).getTime() %> </div>
    </div></div>
    
 <%} %>
<!--  목록 페이지 end -->

    <div id="article-list-menu">
        <a href="/notice?filter_mode=best" class="btn square btn-default best"><i class="fa fa-star"></i> 인기글</a>
                <ul class='pagination'><li class='disabled'><li class='active'><a href='#'>1<span class='sr-only'></span></a></li></ul>                <a href="input-test.jsp" class="btn square btn-primary write"><i class="fa fa-pencil"></i> 글 쓰기</a>
            <!-- <li><a href="/notice/page/2" data-ci-pagination-page="2">2</a></li><li><a href="/notice/page/3" data-ci-pagination-page="3">3</a></li><li><a href="/notice/page/4" data-ci-pagination-page="4">4</a></li> <li><a href="/notice/page/2" data-ci-pagination-page="2" rel="next">&gt;</a>-->
            </div>

        <form class="input-group" method="get" action="/notice" id="boardSearchForm">
                <input type="hidden" name="search_type" value="title" />
        <span class="input-group-btn">
            <button type="button" class="btn square btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="search-type-desc">제목</span> <span class="caret"></span></button>
            <div class="dropdown-menu">
                <li><a href="#" data-value="title">제목</a></li>
                <li><a href="#" data-value="titlecont">제목+내용</a></li>
                <li><a href="#" data-value="nickname">닉네임</a></li>
            </div>
        </span>
        <input type="text" name="search_term" class="form-control" placeholder="검색어" value="">
        <span class="input-group-btn">
            <button class="btn square btn-default" type="submit"><i class="fa fa-search"></i></button>
        </span>
    </form>
    </div>

</div>          </div>
        </div>
   
    <script type="text/javascript" src="https://d4fodtu7cqfym.cloudfront.net/0a18972031b025305aa595c7f8b932f3.min.js?v=190623"></script>
    <script type="text/javascript" src="https://d4fodtu7cqfym.cloudfront.net/84bc02ed9e2e0964b98eb906dd8500f0.min.js?v=190623"></script>
   
      </body>
</html>