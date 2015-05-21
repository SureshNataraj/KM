<%@ Language=VBScript %>
<% Option Explicit %>
<% response.buffer=true %>
<%
Dim MBRequest
Dim strPath
strPath = "script:" & Server.MapPath("MetaBuilders.FileUp.wsc" )
'Response.Write strPath
'Response.End
set MBRequest = GetObject( strPath )


	Response.Write "You Uploaded: " & MBRequest("File1").Path & MBRequest("File1").FileName & "<br>" & vbNewLine
	Response.Write "The Extension Is: " & MBRequest("File1").Extension & "<br>" & vbNewLine
	Response.Write "The MIME/ContentType Is: " & MBRequest("File1").ContentType

	'Save the uploaded file to the directory this ASP script resides in
        MBRequest("attachment_file").Save
	MBRequest("attachment_image").Save


set MBRequest = Nothing
%>