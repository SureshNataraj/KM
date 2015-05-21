<%

 if (session("username")) = "" then response.redirect "index.asp?status=<font color=red>You have to loggin to use this future</font>"

%>