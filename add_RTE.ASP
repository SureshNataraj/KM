
<HTML>
<HEAD>
<SCRIPT SRC="rte_res___0.js"></SCRIPT>
<SCRIPT SRC="rte___0.js"></SCRIPT>		
<STYLE>
body {margin:0pt;border:none;padding:0pt}
#tbDBSelect {display:none;text-align:left;width: 100;margin-right: 1pt;margin-bottom: 0pt;margin-top: 0pt;padding: 0pt}
#DBSelect, #idMode, .userButton {font:8pt arial}
#DBSelect {width:100}
#idMode {margin-top:0pt}
.tbButton {text-align:left;margin:0pt 1pt 0pt 0pt;padding:0pt}
#EditBox {position: relative}
</STYLE>
<STYLE ID=skin DISABLED>
#EditBox {margin: 0px 11px 0px 11px}
#tbUpRight, #tbUpLeft {width:20px}	
#idMode {margin-left:11px;padding:0pt}
#idMode LABEL {color: navy;text-decoration: underline}
#tbTopBar {height:19px}
#tbButtons, #tbContents {background: #bdc6de;vertical-align: top; border:thin dashed #000000 1px;}
#tbContents {padding:0px 5px}
#tbBottomBar {height:6px}
</STYLE>
<STYLE ID=defPopupSkin>
#popup BODY {margin:0px;border-top:none}
#popup .colorTable {height:91px}
#popup #header {width:100%}
#popup #close {cursor:default;font:bold 8pt system;width:16px;text-align: center}
#popup #content {padding:10pt}
#popup TABLE {vertical-align:top}
#popup .tabBody {border:1px black solid;border-top: none}
#popup .tabItem, #popup .tabSpace {border-bottom:1px black solid;border-left:1px black solid}
#popup .tabItem {border-top:1px black solid;font:10pt arial,geneva,sans-serif;}
#popup .currentColor {width:20px;height:20px; margin: 0pt;margin-right:15pt;border:1px black solid}
#popup .tabItem DIV {margin:3px;padding:0px;cursor: hand}
#popup .tabItem DIV.disabled {color: gray;cursor: default}
#popup .selected {font-weight:bold}
#popup .emoticon {cursor:hand}
</STYLE>
<STYLE ID=popupSkin>
#popup BODY {border: 3px #006699 solid; background: #F1F1F1}
#popup #header {background: #006699; color: white}
#popup #caption {text-align: left;font: bold 12pt arial , geneva, sans-serif}
#popup .ColorTable, #popup #idList TD#current {border: 1px black solid}
#popup #idList TD{cursor: hand;border: 1px #F1F1F1 solid}
#popup #close {border: 1px #99CCFF solid;cursor:hand;color: #99CCFF;font-weight: bold;margin-right: 6px;padding:0px 4px 2px}
#popup #tableProps .tablePropsTitle {color:#006699;text-align:left;margin:0pt;border-bottom: 1px black solid;margin-bottom:5pt}
#tableButtons, #tableProps {padding:5px}
#popup #tableContents {height:175px}
#popup #tableProps .tablePropsTitle, #popup #tableProps, #popup #tableProps TABLE {font:bold 9pt Arial, Geneva, Sans-serif}
#popup #tableOptions  {font:9pt Arial, Geneva, Sans-serif;padding:15pt 5pt}
#popup #puDivider {background:black;width:1px}
#popup #content {margin: 0pt;padding:5pt 5pt 10pt 5pt}
#popup #ColorPopup {width: 250px}
#popup .ColorTable TR {height:6px}
#popup .ColorTable TD {width:6px;cursor:hand}
#popup .block P,#popup .block H1,#popup .block H2,#popup .block H3,
#popup .block H4, #popup .block H5,#popup .block H6,#popup .block PRE {margin:0pt;padding:0pt}
#popup #customFont {font:12pt Arial;text-decoration:italic}
</STYLE>
<SCRIPT>
var g_state
window.onload	= _initEditor
</SCRIPT>
</HEAD>													
<BODY   bgcolor="#bdc6de" 	ONCONTEXTMENU="return false" TABINDEX  ="-1" SCROLL ="no" ONSELECTSTART ="return false" ONDRAGSTART="return false" ONSCROLL="return false">
<DIV ID="idEditor" STYLE="VISIBILITY:hidden">
<TABLE ID=idToolbar  bgcolor="#bdc6de" WIDTH="100%" CELLSPACING=0 CELLPADDING=0 ONCLICK="_CPopup_Hide()">
<TR ID=tbTopBar><TD ID=tbUpLeft></TD><TD COLSPAN=2 ID=tbUpMiddle></TD><TD ID=tbUpRight></TD></TR>
<TR><TD ID=tbMidLeft></TD>
<TD ID=tbContents><SCRIPT>_drawToolbar()</SCRIPT></TD>
<TD ID=tbButtons ALIGN=right></TD><TD ID=tbMidRight></TD>
</TR>
<TR ID=tbbottomBar><TD ID=tbLowLeft></TD><TD COLSPAN=2 ID=tbLowMiddle></TD><TD ID=tbLowRight></TD></TR>
</TABLE>
<IFRAME NAME="idPopup" STYLE="HEIGHT: 200px; LEFT: 25px; MARGIN-TOP: 8px; POSITION: absolute; VISIBILITY: hidden; WIDTH: 200px; Z-INDEX: -1"></IFRAME>
<IFRAME ID="EditBox" NAME="idEditbox" WIDTH="100%" HEIGHT="80%" ONFOCUS="_CPopup_Hide()"></IFRAME>
<DIV ID="tbmode"><SCRIPT>_drawModeSelect()</SCRIPT></DIV>
</DIV>
<script language="JavaScript">
<!--
function show_suresh()
{
var a_sur
a_sur = getHTML()

//alert(document.txt_htmleditor.txt_title.value)
document.txt_htmleditor.txt_title1.value = a_sur

//alert(document.txt_htmleditor.txt_title1.value)
//alert(document.txt_htmleditor.txt_html.value)
if (document.txt_htmleditor.txt_title.value == "")
{
alert("Please enter title")
document.txt_htmleditor.txt_title.focus()

}
else
{
document.txt_htmleditor.submit()
}


}
function clear_suresh()
{
txt_none =""
setHTML(txt_none)
}

