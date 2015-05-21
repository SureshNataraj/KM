<%@language="vbScript" %>
<!-- #include file="conn.asp" -->
<%
'Set con = Server.CreateObject("ADODB.Connection")
'con.ConnectionString="Provider=Microsoft.Jet.oledb.4.0;data source="& server.MapPath("dynamicmen.mdb")				
'con.Open 
%>
<% 
'Set con=Server.CreateObject("ADODB.Connection")	
'	con.ConnectionString="Provider=Microsoft.Jet.oledb.4.0;data source="& server.MapPath("dynamicmen.mdb")				
'	'con.ConnectionString="DBQ=C:\Inetpub\wwwroot\kscaanew\ver4\aspboard.mdb;Driver={Microsoft Access Driver (*.mdb)};DriverId=25;FIL=MS Access;ImplicitCommitSync=Yes;MaxBufferSize=512;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UID=admin;UserCommitSync=Yes;;User Id=admin;"		
'	con.Open
	
Function ListItems(parentId)
		Dim strSql
		Dim adoRs
		strSql="SELECT * FROM tbl_menu WHERE int_parentid = " & parentId & " ORDER BY  int_order"
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = con
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
   		Set adoRs.ActiveConnection = Nothing
		If Not adoRs.EOF Then
			if count > big then 
				big = count
			end if
			Do Until adoRS.EOF
				ListItems(adoRs.Fields("int_menuid").Value)
				adoRS.MoveNext
			Loop 
		End If
		Set adoRs = Nothing
	End Function
	
Set conn = server.CreateObject("Adodb.connection")
Set Rs = server.CreateObject("Adodb.Recordset")
%>
<form name="form1" method="post" action="x_menu.asp">
  <table width="400" border="1">
    <tr> 
      <td width="137"><font size="2" face="Verdana">Enter Menu link name</font></td>
      <td width="13"><font size="2" face="Verdana">:</font></td>
      <td width="228"> <font size="2" face="Verdana"> 
        <input name="txt_menuname" type="text">
        </font></td>
    </tr>
    <tr> 
      <td><font size="2" face="Verdana">Select theparent menu menu</font></td>
      <td><font size="2" face="Verdana">:</font></td>
      <td><font size="2" face="Verdana"><%=FolderDDMenuM(0)%></font></td>
    </tr>
    <tr> 
      <td><font size="2" face="Verdana">Enter the link</font></td>
      <td><font size="2" face="Verdana">:</font></td>
      <td><font size="2" face="Verdana"> 
        <input type="text" name="txt_link">
        </font></td>
    </tr>
    <tr align="center"> 
      <td colspan="3"><font size="2" face="Verdana">&nbsp;</font><font size="2" face="Verdana">&nbsp;</font><font size="2" face="Verdana"> 
        <input type="submit" name="Submit" value="Submit">
        <input name="Reset" type="reset" id="Reset" value="Reset">
        </font></td>
    </tr>
    <tr> 
      <td colspan="3"><font size="2" face="Verdana">* IF the new link node is 
        a child for any parent automatically parent will loose its link</font></td>
    </tr>
  </table>
</form>
<%
Function FolderDDMenuM(ParID)
%>
<select class="FormField" name="Parent">
<option value="0">Top Level Folder (No Parent)</option>
<%
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
	strSubCounterM = "SELECT *  FROM tbl_Menu WHERE int_Parentid=" & ParentID & "  ORDER BY int_order"
	Set objSubCounterM = Server.CreateObject("ADODB.Recordset")
	objSubCounterM.cursorlocation = 3
	objSubCounterM.Open strSubCounterM, con
	NumOfSubsM = objSubCounterM.RecordCount
	objSubCounterM.Close
	Set objSubCounterM = Nothing
End Function

Function DisplaySubsM(ParentID, subLevel,ParID)
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



