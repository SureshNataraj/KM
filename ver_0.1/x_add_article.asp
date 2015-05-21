<%@language="VBscript" %>
<% option explicit %>
<% response.buffer=true %>
<%

'Dim strPath


'MBRequest("File1").Path & MBRequest("File1").FileName



'Response.Write objFileUp("foo").Value
'Response.Write objFileUp("file").FileName
'Response.Write objFileUp("file").Path
'Response.Write objFileUp("file").ContentType
'objFileUp("file").SavePath = "C:\FilesFromFriends\"
'objFileUp("file").Save
'objFileUp("file").SaveAs( "foo." & objFileUp("file").Extension )



Dim MBRequest
Dim strPath
strPath = "script:" & Server.MapPath("MetaBuilders.FileUp.wsc" )
%>
<!-- #include file = "conn.asp" -->
<%

set objUpload = GetObject( strPath )


dim sql_insert, sql_max, rs , maxid, txt_html, txt_title, txt_attachment, txt_att_type, upload, temp_path,  file2name, file2, ext
dim dbsavepath, img_dbsavepath, img_height, img_width, file1
Dim objUpload
Dim strFileName1, strFileName2, file1_ext_arr, file1_ext, file2_ext_arr, file2_ext, file1path, file2path




	txt_html =Replace(objUpload("txt_title1").value, "'","''")
	txt_title = Replace(objUpload("txt_title").value,"'","''")
	
	strFileName1 = objUpload("img_attachment").FileName
	strFileName2 = objUpload("txt_attachment").FileName
	
	file1_ext = objUpload("img_attachment").Extension
	file2_ext = objUpload("txt_attachment").Extension

	

temp_path = Server.Mappath("attachments") & "\"

objUpload("img_attachment").SavePath =temp_path
objUpload("txt_attachment").SavePath =temp_path


set rs = Server.CreateObject("Adodb.Recordset")
sql_max = "Select max(int_articleid) as maxid from tbl_articles"
rs.open sql_max, con

if rs.eof = false then
	maxid = cint(rs(0)) + 1	
else
	maxid = 1	
end if


if file1_ext ="" or isnull(file1_ext) then

	else

	file1path =  "img_"&  maxid &"." &   file1_ext
	img_dbsavepath = "attachments\img_"&  maxid & "." &  File1_Ext
	
end if

if file2_ext = "" or isnull(file2_ext) = true   then

	else

	file2path =  maxid &  "." & file2_ext
	ext = file2_ext	
	dbsavepath = "attachments\"&  maxid & "." &  File2_Ext

end if
	

	if strFileName1 <> "" then 
		objUpload("img_attachment").SaveAs(file1path)
	end if
	
	if strFileName2 <> "" then 
		objUpload("txt_attachment").SaveAs(file2path)
	end if

Response.end


	img_height = 100
	img_width = 100
	
sql_insert = "insert into tbl_articles (int_articleid, txt_article_content, txt_article_title, dt_inserted_date, txt_userid, txt_systeminfo, int_status, int_categoryid, txt_attachment, txt_attachment_type, txt_image_attachment, txt_image_height, txt_image_width) values("
sql_insert = sql_insert & "" & maxid &","
sql_insert = sql_insert & "'" & txt_html &"',"
sql_insert = sql_insert & "'" & txt_title &"',"
sql_insert = sql_insert & "#" & month(date()) & "/" & day(date()) & "/" & year(date()) &"#,"
sql_insert = sql_insert & "'" & session("username") &"',"
sql_insert = sql_insert & "'" & Request.ServerVariables("REMOTE_ADDR") &"',"
sql_insert = sql_insert & "1,"
sql_insert = sql_insert & "" & session("articleid") &","
sql_insert = sql_insert & "'" & dbsavepath &"',"
sql_insert = sql_insert & "'" & ext &"',"
sql_insert = sql_insert & "'" & img_dbsavepath &"',"
sql_insert = sql_insert & "'" & img_height &"',"
sql_insert = sql_insert & "'" & img_width &"')"

con.execute(sql_insert) 
'Response.Write(sql_insert)
session("add_status")="Artilce <b>"& txt_title &"</b> added sucessfully"
Set objUpload = Nothing

response.redirect "add_articles.asp"

%>