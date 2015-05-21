<!--#INCLUDE FILE="clsUpload.asp"-->
<%
Dim objUpload
Dim strFileName
Dim strPath

' Instantiate Upload Class
Set objUpload = New clsUpload

' Grab the file name
strFileName = objUpload.Fields("File1").FileName

' Compile path to save file to
strPath = Server.MapPath("Uploads") & "\" & strFileName

' Save the binary data to the file system
objUpload("File1").SaveAs strPath

' Release upload object from memory
Set objUpload = Nothing
%>
File has been saved in file system.<BR>
<BR>
View this file:<BR>
<BR>
<A href="Uploads\<%=strFileName%>">Uploads\<%=strFileName%></A>

