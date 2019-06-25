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
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  
  <link rel="apple-touch-icon" sizes="180x180" href="./assets/apple-icon-180x180.png">
  <link href="./assets/favicon.ico" rel="icon">

  <link href="" rel="stylesheet">


  <title>분석신청</title>

<link href="./main.550dcf66.css" rel="stylesheet">

<style type="text/css">
tbody{

font-family: Hind Siliguri,Helvetica,Arial,sans-serif;
font-size: 18px;
}

</style>



</head>

<body> <!-- Add your content of header -->
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
        <a class="navbar-brand" href="./index.html" title="">
          <img src="./assets/images/mashup-icon.svg" class="navbar-logo-img" alt="">
          치현이와 아이들
        </a>
      </div>

      <div class="collapse navbar-collapse" id="navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="./index.jsp" title="">Home</a></li>
          <li><a href="./application.jsp" title="">분석신청</a></li>
          <li>
            <p>
             <a href="./login.jsp" class="btn btn-default navbar-btn" title="">로그인</a>
         
            </p>
          </li>

        </ul>
      </div> 
    </div>
  </nav>
</header>

<div class="section-container">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-8 col-md-offset-2">
          <h1 class="text-center">분석신청서 </h1>
          <p>분석신청 의뢰 페이지 입니다. 페이지 작성해주세요 </p>

          </div>
       </div>
      </div>
    </div>

  <div class="section-container">
    <div class="container">
      <div class="row section-container-spacer">
        <div class="col-xs-12 col-md-8 col-md-offset-2">
          <div class="section-container-spacer">
           
            <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" class="reqForm">
	 
	 
	  <form action=" application.do " method="post" name="request_form" id="request_form" onsubmit="return check_request_form(this)"></form>
	 
	  <tbody><tr>
        <th width="150" height="35" bgcolor="#FFFFFF"><font color="000000">서비스팀</font></th>
        <td bgcolor="#FFFFFF">
			<input type="hidden" name="req_type" value="p_10">
		치현이와 아이들
        </td>
      </tr>
         

      <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">의뢰자명</font></th>
        <td bgcolor="#FFFFFF">
          <input type="text" name="name" size="20">
        </td>
      </tr>
       <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">성별</font></th>
        <td bgcolor="#FFFFFF">
          남자<input type="radio" name="gender" size="20" value="남">
       여자  <input type="radio" name="gender" size="20" value="여">
        </td>
      <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">롤모델 유튜버</font></th>
        <td bgcolor="#FFFFFF">
          <input type="text" name="name" size="20">
        </td>
      </tr>
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">휴대폰번호</font></th>
        <td bgcolor="#FFFFFF">
			<select size="1" name="pcs1">
			  <option value="010">010
			  </option><option value="011">011
			  </option><option value="016">016
			  </option><option value="017">017
			  </option><option value="018">018
			  </option><option value="019">019
			</option></select>
			<input type="text" name="pcs2" size="5" value="" maxlength="4" onkeydown="return checkNum(event)" style="ime-mode:disabled" onpaste="return false">
			<input type="text" name="pcs3" size="5" value="" maxlength="4" onkeydown="return checkNum(event)" style="ime-mode:disabled" onpaste="return false">
        </td>
      </tr>
      <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">이메일</font></th>
        <td bgcolor="#FFFFFF">
			<input type="text" name="email" size="20" value="" onblur="if(!checkemail(this.value)){var mThis=this;setTimeout(function(){mThis.select();mThis.focus();},200);}">
        </td>
      </tr>
	  <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">주소</font></th>
        <td bgcolor="#FFFFFF">
			<input type="text" name="t_post" id="t_post" size="10" value="" readonly="" onclick="ZipCode('t_post','t_addr11','t_addr12')">
			<input type="button" value="우편번호찾기" style="cursor:pointer;border:1px solid #223556;background:#223556;color:#ffffff;padding:0 10px;" onclick="ZipCode('t_post','t_addr11','t_addr12')"><br>
			<input type="text" name="t_addr1" id="t_addr11" size="45" value="" readonly=""><br>
			<input type="text" name="t_addr2" id="t_addr12" size="45" value="">
        </td>
      </tr>
 
 <div class="se-popup-section">
 <div class="se-popup-oglink-input-holder">
 <tr>
   <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">영상첨부</font></th>
        <td bgcolor="#FFFFFF">
 <input width="200px" type="url" class="se-popup-oglink-input" placeholder="URL을 입력하세요." value="" size=45px;>
 <button type="button" class="se-popup-oglink-button" data-log="pog.search">
 <span class="se-blind">첨부</span></button>
 </td></tr>
 </div></div>
 
 
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">기타사항</font></th>
        <td bgcolor="#FFFFFF"><label>
			<textarea rows="5" name="req_etcs" cols="50"></textarea> ※ 120자 이내
        </label></td>
      </tr>
      <tr>
        <td height="50" colspan="2" bgcolor="#FFFFFF" align="center">
		<input type="hidden" name="agree_tbroad" value="">
		
	<button class="btn btn-theme btn-block" type="submit"> 접수</button>
          <hr>
			<br><br>
		</td>
      </tr>
	  
    </tbody></table>
          </div>  
        </div>  
      </div>
    </div>
  </div>

  <div class="section-container">
    <div class="container text-center">
      <div class="row section-container-spacer">
        <div class="col-xs-12 col-md-12">
          
          <h3>Do you like it ?</h3>
          <p>
            <a href="https://facebook.com/" class="social-round-icon fa-icon" title="">
              <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
            <a href="https://twitter.com/" class="social-round-icon fa-icon" title="">
              <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
            <a href="https://www.linkedin.com/" class="social-round-icon fa-icon" title="">
              <i class="fa fa-linkedin" aria-hidden="true"></i>
            </a>
          </p>
        </div>  
      </div>
    
    </div>
  </div>

<footer class="footer-container white-text-container">
  <div class="container">
    <div class="row">

     
      <div class="col-xs-12">
        <h3>Mountain</h3>

        <div class="row">
          <div class="col-xs-12 col-sm-7">
            <p><small>Website created with <a href="http://www.mashup-template.com/" title="Create website with free html template">Mashup Template</a>/<a href="https://www.unsplash.com/" title="Beautiful Free Images">Unsplash</a></small>
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