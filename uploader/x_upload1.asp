<!--#INCLUDE FILE="clsUpload.asp"-->
<%
Dim objUpload
Dim strFileName1,strFileName2,
Dim strPath

' Instantiate Upload Class
Set objUpload = New clsUpload

' Grab the file name

strFileName1 = objUpload.Fields("attachment_file").FileName
strFileName2 = objUpload.Fields("attachment_image").FileName

' Compile path to save file to
strPath1 = Server.MapPath("Uploads") & "\" & strFileName1
strPath2 = Server.MapPath("Uploads") & "\" & strFileName2


' Save the binary data to the file system
objUpload("attachment_file").SaveAs strPath1
objUpload("attachment_image").SaveAs strPath2

' Release upload object from memory
Set objUpload = Nothing

%>
File has been saved in file system.<BR>
<BR>
View this file:<BR>
<BR>
<A href="Uploads\<%=strFileName%>">Uploads\<%=strFileName%></A>

