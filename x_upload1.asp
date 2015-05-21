<!--#INCLUDE FILE="clsUpload.asp"-->
<%
Dim objUpload
Dim strFileName1,strFileName2
Dim strPath1, strPath2

'Response.flush()
'Response.write("Test")
' Instantiate Upload Class

Set objUpload = New clsUpload

' Grab the file name

strFileName1 = objUpload.Fields("attachment_file").FileName
strFileExt1 = objUpload.Fields("attachment_file").FileExt

strFileName2 = objUpload.Fields("attachment_image").FileName
strFileExt2 = objUpload.Fields("attachment_image").FileExt

newfilename1 = session.SessionID &"_"& session("username") & "_" &  strFileName1
newfilename2 = session.SessionID &"_"& session("username") & "_" &  strFileName2
' Compile path to save file to
strPath1 = Server.MapPath("attachments") & "\" & newfilename1
strPath2 = Server.MapPath("attachments") & "\" & newfilename2
session("file_at") = newfilename1
session("image_at") = newfilename2
session("file_at_ext") = strFileExt1
session("image_at_ext") = strFileExt2


' Save the binary data to the file system
objUpload("attachment_file").SaveAs strPath1
objUpload("attachment_image").SaveAs strPath2

' Release upload object from memory
Set objUpload = Nothing

%>
<html><head><title>File Upload Confirmation</title></head>
<script language="Javascript">
function setparent()
{
//alert(window.opener.name);
opener.document.frm_product.txt_image_at.value="<%= newfilename1 %>"
opener.document.frm_product.txt_file_at.value = "<%= newfilename2 %>"
set_timer()
//window.opener.bgColor="#ffffff"
}
function set_timer()
{
	time=setTimeout("self.close()",4000);
}

setparent()
</script>
<body>
<table width="300" border="1" cellpadding="0" cellspacing="2" bordercolor="#6699CC">
  <tr>
    <td align="center">
<p><font size="2" face="Verdana">You have sucessfully uploded following file files .</font></p>
<% 
Response.Write(strFileName1 & "<br>" &  strFileName2)

%>
      <p><font size="2" face="Verdana">This window will close autometically in 
        next few seconds</font></p>
    </td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>