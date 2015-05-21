<% @Language="VbScript" %>
<% option explicit %>
<%
Dim I 
dim txt_username
dim txt_password
dim txt_password1
dim txt_empno
dim txt_name
dim int_dob_day
dim int_dob_month
dim int_dob_year
dim txt_sex
dim txt_address1
dim txt_address2
dim txt_city
dim txt_zip
dim txt_country
dim txt_phone
dim txt_email


%>
<html>
<head>
<title>Knowledge Management</title>
<!-- #include file="scripts.asp" -->
<script language="JavaScript">
<!--
function validate()
{

v1 =  document.frm_register.txt_username
v2 =  document.frm_register.txt_password
v3 =  document.frm_register.txt_password1
v4 =  document.frm_register.txt_empno
v5 = document.frm_register.txt_name
v6 =  document.frm_register.int_dob_day
v7 =  document.frm_register.int_dob_month
v8 =  document.frm_register.int_dob_year
v9 =  document.frm_register.txt_sex
v10 =  document.frm_register.txt_address1
v11 =  document.frm_register.txt_address2
v12 =  document.frm_register.txt_city
v13 =  document.frm_register.txt_zip
v14 =  document.frm_register.txt_country
v15 =  document.frm_register.txt_phone
v16 =  document.frm_register.txt_email
//alert(v12.value)

if(v1.value == "")
{
alert("User name canot be blank")
v1.focus();
return false;
}


if(v2.value == "")
{
alert("Password is blank please check")
v2.focus();
return false;
}

if(v3.value == "")
{
alert("Confirm Password is blank please check")
v3.focus();
return false;
}

if(v2.value != v3.value )
{
alert("Password and Confirm password does not match please check")
v3.focus();
return false;
}

if(v4.value == "")
{
alert("Employee Number is blank please check")
v4.focus();
return false;
}

if(v5.value == "")
{
alert("Name is blank please check")
v5.focus();
return false;
}


if(v6.options[0].selected == true )
{
alert("Date should be selected ")
v6.focus();
return false;
}


if(v7.options[0].selected == true )
{
alert("Month should be selected ")
v7.focus();
return false;
}

if(v8.options[0].selected == true )
{
alert("Year should be selected ")
v8.focus();
return false;
}


if(v12.value == "")
{
alert("City is blank please check")
v12.focus();
return false;
}


if(v13.value == "")
{
alert("ZIP is blank please check")
v13.focus();
return false;
}

if(v14.value == "")
{
alert("Country is blank please check")
v14.focus();
return false;
}


		var field = v16 // email field
  		var str = v16.value; // email string
  		var reg1 = /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/; // not valid
  		var reg2 = /^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$/; // valid
 	 	if (!reg1.test(str) && reg2.test(str))
	 		{ // if syntax is valid
     		}
  		else
			{
			alert("\"" + str + "\" is an invalid e-mail!"); // this is also optional
		  	field.focus();
		  	field.select();
		  	return false;
			}	

}
//-->
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table border="0" cellpadding="0" cellspacing="0" width="774">
  <tr> 
    <td><img src="images/spacer.gif" width="125" height="1" border="0" alt=""></td>
    <td><img src="images/spacer.gif" width="10" height="1" border="0" alt=""></td>
    <td><img src="images/spacer.gif" width="639" height="1" border="0" alt=""></td>
    <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
  </tr>
  <tr> 
    <td valign="top" bgcolor="#555982"><a href="index.asp" ><img src="logo.gif" width="61" height="61" border=0></a></td>
    <td colspan="2" valign="top" bgcolor="555982"> <table width="649" border="0" cellpadding="0" cellspacing="0" >
        <tr> 
          <td><!-- #include file="toplinks.asp"--></td>
        </tr>
      </table></td>
    <td><img src="images/spacer.gif" width="1" height="98" border="0" alt=""></td>
  </tr>
  <tr> 
    <td rowspan="4" valign="top" bgcolor="#555982"><!-- #include file="left_links.asp" --></td>
    <td valign="top" bgcolor="#bdc9de"><img name="bg_r2_c2" src="images/bg_r2_c2.png" width="10" height="13" border="0" alt=""></td>
    <td bgcolor="#bdc6de"><!--#include file="alphabet.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="13" border="0" alt=""></td>
  </tr>
  <tr>
    <td colspan=3 valign="top" bgcolor="#bdc9de" background="HLINE.GIF"  ><img src="hline.gif" width="575" height="1"></td>
    
  </tr>
  <tr> 
    <td colspan="2" valign="top" bgcolor="#bdc6de"> <table width="80%" border="0" align="center" cellpadding="5" cellspacing="5">
        <tr> 
          <td> <table border="0" cellPadding="1" cellSpacing="1" width="100%">
		  <form name="frm_register" method="post" action="x_register.asp" onSubmit="return validate()">
              <tr> 
                <td colspan="2"><font face="verdana" size="2"> 
                  <p align="center"><strong>Register</strong></p>
                  </font></td>
              </tr>
              <tr> 
                <td width="30%">*<font face="verdana" size="2">User Name</font></td>
                <td width="70%"><input type="text" name="txt_username" style="HEIGHT: 22px; WIDTH: 219px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">Password</font></td>
                <td><input type="password" name="txt_password" style="HEIGHT: 22px; WIDTH: 219px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">Confirm Password</font></td>
                <td><input type="password" name="txt_password1" style="HEIGHT: 22px; WIDTH: 219px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">Employee Number</font></td>
                <td><input type="text" name="txt_empno" style="HEIGHT: 22px; WIDTH: 219px"></td>
              </tr>
              <tr> 
                  <td height="25">*<font face="verdana" size="2">Name</font></td>
                <td><input type="text" name="txt_name" style="HEIGHT: 22px; WIDTH: 219px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">Date of Birth</font></td>
                <td><select name="int_dob_day" size="1">
                      <option selected>DD</option>
		<% for i = 1 to 31 %>
                      <option value="<%=i %>">
		<% Response.write(i) %>
			</option>
		<% next %>

                    </select>
	 <select name="int_dob_month" size="1">
                      <option selected>MONTH</option>
		<% for i = 1 to 12 %>

                      <option value="<%=i%>">

						<%=monthname(i) %>
		      </option>

		<% next %>
                    </select> 

		     <select name="int_dob_year">
                     	 <option selected>YEAR</option>
