<% @Language="VbScript" %>
<!-- #include file="conn.asp" -->
<%
dim txt_username, txt_password, sql_select, Rs

txt_username = Request("txt_username")
txt_empno = Request("txt_empno")
dt_dob =  Request("int_dob_month") & "/" & Request("int_dob_day")& "/" & Request("int_dob_year")
txt_email = Request("txt_email")


sql_select = "select txt_username, txt_name, txt_password  from tbl_userdetails where txt_username='"& txt_username &"' and txt_empno ='" & txt_empno &"' and  dt_dob = # " & dt_dob &"# and  txt_email = '"& txt_email &"'"

'Response.write sql_select
'Response.flush()

set Rs = server.createobject("Adodb.Recordset")
Rs.open sql_select , con

If rs.eof = false then 
	
	
	
 	HTML = "<!DOCTYPE HTML PUBLIC""-//IETF//DTD HTML//EN"">"
    HTML = HTML & "<html>"
    HTML = HTML & "<head>"
    HTML = HTML & "<meta http-equiv=""Content-Type"""
    HTML = HTML & "content=""text/html; charset=iso-8859-1"">"
    HTML = HTML & "<title>KM - Escrow Analyis</title>"
    HTML = HTML & "</head>"
    HTML = HTML & "<body bgcolor=""FFFFFF""><p><font size='2' face='Verdana'> Dear  " & rs("txt_name") & "<br> as per Your request we are sending you following information</font>"
	HTML = HTML & "<table border='1' cellpadding='2' cellspacing='2' bordercolor='#6699FF'>"
	HTML = HTML & "<tr><td><font size='2' face='Verdana'>Your User name</font></td><td><strong>:</strong></td><td><font size='2' face='Verdana'><strong> "& rs("txt_username")&"</strong></font></td></tr>"
  	HTML = HTML & "<tr><td><font size='2' face='Verdana'>Your Password </font></td><td><strong>:</strong></td><td><font size='2' face='Verdana'><strong>"& rs("txt_password") &"</strong></font></td></tr>"
    HTML = HTML & "<tr><td><font size='2' face='Verdana'>Date of request</font></td><td><strong>:</strong></td><td><font size='2' face='Verdana'><strong>"& day(date) & "/" & month(date) & "/"& year(date) &"</strong></font></td></tr>"
	HTML = HTML & "</table>"
	HTML = HTML & "<P><font size='2' face='Verdana'> Thanking you <br>  <b>KM SYSTEM ADMIN.</b></font>"
	
	HTML = HTML & "</body>"
	HTML = HTML & "</html>"
	
	set mailobj = server.createobject("CDONTS.Newmail")

	mailobj.to  = txt_email
	mailobj.bcc = "saran@srushtitech.com"
	mailobj.from = "admin@escrow.com"
	mailobj.subject = "KM ESCROW - Forgot Password Request " 
	mailobj.BodyFormat=0
	mailobj.MailFormat=0
	mailobj.body = HTML
	mailobj.send
	Response.Redirect("thankyou.asp?status=Your Password and username is send to your email id. <br> Thank you ")


	
else
	
	Response.Redirect("forgotpwd.asp?status=The details you entered does not match. Please check")
end if





%>