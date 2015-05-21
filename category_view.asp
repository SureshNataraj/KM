<% @Language="VbScript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->
<%

dim rs
dim cid
dim sql_select , alph, int_pagesize
dim i, k, total_page, pageno, intCheckPage, j, start,sql_title, rs_title, title, txt_search, last_page_c, del_status

cid = Request.QueryString("cid")
' txt_search="&txt_search &"&alph="& alph  &"
		 txt_search = Request("txt_search")
		 alph = Request("alph")
		 
set rs_title = Server.CreateObject("Adodb.Recordset")
if txt_search = "" or isnull(txt_search) = true then
	if  alph ="" or isnull(alph) = true then

				sql_title = "select a.txt_categorytitle, b.txt_categorytitle from tbl_category as a , tbl_category as b  where a.int_categoryid = b.int_parentcategoryid and b.int_categoryid =" & cid
				rs_title.open sql_title, con
				if rs_title.eof = false then
					title = rs_title(0) & " &gt;&gt; " & rs_title(1)
				end if
				rs_title.close
				set rs_title = nothing
		else
			title = "Alphabetical Search : " & alph
		end if
		
	else
	
	title = "Search by word '"& txt_search & "'"
end if



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

function go_delete(x)
{
	d_v1 = confirm("Are you sure you want to delete this article \n this canot be undone")
	//alert(d_v1)
	if ( d_v1 )
	{
	 document.location = x;
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
    <td colspan="2" valign="top" bgcolor="#bdc6de"> <table width="98%" border="0" align="center" cellpadding="0" cellspacing="5">
        <form name="frm_modify" method="post" action="modify.asp">
		<tr> 
          <td><font face="Arial" size=2 ><b><%=title %></b></font><input type="hidden" name="int_articleid"></td>
        </tr>
		</form>
		 <% 
		
		 if txt_search = "" or isnull(txt_search) = true then
		 	if  alph ="" or isnull(alph) = true then
				sql_select = "select txt_article_title ,  dt_inserted_date,  txt_attachment_type, txt_attachment,txt_image_attachment,txt_image_width, txt_image_height, int_articleid, int_categoryid , txt_userid, b.txt_name from  tbl_articles as a , tbl_userdetails as b  where b.txt_username = a.txt_userid and  int_categoryid in ( select int_categoryid from tbl_articles where int_categoryid = " & cid & " and int_status=1)  order by dt_inserted_date desc,  txt_article_title"	 				 
				else
				sql_select = "select txt_article_title ,  dt_inserted_date,  txt_attachment_type, txt_attachment,txt_image_attachment,txt_image_width, txt_image_height, int_articleid, int_categoryid , txt_userid, b.txt_name from  tbl_articles as a , tbl_userdetails as b  where b.txt_username = a.txt_userid and  a.int_articleid in ( select int_articleid from tbl_articles where ( txt_article_title like '" & alph & "%' or txt_article_title like '" & UCase(alph) & "%' ) and int_status=1)  order by dt_inserted_date desc, txt_article_title"	
			end if
		else
			sql_select = "select txt_article_title ,  dt_inserted_date,  txt_attachment_type, txt_attachment,txt_image_attachment,txt_image_width, txt_image_height, int_articleid, int_categoryid , txt_userid, b.txt_name from  tbl_articles as a , tbl_userdetails as b  where b.txt_username = a.txt_userid and  a.int_articleid in ( select int_articleid from tbl_articles where (txt_article_title like '%" & txt_search & "%' or txt_article_title like '%" & ucase(txt_search) & "%' or txt_article_title like '%" & ucase(mid(txt_search,1,1))& mid(txt_search,2,len(txt_search)) & "%' or txt_article_title like '%" & lcase(mid(txt_search,1,1))& mid(txt_search,2,len(txt_search)) & "%' or  txt_article_content like '%" & txt_search & "%'"&_ 
			"or txt_article_content like '%" & ucase(txt_search) & "%' or txt_article_content like '%" & ucase(mid(txt_search,1,1))& mid(txt_search,2,len(txt_search)) & "%' or txt_article_content like '%" & lcase(mid(txt_search,1,1))& mid(txt_search,2,len(txt_search)) & "%') and int_status=1)  order by dt_inserted_date desc, txt_article_title"	
			
		end if
		
		
		'Response.Write(sql_select & "<br>")
		'Response.Flush()
rs.pagesize = 10
'set this as same as page size
int_pagesize = 10

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
		 
		 if rs.eof = true then %>
        <tr> 
          <td><font face="Verdana" size="2"> <font color="#000000">There are no 
           articles  for this category </font> </font></td>
        </tr>
		<% else %>
        <tr>
          <td>
		  
		  <%= "<p align=center> <font face=Verdana size=2 color=#ff0000>" & request("del_status") & "</font></p>" %> 
		  
		  <font face="Verdana" size="2"> 
                    <font color="#000000"> 
		
		<!-- <b><%=rs.recordcount  %></b>found 
        on '<b><%= title %></b>' ,&nbsp;&nbsp; <br> -->Showing 
		<b>
		<% if rs.recordcount < rs.pagesize then
				if rs.recordcount  = 0 then
				response.write  "0  to " &  rs.recordcount 
				else
				response.write  "1  to " &  rs.recordcount 
				end if
			else
				
				if pageno * int_pagesize  =< rs.recordcount then
					response.write ((pageno - 1) * int_pagesize) + 1 & " to " & (pageno  * int_pagesize) 
				else
					last_page_c = rs.recordcount mod int_pagesize
					response.write ((pageno - 1) * int_pagesize) + 1 & " to " & ((pageno - 1) * int_pagesize) + last_page_c
				end if
				
				
			end if
		%></b>
		  of  <b><%=rs.recordcount  %></b>


		</font> </font>
		</td>
        </tr>
        <%
				
		  %>
        <tr> 
          <td align="right">
             
            </td>
        </tr>
        <tr> 
          <td> <table width="100%" border="1" align="center" cellpadding="1" cellspacing="2" bordercolor="#666699">
              <tr> 
               <!-- <td >&nbsp;</td> -->
                <td colspan=2><font size="2" face="Verdana">Title</font></td>
                <td ><font size="2" face="Verdana">Date</font></td>
                <td ><font size="2" face="Verdana">Name of Author </font></td>
				 <%  if  strcomp(rs("txt_userid"), session("username")) = 0 then%>
						<td >&nbsp;</td>
						<td >&nbsp;</td>
				 <% end if%>
              </tr>
             <%
			 ' this where all sql comes
			 
			  for i = 1 to rs.pagesize

					if rs.eof = true then
						exit for	
					end if
					
			 %>
              <tr>
			  <% 
				if rs("txt_attachment")<>"" then
				%>
					 
                <td> 
                  	
						<%	Response.Write("<a href='"&rs("txt_attachment") &"' target=_blank><img src='attachment_types\"& rs("txt_attachment_type") &".jpg' hspace=0 vspace=0 height=20 width=20 border=0>")
						%>
				
				
                  </td> <td>
				  <%
				  else
				  Response.Write("<td colspan=2>")
				end if
				
				%>
               <font size="2" face="Verdana"><a href=view_desc.asp?<%= "aid="& rs("int_articleid") & "&cid="&rs("int_categoryid")  %>><%=rs("txt_article_title").value %></a></font></td>
                <td><font size="1" face="Verdana"><%=rs("dt_inserted_date") %></font></td>
                <td><font size="1" face="Verdana"><%=rs("txt_name") %></font></td>
				<%  if  strcomp(rs("txt_userid"), session("username")) = 0 then%>
                <td> 
            
                <font size="2" face="Verdana"><a href="javascript:go_modify('<%=rs("int_articleid") %>')">Edit</a> </td>
                <td><a href="javascript:go_delete('x_delete.asp?article_id=<%=rs("int_articleid")&"&txt_search="&txt_search &"&alph="& alph%>&cid=<%= Request("cid") %>&pageno=<%=pageno %>')">X</a></td>
				<% end if%>
              </tr>
              <% 
			
			  rs.movenext
			  next
			  
			  %>
            </table></td>
        </tr>
		
       
        <tr> 
          <td> 
            <%
	If total_page > 1 then

		If pageno <> 1 then

		%>
            <a href="<%= "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="&pageno - 1 %>"  ><b><font color="#000000">Prev</font></b></a>	
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
            <a href="<% = "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="&i%>"  ><b><font color="#000000"><%=i%></font></b></a>	
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
            <a href="<% = "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="&i %>" ><b><font color="#000000"><%=i%></font></b></a> 
            <%
				 else %>
            <span ><b><font color="#000000"><%=i%></font></b></span> 
            <%end if
			 next
		  end if
	
			  if not (cint(j)>total_page-1) then
					%>
            <a href="<% = "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="& j + 1 %>"  ><b><font color="#000000">Next</font></b></a> 
            <%
			  end if
		end if %>
            <% else
   if (total_page<10) then
	  for i=1 to total_page
		 j=pageno
		 if not (cint(pageno)=cint(i)) then
				%>
            <a href="<% = "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="&i %>"  ><b><font color="#000000"><%=i%></font></b></a> 
            <%
		 else %>
            <span ><b><font color="#000000"><%=i%></font></b></span> 
            <%end if
	  next
	  
	  if not (cint(j)>total_page-1) then 
		%>
            <a href="<% = "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="&j+1 %>"  ><b><font color="#000000">Next</font></b></a> 
            <% 
	  end if
  else
  for i=1 to 10
	  j = pageno
	  if not (cint(pageno)=cint(i)) then
		 %>
            <a href="<% = "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="&i %>"  ><b><font color="#000000"><%=i%></font></b></a> 
            <%
	  else %>
            <span ><b><font color="#000000"><%=i%></font></b></span> 
            <% end if
  next

  if not (cint(j)>total_page-1) then
%>
            <a href="<% = "category_view.asp?txt_search="&txt_search &"&alph="& alph  &"&cid="& cid &"&pageno="&j+1%>"  ><b><font color="#000000">Next</font></b></a>	
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