var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
  if(popUpWin)
  {
    if(!popUpWin.closed) popUpWin.close();
  }
  popUpWin = open(URLStr, 'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menub ar=no,scrollbar=no,resizable=no,copyhistory=yes,width='+width+',height='+height+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

function validate_upload()
{
if (document.txt_htmleditor.txt_title.value == "")
{
alert("Please enter title")
document.txt_htmleditor.txt_title.focus()
return false;
}
alert("here")
return true
}

//-->

</script>

<form name="txt_htmleditor" method="post" action="x_add_article.asp" onSubmit="return validate_upload" >
  <table border="1" cellpadding="5" cellspacing="2" bordercolor="#6699CC">
    <tr> 
      <td><strong><font size="2" face="Arial">Title</font></strong> </td>
      <td align="center"><strong>:</strong></td>
      <td> <input name="txt_title" type="text" size="50" > <input name="txt_title1" type="hidden" size="50" ></td>
    </tr>
    <tr> 
      <td colspan="3"> <input type="button" value="Add Article" name="Submit" onClick="show_suresh()"> 
        <input type="reset" value="Reset" name="Reset" onClick="clear_suresh()"> 
        <input type="button" name="Add_attachment" value="Attachment 1" onClick="popUpWindow('upload1.asp', 20, 20, 400, 300)">
      </td>
    </tr>
  </table>
  <br>
  <input type="hidden"	name="txt_html">
  <br>
</form>
</BODY>	
</HTML>
