<% @Language="VbScript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->
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
dim  txt_ip
dim  dt_date

dim sql_insert
dim sql_validate

dim Rs 
dim error

txt_username = Request.Form("txt_username")
txt_password = Request.Form("txt_password")
txt_empno	=  Request.Form("txt_empno")
txt_name =   Request.Form("txt_name")
int_dob_day  =   Request.Form("int_dob_day")
int_dob_month  =   Request.Form("int_dob_month")
int_dob_year  =   Request.Form("int_dob_year")
txt_sex  =   Request.Form("txt_sex")
txt_address1  =   Request.Form("txt_address1")
txt_address2  =   Request.Form("txt_address2")
txt_city  =   Request.Form("txt_city")
txt_zip  =   Request.Form("txt_zip")
txt_country  =   Request.Form("txt_country")
txt_phone  =   Request.Form("txt_phone")
txt_email  =   Request.Form("txt_email")
txt_ip  =   Request.ServerVariables("REMOTE_ADDR")
dt_date  =   month(date) & "/" & day(date) & "/" & year(date)


sql_validate = "select txt_username from tbl_userdetails where txt_username = '" & txt_username &"'"
'response.Write(sql_validate)
'response.Flush()
set Rs = Server.CreateObject("Adodb.Recordset")
Rs.cursorlocation = 3
Rs.open sql_validate, con

if Rs.Recordcount > 0 then 
Response.Redirect("Register.asp?Error=User already exists")
end if

sql_insert = "insert into tbl_userdetails (txt_username, txt_password, txt_name, txt_empno, dt_dob, txt_email, txt_address, int_pin, txt_city, txt_country, txt_phone, dt_createdon, txt_systeminfo, int_usertype, int_status ) values("
sql_insert =  sql_insert & "'" & txt_username&"' , "
sql_insert =  sql_insert & "'" & txt_password&"' , "
sql_insert =  sql_insert & "'" & txt_name&"' , "
sql_insert =  sql_insert & "'" & txt_empno&"' , "
sql_insert =  sql_insert & "#" & int_dob_month &"/"&  int_dob_day  & "/" & int_dob_year &"# , "
sql_insert =  sql_insert & "'" & txt_email&"' , "
sql_insert =  sql_insert & "'" & txt_address1 & "  " &  txt_address1 &"' , "
sql_insert =  sql_insert & " " & txt_zip & " , "
sql_insert =  sql_insert & "'" & txt_city&"' , "
sql_insert =  sql_insert & "'" & txt_country&"' , "
sql_insert =  sql_insert & "'" & txt_phone&"' , "
sql_insert =  sql_insert & "#" & dt_date&"# , "
sql_insert =  sql_insert & "'" & txt_ip &"' , "
sql_insert =  sql_insert & "2 , "
sql_insert =  sql_insert & "" & 1 &" ) "
'Response.Write(sql_insert)
'Response.Flush()
con.execute(sql_insert)


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
          <td><div align="center"><strong><font color="#FF0000" size="2" face="Verdana">You have successfully 
              Register</font></strong></div></td>
        </tr>
        <tr>
          <td><table border="0" cellspacing="4" cellpadding="0" align="center" width="337">
              <%if error = 1 then %>
              <tr align="center"> 
                <td colspan="3"><font face="Arial" size="2" color="#FF0000">Your 
                  Password or username is wrong Please verify.</font></td>
              </tr>
              <% end if  %>
              <form name="login" method="post" action="x_login.asp?from_page=<%=Request("from_page")%>" onSubmit="return validate_login()">
                <tr> 
                  <td><font face="Arial" size="2">User Name</font></td>
                  <td align="center"><b><font face="Arial" size="2">:</font></b></td>
                  <td><font face="Arial" size="2"> 
                    <input type="text" size="30" name="txt_username">
                    </font></td>
                </tr>
                <tr> 
                  <td><font face="Arial" size="2">Password</font></td>
                  <td align="center"><b><font face="Arial" size="2">:</font></b></td>
                  <td><font face="Arial" size="2"> 
                    <input type="password" size="30" name="txt_password">
                    </font></td>
                </tr>
                <tr align="center"> 
                  <td colspan="3"> <font face="Arial" size="2"> 
                    <input type="submit"  name="submit" Value="Login">
                    <input type="reset"  name="Reset" value="Reset">
                    </font></td>
                </tr>
                <tr align="center"> 
                  <td colspan="3"><font face="Arial" size="2"><a href="forgotpwd.asp">Forgot 
                    Password Click Here</a></font></td>
                </tr>
                <tr align="center"> 
                  <td colspan="3">&nbsp;</td>
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
