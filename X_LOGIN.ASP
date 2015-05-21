<% @Language="VbScript" %>
<!-- #include file="conn.asp" -->
<%
dim txt_username, txt_password, sql_select, Rs

txt_username = Request("txt_username")
txt_password = Request("txt_password")


sql_select = "select txt_username, txt_name, int_usertype from tbl_userdetails where txt_username='"& txt_username &"' and txt_password ='" & txt_password &"' and int_status =1"

'Response.write sql_select
'Response.flush()

set Rs = server.createobject("Adodb.Recordset")
Rs.open sql_select , con

If rs.eof = false then 
	'Response.write "in"

	session("username") = Rs("txt_username")
	session("txt_name") = Rs("txt_name")
	session("int_usertype") = Rs("int_usertype")
	Response.Redirect ("index.asp")
else
	
	Response.Redirect("index.asp?status=Login failed")
end if





%>