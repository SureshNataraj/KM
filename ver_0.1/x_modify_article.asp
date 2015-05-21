<%@language="VBscript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->
<!-- #include file = "uploader/clsUpload.asp" -->



<%
dim sql_insert, sql_max, rs , maxid, txt_html, txt_title, txt_attachment, txt_att_type, upload, temp_path,  file2name, file2, ext
dim dbsavepath, img_dbsavepath, img_height, img_width, file1
Dim objUpload
Dim strFileName1, strFileName2, file1_ext_arr, file1_ext, file2_ext_arr, file2_ext, file1path, file2path
Dim strPath

Set objUpload = New clsUpload

	txt_html =Replace(objUpload.Fields("txt_title1").value, "'","''")
	txt_title = Replace(objUpload.Fields("txt_title").value,"'","''")
	strFileName1 = objUpload.Fields("img_attachment").FileName
	strFileName2 = objUpload.Fields("txt_attachment").FileName
	
	
	
	
	
	
	file1_ext_arr = split(strFileName1,".")


	if 	ubound(file1_ext_arr) > 0 then
		file1_ext = file1_ext_arr(ubound(file1_ext_arr))
	else
		file1_ext = ""
	end if
	

	file2_ext_arr = split(strFileName2,".")
	
	if 	ubound(file2_ext_arr) > 0 then
		file2_ext = file2_ext_arr(ubound(file2_ext_arr))
	else
		file2_ext = ""
	end if

temp_path = Server.Mappath("attachments") & "\"

set rs = Server.CreateObject("Adodb.Recordset")
sql_max = "Select max(int_articleid) as maxid from tbl_articles"
rs.open sql_max, con

if rs.eof = false then
	maxid = cint(rs(0)) + 1	
else
	maxid = 1	
end if


if ubound(file1_ext_arr) > 0 then
	file1path =  temp_path &"img_"&  maxid &"." &   file1_ext
	img_dbsavepath = "attachments\img_"&  maxid & "." &  File1_Ext
	
end if

if 	ubound(file2_ext_arr) > 0  then
	file2path =  temp_path &  maxid &  "." & file2_ext
	ext = file2_ext	
	dbsavepath = "attachments\"&  maxid & "." &  File2_Ext
end if
	

	
	'if objUpload("img_attachment")
	if strFileName1 <> "" then 
		objUpload("img_attachment").SaveAs file1path
	end if
	
	if strFileName2 <> "" then 
		objUpload("txt_attachment").SaveAs file2path
	end if
	img_height = 100
	img_width = 100
	
sql_insert = "update tbl_articles set  "
'sql_insert = sql_insert & "" & maxid &","
sql_insert = sql_insert & "txt_article_content ='" & txt_html &"',"
sql_insert = sql_insert & "txt_article_title = '" & txt_title &"',"
sql_insert = sql_insert & "dt_inserted_date = #" & month(date()) & "/" & day(date()) & "/" & year(date()) &"#,"
sql_insert = sql_insert & "txt_userid  = '" & session("username") &"',"
sql_insert = sql_insert & "txt_systeminfo = '" & Request.ServerVariables("REMOTE_ADDR") &"',"
sql_insert = sql_insert & "int_status=1,"
sql_insert = sql_insert & "int_categoryid=" & session("articleid") &","
sql_insert = sql_insert & "txt_attachment = '" & dbsavepath &"',"
sql_insert = sql_insert & "txt_attachment_type = '" & ext &"',"
sql_insert = sql_insert & "txt_image_attachment = '" & img_dbsavepath &"',"
sql_insert = sql_insert & "txt_image_height = '" & img_height &"',"
sql_insert = sql_insert & "txt_image_width = '" & img_width &"' where int_articleid = " & session("int_articleid")

con.execute(sql_insert) 
'Response.Write(sql_insert)
session("add_status")="Artilce <b>"& txt_title&"</b> Modified  sucessfully"
Set objUpload = Nothing

response.redirect "modify.asp"

%>