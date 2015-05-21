<% @Language="VbScript" %>
<% option explicit %>
<!-- #include file = "conn.asp" -->
<%

dim sql_validate, rs
sql_validate = "update tbl_articles set int_status = 0 where  int_articleid = " & request("article_id") &""
con.execute (sql_validate)
'Response.Write("category_view.asp?cid="& Request("cid") &"&pageno=" & Request("pageno")  & "&del_status=Article Sucessfully Deleted")
Response.Redirect( "category_view.asp?cid="& Request("cid") &"&pageno=" & Request("pageno")  & "&del_status=Article Sucessfully Deleted" & "&txt_search="&Request("txt_search") &"&alph="& Request("alph"))

%>