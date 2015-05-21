<%
' Original Code written by: Robbert Nix
' Adapted and Modified by: Will Bickford
' Date: 12/20/2002
' Email: wbic16@hotmail.com
' From: http://www.planet-source-code.com/vb/scripts/ShowCode.asp?lngWId=4&txtCodeId=7110

Function BufferContent(data)
	Dim strContent(64)
	Dim i

	ClearString strContent

	For i = 1 To LenB(data)
		AddString strContent,Chr(AscB(MidB(data,i,1)))
	Next

	BufferContent = fnReadString(strContent)
End Function

Sub ClearString(part)
	Dim index

	For index = 0 to 64
		part(index)=""
	Next
End Sub

Sub AddString(part,newString)
	Dim tmp
	Dim index

	part(0) = part(0) & newString

	If Len(part(0)) > 64 Then
		index=0
		tmp=""

		Do
			tmp=part(index) & tmp
			part(index) = ""
			index = index + 1
		Loop until part(index) = ""

		part(index) = tmp
	End If
End Sub

Function fnReadString(part)
	Dim tmp
	Dim index

	tmp = ""

	For index = 0 to 64
		If part(index) <> "" Then
			tmp = part(index) & tmp
		End If
	Next

	FnReadString = tmp
End Function
%>
