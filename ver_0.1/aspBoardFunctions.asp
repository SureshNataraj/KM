<!--#INCLUDE FILE="aspBoardData.asp"-->



<%	
	Dim strSql	
	Dim adoConn	
					
	Set adoConn=Server.CreateObject("ADODB.Connection")	
	adoConn.ConnectionString="Provider=Microsoft.Jet.oledb.4.0;data source="&server.mappath("aspboard.mdb")				
	'adoConn.ConnectionString="DBQ=C:\Inetpub\wwwroot\kscaanew\ver4\aspboard.mdb;Driver={Microsoft Access Driver (*.mdb)};DriverId=25;FIL=MS Access;ImplicitCommitSync=Yes;MaxBufferSize=512;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UID=admin;UserCommitSync=Yes;;User Id=admin;"		
	adoConn.Open	

	Function ListItems(parentId)
	
		Dim strSql
		Dim adoRs
		
		strSql="SELECT * FROM msgDetail WHERE parentId = " & parentId & " ORDER BY msgTime DESC"
		
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = adoConn
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
   
		Set adoRs.ActiveConnection = Nothing
	
		If Not adoRs.EOF Then
			Response.Write "<ul>"
			Do Until adoRS.EOF				
				Response.Write "<li><a class=black href=""aspBoardDetail.asp?Id=" & adoRS.Fields("msgId").Value & """><FONT size=2 FACE=""" & abFont & """ >" &  ReplaceQuotes(adoRS.Fields("headerStr").Value, 0) & "</a>&nbsp;&nbsp;<font size=""-1"">(" & day(adoRs.Fields("msgTime").Value) &"/"& month(adoRs.Fields("msgTime").Value) &"/"& year(adoRs.Fields("msgTime").Value)  & "&nbsp;" & FormatDateTime(adoRs.Fields("msgTime").Value, 3) & ")</FONT>"
				ListItems(adoRs.Fields("msgId").Value)
				adoRS.MoveNext
			Loop 
			Response.Write "</ul>"	
		End If
		
		Set adoRs = Nothing
		
	End Function
			

	Function ExistFollowUps(parentId)
	
		Dim strSql
		Dim adoRs
		
		strSql = "SELECT msgId FROM msgDetail WHERE parentId = " & parentId
		
		Set adoRs = Server.CreateObject("ADODB.Recordset")
		adoRS.Open strSql, adoConn, 1
	
		ExistFollowUps = Not adoRs.EOF
		
		Set adoRs = Nothing
		
	End Function
			
	
	Function GetHeaderString(msgId, HTML)
			
		Dim strHeader
		Dim strSql
		Dim adoRs
		
		If msgId = "" Then
			GetHeaderString = "Default"
			Exit Function
		End If
			
		strSql = "SELECT * FROM msgDetail WHERE msgId = " & msgId
	
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRS.Open strSql, adoConn, 1
		
		If adoRs.EOF Then
			strHeader = abDefaultHeader
		Else
			strHeader = ReplaceQuotes(adoRs.Fields("headerStr").Value, 0)
		End If
							
		If HTML = -1 Then
			GetHeaderString = "<ul><li><a class=black href=""aspBoardDetail.asp?Id=" & adoRs.Fields("msgId").Value & """><font size=2 face=""" & abFont & """>" & strHeader & "</font></ul>"
		Else
			GetHeaderString = strHeader
		End If
		
		Set adoRs = Nothing
			
	End Function
	
	
	Function GetTitleString()
	
		Dim strTemp
		
		strTemp = "<FONT size=2FACE=""" & abFont & """><a class=black href=""aspBoard.asp"">" & abTitle & "</font></a>"
		
		GetTitleString = strTemp
		
	End Function
	
	
	Function AddResponse(ParentId, Subject, sMessage, AuthorName, AuthorEmail, AuthorURL)
	
		Dim adoRs
		Dim strSql
		Dim strSubject
		Dim strAuthor
		Dim strEmail
		
		strSubject = Replace(Subject, "<", "")
		strSubject = Replace(strSubject, ">", "")
		strSubject = ReplaceQuotes(strSubject, 1)
		
		strAuthor = Replace(AuthorName, "<", "") 
		strAuthor = Replace(strAuthor, ">", "") 
		strAuthor = ReplaceQuotes(strAuthor, 1)
		
		strEmail = Replace(AuthorEmail, "<", "") 
		strEmail = Replace(strEmail, ">", "") 
		strEmail = ReplaceQuotes(strEmail, 1)
		
		Set adoRs = Server.CreateObject("ADODB.Recordset")
		
		With adoRs
			.CursorType = 2	
			.LockType = 2
			.ActiveConnection = adoConn
			.Open "SELECT * FROM msgDetail WHERE msgId = -1"
			.Addnew
				.Fields("parentId").Value = ParentId
				.Fields("headerStr").Value = Left(strSubject, 64)
				.Fields("detailStr").Value = ReplaceQuotes(sMessage, 1)
				.Fields("author_nameStr").Value = Left(strAuthor, 64)
				.Fields("author_emailStr").Value = Left(strEmail, 128)
				.Fields("author_urlStr").Value = Left(AuthorURL, 128)
				'.Fields("msgTime").Value = DateAdd("h", -3, Now())
			.Update						
			.Close	
		End With	
		
		strSql = "SELECT Max(msgId) FROM msgDetail"
	
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRS.Open strSql, adoConn, 1		
		
		AddResponse = adoRs.Fields(0).Value
		
		Set adoRs = Nothing
	
	End Function
	
	Function GetRows(InputString)
			
		Dim lngRows
		Dim i
		
		lngRows = Int(Len(InputString)/40)
		
		If lngRows < 4 Then
			lngRows = 4
		End If
		
		If Instr(1, InputString, aspCrLf)>0 Then
			For i=1 to Len(InputString) - 1
				If Mid(InputString, i, 2) = Chr(10) & Chr(13) Then
					lngRows = lngRows + 1
				End If	
			Next 
		End If		
		
		If lngRows > 12 Then
			lngRows = 12
		End If	
		
		GetRows = lngRows	
			
	End Function
	
	Function ReplaceQuotes(pstrInput, pintType)
	
		Dim strOutput
		
		'0 = Displaying
		'1 = Saving
		
		strOutput = pstrInput & ""
		
		If pintType = 0 Then
			strOutput = Replace(strOutput, "<q>", "'")
			strOutput = Replace(strOutput, "<qq>", """")			
			If strOutput = "" Then
				strOutput="&nbsp;"
			End If	
		Else
			strOutput = Replace(strOutput, "'", "<q>")
			strOutput = Replace(strOutput, """", "<qq>")
		End If		
		
		ReplaceQuotes = strOutput
	
	End Function

%>
