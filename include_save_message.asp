
<% EMAIL = CStr(Replace(Request.Form("EMAIL"),"'","")) %>
<% EMAIL = CStr(Replace(EMAIL,"<","")) %>
<% EMAIL = CStr(Replace(EMAIL,">","")) %>

<% URL = CStr(Replace(Request.Form("URL"),"'","")) %>
<% URL = CStr(Replace(URL,"<","")) %>
<% URL = CStr(Replace(URL,">","")) %>

<%
If URL = "http://" Then 
URL = ""
End If
%>

<% NAME = CStr(Replace(Request.Form("NAME"),"'","")) %>
<% NAME = CStr(Replace(NAME,"<","")) %>
<% NAME = CStr(Replace(NAME,">","")) %>

<% MESSAGE = CStr(Replace(Request.Form("MESSAGE"),"'","")) %>
<% MESSAGE = CStr(Replace(MESSAGE,"<","")) %>
<% MESSAGE = CStr(Replace(MESSAGE,">","")) %>
<% MESSAGE = CStr(Replace(MESSAGE,str,"<br>")) %>
<% MESSAGE = CStr(Replace(MESSAGE,vbCr,"<br>")) %>


<%
Set ConnGuestBook = Server.CreateObject("ADODB.Connection")
ConnGuestBook.ConnectionTimeout = Session("ConnGuestBook_ConnectionTimeout")
ConnGuestBook.CommandTimeout = Session("ConnGuestBook_CommandTimeout")
ConnGuestBook.Open Session("ConnGuestBook_ConnectionString"), Session("ConnGuestBook_RuntimeUserName"), Session("ConnGuestBook_RuntimePassword")
Set cmdTemp = Server.CreateObject("ADODB.Command")
Set CmdDeleteBlankEntries = Server.CreateObject("ADODB.Recordset")
cmdTemp.CommandText = "DELETE FROM BOOK1 WHERE (NAME IS NULL) AND (EMAIL IS NULL) AND (MESSAGE IS NULL)"
cmdTemp.CommandType = 1
Set cmdTemp.ActiveConnection = ConnGuestBook
'CmdDeleteBlankEntries.Open cmdTemp, , 0, 1
%>


<%
Set CmdCheckForDuplicate = Server.CreateObject("ADODB.Recordset")
cmdTemp.CommandText = "SELECT COUNT(ID) AS MESSAGECOUNT FROM BOOK1 WHERE (NAME = '" & NAME & "') AND (EMAIL = '" & EMAIL & "') AND (MESSAGE = '" & MESSAGE & "') AND (URL = '" & URL & "')"
cmdTemp.CommandType = 1
Set cmdTemp.ActiveConnection = ConnGuestBook
CmdCheckForDuplicate.Open cmdTemp, , 0, 1
%>


<% If CmdCheckForDuplicate("MESSAGECOUNT") = 0 Then %>

<%
Set CmdAddMessage = Server.CreateObject("ADODB.Recordset")
cmdTemp.CommandText = "SELECT BOOK1.* FROM BOOK1 WHERE (ID IS NULL)"
cmdTemp.CommandType = 1
Set cmdTemp.ActiveConnection = ConnGuestBook
CmdAddMessage.Open cmdTemp, , 1, 3
%>


<%
CmdAddMessage.AddNew
CmdAddMessage.Fields("DATE_ENTERED") = NOW
%>

<!----------------------------------------------------->

<%
if EMAIL="" THEN
CmdAddMessage.Fields("EMAIL") = NULL
Else
CmdAddMessage.Fields("EMAIL") = EMAIL
END IF
%>
<!----------------------------------------------------->

<% 
if URL="" THEN
CmdAddMessage.Fields("URL") = NULL
Else
CmdAddMessage.Fields("URL") = URL
END IF
%>
<!----------------------------------------------------->

<%
if MESSAGE="" THEN
CmdAddMessage.Fields("MESSAGE") = NULL
Else
CmdAddMessage.Fields("MESSAGE") = MESSAGE
END IF
%>
<!----------------------------------------------------->

<%
if NAME="" THEN
CmdAddMessage.Fields("NAME") = NULL
Else
CmdAddMessage.Fields("NAME") = NAME
END IF
%>
<!----------------------------------------------------->

<%
IP_ADDRESS = Request.ServerVariables("REMOTE_ADDR")
CmdAddMessage.Fields("IP_ADDRESS") = IP_ADDRESS
%>
<!----------------------------------------------------->


<%
CmdAddMessage.Update
CmdAddMessage.Close
%>

<% End If %>

<%
Sub TLdelaySec(DelaySeconds)
SecCount = 0
Sec2 = 0
While SecCount < DelaySeconds + 1
Sec1 = Second(Time())
If Sec1 <> Sec2 Then
Sec2 = Second(Time())
SecCount = SecCount + 1
End If
Wend
End Sub
%>


<% TLdelaySec(4) %>