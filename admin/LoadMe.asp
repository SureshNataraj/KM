<%	
	Dim strSql	
	Dim adoConn	
	dim big
	dim ct_m
	big = 0
	ct =1
	dim count 				
	Set adoConn=Server.CreateObject("ADODB.Connection")	
	adoConn.ConnectionString="Provider=Microsoft.Jet.oledb.4.0;data source="& server.MapPath("dynamicmen.mdb")				
	'adoConn.ConnectionString="DBQ=C:\Inetpub\wwwroot\kscaanew\ver4\aspboard.mdb;Driver={Microsoft Access Driver (*.mdb)};DriverId=25;FIL=MS Access;ImplicitCommitSync=Yes;MaxBufferSize=512;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UID=admin;UserCommitSync=Yes;;User Id=admin;"		
	adoConn.Open	
	count = 0
	count_1 = 1
	dim a(100, 100)
	
	Function NumOfSubs(ParentID)
	strSubCounter = "SELECT *  FROM tbl_Menu WHERE int_parentid=" & ParentID & "  ORDER BY int_order"
	Set objSubCounter = Server.CreateObject("ADODB.Recordset")
	objSubCounter.cursorlocation = 3
	objSubCounter.Open strSubCounter, adoConn
	NumOfSubs = objSubCounter.RecordCount
	objSubCounter.Close
	Set objSubCounter = Nothing
End Function


	function addtoarray(id)

		Dim strSql
		Dim adoRs
		
		
		strSql="SELECT * FROM tbl_menu WHERE int_parentid = " & id & " ORDER BY  int_order"
		
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = adoConn
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
   
		Set adoRs.ActiveConnection = Nothing
	
		If Not adoRs.EOF Then
			count = count + 1 
			a(count_1, count ) = a(count_1, count) & Vbnewline  & Vbnewline &  "HM_Array"& adoRS.Fields("txt_menuname").Value & ""
			
	a(count_1, count ) = a(count_1, count) & "= [" & Vbnewline&_
