<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <title>�α��� ȭ��</title>
    
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
    <!-- ����, ������ �ٱ������� auto�� �ָ� �߾����ĵȴ�.  -->
    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">�α���</font></b>
        <br><br><br>
        
        <form action="LoginCin" method="post">
            <table>
                 <tr>
                    <td id="title">�̸���</td>
                    <td>
                        <input type="text" name="email_1" placeholder="Email�� �Է��ϼ���" maxlength="30">@
                        <select name="email_2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">��й�ȣ</td>
                    <td>
                        <input type="password" name="pw" placeholder="PW�� �Է��ϼ���" maxlength="15">
                    </td>
                </tr>
               
            </table>
            <br>
            <input type="submit" value="�α���"> 
    </div>
</body>
</html>
