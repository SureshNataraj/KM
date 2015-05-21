<% @Language="VbScript" %>
<% option explicit %>
<%
Dim I 
Dim rs , sql_new
Set rs = server.CreateObject("Adodb.Recordset")


		dim category_count
		category_count = 0
		
Function listcategory(parentId)
	
		Dim strSql
		Dim adoRs
		dim str_space
		dim i_c
		
		strSql="SELECT * FROM tbl_category WHERE int_parentcategoryid = " & parentId & " ORDER BY int_categoryid"
		'Response.Write(strSql & vbnewline)
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = Con
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
   
		Set adoRs.ActiveConnection = Nothing
	
		If Not adoRs.EOF Then
			'Response.Write "<ul>"
			category_count = category_count + 1
			Do Until adoRS.EOF	
					str_space = ""
					for i_c = 1 to category_count - 1
					 str_space = str_space & "&nbsp;"
					next
					if category_count > 1 then
					str_space = str_space & " |__ "
					end if
					
				Response.Write ("<option value='" & adoRS.Fields("int_categoryid").Value & "'>" & str_space & adoRS.Fields("txt_categorytitle").Value & "</option>" &  vbnewline)
				listcategory(adoRs.Fields("int_categoryid").Value)
				adoRS.MoveNext
			Loop 
			category_count = category_count - 1
			'Response.Write "</ul>"	
		End If
		Set adoRs = Nothing
	End Function

%>
<html>
<head>
<title>Knowledge Management</title>
<!-- #include file="conn.asp" -->
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
    <td colspan="3" valign="top" background="HLINE.GIF" bgcolor="#bdc9de"><img src="hline.gif" width="575" height="1"></td>
     </tr>
  <tr> 
    <td colspan="2" valign="top" bgcolor="#bdc6de"> 
	
	
<form name="form1" method="post" action="x_menu.asp">
        <p>&nbsp;</p>
        <table width="400" border="1" align="center" cellpadding="2" cellspacing="2" bordercolor="#666699">
          <!--    <tr> 
      <td width="137"><font size="2" face="Verdana">Enter Menu link name</font></td>
      <td width="13"><font size="2" face="Verdana">:</font></td>
      <td width="228"> <font size="2" face="Verdana"> 
        <input name="txt_menuname" type="text">
        </font></td>
    </tr> -->
          <tr> 
            <td><font size="2" face="Verdana">Select theparent menu menu</font></td>
            <td><font size="2" face="Verdana">:</font></td>
            <td><font size="2" face="Verdana"><%=FolderDDMenuM(0)%></font></td>
          </tr>
          <tr> 
            <td><font size="2" face="Verdana">Select the category</font></td>
            <td><font size="2" face="Verdana">:</font></td>
            <td><font size="2" face="Verdana"> 
              <!--  <input type="text" name="txt_link"> -->
              <select name="txt_link">
                <% listcategory(0) %>
              </select>
              </font></td>
          </tr>
          <tr> 
            <td><font size="2" face="Verdana">Enter Left Position</font></td>
            <td><font size="2" face="Verdana">:</font></td>
            <td><font size="2" face="Verdana"> 
              <input type="text" name="txt_left">
              </font></td>
          </tr>
          <tr> 
            <td><font size="2" face="Verdana">Enter Top Position</font></td>
            <td><font size="2" face="Verdana">:</font></td>
            <td><font size="2" face="Verdana"> 
              <input type="text" name="txt_top">
              </font></td>
          </tr>
          <tr align="center"> 
            <td colspan="3"><font size="2" face="Verdana">&nbsp;</font><font size="2" face="Verdana">&nbsp;</font><font size="2" face="Verdana"> 
              <input type="submit" name="Submit" value="Submit">
              <input name="Reset" type="reset" id="Reset" value="Reset">
              </font></td>
          </tr>
          <tr> 
            <td colspan="3"><font size="2" face="Verdana">* IF the new link node 
              is a child for any parent automatically parent will loose its link</font></td>
          </tr>
        </table>
</form>
<%
Function FolderDDMenuM(ParID)
%>
<select class="FormField" name="Parent">
<option value="0">Top Level Folder (No Parent)</option>
<%
dim strSQLDM, objRSDM
strSQLDM = "SELECT *  FROM tbl_Menu  WHERE int_parentid=0  ORDER BY int_order"
Set objRSDM = Server.CreateObject("ADODB.Recordset")
objRSDM.Open strSQLDM, con
If Not objRSDM.EOF Then
	objRSDM.MoveFirst
	Do While Not objRSDM.EOF
%>
		<option value="<%=objRSDM("int_menuid") %>"<%If objRSDM("int_menuid") = ParID Then%> Selected<%End If%>><%=objRSDM("txt_title") %></option>
		<% If NumOfSubsM(objRSDM("int_menuid")) > 0 Then %>
			<%= DisplaySubsM(objRSDM("int_menuid"),1, ParID) %>
		<% End If %>
<%
		objRSDM.MoveNext
	Loop
End If
objRSDM.Close
Set objRSDM = Nothing
%>
</select>
<%
End Function

Function NumOfSubsM(ParentID)
	dim strSubCounterM, objSubCounterM
	strSubCounterM = "SELECT *  FROM tbl_Menu WHERE int_Parentid=" & ParentID & "  ORDER BY int_order"
	Set objSubCounterM = Server.CreateObject("ADODB.Recordset")
	objSubCounterM.cursorlocation = 3
	objSubCounterM.Open strSubCounterM, con
	NumOfSubsM = objSubCounterM.RecordCount
	objSubCounterM.Close
	Set objSubCounterM = Nothing
End Function

Function DisplaySubsM(ParentID, subLevel,ParID)
	dim strDisplaySubM, objDisplaySubM
	strDisplaySubM = "SELECT *  FROM tbl_menu WHERE int_Parentid=" & ParentID & " ORDER BY int_order"
	Set objDisplaySubM = Server.CreateObject("ADODB.Recordset")
	objDisplaySubM.Open strDisplaySubM, con
	Do While Not objDisplaySubM.EOF
		Response.Write "<option value='" & objDisplaySubM("int_menuID") & "'" 
		If objDisplaySubM("int_menuID") = ParID Then
			 Response.Write("Selected")
		End If
		Response.Write(">")
		For i = 1 to subLevel 
			Response.Write("&nbsp;&nbsp;&nbsp;")
		 Next 
		 Response.Write(objDisplaySubM("txt_title") & "</option>")
		 If NumOfSubsM(objDisplaySubM("int_menuID")) > 0 Then 
				Response.Write DisplaySubsM(objDisplaySubM("int_menuID"),subLevel+1,objDisplaySubM("int_Parentid"))  
		 End If 
		objDisplaySubM.MoveNext
	Loop
	objDisplaySubM.Close
	Set objDisplaySubM = Nothing
End Function

%>
	
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
