
<table width="649" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td colspan="2"><img src="text.gif" width="399" height="33"></td>
  </tr>
  <tr> 
    <td width="14">&nbsp;</td>
    <td width="635"> <Marquee>
      <font color="#24A9D5" size="2" face="Verdana"><strong>This is great place 
      to buy products</strong></font> 
      </marquee></td>
  </tr>
  <tr>
    <td><img src="images/spacer.gif" height=25 width=1></td>
    <td align="right" valign="bottom">&nbsp;</td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td align="left" valign="bottom">
	<% if (session("username")) <> "" then %>
	<table width="100%" border="0" cellspacing="1" cellpadding="1">
        <tr>
          <td><font size="2" face="Arial">Welcome <b><%=session("txt_name") %></b></font></td>
          <td align="right"><font size="2" face="Arial"><a href="add_articles.asp" class="top">Add</a> 
            | <a href="logout.asp" class="top">Logout</a></font></td>
        </tr>
      </table>
	  <% else 	  
	  %>
      <a href="index.asp" class="top"><font size="2" face="Verdana">To Login Click here</font></a> 
      <%end if%>
    </td>
  </tr>
</table>
