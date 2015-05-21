<% @Language="VbScript" %>
<!-- #include file="conn.asp" -->
<%
	'Set adoConn=Server.CreateObject("ADODB.Connection")	
	'adoConn.ConnectionString="Provider=Microsoft.Jet.oledb.4.0;data source="& server.MapPath("dynamicmen.mdb")				
	'adoConn.Open
	dim int_id , cate_rs, cate_sql, chk_rs, chk_sql
	int_id = Request.Form("Parent")
	txt_link = "category_view.asp?cid=" & int_id
	'txt_name = Request.Form("txt_menuname")
	int_parentid = Request.Form("Parent")
	set cate_rs = Server.CreateObject("Adodb.Recordset")
	
	cate_sql = "select int_parentcategoryid, txt_categorytitle from tbl_category where int_categoryid = " & int_id
	'Response.Write(cate_sql)
	'Response.Flush
	
	cate_rs.cursorlocation = 3
	cate_rs.open cate_sql, con
	if  cate_rs.eof = false then
		
			'int_parentid = cate_rs("int_parentcategoryid").value
			txt_name = cate_rs("txt_categorytitle").value
		
			
		
	else
	Response.Redirect("createmenu_1.asp?status=No Value Found ")
	end if
	
	'set chk_rs = server.CreateObject("Adodb.Recordset")
	'chk_sql = "Select "
	
	'Response.Write(int_parentid & " -- " & txt_name)
	'response.End()
	

Set rs = Server.CreateObject("Adodb.Recordset")
Sql_max = "Select max(int_menuid) as maxid from tbl_menu"
Rs.open sql_max, con
if rs.eof = true then 
maxid = 1
'Response.Write("maxid 0 - eof")
else
if  isnull(rs("maxid")) = true then
'Response.Write("maxid Null - 0")
maxid = 1
else
maxid = cint(rs("maxid")) + 1
end if


end if

Rs.close

sql_order = "select max(int_order) as maxorder from tbl_menu where int_parentid=" & int_parentid
Rs.open sql_order, con

if rs.eof = true then
	int_order = 1
else
		if isnull(rs("maxorder")) = true then 
			int_order = 1
		else
			int_order = cint(rs("maxorder")) + 1
		end if
end if

Rs.close


sql_menuname = "select txt_menuname, int_order from tbl_menu where int_menuid = " & int_parentid
rs.open sql_menuname, con

if rs.eof = true then
txt_menuname = 0

else

	if isnull(rs("txt_menuname")) = true then
	txt_menuname = 0
	else
		if strcomp(rs("txt_menuname"),"0") = 0  then
			  txt_menuname = rs("int_order")
		else		
			txt_menuname = rs("txt_menuname") & "_"& rs("int_order")
		end if
		
			
	end if
	


end if


sql_insert = "insert into tbl_menu ( int_parentid, int_menuid, txt_link, txt_title, int_parameterid, int_order, txt_menuname)values("
sql_insert =  sql_insert & int_parentid & ","
sql_insert =  sql_insert & maxid & ","
sql_insert =  sql_insert & "'" & txt_link & "' ,"
sql_insert =  sql_insert & "'" & txt_name & "',"
sql_insert =  sql_insert &  "0,"
sql_insert =  sql_insert & int_order & ","
sql_insert =  sql_insert &  "'" & txt_menuname & "' )"


sql_update = "update tbl_menu set int_sublink = 1 where int_menuid = "& int_parentid

'Response.Write(sql_insert & "<br>")
'Response.Write(sql_update)

con.execute (sql_insert)
con.execute(sql_update)
Response.Redirect("createmenu_1.asp?status=Sucessfully added to menu")

%>