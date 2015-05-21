<%@language="vbScript" %>
<%
Set objConn = Server.CreateObject("ADODB.Connection")
objConn.ConnectionString="Provider=Microsoft.Jet.oledb.4.0;data source="& server.MapPath("dynamicmen.mdb")				
objConn.Open 
%>
<% 
Set adoConn=Server.CreateObject("ADODB.Connection")	
	adoConn.ConnectionString="Provider=Microsoft.Jet.oledb.4.0;data source="& server.MapPath("dynamicmen.mdb")				
	'adoConn.ConnectionString="DBQ=C:\Inetpub\wwwroot\kscaanew\ver4\aspboard.mdb;Driver={Microsoft Access Driver (*.mdb)};DriverId=25;FIL=MS Access;ImplicitCommitSync=Yes;MaxBufferSize=512;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UID=admin;UserCommitSync=Yes;;User Id=admin;"		
	adoConn.Open
	
Function ListItems(parentId)
	
		Dim strSql
		Dim adoRs
		
		
		strSql="SELECT * FROM tbl_menu WHERE int_parentid = " & parentId & " ORDER BY  int_order"
		
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = adoConn
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
   
		Set adoRs.ActiveConnection = Nothing
		
		If Not adoRs.EOF Then
			
			if count > big then big = count
			
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
      <td width="137">Enter Menu link name</td>
      <td width="13">:</td>
      <td width="228">
	    <input name="txt_menuname" type="text">	  
	  </td>
    </tr>
    <tr> 
      <td>Select theparent menu menu</td>
      <td>:</td>
      <td><%=FolderDDMenuM(0)%></td>
    </tr>
    <tr> 
      <td>Enter the link</td>
      <td>:</td>
      <td><input type="text" name="txt_link"></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit"></td>
    </tr>
    <tr> 
      <td colspan="3">* IF the new link node is a child for any parent automatically 
        parent will loose its link</td>
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
'Response.Write(strSQLDM)
'Response.Flush()

Set objRSDM = Server.CreateObject("ADODB.Recordset")

objRSDM.Open strSQLDM, objconn
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
%>	


<%
Function NumOfSubsM(ParentID)
	strSubCounterM = "SELECT *  FROM tbl_Menu WHERE int_Parentid=" & ParentID & "  ORDER BY int_order"
	Set objSubCounterM = Server.CreateObject("ADODB.Recordset")
	objSubCounterM.cursorlocation = 3
	objSubCounterM.Open strSubCounterM, objConn
	NumOfSubsM = objSubCounterM.RecordCount
	objSubCounterM.Close
	Set objSubCounterM = Nothing
End Function
%>


<%
Function DisplaySubsM(ParentID, subLevel,ParID)
	strDisplaySubM = "SELECT *  FROM tbl_menu WHERE int_Parentid=" & ParentID & " ORDER BY int_order"
	Set objDisplaySubM = Server.CreateObject("ADODB.Recordset")
	objDisplaySubM.Open strDisplaySubM, objConn
	%>
	<%
	Do While Not objDisplaySubM.EOF
		%>
		<option value="<%=objDisplaySubM("int_menuID") %>"<%If objDisplaySubM("int_menuID") = ParID Then%> Selected<%End If%>><% For i = 1 to subLevel %>&nbsp;&nbsp;&nbsp;<% Next %><%=objDisplaySubM("txt_title") %></option>
			<% If NumOfSubsM(objDisplaySubM("int_menuID")) > 0 Then %>
				<%= DisplaySubsM(objDisplaySubM("int_menuID"),subLevel+1,objDisplaySubM("int_Parentid")) %>
			<% End If %>
		<%
		objDisplaySubM.MoveNext
	Loop
	%>
	<%
	objDisplaySubM.Close
	Set objDisplaySubM = Nothing
End Function
%>



