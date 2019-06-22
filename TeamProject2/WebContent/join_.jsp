<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
    <title>회원가입 화면</title>
    
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
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="reqForm">
	  <form action="/work/n_request_clean.php?cmd=save" method="post" name="request_form" id="request_form" onsubmit="return check_request_form(this)"></form>
	  <tbody>
	   <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">서비스종류</font></th>
        <td bgcolor="#FFFFFF">
          <select size="1" name="cat_1" onchange="ChangeServiceSub('cat_2',this.value)">
			<option value="">::선택::</option>
			<option value="cl_1">가정청소서비스</option>
			<option value="cl_2">오피스청소서비스</option>
			<!-- <option value="cl_3">패키지서비스</option> -->
		  </select>
          <select size="1" name="cat_2" id="cat_2" style="visibility:hidden">
		  </select>
        </td>
      </tr>
      <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">고객명</font></th>
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
        <th height="25" bgcolor="#FFFFFF"><font color="000000">전화번호</font></th>
        <td bgcolor="#FFFFFF">
			<select size="1" name="tel1">
			  <option value="02">02
			  </option><option value="031">031
			  </option><option value="032">032
			  </option><option value="033">033
			  </option><option value="043">041
			  </option><option value="042">042
			  </option><option value="043">043
			  </option><option value="051">051
			  </option><option value="052">052
			  </option><option value="053">053
			  </option><option value="054">054
			  </option><option value="055">055
			  </option><option value="061">061
			  </option><option value="062">062
			  </option><option value="063">063
			  </option><option value="064">064
			</option></select>
			<input type="text" name="tel2" size="5" value="" maxlength="4" onkeydown="return checkNum(event)" style="ime-mode:disabled" onpaste="return false">
			<input type="text" name="tel3" size="5" value="" maxlength="4" onkeydown="return checkNum(event)" style="ime-mode:disabled" onpaste="return false">
        </td>
      </tr>
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">청소일자</font></th>
        <td bgcolor="#FFFFFF"><input type="text" name="svc_date" class="datepicker hasDatepicker" size="15" readonly="" id="dp1561169963573">
			<!--
			&nbsp; &nbsp; &nbsp; 시간:
			<select size="1" name="svc_time">
				<option value="00">밤12시 <option value="01">새벽1시 <option value="02">새벽2시
				<option value="03">새벽3시 <option value="04">새벽4시 <option value="05">새벽5시
				<option value="06">오전6시 <option value="07">오전7시 <option value="08">오전8시
				<option value="09">오전9시 <option value="10">오전10시 <option value="11">오전11시
				<option value="12" selected>낮12시
				<option value="13">오후1시 <option value="14">오후2시 <option value="15">오후3시
				<option value="16">오후4시 <option value="17">오후5시 <option value="18">오후6시
				<option value="19">오후7시 <option value="20">오후8시 <option value="21">밤9시
				<option value="22">밤10시  <option value="23">밤11시
			</select>
			-->
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
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">면적</font></th>
        <td bgcolor="#FFFFFF">
			<input type="text" name="cl_area" id="cl_area" size="5">㎡ &nbsp;<input type="button" value="평→㎡" style="cursor:pointer;border:1px solid #223556;background:#223556;color:#ffffff;padding:0 10px;" onclick="conv_py2msqr('cl_area');"> ※'평'을 입력하신후 버튼을 클릭하시면 ㎡으로 환산됩니다.
		</td>
      </tr>
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">기타사항</font></th>
        <td bgcolor="#FFFFFF"><label>
			<textarea rows="5" name="req_etcs" cols="50"></textarea> ※ 120자 이내
        </label></td>
      </tr>
      <tr>
        <td height="50" colspan="2" bgcolor="#FFFFFF" align="center">
		<input type="hidden" name="agree_tbroad" value="">
			<br><input type="image" src="/n_img/online_btn.gif" style="width:204px;height:38px;cursor:pointer" width="89" height="28" border="0"><br><br>
		</td>
      </tr>
	  
    </tbody></table>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //
        <form action="JoinCon" method="post">
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
               <!--  
                <tr>
                    <td id="title">비밀번호 확인</td>
                    <td>
                        <input type="password" name="pw" placeholder="PW를 한번 더 입력하세요"maxlength="15">
                    </td>
                </tr> -->
                    
                <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" placeholder="이름을 입력하세요" maxlength="40">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">성별</td>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" checked>여
                    </td>
                </tr> 
                    
                <!-- <tr>
                    <td id="title">생일</td>
                    <td>
                        <input type="text" name="birth_yy" maxlength="4" placeholder="년(4자)" size="6" >
                        <select name="birth_mm">
                            <option value="">월</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birth_dd" maxlength="2" placeholder="일" size="4" >
                    </td>
                </tr> -->
                    
               
                    
                <tr>
                    <td id="title">휴대전화</td>
                    <td>
                        <input type="text" placeholder="전화번호를 입력하세요"  name="phone" />
                    </td>
                </tr>
                <tr>
                    <td id="title">주소</td>
                    <td>
                        <input type="text" size="50" placeholder="주소를 입력하세요"name="address"/>
                    </td>
                </tr>
                <tr>
                <td id="title">유튜브</td>
               <td>
                        <input type="text" size="50" placeholder="유튜브id를 입력하세요" name="youtube"/>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="가입"/>  <input type="button" value="취소">
        </form>
    </div>
</body>
</html>
