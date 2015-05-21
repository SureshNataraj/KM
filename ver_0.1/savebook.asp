<%
set conn2 = server.createobject("Adodb.Connection")
cons="Provider=Microsoft.Jet.oledb.4.0;data source="& Server.mappath("FORUMS.MDB")
conn2.open cons

EMAIL = CStr(Replace(Request.Form("EMAIL"),"'","")) 
 EMAIL = CStr(Replace(EMAIL,"<","")) 
 EMAIL = CStr(Replace(EMAIL,">","")) 

 URL = CStr(Replace(Request.Form("URL"),"'","")) 
 URL = CStr(Replace(URL,"<","")) 
URL = CStr(Replace(URL,">","")) 


If URL = "http://" Then 
URL = "   "
End If


 NAME = CStr(Replace(Request.Form("NAME"),"'","")) 
 NAME = CStr(Replace(NAME,"<","")) 
 NAME = CStr(Replace(NAME,">","")) 

 MESSAGE = CStr(Replace(Request.Form("MESSAGE"),"'","")) 
 MESSAGE = CStr(Replace(MESSAGE,"<","")) 
 MESSAGE = CStr(Replace(MESSAGE,">","")) 
 MESSAGE = CStr(Replace(MESSAGE,str,"<br>")) 
 MESSAGE = CStr(Replace(MESSAGE,vbCr,"<br>")) 
 DATE_ENTERED = NOW
 IP_ADDRESS = Request.ServerVariables("REMOTE_ADDR")
sql = "insert into book1 (name, email, message, DATE_ENTERED, URL, IP_ADDRESS ) values('" &  NAME & "' , '"& EMAIL &"', '" & MESSAGE & "','" &  DATE_ENTERED &"','" &  URL &"','" &  IP_ADDRESS &"')"
conn2.execute(sql)
conn2.close
set conn2 = nothing
response.redirect "guestbook.asp"
%>
