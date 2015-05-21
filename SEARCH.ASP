<% @Language="VbScript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->
<%

dim rs
dim cid
dim sql_select
dim i, k, total_page, pageno, intCheckPage, j, start, alph, txt_search

txt_search = Request("txt_search")
set rs = server.CreateObject("Adodb.Recordset")
sql_select = "select txt_article_title ,  txt_article_content   from  tbl_articles where txt_article_title like '%" & txt_search & "%' or txt_article_content like '%" & txt_search &"%' order by txt_article_title"

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
    <td rowspan="4" valign="top" bgcolor="#555982"><table border="0" cellpadding="0" cellspacing="0" width="121">
	<form name="frm_search" method="post" action="search.asp">
        <tr> 
          <td><img src="images/spacer.gif" width="6" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="8" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="92" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="9" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="6" height="1" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
        </tr>
        <tr> 
          <td colspan="2"><img name="box_r1_c1" src="images/box_r1_c1.gif" width="14" height="13" border="0" alt=""></td>
          <td><img name="box_r1_c3" src="images/box_r1_c3.gif" width="92" height="13" border="0" alt=""></td>
          <td colspan="2"><img name="box_r1_c4" src="images/box_r1_c4.gif" width="15" height="13" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="13" border="0" alt=""></td>
        </tr>
		
        <tr> 
          <td background="images/box_r2_c1.gif"><img name="box_r2_c1" src="images/box_r2_c1.gif" width="6" height="75" border="0" alt=""></td>
          <td colspan="3"><table width="100%" border="0">
		  
              <tr> 
                <td align="center"><font color="#FFFFFF" size="2" face="Arial">Search</font></td>
              </tr>
              <tr> 
                <td align="center"><font color="#FFFFFF" size="2" face="Arial"> 
                  <input name="txt_search" type="text" size="10">
                  </font></td>
              </tr>
              <tr> 
                <td align="center"><font color="#FFFFFF" size="2" face="Arial"> 
                  <input name="go" type="image" src="Search.gif" >
                  </font></td>
              </tr>
              <tr> 
                <td align="center"><font color="#FFFFFF" size="2" face="Arial">Advanced 
                  Seach</font></td>
              </tr>
            </table>
			
			
			
			</td>
          <td background="images/box_r2_c5.gif"><img name="box_r2_c5" src="images/box_r2_c5.gif" width="6" height="75" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="75" border="0" alt=""></td>
        </tr>
        <tr> 
          <td colspan="2"><img name="box_r3_c1" src="images/box_r3_c1.gif" width="14" height="13" border="0" alt=""></td>
          <td><img name="box_r3_c3" src="images/box_r3_c3.gif" width="92" height="13" border="0" alt=""></td>
          <td colspan="2"><img name="box_r3_c4" src="images/box_r3_c4.gif" width="15" height="13" border="0" alt=""></td>
          <td><img src="images/spacer.gif" width="1" height="13" border="0" alt=""></td>
        </tr>
		</form>
      </table>
     
      
         <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td valign="top" bgcolor="#bdc9de"><img name="bg_r2_c2" src="images/bg_r2_c2.png" width="10" height="13" border="0" alt=""></td>
    <td bgcolor="#bdc6de"><!--#include file="alphabet.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="13" border="0" alt=""></td>
  </tr>
  <tr>
    <td colspan=3 valign="top" bgcolor="#bdc9de" background="HLINE.GIF"  ><img src="hline.gif" width="575" height="1"></td>
    
  </tr>
  
     
		
  
  <tr> 
    <td colspan="2" valign="top" bgcolor="#bdc6de">
	<table width="80%" border="0" align="center" cellpadding="5" cellspacing="5">
	 <% if rs.eof = true then %>
	     <tr>
          <td><font face="Verdana" size="2"><font color="#000000">There are no 
            articles for this search <b><%=txt_search  %></b></font></font></td>
        </tr>
		<% else %>
		   <tr>
          <td>
		  <font face="Verdana" size="2"> 
                    <font color="#000000"> 
		
		<%=rs.recordcount  %> Results found for your search 
        on '<%=txt_search  %>' ,&nbsp;&nbsp; <br>Showing 
		<% if rs.recordcount < rs.pagesize then
				if rs.recordcount  = 0 then
				response.write  "0 to " &  rs.recordcount 
				else
				response.write  "1 to " &  rs.recordcount 
				end if
			else
				
				if pageno * 5  < rs.recordcount then
					response.write ((pageno - 1) * 5) + 1 & "to" & (pageno  * 5) 
				else
					last_page_c = rs.recordcount mod 5
					response.write ((pageno - 1) * 5) + 1 & " to " & ((pageno - 1) * 5) + last_page_c
				end if
				
				
			end if
		%>
		 of <%=rs.recordcount  %>


		</font> </font>
		  
		  </td>
        </tr>
        <%
				 for i = 1 to rs.pagesize

					if rs.eof = true then
						exit for	
					end if
		  %>
   
        <tr> 
          <td><font face="verdana" size="2"  color="#555982"><b><%= replace(rs(0),txt_search,"<b><i>"& txt_search &"</i></b>",1)  %></b></font> 
          </td>
        </tr>
        <tr> 
          <td><p align="justify"><font face="verdana" size="2"><%=replace(rs(1),txt_search,"<b><i>"& txt_search &"</i></b>",1,-1,1) %></font></p></td>
        </tr>
        <% 
			
			  rs.movenext
			  next
			  
			  %>
        <tr> 
          <td> 
            <%
	If total_page > 1 then

		If pageno <> 1 then

		%>
            <a href="<%= "search.asp?txt_search="& txt_search &"&pageno="&pageno - 1 %>"  ><b><font color="#000000">Prev</font></b></a>	
            <%
	End If
	End if

		
