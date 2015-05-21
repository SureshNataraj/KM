<% @ Language="VBScript" %>
<% Option Explicit %>
<%
' there are a number of objects that come with IIS4
' these are put in the array that's declared below
Dim theInstalledObjects(8)

theInstalledObjects(0) = "MSWC.AdRotator"
theInstalledObjects(1) = "MSWC.BrowserType"
theInstalledObjects(2) = "MSWC.NextLink"
theInstalledObjects(3) = "MSWC.Tools"
theInstalledObjects(4) = "MSWC.Status"
theInstalledObjects(5) = "MSWC.Counters"
theInstalledObjects(6) = "IISSample.ContentRotator"
theInstalledObjects(7) = "IISSample.PageCounter"
theInstalledObjects(8) = "MSWC.PermissionChecker"

Function IsObjInstalled(strClassString)
 On Error Resume Next
 ' initialize default values
 IsObjInstalled = False
 Err = 0
 ' testing code
 Dim xTestObj
 Set xTestObj = Server.CreateObject(strClassString)
 If 0 = Err Then IsObjInstalled = True
 ' cleanup
 Set xTestObj = Nothing
 Err = 0
End Function


Function GetScriptEngineInfo
  Dim s
  s = ""				' Build string with necessary info.
  s = ScriptEngine & " Version "
  s = s & ScriptEngineMajorVersion & "."
  s = s & ScriptEngineMinorVersion & "."
  s = s & ScriptEngineBuildVersion 
  GetScriptEngineInfo =  s	' Return the results.
End Function



%>

<HTML>
<HEAD>
<TITLE>Test of installed objects</TITLE>
</HEAD>
<BODY>

Enter the ProgId or ClassId of the component you want to test in the textbox below. If you leave it empty, the default
components will be tested.

<FORM action=<%=Request.ServerVariables("SCRIPT_NAME")%> method=post>
<input type=text value="" name="classname" size=40>
<INPUT type=submit value=Submit>
<INPUT type=reset value=Reset> 
</FORM>

<%
Dim strClass
strClass = Trim(Request.Form("classname"))
If "" <> strClass then
  Response.Write strClass & " is "
  If Not IsObjInstalled(strClass) then 
    Response.Write "<strong>not installed</strong>"
  Else
    Response.Write "installed!"
  End If
  Response.Write "<P>" & vbCrLf
Else
  ' default: list all components that should be installed
%>

<TABLE BORDER=0>
<%
Dim i
For i=0 to UBound(theInstalledObjects)
  Response.Write "<TR><TD>" & theInstalledObjects(i) & "</TD><TD>"
  If Not IsObjInstalled(theInstalledObjects(i)) Then 
    Response.Write "<strong>not installed</strong>"
  Else
    Response.Write "installed!"
  End If
  Response.Write "</TD></TR>" & vbCrLf
Next
%>
</TABLE>

<%
End If
%>

<table border=1><tr><td>

<% Response.write(GetScriptEngineInfo) %>
</td></tr></table>

</BODY>
</HTML>