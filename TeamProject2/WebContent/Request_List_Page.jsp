<%@page import="com.member.MemberDTO"%>
<%@page import="com.member.MemberDAO"%>
<%@page import="java.util.ArrayList" %>
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
  <title>치현이와 아이들 Admin Page</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

 <% 
 
 	MemberDAO dao = new MemberDAO();
	ArrayList<MemberDTO> List = dao.Email_Select();
	
	
		  
%>
</head>
<body>
 <section id="container">
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>치현이와<span>아이들</span></b></a>
      <!--logo end-->
    <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="login.html">Logout</a></li>
        </ul>
      </div>
    </header>
       <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="profile.html"><img src="img/LeeGwangYo.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">Gwang Yo Lee</h5>
          <li class="mt">
            <a class="active" href="index.html">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI Elements</span>
              </a>
            <ul class="sub">
              <li><a href="general.html">General</a></li>
              <li><a href="buttons.html">Buttons</a></li>
              <li><a href="panels.html">Panels</a></li>
              <li><a href="font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
          <li>
            <a href="User_Info.jsp">
              <i class="fa fa-group"></i>
              <span>회원정보 관리</span>
              </a>
          </li>
		  <li>
            <a href="Request_List_Page.jsp">
              <i class="fa fa-check-square-o"></i>
              <span>신청자 리스트 </span>
              </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i>신청자 리스트</h3>
        <div class="row">
          <div class="col-md-12">
        <!-- row -->
        <div class="row mt">
          <div class="col-md-12">
            <div class="content-panel">
            <form action="EmailService" method="post">
              <table class="table table-striped table-advance table-hover">
                <h4><i class="fa fa-angle-right"></i>분석 의뢰 신청자 리스트</h4>
                <hr>
                <thead>
                  <tr>
                  	<th width="10"></th>
                  	<th><i class="fa fa-youtube-play"></i>YouTube</th>
                    <th><i class="fa fa-envelope"></i>Email</th>
                    <th><i class="fa fa-user"></i>Name</th>
                    <th><i class="fa fa-phone"></i>Tel</th>
                    <th><i class="fa fa-stack-exchange"></i>Address</th>
                    
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <% for(int i=0; i<List.size(); i++) 
                    {
                    %>
                  <tr>
                  	
                  	<td><input type="checkbox" name="check" value="<%=List.get(i).getEmail() %>"></td>
                    
                    <td>
                      <a href="https://www.youtube.com/channel/<%=List.get(i).getYoutube()%>"><%=List.get(i).getYoutube() %></a>
                    </td>
                    <td class="hidden-phone"><%=List.get(i).getEmail() %></td>
                    <td><%=List.get(i).getName() %></td>
                    <td><%=List.get(i).getTel() %></td>
                    <td><%=List.get(i).getAddress() %></td>
                  </tr>
                  <%} %>
                  <tr>
                  <td colspan="6" align="right"><input type="submit" name ="action" value="전송"> <input type="submit" name ="action" value="삭제"></td>
                  </tr>
                  
                  
                      
                </tbody>

              </table>
              </form>
            </div>
            <!-- /content-panel -->
          </div>
          <!-- /col-md-12 -->
        </div>
        <!-- /row -->
      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  
  <!--script for this page-->
  <!-- 
  <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
  <script type="text/javascript">
 
  function checkAll()
  {
      if( $("#th_checkAll").is(':checked') )
      {
        $("input[name=check]").prop("checked", true);
      }
      else
      {
        $("input[name=check]").prop("checked", false);
      }
  }  
  </script>
  
  -->
</body>
</html>