k=1
start= 0
if pageno > 10 then
   if (cint(pageno) < cint(total_page)) then
	  intCheckPage=cint(total_page)-cint(pageno)
		  if (cint(intCheckPage)<5) then
	
			 for i=pageno-5 to pageno+cint(intCheckPage)
				j=pageno
				if not (cint(pageno)=cint(i)) then
					  %>
            <a href="<% = "search.asp?txt_search="& txt_search &"&pageno="&i%>"  ><b><font color="#000000"><%=i%></font></b></a>	
            <%
				else %>
            <span ><b><font color="#000000"><%=i%></font></b></span> 
            <%end if
			 next
	
		  else
			 for i=pageno-5 to pageno+5
				 j=pageno
				 if not (cint(pageno)=cint(i)) then
					%>
            <a href="<% = "search.asp?txt_search="& txt_search &"&pageno="&i %>" ><b><font color="#000000"><%=i%></font></b></a> 
            <%
				 else %>
            <span ><b><font color="#000000"><%=i%></font></b></span> 
            <%end if
			 next
		  end if
	
			  if not (cint(j)>total_page-1) then
					%>
            <a href="<% = "search.asp?txt_search="& txt_search &"&pageno="& j + 1 %>"  ><b><font color="#000000">Next</font></b></a> 
            <%
			  end if
		end if %>
            <% else
   if (total_page<10) then
	  for i=1 to total_page
		 j=pageno
		 if not (cint(pageno)=cint(i)) then
				%>
            <a href="<% = "search.asp?txt_search="& txt_search &"&pageno="&i %>"  ><b><font color="#000000"><%=i%></font></b></a> 
            <%
		 else %>
            <span ><b><font color="#000000"><%=i%></font></b></span> 
            <%end if
	  next
	  
	  if not (cint(j)>total_page-1) then 
		%>
            <a href="<% = "search.asp?txt_search="& txt_search &"&pageno="&j+1 %>"  ><b><font color="#000000">Next</font></b></a> 
            <% 
	  end if
  else
  for i=1 to 10
	  j = pageno
	  if not (cint(pageno)=cint(i)) then
		 %>
            <a href="<% = "search.asp?txt_search="& txt_search &"&pageno="&i %>"  ><b><font color="#000000"><%=i%></font></b></a> 
            <%
	  else %>
            <span ><b><font color="#000000"><%=i%></font></b></span> 
            <% end if
  next

  if not (cint(j)>total_page-1) then
%>
            <a href="<% = "search.asp?txt_search="& txt_search &"&pageno="&j+1%>"  ><b><font color="#000000">Next</font></b></a>	
            <%
	end if
  end if
end if %>
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
