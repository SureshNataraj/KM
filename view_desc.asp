<% @Language="VbScript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->
<%

dim rs
dim cid, aid
dim sql_select
dim i, k, total_page, pageno, intCheckPage, j, start,sql_title, rs_title, title, txt_search, last_page_c, del_status

cid = Request.QueryString("cid")
aid = Request.QueryString("aid")
set rs_title = Server.CreateObject("Adodb.Recordset")

sql_title = "select a.txt_categorytitle, b.txt_categorytitle from tbl_category as a , tbl_category as b  where a.int_categoryid = b.int_parentcategoryid and b.int_categoryid =" & cid
rs_title.open sql_title, con
if rs_title.eof = false then
	title = rs_title(0) & " &gt;&gt; " & rs_title(1)
end if
rs_title.close
set rs_title = nothing
set rs = server.CreateObject("Adodb.Recordset")


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


function go_modify(x)
{
document.frm_modify.int_articleid.value = x;
document.frm_modify.submit()
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
    <td colspan="2" valign="top" bgcolor="#bdc6de"> <table width="90%" border="0" align="center" cellpadding="0" cellspacing="5">
        <form name="frm_modify" method="post" action="modify.asp">
		<tr> 
          <td><font face="Arial" size=2 ><b><%=title %></b></font><input type="hidden" name="int_articleid"></td>
        </tr>
		</form>
		 <% 
		 sql_select = "select txt_article_title ,  txt_article_content,  txt_attachment_type, txt_attachment,txt_image_attachment,txt_image_width, txt_image_height, int_articleid, txt_userid from  tbl_articles where int_categoryid = " & cid & " and int_articleid = "& aid &" and int_status=1 order by txt_article_title"

rs.pagesize = 5
rs.cursorlocation = 3
Rs.open sql_select, con
if rs.eof = false then
	total_page = rs.Pagecount

	pageno = request("pageno")
	
	if pageno = "" or isnull(pageno)=true then
	pageno = 1
	rs.Absolutepage = 1
	else
	rs.Absolutepage = pageno
	end if


end if
		 
		 if rs.eof = true then 
		 
		 %>
        <tr> 
          <td><font face="Verdana" size="2"> <font color="#000000">There are no 
           articles  for this category </font> </font></td>
        </tr>
		<% else %>
        <tr>
          <td> <font face="Verdana" size="2" color="#000000"> <a href="javascript:history.back()" >&lt;&lt;Back 
            to main page</a> </font> <%= "<p align=center> <font face=Verdana size=2 color=#ff0000>" & request("del_status") & "</font></p>" %> 
          </td>
        </tr>
        <%
				 for i = 1 to rs.pagesize

					if rs.eof = true then
						exit for	
					end if
		  %>
        <tr> 
          <td><table width="574" border="0" cellspacing="0" cellpadding="0">
              <%  if  strcomp(rs("txt_userid"), session("username")) = 0 then%>
              <tr>
                <td width="470" align="left" valign="top">&nbsp;</td>
                <td width="104" align="right" valign="top"><font size="2" face="Verdana"><!--<a href="javascript:go_modify('<%=rs("int_articleid") %>')">Modify</a> 
                  | <a href="x_delete.asp?article_id=<%=rs("int_articleid") %>&cid=<%= Request("cid") %>&pageno=<%=pageno %>">Delete</a></font>  --></td>
              </tr>
			  
			  <% end if%>
              <tr bgcolor="#555982"> 
                <td align="left" valign="top"> <font face="verdana" size="2"  color="#ffffff"><b><%=rs(0) %></b></font> 
                </td>
                <td align="right" valign="top"> 
                  <% 
				if rs("txt_attachment")<>"" then
						
							Response.Write("<a href='"&rs("txt_attachment") &"' target=_blank><img src='attachment_types\"& rs("txt_attachment_type") &".jpg' hspace=0 vspace=0 height=20 width=20 border=0>")
						
				
				end if
				
				%>
                </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td> 
            <p align="justify"> 
              <% if rs("txt_image_attachment")<>"" then 
					if cint(rs("txt_image_width")) < 25 and cint(rs("txt_image_height")) < 25 then
						Response.Write("<img src='"&rs("txt_image_attachment")&"' width="&rs("txt_image_width")& "height="& rs("txt_image_height")& "border=0  hspace=10 vspace=10 align=left>")
					else
						Response.Write("<a href='" & rs("txt_image_attachment")& "' target=_blank ><img src='"&rs("txt_image_attachment")&"' width=100 height=100 border=0  hspace=10 vspace=10 align=left></a>")
					end if
				
				end if
				 %>
              <font face="verdana" size="2"><%=rs(1) %></font></p></td>
        </tr>
		<tr>
          <td>------------------------------------------------------------------------------------</td>
        </tr>
        <% 
			
			  rs.movenext
			  next
			  
			  %>
        <tr> 
          <td><font face="Verdana" size="2" color="#000000"> <a href="javascript:history.back()" >&lt;&lt;Back 
            to main page</a> </font>  
           
            &nbsp;</td>
        </tr>
		<%end if %>
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
