<% @LANGUAGE="VBSCRIPT" %>
<% 
Txt_Name = request.Form("text_Name")
Enrollment_No = request.form("Alpha_Numeric")
Sex = request.form("Sex")
Dt_of_Birth = request.form("dt_day") & "/" & request.form("dt_month") & "/" & request.form("dt_year")
Txt_address = request.form("text_address")

response.Write("this is before err" )
'response.Flush()
'response.End()
'respone.sadfcasd

response.write ("Name = "  & Txt_name & "<br>" & "Roll No = " & enrollment_no & "<br>" & "Sex = " & sex & "<br>" & "DOB =" & Dt_of_birth & "<br>" & "Address = " & txt_address & "<br>")

Response.write("<br>This is KM")
%>
