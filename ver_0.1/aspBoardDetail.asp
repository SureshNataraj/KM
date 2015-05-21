<% @Language="VbScript" %>
<% option explicit %>
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
		  
		   <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
				
					<blockquote>&nbsp; </blockquote>
				  
				
				</td>
              </tr>
              <tr>
                <td>
				
	  <!--#INCLUDE FILE="aspBoardFunctions.asp"-->
<%	
	
	Dim adoRs	
	
	'Uncomment these lines if you want to add the ability to 
	'delete messages. Make sure you set a value for abAdminPwd (see aspBoardData.asp):
	'If Request.QueryString("delId")<>"" And Request.QueryString("pwd") = abAdminPwd Then
	'	strSql = "DELETE * FROM msgDetail WHERE msgId = " & Request.QueryString("delId")
	'	Call adoConn.Execute(strSql)
	'	Response.Redirect "aspBoard.asp"
	'End If	
	
	strSql="SELECT * FROM msgDetail WHERE msgId = " & Request.QueryString("Id")
		
	Set adoRs=Server.CreateObject("ADODB.Recordset")
	adoRS.Open strSql, adoConn, 1
	
	If adoRs.EOF Then
		Response.Redirect "aspBoard.asp"
	End If	
%>



<%	
	If abBGImage="" Then
		If abBGColor <> "" Then
			Response.Write "<BODY BGCOLOR=""" & abBGColor & """>"
		End If
	Else
		Response.Write "<BODY BACKGROUND=""" & abBGImage & """>"
	End If			
%>

<CENTER>

<FONT FACE="<%=abFont%>" COLOR="#ff0000"><%=adoRs.Fields("headerStr").Value%></FONT>

<table width="80%" cellpadding="2" cellspacing="2" border="0">
	<tr>
      <td>
        <table width="90%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><font face="<%=abFont%>" size="2">Posted by: <%=adoRs.Fields("author_nameStr").Value%></font></td>
            <td><font face="<%=abFont%>" size="-1">When: <%=FormatDateTime(adoRs.Fields("msgTime").Value, 2)%>&nbsp;<%=FormatDateTime(adoRs.Fields("msgTime").Value, 3)%></font></td>
            <td>
			
			<%If Not Trim(adoRs.Fields("author_emailStr").Value) = "" Then%>
<font face="<%=abFont%>" size="2">Email: <a class="black" href="mailto:<%=adoRs.Fields("author_emailStr").Value%>"><%=adoRs.Fields("author_emailStr").Value%></a></font>
	<%End If%>
		
			
			
			</td>
            <td>&nbsp;</td>
          </tr>
        </table>
        </td>
    </tr>	
		
	

	<tr>
		<td> <p align="Justify"><font face="<%=abFont%>" size=2> <%GetRows(adoRs.Fields("detailStr").Value)%><%=ReplaceQuotes(adoRs.Fields("detailStr").Value, 0)%> </font></p></td>
	</tr>
	<tr>
		<td><font face="<%=abFont%>" size=2><a class=black href="aspBoardPost.asp?Id=<%=Request.QueryString("Id")%>">Post a response to this message</a></font></td>
	</tr>				
			
	<%If adoRs.Fields("parentId").Value <> 0 Then%>
		<tr><td>	
		<font face="<%=abFont%>" size=2>Previous Thread:</font>
		<%=GetHeaderString(adoRs.Fields("parentId").Value, -1)%>
		</td></tr>
	<%End If%>
	
	<%If ExistFollowUps(Request.QueryString("Id")) Then%>
		<tr><td>
<font face="<%=abFont%>" size=2>Follow-ups:</font>
	<font face="<%=abFont%>" size=2>	<%ListItems(Request.QueryString("Id"))%> </font>
		</td></tr>
	<%End If%>

</table>

<%	
	Set adoRs = Nothing
	Set adoConn = Nothing
%>		

<br><br>
<font face="<%=abFont%>" size=2><a class="black" href="aspBoard.asp">Forum Home</a></font>
</center>
				
				</td>
              </tr>
            </table>
                
            </td>
              </tr>
            </table>
                    
     
      <p>&nbsp;</p>
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
