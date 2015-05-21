<% @Language="VbScript" %>
<% 'option explicit %>
<% ACTION = Request.Form("ACTION") %>

<%

Session("ConnGuestBook_ConnectionString") = "DBQ="& server.MapPath("forums.mdb")&";Driver={Microsoft Access Driver (*.mdb)};"
'Response.Write Session("ConnGuestBook_ConnectionString")
'Response.flush
Session("ConnGuestBook_ConnectionTimeout") = 15
Session("ConnGuestBook_CommandTimeout") = 30
Session("ConnGuestBook_RuntimeUserName") = "admin"
Session("ConnGuestBook_RuntimePassword") = ""
%>


<%



%>
<html>
<head>
<title>Knowledge Management</title>
<!-- #include file="scripts.asp" -->


</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table border="0" cellpadding="0" cellspacing="0" width="774">
  <tr> 
    <td><img src="images/spacer.gif" width="125" height="1" border="0" alt=""></td>
    <td><img src="images/spacer.gif" width="10" height="1" border="0" alt=""></td>
    <td><img src="images/spacer.gif" width="639" height="1" border="0" alt=""></td>
    <td><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
  </tr>
  <tr> 
    <td valign="top" bgcolor="#555982"><a href="index.asp" ><img src="logo.gif" width="61" height="61" border=0></a></td>
    <td colspan="2" valign="top" bgcolor="555982"> <table width="649" border="0" cellpadding="0" cellspacing="0" >
        <tr> 
          <td><!-- #include file="toplinks.asp"--></td>
        </tr>
      </table></td>
    <td><img src="images/spacer.gif" width="1" height="98" border="0" alt=""></td>
  </tr>
  <tr> 
    <td rowspan="4" valign="top" bgcolor="#555982"><!-- #include file="left_links.asp" --></td>
    <td valign="top" bgcolor="#bdc9de"><img name="bg_r2_c2" src="images/bg_r2_c2.png" width="10" height="13" border="0" alt=""></td>
    <td bgcolor="#bdc6de"><!--#include file="alphabet.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="13" border="0" alt=""></td>
  </tr>
  <tr>
    <td colspan=3 valign="top" bgcolor="#bdc9de" background="HLINE.GIF"  ><img src="hline.gif" width="575" height="1"></td>
    
  </tr>
  <tr> 
    <td colspan="2" valign="top" bgcolor="#bdc6de"> <table width="80%" border="0" align="center" cellpadding="5" cellspacing="5">
        <tr> 
          <td> 
		  
		   <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td>
		  <blockquote>
                    <table border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                      <td><font face="verdana" size="4"><b><font color="#CCCCCC"><br>
                          <font color="#666699">Guestbook</font> </font></b></font></td>
                    </tr>
                    <tr> 
                      <td background="bluedot.gif"><font face="verdana" size="4"><b><font color="#CCCCCC"><img src="bluedot.gif" width="10" height="2"></font></b></font></td>
                    </tr>
                  </table>
				  </blockquote>
		  
		  </td>
        </tr>
        <tr> 
          <td> <font face="Verdana" size="2"> 
            <% If ACTION = "Save" Then %>
            <!--#INCLUDE FILE="include_save_message.asp"-->
            <% End If %>
            <% If ACTION = "Save" Then %>
            </font> 
            <p align ="center"><font face="Verdana" size="2"><b>Thank You For 
              Your Comments</b></font></p>
            <font face="Verdana" size="2"> 
            <% End If %>
            </font> 
            <form method="POST" action="savebook.asp">
              <input type="hidden" name="ACTION" value="Save">
              <div align="center"> 
                <center>
                  <p><font
  face="verdana"><big><strong>Guest Book Entry</strong></big></font></p>
                </center>
              </div>
              <div align="center"> 
                <center>
                  <table border="0" bgcolor="#333333" width="75%" cellpadding="0" cellspacing="1">
                    <tr> 
                      <td bgcolor="#FFFFFF" align="right"><font face="Verdana" size="2"><strong><small>NAME&nbsp;&nbsp;</small></strong></font></td>
                      <td bgcolor="#FFFFFF"> <font face="Verdana" size="2"> 
                        <input type="text" name="NAME" size="30">
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#FFFFFF" align="right"><font face="Verdana" size="2"><strong><small>EMAIL&nbsp;&nbsp;</small></strong></font></td>
                      <td bgcolor="#FFFFFF"> <font face="Verdana" size="2"> 
                        <input type="text" name="EMAIL" size="30">
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#FFFFFF" align="right"><font face="Verdana" size="2"><strong><small>HOMEPAGE 
                        URL&nbsp;&nbsp;</small></strong></font></td>
                      <td bgcolor="#FFFFFF"> <font face="Verdana" size="2"> 
                        <input type="text" name="URL" size="30" value="http://">
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#FFFFFF" align="right"><font face="Verdana" size="2"><strong><small>MESSAGE&nbsp;&nbsp;</small></strong></font></td>
                      <td bgcolor="#FFFFFF"> <font face="Verdana" size="2"> 
                        <textarea rows="4" name="MESSAGE" cols="40"></textarea>
                        </font></td>
                    </tr>
                  </table>
                </center>
              </div>
              <div align="center"> 
                <center>
                  <input type="submit"
  value="Add To Guestbook" name="submit">
                </center>
              </div>
            </form>
            <br>
            <!--#INCLUDE FILE="include_show_messages.asp"--> </td>
        </tr>
      </table>
            
                
           </td>
              </tr>
            </table>
                    
     
    
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td><img src="images/spacer.gif" width="1" height="326" border="0" alt=""></td>
  </tr>
  <tr> 
    <td colspan="2" bgcolor="#313952"><!-- #include file="downlinks.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="14" border="0" alt=""></td>
  </tr>
</table>

</body>

</html>
