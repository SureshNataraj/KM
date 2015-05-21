<%	
	Dim strSql	
	Dim adoConn	
	dim big
	dim ct_m
	big = 0
	ct =1
	dim count 
	count = 0
	count_1 = 1
	dim a(100, 100)
	
	Function NumOfSubs(ParentID)
	strSubCounter = "SELECT *  FROM tbl_Menu WHERE int_parentid=" & ParentID & "  ORDER BY int_order"
	Set objSubCounter = Server.CreateObject("ADODB.Recordset")
	objSubCounter.cursorlocation = 3
	objSubCounter.Open strSubCounter, Con
	NumOfSubs = objSubCounter.RecordCount
	objSubCounter.Close
	Set objSubCounter = Nothing
End Function

function addtoarray(id)
		Dim strSql
		Dim adoRs, mnu_param_Rs , sql_menu_param
		strSql="SELECT * FROM tbl_menu WHERE int_parentid = " & id & " ORDER BY  int_order"
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		set mnu_param_Rs = Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = Con
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
		Set adoRs.ActiveConnection = Nothing
		If Not adoRs.EOF Then
		sql_menu_param = "select * from tbl_menuparam where int_parameterid = " & adoRs("int_parameterid")
		'Response.Write(sql_menu_param)
		'Response.Flush()
		
		
			
			count = count + 1 
			a(count_1, count ) = a(count_1, count) & Vbnewline  & Vbnewline &  "HM_Array"& adoRS.Fields("txt_menuname").Value & ""
		mnu_param_Rs.open sql_menu_param, con
			
		if mnu_param_Rs.eof = true then 
			a(count_1, count ) = a(count_1, count) & "= [ ], " & Vbnewline
		else
		
			a(count_1, count ) = a(count_1, count) & "= [" & Vbnewline&_
			"[" & mnu_param_Rs("txt_width") & ",								// menu width" & Vbnewline&_
			"" & mnu_param_Rs("txt_leftpos") & ",								// left_position" & Vbnewline&_
			"" & mnu_param_Rs("txt_toppos") & ",								// top_position" & Vbnewline&_
			"""#ffffff"",						// font_color" & Vbnewline&_
			"""#000000"",						// mouseover_font_color" & Vbnewline&_
			"""#555982"",						// background_color" & Vbnewline&_
			"""#bdc6de"",                       // mouseover_background_color" & Vbnewline&_
			"""#313952"",						// border_color" & Vbnewline&_
			"""#313952"",                       // separator_color" & Vbnewline&_
			"0,									// top_is_permanent" & Vbnewline&_
			"0,									// top_is_horizontal" & Vbnewline&_
			"0,									// tree_is_horizontal" & Vbnewline&_
			"1,									// position_under" & Vbnewline&_
			"1,									// top_more_images_visible" & Vbnewline&_
			"1,									// tree_more_images_visible" & Vbnewline&_
			"""null"",							// evaluate_upon_tree_show" & Vbnewline&_
			"""null"",							// evaluate_upon_tree_hide" & Vbnewline&_
			"0,									// right_to_left" & Vbnewline&_
			"0,									// display_on_click" & Vbnewline&_
			"0,									// top_is_variable_width" & Vbnewline&_
			"0],								// tree_is_variable_width" & Vbnewline
		
		end if
		
		mnu_param_Rs.close()
		
		
			
			for i = 1 to  adoRS.Recordcount - 1
				a(count_1, count ) = a(count_1, count) & "["""& adoRS.Fields("txt_title").Value & """,""" & adoRS.Fields("txt_link").Value & """,1,0,"& adoRS.Fields("int_sublink").Value & "],"& vbNewline
				adoRS.MoveNext				
			next
				a(count_1, count ) = a(count_1, count) & "["""& adoRS.Fields("txt_title").Value & """,""" & adoRS.Fields("txt_link").Value & """,1,0,"& adoRS.Fields("int_sublink").Value & "]"& vbNewline
				a(count_1, count ) = a(count_1, count) & "]"
			end if
	end function


	Function ListItems(parentId)
		Dim strSql
		Dim adoRs
		strSql="SELECT * FROM tbl_menu WHERE int_parentid = " & parentId & " ORDER BY  int_order"
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = Con
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
		Set adoRs.ActiveConnection = Nothing
		addtoarray(parentId)
		If Not adoRs.EOF Then
			if count > big then big = count
			Do Until adoRS.EOF
				ListItems(adoRs.Fields("int_menuid").Value)
				adoRS.MoveNext
			Loop 
		End If
		Set adoRs = Nothing
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

	Response.Write("<table width='111' border='1' cellpadding='2' cellspacing='0' bordercolor='#313952'>")
 
 	Dim adoRs, ct,count_1,strSubCounter,objSubCounter, menu_count, int_id,menu_j
	menu_count = 0
	set rs = server.CreateObject("Adodb.Recordset")
		strSql="SELECT * FROM tbl_menu WHERE int_parentid = 0 ORDER BY int_order"
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = Con
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
		Set adoRs.ActiveConnection = Nothing
		If Not adoRs.EOF Then
				Do Until adoRS.EOF
				Response.Write("<tr><td><table border=0 cellpadding=0 cellspacing=0 width='110' ><tr><td>")
					menu_count = menu_count + 1
					int_id = adoRs.Fields("int_menuid").Value
					 if  NumOfSubs(int_id) > 0 then
					 	Response.Write("<a class='downlink' href='javascript://'  onMouseOver=""HM_f_PopUp('elMenu"& menu_count &"',event)""  onMouseOut=""HM_f_PopDown('elMenu"& menu_count &"')"">")
					 else
						Response.Write("<a class='downlink' href='"&adoRs.Fields("txt_link").Value &"' >")
					 end if					 
					Response.Write(" " & adoRs.Fields("txt_title").Value & "</a>")
					ListItems(adoRs.Fields("int_menuid").Value)
					count_1 = count_1 + 1
					count = 0
					adoRs.Movenext
					Response.Write("</td><td align=right>"&VbNewline)
					if  NumOfSubs(int_id) > 0 then
					Response.Write("<img src='HM_More_black_right.gif'>")
					else
					Response.Write("<img src='images\spacer.gif'>")
					end if
					Response.Write("</td></tr></table></td></tr>")
				loop
	     end if
	  
	Response.Write("</td></tr></table>")
	Response.Write("<SCRIPT LANGUAGE='JavaScript1.2' >")
for menu_j = 1 to count_1 + 1
	for i  = 1 to 50
		if a(menu_j,i) <> "" then 
		Response.Write( a(menu_j,i) )
		end if
	next 
next 
Response.Write("</script>")
%>
<SCRIPT LANGUAGE="JavaScript1.2"    SRC="HM_Loader_1.js"       TYPE='text/javascript'></SCRIPT>