"[100,                          // menu width" & Vbnewline&_
"""200"", // left_position" & Vbnewline&_
"90,                            // top_position" & Vbnewline&_
"""red"",                         // font_color" & Vbnewline&_
"""yellow"",                      // mouseover_font_color" & Vbnewline&_
"""yellow"",                      // background_color" & Vbnewline&_
"""black"",                       // mouseover_background_color" & Vbnewline&_
"""blue"",                        // border_color" & Vbnewline&_
"""green"",                       // separator_color" & Vbnewline&_
"0,                             // top_is_permanent" & Vbnewline&_
"0,                             // top_is_horizontal" & Vbnewline&_
"0,                             // tree_is_horizontal" & Vbnewline&_
"1,                             // position_under" & Vbnewline&_
"1,                             // top_more_images_visible" & Vbnewline&_
"1,                             // tree_more_images_visible" & Vbnewline&_
"""null"",                        // evaluate_upon_tree_show" & Vbnewline&_
"""null"",                        // evaluate_upon_tree_hide" & Vbnewline&_
",                              // right_to_left" & Vbnewline&_
"0,                             // display_on_click" & Vbnewline&_
"0,                             // top_is_variable_width" & Vbnewline&_
"0],                            // tree_is_variable_width" & Vbnewline
			
			'["Experts","http://www.webreference.com/experts/",1,0,1],			
			for i = 1 to  adoRS.Recordcount - 1

			a(count_1, count ) = a(count_1, count) & "["""& adoRS.Fields("txt_title").Value & """,""" & adoRS.Fields("txt_title").Value & """,1,0,"& adoRS.Fields("int_sublink").Value & "],"& vbNewline

			adoRS.MoveNext				
			next
			a(count_1, count ) = a(count_1, count) & "["""& adoRS.Fields("txt_title").Value & """,""" & adoRS.Fields("txt_title").Value & """,1,0,"& adoRS.Fields("int_sublink").Value & "]"& vbNewline
			a(count_1, count ) = a(count_1, count) & "]"
		end if


	end function


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

%>
<HTML>
<HEAD>
<TITLE>HM Version 5 Examples</TITLE>

<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">
<!--
if(window.event + "" == "undefined") event = null;
function HM_f_PopUp(){return false};
function HM_f_PopDown(){return false};
popUp = HM_f_PopUp;
popDown = HM_f_PopDown;
//-->
</SCRIPT>

<SCRIPT LANGUAGE="JavaScript1.2" TYPE="text/javascript">
<!--

HM_PG_MenuWidth = 150;
HM_PG_FontFamily = "Arial,sans-serif";
HM_PG_FontSize = 10;
HM_PG_FontBold = 0;
HM_PG_FontItalic = 0;
HM_PG_FontColor = "blue";
HM_PG_FontColorOver = "blue";
HM_PG_BGColor = "#DDDDDD";
HM_PG_BGColorOver = "#FFCCCC";

HM_PG_BorderColor = "black";
HM_PG_BorderStyle = "solid";
HM_PG_SeparatorSize = 2;
HM_PG_SeparatorColor = "#d0ff00";

HM_PG_ImageSrc = "HM_More_black_right.gif";
HM_PG_ImageSrcLeft = "HM_More_black_left.gif";
HM_PG_ImageSrcOver = "HM_More_white_right.gif";
HM_PG_ImageSrcLeftOver = "HM_More_white_left.gif";
HM_PG_ImageHorizSpace = 0;
HM_PG_ImageVertSpace = 2;

HM_PG_KeepHilite = 1; 
HM_PG_ClickStart = 0;
HM_PG_ChildOverlap = 20;
HM_PG_ChildOffset = 10;
HM_PG_ChildPerCentOver = null;
HM_PG_TopSecondsVisible = .5;
HM_PG_UponDisplay = null;
HM_PG_UponHide = null;
HM_PG_RightToLeft = 0;

HM_PG_ShowLinkCursor = 1;
HM_PG_NSFontOver = true;

HM_PG_ScrollBarColor = "lightgrey";
HM_PG_ScrollImgSrcTop = "HM_More_black_top.gif";
HM_PG_ScrollImgSrcBot = "HM_More_black_bot.gif";
HM_PG_ScrollImgWidth = 9;
HM_PG_ScrollImgHeight = 5;

//HM_a_TreesToBuild = [2,3]

//-->
</SCRIPT>

</HEAD>
<BODY>
<BLOCKQUOTE> 
  <table width="100" border="1" cellspacing="0" cellpadding="0">
  <%
 	Dim adoRs, rs, sql, menu_count, int_id
	menu_count = 0
	set rs = server.CreateObject("Adodb.Recordset")
		
		
		strSql="SELECT * FROM tbl_menu WHERE int_parentid = 0 ORDER BY int_order"
		
		Set adoRs=Server.CreateObject("ADODB.Recordset")
		adoRs.ActiveConnection = adoConn
		adoRs.Source = strSql
		adoRs.CursorLocation = 3	'adUseClient
		adoRs.CursorType = 0		'adOpenForwardOnly
		adoRs.Locktype = 1			'adLockReadOnly
		adoRS.Open
   
		Set adoRs.ActiveConnection = Nothing

  %>
    <%
	  
	 
	
		If Not adoRs.EOF Then
				Do Until adoRS.EOF
				Response.Write("<tr><td>")
					menu_count = menu_count + 1
					int_id = adoRs.Fields("int_menuid").Value
					 if  NumOfSubs(int_id) > 0 then
					 	Response.Write("<a href='javascript://'  onMouseOver=""HM_f_PopUp('elMenu"& menu_count &"',event)""  onMouseOut=""HM_f_PopDown('elMenu"& menu_count &"')"">")
					 else
						Response.Write("<a href='"&adoRs.Fields("txt_link").Value &"' >")
					 end if					 
					Response.Write(" " & adoRs.Fields("txt_title").Value & "</a>")
					ListItems(adoRs.Fields("int_menuid").Value)
					count_1 = count_1 + 1
					count = 0
					adoRs.Movenext
					Response.Write("</td></tr>"&VbNewline)
				loop
	     end if
	  
	   %></td>
    </tr>
	
	<% 
	
	
	%>
  </table>
  <H3>&nbsp;</H3>
<BR><BR>
<P><A HREF="aLinkForOldBrowsersGoesHere.html"
      onMouseOver="HM_f_PopUp('elMenu1',event)"
      onMouseOut="HM_f_PopDown('elMenu1')">
          Relative-to-Mouse-Position Vertical Variable-Width Popup Menu (Displays on <I>mouseover</I>)</A></P>
<BR>
<P><A HREF="aLinkForOldBrowsersGoesHere.html"
      onMouseOver="popUp('HM_Menu4',event)"
      onMouseOut="popDown('HM_Menu4')">
 Absolute Position Popup Menu (Displays on <I>click</I>)
          </A></P>
<BR>
<P><A HREF="aLinkForOldBrowsersGoesHere.html"
      onMouseOver="HM_f_PopUp('elMenu3',event)"
      onMouseOut="HM_f_PopDown('elMenu3')">
          Tall-Child Relative-to-Mouse-Position Using Keywords Popup Menu (Displays on <I>mouseover</I>)</A></P>
</BLOCKQUOTE>







<%
Response.Write("<SCRIPT LANGUAGE='JavaScript1.2' >")


for j = 1 to count_1 + 1
	for i  = 1 to 50
		if a(j,i) <> "" then 
		Response.Write( a(j,i) )
		end if
		
	next 
next 
Response.Write("</script>")
%>
<SCRIPT LANGUAGE="JavaScript1.2"    SRC="HM_Loader.js"       TYPE='text/javascript'></SCRIPT>

</BODY>
</HTML>
