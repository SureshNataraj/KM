<% @Language="VbScript" %>
<% option explicit %>
<%
Dim I 
Dim rs , sql_new
Set rs = server.CreateObject("Adodb.Recordset")


%>
<html>
<head>
<title>Knowledge Management</title>
<!-- #include file="conn.asp" -->
<!-- #include file="scripts.asp" -->
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
    <td colspan="3" valign="top" background="HLINE.GIF" bgcolor="#bdc9de"><img src="hline.gif" width="575" height="1"></td>
     </tr>
  <tr> 
    <td colspan="2" valign="top" bgcolor="#bdc6de"> <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <% 'This is  where it starts %>
       
        <tr> 
          <td> 
		   <% if (session("username")) = "" then %>
		  <table width="100%" border="0" cellpadding="0" cellspacing="0">
              <% 'This is  where it starts %>
              <% 'if (session("username")) = "" then %>
              <tr> 
                <td> 
                  <% end if%>
                  <% ' This part should be excluded %>
                  <table width="98%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td width="60%"><img src="alliance2.jpg" width="200" height="155" align="left"></td>
                      <td width="40%"><table width="100%" border="1" align="center" cellpadding="2" cellspacing="2" bordercolor="#313952">
                          <tr> 
                            <td align="center" bgcolor="#666699"><font color="#FFFFFF" size="2" face="Verdana"><strong>Quick 
                              Links</strong></font></td>
                          </tr>
                          <tr> 
                            <td><a href="#">Alltel Code Definitions</a></td>
                          </tr>
                          <tr> 
                            <td><a href="#">Internal Policies</a></td>
                          </tr>
                          <tr> 
                            <td><a href="#">Job Aids</a></td>
                          </tr>
                          <tr> 
                            <td><a href="#">Notes</a></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <% ' this  parth %>
                  <% if (session("username")) = "" then %>
                </td>
                <td  background="linedot.gif"><img src="linedot.gif" width="4" height="15"></td>
                <td align="center" valign="top" width="180"> <table width="189" border="0" cellspacing="5" cellpadding="0">
                    <form name="frm_login" method="post" action="x_login.asp" onSubmit="return validate()">
                      <tr> 
                        <td height="20" colspan="3"><font color="#313952" size="2" face="Verdana">&nbsp;</font><font color="#313952" size="2" face="Verdana">&nbsp;</font><font color="#313952" size="2" face="Verdana">&nbsp;<%= Request("status") %></font></td>
                      </tr>
                      <tr> 
                        <td width="77"><font color="#313952" size="2" face="Verdana">Login</font></td>
                        <td width="7"><font color="#313952" size="2" face="Verdana">&nbsp;</font></td>
                        <td width="85"><font color="#313952" size="2" face="Verdana"> 
                          <input name="txt_username" type="text" size="10">
                          </font></td>
                      </tr>
                      <tr> 
                        <td><font color="#313952" size="2" face="Verdana">Password</font></td>
                        <td><font color="#313952" size="2" face="Verdana">&nbsp;</font></td>
                        <td><font color="#313952" size="2" face="Verdana"> 
                          <input name="txt_password" type="password" size="10">
                          </font></td>
                      </tr>
                      <tr align="center"> 
                        <td colspan="3"><font color="#313952" size="2" face="Verdana"> 
                          <input type="submit" name="Submit2" value="Submit">
                          </font></td>
                      </tr>
                      <tr align="center"> 
                        <td colspan="3"><font color="#313952" size="1" face="Arial"><a class="link" href="register.asp">New 
                          User? Sign Up</a> | <a class="link" href="forgotpwd.asp">Forgot 
                          Password</a></font></td>
                      </tr>
                    </form>
                  </table></td>
              </tr>
              <%
		'end if
		' This is where it ends
		%>
            </table>
			
			 <%
		end if
		' This is where it ends
		%>
			</td>
        </tr>
       
        <tr> 
          <td align="center"> 
            <table width="90%" border="1" align="center" cellpadding="1" cellspacing="2" bordercolor="#666699">
              <tr align="center" bgcolor="#666699"> 
                <td colspan="4"><font color="#FFFFFF" size="2" face="Verdana"><strong>Whats 
                  New</strong></font></td>
              </tr>
              <tr>
                <td >&nbsp;</td>
                <td ><font size="2" face="Verdana">Title</font></td>
                <td ><font size="2" face="Verdana">Date</font></td>
                <td ><font size="2" face="Verdana">Name of Author </font></td>
              </tr>
              <% 
					sql_new = "select top 10, a.txt_article_title, a.dt_inserted_date, b.txt_name, a.int_articleid, a.int_categoryid , txt_attachment, txt_attachment_type from tbl_articles  a , tbl_userdetails  b where b.txt_username = a.txt_userid  and  a.int_status = 1  order by a.int_articleid desc"
					
					rs.CursorLocation = 3
					rs.MaxRecords = 5
					Rs.open sql_new , con
					
					for  i = 1 to rs.recordcount
					%>
              <tr>
                <td><% 
				if rs("txt_attachment")<>"" then
						
							Response.Write("<a href='"&rs("txt_attachment") &"' target=_blank><img src='attachment_types\"& rs("txt_attachment_type") &".jpg' hspace=0 vspace=0 height=20 width=20 border=0>")
						
				
				end if
				
				%>&nbsp;</td>
                <td><font size="2" face="Verdana"><a href=view_desc.asp?<%= "aid="& rs(3) & "&cid="&rs(4)  %>><%=rs(0) %></a></font></td>
                <td><font size="2" face="Verdana"><%=rs(1) %></font></td>
                <td><font size="2" face="Verdana"><%=rs(2) %></font></td>
              </tr>
              <% 
					
					rs.MoveNext
					next
					rs.Close
					set rs = nothing
					
					
					%>
            </table>
			<p>&nbsp;</p>
			</td>
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
