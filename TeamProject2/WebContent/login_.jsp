<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <title>로그인 화면</title>
    
    <style>
        #wrap{
            width:530px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            border:3px solid skyblue
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
</head>
<body>
    <!-- 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">로그인</font></b>
        <br><br><br>
        
        <form action="LoginCin" method="post">
            <table>
                 <tr>
                    <td id="title">이메일</td>
                    <td>
                        <input type="text" name="email_1" placeholder="Email을 입력하세요" maxlength="30">@
                        <select name="email_2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pw" placeholder="PW를 입력하세요" maxlength="15">
                    </td>
                </tr>
               
            </table>
            <br>
            <input type="submit" value="로그인"> 
    </div>
</body>
</html>
