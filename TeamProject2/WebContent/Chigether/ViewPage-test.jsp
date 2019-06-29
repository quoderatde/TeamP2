<%@page import="com.comu_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.comu_DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>치현이와아이들</title>
    <meta property="og:image" content="https://d4fodtu7cqfym.cloudfront.net/images/logo_new.png">
    <meta name="author" content="tlsaudrl12" />
    <meta name="robots" content="index, follow" />
    <link rel="canonical" href="https://tgd.kr/26196202">
    <meta property="og:url" content="https://tgd.kr/26196202">
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
    <link rel="stylesheet" type="text/css" href="https://d4fodtu7cqfym.cloudfront.net/fad0d3bf8c478ce27ec4b20657d43000.min.css?v=190623">
 
  </head>
  <% 
  		int code = Integer.parseInt(request.getParameter("code"));
  		comu_DAO dao = new comu_DAO();
  		dao.View_count(code);
  		ArrayList<comu_DTO> list =  dao.select_choice(code);
  		
  
  %>
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
                            <a class="btn btn-primary" href="/user/login?url=Imh0dHA6Ly90dnBsZS5jb20vIg.D_Rm3w.qb-pLTEU71QDKcdhdNTU_Xp8Ync">
                                <i class="fa fa-sign-in"></i> 로그인
                            </a>
                        </p>
                    </li>
                </ul>

 

            </div><!--. navbar-collapse -->
        </div>
    </nav>
    
<div id="content-area">
    
      
      <div class="container" id="main" style="margin-top: 50px;">
        <div class="row">
                    <div class="col-xs-2" id="main-menu" style="margin-top: 20px;">
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

<!-- tgd_sidebar -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-5807968391783575"
     data-ad-slot="2221690044"
     data-ad-format="auto"></ins>
          </div>
          <div class="col-xs-10" id="main-content">
                      <div class="frame">

<!-- tgd_board_list -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-5807968391783575"
     data-ad-slot="5992484593"
     data-ad-format="auto"></ins><div id="article-info">
    <h2>
                <span class="category" style="color:#ff0000"><%= list.get(0).getTitle_tag() %></span>
                <%= list.get(0).getTitle() %>   </h2>



    <div id="article-info-writer" align="right">
         <strong><%= list.get(0).getName() %></strong>님     </div>
</div>

<div id="article-content-wrapper">
    <div class="header">
        <span id="article-time">
            <i class="fa fa-clock-o"></i>
            <span class="ago"> </span>
        </span>
                <span id="article-views">
            <i class="fa fa-eye"></i> <%= list.get(0).getView_count() %>       </span>
        <span id="article-comment">
            <i class="fa fa-commenting"></i> 0        </span>
        <div class="clearfix"><%= list.get(0).getTime() %></div>
    </div>

    <div id="article-content" class="fr-view" data-id="26196202" data-last-cpage="0">
    <p><%= list.get(0).getContent() %></p></div>

    <div class="footer">
        <a href="/watch" class="btn btn-sm btn-default"><i class="fa fa-list"></i> 목록</a>
        
                    </div>
</div>

<div id="taboola-below-article-text-links" style="padding: 0 1em;"></div>
<div id="taboola-below-article-text-links-b" style="padding: 0 1em;"></div>

<div id="article-reply-area" class="">
    <div class="header">
        <h5>
            <i class="fa fa-commenting"></i> 댓글 <span id="totalCommentCount">0</span>개 &nbsp; <a href="#lastc" id="lastc">▼</a>
        </h5>
    </div>

    <div id="reply-best-area"></div>

    <a href="#" id="viewReplyPrevPageBtn" class="pt-2 pb-2 hide">이전 댓글 더 보기</a>
    <div id="reply-real-area">
        
    </div>
    <a name="lastc"></a>

    <a href="#" id="loadNewCommentsBtn" class="btn btn-sm btn-info invisible" style="margin: 0 15px;">
        <i class="fa fa-refresh"></i> <span>새 댓글</span>
    </a>

        <div id="comment-write-form-area">
        <form action="/board/comment_write/26196202" method="post" id="comment-write-form" class="mt-2">
            <input type="hidden" id="commentParentId" name="parent_id" value="0">
            <input type="hidden" name="custom_badge" id="custom_badge" value="">

            <div id="commentWriteInfoForm" class="hide mb-2">
                <div class="left"><input type="text" class="form-control" id="commentNickname" maxlength="10" name="nickname" value="" placeholder="닉네임"></div><div class="right"><input type="password" class="form-control" id="commentPassword" maxlength="20" name="password" value="" placeholder="비밀번호"></div>
            </div>
            <textarea name="content" id="commentContent" rows="4" class="form-control" placeholder="내용을 입력해주세요."></textarea>

            <div id="comment-write-button-area">
                                <button class="btn btn-default pull-left hide btn-sm" tabindex="-1" type="submit" id="btnRereplyCancelBtn">취소</button>
                <button class="btn btn-primary pull-right btn-sm" type="submit" accesskey="s" id="writeCommentBtn"><i class="fa fa-pencil"></i> 댓글 쓰기</button>
                <div class="clearfix"></div>
            </div>
        </form>
    </div>
    </div>

      </body>
</html>