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
		  
		    <!--#INCLUDE FILE="aspBoardFunctions.asp"-->
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
				<blockquote>
                    <table border="0" cellspacing="0" cellpadding="0">
                      <tr> 
                      <td><font face="verdana" size="4"><b><font color="#CCCCCC"><br>
                          Forums </font></b></font></td>
                    </tr>
                    <tr> 
                      <td background="bluedot.gif"><font face="verdana" size="4"><b><font color="#CCCCCC"><img src="bluedot.gif" width="10" height="2"></font></b></font></td>
                    </tr>
                  </table>
				  </blockquote>
				
				</td>
              </tr>
              <tr>
                <td>
				
				<blockquote>
				
				

<%
	Dim lngNewId
	Dim strMsgLabel	
	Dim strTitleLabel
	Dim strHeaderString
	Dim strDetailString	
	
	If Request("author_nameStr")<> "" Then
		With Response
			.Cookies("postName") = Request("author_nameStr")
			.Cookies("postName").Expires = DateAdd("yyyy",1,Date)
			.Cookies("postEmail") = Request("author_emailStr")
			.Cookies("postEmail").Expires = DateAdd("yyyy",1,Date)
			.Cookies("postUrl") = Request("author_urlStr")
			.Cookies("postUrl").Expires = DateAdd("yyyy",1,Date)
		End With
		strDetailString = Request("detailStr")	
		If Request("incOrig") = "yes" Then
			strDetailString = strDetailString & aspCrLf & " In response to: " & aspCrLf & Request("origMsgStr")	
		End If
		lngNewId = AddResponse(Request("msgId"), Request("headerStr"), strDetailString, Request("author_nameStr"), Request("author_emailStr") & "", Request("author_urlStr") & "")		
		Response.Redirect "aspBoardDetail.asp?Id=" & lngNewId
	End If	
	
	If Request.QueryString("Id") > 0 Then
		strMsgLabel = "Your Response"
		strTitleLabel = "Post a Follow-Up to:"
	Else
		strMsgLabel = "Your Message"		
		strTitleLabel = "Post a new thread"
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
	
	strHeaderString = GetHeaderString(Request.QueryString("Id"), 0)				
%>

<CENTER>
<%=GetTitleString%>
<font face="<%=abFont%>" size=2><%=strTitleLabel%><br>
<a class=black href="aspBoardDetail.asp?Id=<%=Request.QueryString("Id")%>">

<font color="#ff0000"><%=strHeaderString%></font></a></font>

</CENTER>
			
<%	
	Dim adoRs
		
	strSql="SELECT * FROM msgDetail WHERE msgId = " & Request.QueryString("Id")		
	Set adoRs=Server.CreateObject("ADODB.Recordset")
	adoRS.Open strSql, adoConn, 1	
	
	If strHeaderString <> abDefaultHeader Then
		strHeaderString = "RE: " & strHeaderString
	End If
		
%>

<center>

	<form method="post" action="aspBoardPost.asp" id="postForm" name="postForm" LANGUAGE="javascript" onsubmit="return Submit_onclick()">
<table width="80%" cellpadding="2" cellspacing="2" border="0">

		<tr>
			<td><font face="<%=abFont%>" size="2"><b>Your Name:</b></font></td>
			<td><input id="author_nameStr" name="author_nameStr" type="text" size="24" Value="<%=Request.Cookies("postName")%>"></td>
		</tr>
		<tr>
			<td><font face="<%=abFont%>" size="2"><b>Your EMail:</b></font></td>
			<td><input id="author_emailStr" name="author_emailStr" type="text" size="24" Value="<%=Request.Cookies("postEmail")%>"></td>
		</tr>
		<!--<tr>
			<td><font face="<%=abFont%>" size="2"><b>Your URL:</b></font></td>
			<td><input id="author_urlStr" name="author_urlStr" type="text" size="24" Value="<%=Request.Cookies("postURL")%>"></td>
		</tr>
		//-->
		<tr>
			<td><font face="<%=abFont%>" size="2"><b>Subject:</b></font></td>
			<td><input id="headerStr" name="headerStr" type="text" size="48" value="<%=strHeaderString%>"></td>
		</tr>
		<tr>
			<td><font face="<%=abFont%>" size="2"><b><%=strMsgLabel%>:</b></font></td>
			<td><textarea cols="48" rows="5" name="detailStr" id="detailStr"></textarea></td>
		</tr>
		<%If Request.QueryString("Id") > 0 Then%>
			<%If abIncOrigMsg = True Then%>
				<tr><td colspan="2">&nbsp;</td></tr>
				<tr valign="top">
					<td>&nbsp;</td>
					<td><input type="checkbox" name="incOrig" Value="yes" CHECKED>
					<font face="<%=abFont%>" size="2"><b>Include original message in response?</b></font><br></td>
				</tr>	
			<%End If%>			
			<tr><td colspan="2">&nbsp;</td></tr>			
			<tr>
				<td>&nbsp;</td>
				<td><font face="<%=abFont%>" size="2">Posted by <%=adoRs.Fields("author_nameStr").Value%>&nbsp;on&nbsp;<%=FormatDateTime(adoRs.Fields("msgTime").Value, 2)%>&nbsp;at&nbsp;<%=FormatDateTime(adoRs.Fields("msgTime").Value, 3)%></font></td>
			</tr>						
			<tr>			
				<td valign="top"><font face="<%=abFont%>" size="2"><b>Original Message:</b></font></td><td><textarea cols="48" rows="<%=GetRows(adoRs.Fields("detailStr").Value)%>" id="origMsg1" name="origMsg1" disabled><%=ReplaceQuotes(adoRs.Fields("detailStr").Value, 0)%></textarea></td>
			</tr>				
			<input type="hidden" id="origMsgStr" name="origMsgStr" value="<%=adoRs.Fields("detailStr").Value%>">
		<%End If%>	
		<input type="hidden" id="msgId" name="msgId" value="<%=Request.QueryString("Id")%>">				
		<tr>			
			<td colspan="2" align="center">
				<input type="submit" value="Post Message" Name="Submit">				
			</td>	
		</tr>
	
</table>
</form>
<br>
<b><font face="<%=abFont%>" size="-1"><a class="black" href="aspBoard.asp"> Forum Home</a></font></b>
<br>
</center>



<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
<!--

function Submit_onclick() {
	//check for client side (form) validation
	
	if (Form_Validate() == true) {							
		return true;
	} else {
		return false;
	}	

}

//-->
</SCRIPT>

<SCRIPT Language="JavaScript">

function Form_Validate() {

	if (document.postForm.author_nameStr.value==""){
		alert("[Your Name] cannot be blank");
		return false;
	}
	
	if (document.postForm.author_emailStr.value==""){
		alert("[Your Email] cannot be blank");
		return false;
	}
	
	if (document.postForm.detailStr.value==""){
		alert("[Your Response] cannot be blank");
		return false;
	}
	
	return true;
}	
</SCRIPT>





		  
		   
     
				</blockquote>
				</td>
              </tr>
            </table>
                
           
                    </td>
                </tr>
             
            </table>
     </td>
    <td><img src="images/spacer.gif" width="1" height="326" border="0" alt=""></td>
  </tr>
  <tr> 
    <td colspan="2" bgcolor="#313952"><!-- #include file="downlinks.asp" --></td>
    <td><img src="images/spacer.gif" width="1" height="14" border="0" alt=""></td>
  </tr>
</table>

</body>

</html>
