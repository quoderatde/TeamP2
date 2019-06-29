<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
  <script type="text/javascript" src="./js/HuskyEZCreator.js" charset="utf-8"></script>
    <meta charset="utf-8">
    <title>치현이와 아이들</title>
 <meta name="theme-color" content="#6441a5">
    <link rel="stylesheet" type="text/css" href="https://d4fodtu7cqfym.cloudfront.net/fafa47a8e15576e84ca73790cafe60db.min.css?v=190623">
            <script>

</script>
  </head>
  <body>
    <header>
      <div class="container">
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
                        <a href="/TeamProject2/Chigether/main.jsp" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_ranking&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">홈</a>
                    </li>
                    <li >
                        <a href="/channels" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_channel&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">채널</a>
                    </li>
                    <li >
                        <a href="/TeamProject2/Chigether/TESTPAGE.jsp?type=notice" data-ga="{&#34;command&#34;: &#34;send&#34;, &#34;event&#34;: &#34;click&#34;, &#34;eventAction&#34;: &#34;gnb_notice&#34;, &#34;eventCategory&#34;: &#34;button&#34;, &#34;eventLabel&#34;: &#34;&#34;, &#34;hitType&#34;: &#34;event&#34;, &#34;submitTarget&#34;: &#34;&#34;}">공지</a>
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
                    <div class="col-xs-2" id="main-menu" style="margin-top: 30px;">
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
                      <script src='https://www.google.com/recaptcha/api.js'></script>
<div class="frame">
    <h3>작성페이지</h3>

<form action="OUTPUT_TEST" method="post">
 <div class="row mt-2">
                        <div class="col-xs-2 left">
                <select class="form-control" name="category_id" style="    padding: .32rem .75rem;">
                                    <option value="자유게시판">자유게시판</option>
                                    <option value="공지사항">공지사항</option>
                                    <option value="채널 팁">채널 팁!</option>
                                    <option value="채널홍보">채널홍보</option>
                                    </select>
            </div>
            <div >
           <input type="text" id="title" name="title" placeholder="제목" value="" style="width:625px; height: 35px;" >
            </div>
        </div>
       	<textarea name="CONTENT" id="ir1" rows="10" cols="100" style="width:766px; height:412px;" ></textarea>
	
         
        <div class="mt-2 clearfix">
            <button id="article-write-button" type="submit"  onclick="submitContents()"><i class="fa fa-pencil""></i> 쓰기</button>
            <button id="article-write-button" type="button"  onclick=""><i class="fa fa-ban""></i> 취소</button>
        </div>

   
</div>

          </div>


        </div>


</form>
 <script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "ir1",
	sSkinURI: "SmartEditor2Skin.html",	
	htParams : {bUseToolbar : true,
		fOnBeforeUnload : function(){
			//alert("아싸!");	
		}
	}, //boolean
	fOnAppLoad : function(){
		//예제 코드
		//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
	},
	fCreator: "createSEditor2"
});

function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
	oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
}

function showHTML() {
	var sHTML = oEditors.getById["ir1"].getIR();

}
	
function submitContents() {
	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
	
	try {
		elClickedObj.form.submit();
	} catch(e) {}
}

function setDefaultFont() {
	var sDefaultFont = '궁서';
	var nFontSize = 24;
	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
}
</script>
     </body>
</html>