<% for i = 1940 to year(date) - 5 %>
                      <option value="<%=i%>"><%=i %></option>

<% next %>
                    </select></td>
              </tr>
              <tr> 
                <td><font face="verdana" size="2">&nbsp;Sex</font></td>
                <td><input type="radio" name="txt_sex" value="m" checked> <font face="verdana" size="2">Male</font> 
                  <input type="radio" name="txt_sex" value="f"> <font face="verdana" size="2">Female</font></td>
              </tr>
              <tr> 
                <td><font face="verdana" size="2">&nbsp;Address1</font></td>
                <td><input type="text" name="txt_address1" maxlength="30" style="HEIGHT: 22px; WIDTH: 216px"></td>
              </tr>
              <tr> 
                <td><font face="verdana" size="2">&nbsp;Address2</font></td>
                <td><input type="text" name="txt_address2" maxlength="30" style="HEIGHT: 22px; WIDTH: 215px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">City</font></td>
                <td><input type="text" name="txt_city" style="HEIGHT: 22px; WIDTH: 214px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">Zip</font></td>
                <td><input type="text" name="txt_zip" style="HEIGHT: 22px; WIDTH: 214px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">Country</font></td>
                <td><input type="text" name="txt_country" style="HEIGHT: 22px; WIDTH: 214px"></td>
              </tr>
              <tr> 
                <td><font face="verdana" size="2">&nbsp;Phone</font></td>
                <td><input type="text" name="txt_phone" style="HEIGHT: 22px; WIDTH: 212px"></td>
              </tr>
              <tr> 
                <td>*<font face="verdana" size="2">Email</font></td>
                <td><input type="text" name="txt_email" style="HEIGHT: 22px; WIDTH: 213px"></td>
              </tr>
              <tr> 
                <td colspan="2" align="center"> <input name="submit1" type="submit" value="Submit"> 
                  <input name="reset1" type="reset" value="Reset"> </td>
              </tr>
			  </form>
            </table></td>
        </tr>
      </table></td>
    <td><img src="images/spacer.gif" width="1" height="326" border="0" alt=""></td>
  </tr>
  <tr> 
    <td colspan="2" bgcolor="#313952"><!-- #include file="downlinks.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="14" border="0" alt=""></td>
  </tr>
</table>
</body>
</html>
