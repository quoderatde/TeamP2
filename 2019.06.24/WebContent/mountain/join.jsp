<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="EUC-KR">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>로그인 화면 </title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

</head>

<body>
  <div id="login-page">
    <div class="container">
     
      <form class="form-login" action="join.do" method="post">
        <h2 class="form-login-heading">Join Membership</h2>
        <div class="login-wrap">
                  
          USER EMAIL : <input type="text" name ="email" class="form-control" placeholder="User Email" autofocus >
          <br>
          PW : <input type="password" name="pw" class="form-control" placeholder="Password">
          
          NAME : <input type="text" name ="name" class="form-control" placeholder="Name" autofocus >
          <br>
          TEL : <input type="text" name="tel" class="form-control" placeholder="Tel">
          ADDRESS : <input type="text" name="address" class="form-control" placeholder="Address">
          
          YOUTUBE : <input type="text" name="youtube" class="form-control" placeholder="YouTube">
          
           GENDER : <input type="radio" name="sex" value="남" checked>남
         		 <input type="radio" name="sex" value="여" checked>여<br>
          
          <button class="btn btn-theme btn-block"   type="submit" ><i class="fa fa-lock"></i> JOIN</button>
       
             <button class="btn btn-theme btn-block"  type="submit"><i class="fa fa-lock"></i> CANCLE</button>
        
        
        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Forgot Password ?</h4>
              </div>
              <div class="modal-body">
                <p>Enter your e-mail address below to reset your password.</p>
                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                <button class="btn btn-theme" type="button">Submit</button>
              </div>
            </div>
          </div>
        </div>
        <!-- modal -->
      </form>
    </div>
  </div>
  
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>
 

  <script>
    $.backstretch("img/login-bg.jpg", {
      speed: 500
    });

  </script>
</body>

</html>
