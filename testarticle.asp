<% @Language="VbScript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->
<!-- #include file = "chk_user.asp" -->
<%

dim sql_category, sql_vendor,sql_platform,sql_media,sql_sub_category, action_page
dim  rs, rs1, rs2, rs3, flag_show, status
set Rs = Server.Createobject("Adodb.Recordset")

Flag_Show = cint("0" & Request("flag_show"))
'Response.Write(Request("lst_category"))
sql_category = "select int_categoryid, txt_categorytitle from tbl_category where int_parentcategoryid=0"
if (flag_show > 1) then
action_page = "add_articles.asp"
else
action_page = "add_articles.asp"
end if

if( flag_show > 0 ) then
	sql_sub_category = "select int_categoryid, txt_categorytitle from tbl_category where int_parentcategoryid=" & Request("lst_category") 
end if

if( flag_show > 1 ) then
session("articleid") = Request("lst_subcategory")
end if

'Response.Write(sql_sub_category)
'Response.Flush()



'response.write (sql_category & "<br>" & sql_vendor & "<br>" & sql_platform & "<br>" & sql_media & "<br>" & sql_sub_category)
'response.flush

%>

<html>
<head>
<title>Knowledge Management</title>
<!-- #include file="scripts.asp" -->
<script language="JavaScript">
<!--

function form_submit(x)
{
document.frm_product.flag_show.value = x
document.frm_product.submit()
}


function validate()
{

v1 =  document.frm_register.txt_username
v2 =  document.frm_register.txt_password
v3 =  document.frm_register.txt_password1
v4 =  document.frm_register.txt_empno
v5 =  document.frm_register.txt_name
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
    <td colspan="2" valign="top" bgcolor="#555982"> <table width="649" border="0" cellpadding="0" cellspacing="0" >
        <tr> 
          <td><!-- #include file="toplinks.asp"--></td>
        </tr>
      </table></td>
    <td><img src="images/spacer.gif" width="1" height="98" border="0" alt=""></td>
  </tr>
  <tr> 
    <td rowspan="4" valign="top" bgcolor="#555982"><!-- #include file="left_links.asp" -->
</td>
    <td valign="top" bgcolor="#bdc9de"><img name="bg_r2_c2" src="images/bg_r2_c2.png" width="10" height="13" border="0" alt=""></td>
    <td bgcolor="#bdc6de"><!--#include file="alphabet.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="13" border="0" alt=""></td>
  </tr>
  <tr>
    <td colspan=3 valign="top" bgcolor="#bdc9de" background="HLINE.GIF"  ><img src="hline.gif" width="575" height="1"></td>
    
  </tr>
  <tr> 
    <td colspan="2" valign="top" bgcolor="#bdc6de"> <table width="80%" border="0" align="right" cellpadding="5" cellspacing="5">
        <tr> 
          <td><font face="Arial" size=2 ><%
		  Response.Write(session("add_status") )
		  session("add_status") = ""
		  %></font></td>
        </tr>
        <tr> 
          <td> <form name="frm_product" method="post" action="<%=action_page %>" onsubmit="return validate_add()">
              <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr> 
                  <td><font face="Arial" size="2">Select Category</font></td>
                  <td> <font face="Arial" size="2"> 
				  
                    <select name="lst_category" onChange="form_submit(1)">
                      <option value="-1" selected >-----------Select-----------</option>
                      <%
								
								
								Rs.open sql_category, con
								while Rs.eof = false
											if strcomp(request("lst_category"),rs(0)) = 0 then
											Response.write("<option value='"& rs(0) &"' selected>" & rs(1) &"</option>"&vbNewline)
											else
											Response.write("<option value='"& rs(0) &"' >" & rs(1) &"</option>"&vbNewline)
											end if
									Rs.Movenext
								wend
								Rs.close
								
								%>
                    </select>
					<input type="hidden" name="flag_show">
                    </font></td>
                </tr>
                <% if flag_show > 0 then %>
                <tr> 
                  <td><font face="Arial" size="2">Select Sub Category</font></td>
                  <td> <font face="Arial" size="2"> 
                    <select name="lst_subcategory" onChange="form_submit(2)" >
                      <option value="-1" selected>-----------Select-----------</option>
                      <%
								
								Rs.open sql_sub_category, con
								while Rs.eof = false
										if strcomp(request("lst_subcategory"),rs(0)) = 0 then
											Response.write("<option value='"& rs(0) &"' selected>" & rs(1) &"</option>"&vbNewline)
											else
											Response.write("<option value='"& rs(0) &"' >" & rs(1) &"</option>"&vbNewline)
											end if
									Rs.Movenext
								wend
								Rs.close
								
								%>
                    </select>
                    </font></td>
                </tr>
                <%end if %>
              </table>
            </form></td>
        </tr>
        <tr>
          <td><% if flag_show > 1  then %>
		  <object data="add_rte.asp" align="baseline" border="0" width="500" height="500" type="text/x-scriptlet"></object><%end if%>
		  </td>
        </tr>
      </table>
      </td>
    <td><img src="images/spacer.gif" width="1" height="326" border="0" alt=""></td>
  </tr>
  <tr> 
    <td colspan="2" bgcolor="#313952"><!-- #include file="downlinks.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="14" border="0" alt=""></td>
  </tr>
</table>


</body>
</html>
