<!--#INCLUDE FILE="clsUpload.asp"-->
<%
Dim objUpload
Dim strFileName
Dim objConn
Dim objRs
Dim lngFileID

' Instantiate Upload Class
Set objUpload = New clsUpload

' Grab the file name
strFileName = objUpload.Fields("File1").FileName

Set objConn = Server.CreateObject("ADODB.Connection")
Set objRs = Server.CreateObject("ADODB.Recordset")

' Sometimes I personally have errors with one method on different servers, but the other works.
objConn.Open "DRIVER=Microsoft Access Driver (*.mdb);DBQ=" & Server.MapPath("Files.mdb")
'objConn.Open "PROVIDER=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("Files.mdb")

objRs.Open "Files", objConn, 3, 3

objRs.AddNew

objRs.Fields("FileName").Value = objUpload.Fields("File1").FileName
objRs.Fields("FileSize").Value = objUpload.Fields("File1").Length
objRs.Fields("ContentType").Value = objUpload.Fields("File1").ContentType
objRs.Fields("BinaryData").AppendChunk objUpload("File1").BLOB & ChrB(0)

objRs.Update

objRs.Close

objRs.Open "SELECT Max(FileID) AS ID FROM Files", objConn, 3, 3
lngFileID = objRs.Fields("ID").Value
objRs.Close

Set objRs = Nothing
Set objConn = Nothing
Set objUpload = Nothing
%>
File has been saved in database.<BR>
<BR>
View this file:<BR>
<BR>
<A href="DataFile.asp?FileID=<%=lngFileID%>"><%=strFileName%></A>
