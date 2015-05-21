<%@language="VBscript" %>
<% option explicit %>
<% response.buffer=true %>
<!-- #include file = "conn.asp" -->
<%
dim sql_insert,sql_mail,i, sql_max, rs , rs_sql,  maxid, txt_html, txt_title, txt_attachment, txt_att_type, upload,temp_path,ext,mailobj,body1, html

dim dbsavepath, img_dbsavepath, img_height, img_width, file1
Dim objUpload,tbl_txt
Dim strFileName1, strFileName2, file1_ext_arr, file1_ext, file2_ext_arr, file2_ext, file1path, file2path

	txt_html =Replace(Request("txt_title1"), "'","''")
	txt_title = Replace(Request("txt_title"),"'","''")
	temp_path = Server.Mappath("attachments") & "\"

set rs = Server.CreateObject("Adodb.Recordset")
sql_max = "Select max(int_articleid) as maxid from tbl_articles"
rs.open sql_max, con

if rs.eof = false then
	maxid = cint(rs(0)) + 1	
else
	maxid = 1	
end if

file1_ext = Session("image_at_ext")
file2_ext = Session("file_at_ext")

if file1_ext ="" or isnull(file1_ext) then

	else

	file1path =  session("image_at")
	img_dbsavepath = "attachments\"&  session("image_at")
	
end if

if file2_ext = "" or isnull(file2_ext) = true   then

	else

	file2path =  session("file_at")
	ext = file2_ext	
	dbsavepath = "attachments\"& session("file_at")

end if

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
session("add_status")="Artilce <b>"& txt_title&"</b> added sucessfully"
Set objUpload = Nothing

sql_mail = "select txt_email from tbl_userdetails " 
set rs_sql = server.createobject("Adodb.Recordset")
rs_sql.cursorlocation = 3
rs_sql.open sql_mail, con


body1 = "<Table border=1 align=center cellpadding=1 cellspacing=2 bordercolor=#666699>"
body1 = body1 & "<tr><td>Artilce Title</td><td>" & txt_title  &" </td><tr>"
body1 = body1 & "<tr><td>Author</td><td>" & session("txt_name")  &" </td><tr>"


tbl_txt = "<a href='http://localhost/km1/view_desc.asp?aid=" & maxid & "&cid="& session("articleid") &"'>Click here to view the article</a>"


body1 = body1 & "<tr><td colspan=2> " & tbl_txt  &" </td><tr>"
body1 = body1 & "<tr><td colspan=2> This is autometically send message. Dont reply to this message </td><tr></table>"




	HTML = "<!DOCTYPE HTML PUBLIC""-//IETF//DTD HTML//EN"">"
	HTML = HTML & "<html>"
    	HTML = HTML & "<head>"
  	HTML = HTML & "<meta http-equiv=""Content-Type"""
 	HTML = HTML & "content=""text/html; charset=iso-8859-1"">"
  	HTML = HTML & "<title>Knowledge Management </title>"
  	HTML = HTML & "</head>"
 	HTML = HTML & "<body bgcolor=""FFFFFF"">"
	
	HTML = HTML & body1
	
	HTML = HTML & "</body>"
	HTML = HTML & "</html>"




	while rs_sql.eof = false

	if rs_sql.eof = false then

	'Response.write rs_sql("txt_email") & "<br>"& rs_sql.recordcount
	'Response.flush
	
	Set mailobj = Server.createobject("CDONTS.Newmail")

	mailobj.to = rs_sql("txt_email")
	mailobj.from = "admin@escrowKM.com"
	mailobj.subject = "Alert - A new article added is added in Knowledge DB" 
	mailobj.BodyFormat=0
	mailobj.MailFormat=0
	mailobj.body = HTML
	mailobj.send
	set mailobj = nothing

	rs_sql.movenext

	end if 
	wend


session("file_at") = ""
session("image_at") = ""
session("file_at_ext") =""
session("image_at_ext") = ""

response.redirect "add_articles.asp"

%>