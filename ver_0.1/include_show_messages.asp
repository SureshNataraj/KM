<% ACTION = Request.Querystring("ACTION") %>
<% PAGE = CInt(Request.Querystring("PAGE")) %>

<% RCOUNT = CInt(Request.Querystring("RCOUNT")) %>
<% If RCOUNT = "" Then %>
<% RCOUNT = "0" %>
<% End If %>

<%

Dim CmdShowEntries
Dim MySQL

'** Get initial recordset
set conn = server.createobject("Adodb.Connection")
Set CmdShowEntries1 = Server.CreateObject("ADODB.Recordset")
MySQL = "SELECT BOOK1.* FROM BOOK1 WHERE (NOT (NAME IS NULL)) ORDER BY DATE_ENTERED DESC"
cons="Provider=Microsoft.Jet.oledb.4.0;data source="& server.mappath("FORUMS.MDB")
'conn.open cons
CmdShowEntries1.cursorlocation=3
CmdShowEntries1.Open MySQL,cons,3
%>

<% HOWMANY = 5 %>

<%  '** Determine Page Size
    CmdShowEntries1.PageSize = HOWMANY
%>


<% If ACTION = "FORWARD" Then %>
 <% PAGE = PAGE + 1 %>
 <% RCOUNT = RCOUNT + HOWMANY %>
  <% For DACOUNT = 1 To RCOUNT %>
      <% CmdShowEntries1.MoveNext %>
  <% Next %>
<% End If %>


<% If ACTION = "BACK" Then %>
 <% PAGE = PAGE - 1 %>
 <% RCOUNT = RCOUNT - HOWMANY %>
 <% If RCOUNT <> 0 Then %>
  <% For DACOUNT = 1 To RCOUNT %>
      <% CmdShowEntries1.MoveNext %>
  <% Next %>
 <% End If %>
<% End If %>


<% If RCOUNT = "0" Then %>
<% PAGE = 1 %>
<p align="center"><font face="Verdana" size="2"> 
  <% If CmdShowEntries1.RecordCount > 1 or CmdShowEntries1.RecordCount = 0 Then %>
  <% =CmdShowEntries1.RecordCount %>
  Messages Found 
  <% Else %>
  <% =CmdShowEntries1.RecordCount %>
  Message Found 
  <% End If %>
  <br>
  <% If CmdShowEntries1.RecordCount <> 0 And HOWMANY < CmdShowEntries1.RecordCount Then %>
  Showing page <% = PAGE %> of 
  <%
  
  dim nopage 
  dim noextra
  
  nopage = int(CmdShowEntries1.RecordCount / 5)
  noextra = CmdShowEntries1.RecordCount mod 5
  if noextra > 0 then
	  nopage = nopage + 1
  end if
  
  response.write nopage
  %>
  
  
  <% End If %>
  </font></p>
<font face="Verdana" size="2"> 
<% End If %>
<% If CmdShowEntries1.RecordCount = 0 Then %>
<% Response.End %>
<% End If %>
</font> 
<hr width="100%" size="2">
<div align="center"> 
  <center>
    <font face="Verdana" size="2"> 
    <% y = 0 %>
    <% while NOT CmdShowEntries1.EOF %>
    </font> 
    <table border="0" width="100%" bgcolor="#000000" cellpadding="0" cellspacing="1">
      <tr bgcolor="#FFFFFF"> 
        <td><font face="Verdana" size="2"><strong><%= CmdShowEntries1("NAME") %></strong></font></td>
        <td><font face="Verdana" size="2"><a class=articles href="mailto:<%= CmdShowEntries1("EMAIL") %>"><%= CmdShowEntries1("EMAIL") %></a></font></td>
        <td><font face="Verdana" size="2"><a class=articles href="<%= CmdShowEntries1("URL") %>" Target="_blank" ><%= CmdShowEntries1("URL") %></a></font></td>
      </tr>
      <tr bgcolor="#FFFFFF"> 
        <td colspan="3"><font face="Verdana" size="2"><strong><%= CmdShowEntries1("MESSAGE") %></strong></font></td>
      </tr>
      <tr bgcolor="#FFFFFF"> 
        <td colspan="3"><font face="Verdana" size="2"><%= CmdShowEntries1("DATE_ENTERED") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IP 
          ADDRESS&nbsp;<%= CmdShowEntries1("IP_ADDRESS") %></font></td>
      </tr>
    </table>
    <font face="Verdana" size="2"><br>
    <% CmdShowEntries1.MoveNext %>
    <% y = y + 1 %>
    <%  if y = HOWMANY then %>
    <%   while NOT CmdShowEntries1.EOF %>
    <%    CmdShowEntries1.MoveNext %>
    <%   wend %>
    <%  end if %>
    <% wend%>
    </font> 
  </center>
</div>
<font face="Verdana" size="2"><br>
</font> 
<div align="center"> 
  <center>
    <table border="0" width="400">
      <tr> 
        <td width="200"><font face="Verdana" size="2"> 
          <% If RCOUNT > 0 Then %>
          </font> 
          <form method="PUT" action="guestbook.asp">
            <font face="Verdana" size="2"> 
            <input type="hidden" name="ACTION" value="BACK">
            <input type="hidden" name="RCOUNT" value="<% =RCOUNT %>">
            <input type="hidden" name="PAGE" value="<% =PAGE %>">
            </font> 
            <p><font face="Verdana" size="2"> 
              <input type="submit" value="Previous <% =HOWMANY %> Messages">
              </font></p>
          </form>
          <font face="Verdana" size="2"> 
          <% End If %>
          </font></td>
        <td width="200"><font face="Verdana" size="2"> 
          <% If PAGE = CmdShowEntries1.PageCount Then %>
          <% Else %>
          </font> 
          <form method="PUT" action="guestbook.asp">
            <font face="Verdana" size="2"> 
            <input type="hidden" name="ACTION" value="FORWARD">
            <input type="hidden" name="RCOUNT" value="<% =RCOUNT %>">
            <input type="hidden" name="PAGE" value="<% =PAGE %>">
            </font> 
            <p><font face="Verdana" size="2"> 
              <input type="submit" value="More Messages">
              </font></p>
          </form>
          <font face="Verdana" size="2"> 
          <% End If %>
          </font></td>
      </tr>
      <tr> 
        <td colspan="2"> <font face="Verdana" size="2">Showing page 
          <% = PAGE %>
          of 
          <%
  
 
  
  nopage = int(CmdShowEntries1.RecordCount / 5)
  noextra = CmdShowEntries1.RecordCount mod 5
  if noextra > 0 then
	  nopage = nopage + 1
  end if
  
  response.write nopage
  %>
          </font> </td>
      </tr>
    </table>


    </center></div>

