<%
	dim strdb, con , con_str
	
	strdb = server.mappath("KM.mdb")
	set con = Server.CreateObject("Adodb.Connection")
	con_str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&strdb
	con.open con_str
%>