<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
    <title>ȸ������ ȭ��</title>
    
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
        <b><font size="6" color="gray">ȸ������</font></b>
        <br><br><br>
        
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="reqForm">
	  <form action="/work/n_request_clean.php?cmd=save" method="post" name="request_form" id="request_form" onsubmit="return check_request_form(this)"></form>
	  <tbody>
	   <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">��������</font></th>
        <td bgcolor="#FFFFFF">
          <select size="1" name="cat_1" onchange="ChangeServiceSub('cat_2',this.value)">
			<option value="">::����::</option>
			<option value="cl_1">����û�Ҽ���</option>
			<option value="cl_2">���ǽ�û�Ҽ���</option>
			<!-- <option value="cl_3">��Ű������</option> -->
		  </select>
          <select size="1" name="cat_2" id="cat_2" style="visibility:hidden">
		  </select>
        </td>
      </tr>
      <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">����</font></th>
        <td bgcolor="#FFFFFF">
          <input type="text" name="name" size="20">
        </td>
      </tr>
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">�޴�����ȣ</font></th>
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
        <th height="25" bgcolor="#FFFFFF"><font color="000000">��ȭ��ȣ</font></th>
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
        <th height="25" bgcolor="#FFFFFF"><font color="000000">û������</font></th>
        <td bgcolor="#FFFFFF"><input type="text" name="svc_date" class="datepicker hasDatepicker" size="15" readonly="" id="dp1561169963573">
			<!--
			&nbsp; &nbsp; &nbsp; �ð�:
			<select size="1" name="svc_time">
				<option value="00">��12�� <option value="01">����1�� <option value="02">����2��
				<option value="03">����3�� <option value="04">����4�� <option value="05">����5��
				<option value="06">����6�� <option value="07">����7�� <option value="08">����8��
				<option value="09">����9�� <option value="10">����10�� <option value="11">����11��
				<option value="12" selected>��12��
				<option value="13">����1�� <option value="14">����2�� <option value="15">����3��
				<option value="16">����4�� <option value="17">����5�� <option value="18">����6��
				<option value="19">����7�� <option value="20">����8�� <option value="21">��9��
				<option value="22">��10��  <option value="23">��11��
			</select>
			-->
        </td>
      </tr>
      <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">�̸���</font></th>
        <td bgcolor="#FFFFFF">
			<input type="text" name="email" size="20" value="" onblur="if(!checkemail(this.value)){var mThis=this;setTimeout(function(){mThis.select();mThis.focus();},200);}">
        </td>
      </tr>
	  <tr>
        <th width="150" height="25" bgcolor="#FFFFFF"><font color="000000">�ּ�</font></th>
        <td bgcolor="#FFFFFF">
			<input type="text" name="t_post" id="t_post" size="10" value="" readonly="" onclick="ZipCode('t_post','t_addr11','t_addr12')">
			<input type="button" value="�����ȣã��" style="cursor:pointer;border:1px solid #223556;background:#223556;color:#ffffff;padding:0 10px;" onclick="ZipCode('t_post','t_addr11','t_addr12')"><br>
			<input type="text" name="t_addr1" id="t_addr11" size="45" value="" readonly=""><br>
			<input type="text" name="t_addr2" id="t_addr12" size="45" value="">
        </td>
      </tr>
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">����</font></th>
        <td bgcolor="#FFFFFF">
			<input type="text" name="cl_area" id="cl_area" size="5">�� &nbsp;<input type="button" value="��槳" style="cursor:pointer;border:1px solid #223556;background:#223556;color:#ffffff;padding:0 10px;" onclick="conv_py2msqr('cl_area');"> ��'��'�� �Է��Ͻ��� ��ư�� Ŭ���Ͻø� ������ ȯ��˴ϴ�.
		</td>
      </tr>
      <tr>
        <th height="25" bgcolor="#FFFFFF"><font color="000000">��Ÿ����</font></th>
        <td bgcolor="#FFFFFF"><label>
			<textarea rows="5" name="req_etcs" cols="50"></textarea> �� 120�� �̳�
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
               <!--  
                <tr>
                    <td id="title">��й�ȣ Ȯ��</td>
                    <td>
                        <input type="password" name="pw" placeholder="PW�� �ѹ� �� �Է��ϼ���"maxlength="15">
                    </td>
                </tr> -->
                    
                <tr>
                    <td id="title">�̸�</td>
                    <td>
                        <input type="text" name="name" placeholder="�̸��� �Է��ϼ���" maxlength="40">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">����</td>
                    <td>
                        <input type="radio" name="gender" value="��" checked>��
                        <input type="radio" name="gender" value="��" checked>��
                    </td>
                </tr> 
                    
                <!-- <tr>
                    <td id="title">����</td>
                    <td>
                        <input type="text" name="birth_yy" maxlength="4" placeholder="��(4��)" size="6" >
                        <select name="birth_mm">
                            <option value="">��</option>
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
                        <input type="text" name="birth_dd" maxlength="2" placeholder="��" size="4" >
                    </td>
                </tr> -->
                    
               
                    
                <tr>
                    <td id="title">�޴���ȭ</td>
                    <td>
                        <input type="text" placeholder="��ȭ��ȣ�� �Է��ϼ���"  name="phone" />
                    </td>
                </tr>
                <tr>
                    <td id="title">�ּ�</td>
                    <td>
                        <input type="text" size="50" placeholder="�ּҸ� �Է��ϼ���"name="address"/>
                    </td>
                </tr>
                <tr>
                <td id="title">��Ʃ��</td>
               <td>
                        <input type="text" size="50" placeholder="��Ʃ��id�� �Է��ϼ���" name="youtube"/>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="����"/>  <input type="button" value="���">
        </form>
    </div>
</body>
</html>
