<%@language="VBscript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->




<%
dim sql_insert, sql_max, rs , maxid, txt_html, txt_title, txt_attachment, txt_att_type, upload, temp_path,  file2name, file2, ext
dim dbsavepath, img_dbsavepath, img_height, img_width, file1
Dim objUpload
Dim strFileName1, strFileName2, file1_ext_arr, file1_ext, file2_ext_arr, file2_ext, file1path, file2path
Dim strPath



	txt_html =Replace(Request("txt_title1"), "'","''")
	txt_title = Replace(Request("txt_title"),"'","''")

		file1_ext = ""
		file2_ext = ""


temp_path = Server.Mappath("attachments") & "\"

set rs = Server.CreateObject("Adodb.Recordset")
sql_max = "Select max(int_articleid) as maxid from tbl_articles"
rs.open sql_max, con

if rs.eof = false then
	maxid = cint(rs(0)) + 1	
else
	maxid = 1	
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