<html><head><title>Upload Attachment</title></head>
<script language="Javascript">
function validate()
{

//alert(document.frm_upload.attachment_image.value)
//alert(document.frm_upload.attachment_image.type)
v1 = document.frm_upload.attachment_image.value
v1_t = v1.substr(v1.length-4,4)
v1_t2 = v1_t.toLowerCase()
//alert(v1_t2)
if(v1_t2 == ".jpg" || v1_t2 == "jpeg" || v1_t2 == ".jpe" || v1_t2 == ".gif" || v1_t2 == ".bmp" || v1_t2 == ".png")
{
return true
}
else
{
alert("This field is only to upload images. \n To upload any other type of file please use file attachment")
return false
}

//return false
}

</script>
<body>
<FORM method="post" name="frm_upload" encType="multipart/form-data" action="x_upload1.asp" onSubmit="return validate()">
  <table width="400" border="1" cellpadding="0" cellspacing="2" bordercolor="#6699CC">
    <tr> 
      <td align="center"><font size="2" face="Verdana"><strong>Upload Attachments</strong></font></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td colspan="2"><font color="#FF0000" size="1" face="Verdana">Only 
              following type of image can be attached at this time for more contact 
              your administrator:<br>
              JPEG, GIF, JPG, JPE, BMP, PNG</font></td>
          </tr>
          <tr> 
            <td><font size="2" face="Verdana">Image Attachment</font></td>
            <td><INPUT type="File" name="attachment_image"></td>
          </tr>
          <tr> 
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td height="25"><font size="2" face="Verdana">File Attachment</font></td>
            <td><INPUT type="File" name="attachment_file"></td>
          </tr>
          <tr align="center"> 
            <td height="25" colspan="2"> <input name="Submit" type="Submit" value="Upload"> 
              &nbsp; <input name="Reset" type="reset" id="Reset" value="Reset"> 
              &nbsp; <input name="Close" type="button" id="Close" value="Close"> 
            </td>
          </tr>
        </table></td>
  </tr>
</table>


  </FORM>


</body>
</html>
