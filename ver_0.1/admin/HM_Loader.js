/*HM_Loader.js
* by Peter Belesis. v5
* Copyright (c) 2003 Peter Belesis. All Rights Reserved.
*/

HM_UserAgent = navigator.userAgent;
      HM_DOM = (document.getElementById) ? true : false;
      HM_NS4 = (document.layers) ? true : false;
       HM_IE = (document.all) ? true : false;
      HM_IE4 = HM_IE && !HM_DOM;
      HM_Mac = (navigator.appVersion.indexOf("Mac") != -1);
     HM_IE4M = HM_IE4 && HM_Mac;

HM_Opera = (window.opera) ? true : false;
if(HM_Opera) {
    HM_BrowserPattern = /Opera(\/| )(\d+.*)/;
    HM_VersionSupported = 7;
}

HM_Konqueror = (HM_UserAgent.indexOf("Konqueror")!=-1);
if(HM_Konqueror) {
    HM_BrowserPattern = /(Konqueror\/)(\d+.*)/;
    HM_VersionSupported = 3;
}

if(HM_Opera || HM_Konqueror) {
    if (HM_UserAgent.match) {
       HM_Matches = HM_UserAgent.match(HM_BrowserPattern);
       if (HM_Matches&&HM_Matches[2]) {
          HM_BrowserVersion = parseFloat(HM_Matches[2]);
       } else HM_BrowserVersion = 0;
       HM_IsMenu = (HM_BrowserVersion >= HM_VersionSupported);
    } else {
       HM_BrowserVersion = 0;
       HM_IsMenu = false;
    }
} else {
    HM_BrowserVersion = 0;
    HM_IsMenu = !HM_IE4M && (HM_DOM || HM_NS4 || HM_IE4 );
}

if(window.event + "" == "undefined") event = null;
function HM_f_PopUp(){return false};
function HM_f_PopDown(){return false};
popUp = HM_f_PopUp;
popDown = HM_f_PopDown;

HM_GL_MenuWidth          = 150;
HM_GL_FontFamily         = "Arial,sans-serif";
HM_GL_FontSize           = 10;
HM_GL_FontBold           = true;
HM_GL_FontItalic         = false;
HM_GL_FontColor          = "black";
HM_GL_FontColorOver      = "white";
HM_GL_BGColor            = "transparent";
HM_GL_BGColorOver        = "transparent";
HM_GL_ItemPadding        = 3;

HM_GL_BorderWidth        = 2;
HM_GL_BorderColor        = "red";
HM_GL_BorderStyle        = "solid";
HM_GL_SeparatorSize      = 2;
HM_GL_SeparatorColor     = "yellow";

HM_GL_ImageSrc = "HM_More_black_right.gif";
HM_GL_ImageSrcLeft = "HM_More_black_left.gif";

HM_GL_ImageSrcOver = "HM_More_white_right.gif";
HM_GL_ImageSrcLeftOver = "HM_More_white_left.gif";

HM_GL_ImageSize          = 5;
HM_GL_ImageHorizSpace    = 5;
HM_GL_ImageVertSpace     = 5;

HM_GL_KeepHilite         = false;
HM_GL_ClickStart         = false;
HM_GL_ClickKill          = 0;
HM_GL_ChildOverlap       = 40;
HM_GL_ChildOffset        = 10;
HM_GL_ChildPerCentOver   = null;
HM_GL_TopSecondsVisible  = .5;
HM_GL_ChildSecondsVisible = .3;
HM_GL_StatusDisplayBuild = 1;
HM_GL_StatusDisplayLink  = 1;
HM_GL_UponDisplay        = null;
HM_GL_UponHide           = null;

HM_GL_RightToLeft        = false;
HM_GL_CreateTopOnly      = true;
HM_GL_ShowLinkCursor     = true;

HM_GL_ScrollEnabled = true;
HM_GL_ScrollOver = (HM_Opera) ? 1 : 0;
HM_MacN7 = (HM_Mac&&(HM_UserAgent.indexOf('Netscape/7')!=-1))?true:false;
HM_GL_ScrollInterval = (HM_MacN7) ? 100 : 20;
HM_GL_ScrollBarHeight = 16;
HM_GL_ScrollBarColor = "lightgrey";
HM_GL_ScrollImgSrcTop = "HM_More_black_top.gif";
HM_GL_ScrollImgSrcBot = "HM_More_black_bot.gif";
HM_GL_ScrollImgWidth = 9;
HM_GL_ScrollImgHeight = 5;
HM_GL_ScrollBothBars = true;

HM_GL_HoverTimeTop  = 0;
HM_GL_HoverTimeTree = 0;

HM_GL_ImageDir = "";
HM_ScriptDir   = HM_GL_ImageDir;

// The following function is included to illustrate the JS 
// expression handling of the left_position and top_position 
// parameters. You may delete if you have no use for it

function HW(kx){var b=0;var c=HM_DOM?Hg.document.getElementById(kx):Hg[kx];var d=HM_DOM?parseInt(c.style.width)+((Hjt||Hju)?0:Hu*2):HM_IE4?c.style.pixelWidth:c.clip.width;var gh=HM_IE?(HM_DOM?Hh.clientWidth:Hg.document.body.clientWidth):Hg.innerWidth;
return Math.max(parseInt((gh-d)/2),b);}
HM_f_CenterMenu=HW;

if(HM_IsMenu) {
	HM_BrowserString = HM_NS4 ? "NS4" : HM_DOM ? "DOM" : "IE4";
	//document.write("<SCR" + "IPT LANGUAGE='JavaScript1.2' SRC='" + HM_ScriptDir + "HM_Arrays.js' TYPE='text/javascript'><\/SCR" + "IPT>");
	document.write("<SCR" + "IPT LANGUAGE='JavaScript1.2' SRC='" + HM_ScriptDir + "HM_Script"+ HM_BrowserString +".js' TYPE='text/javascript'><\/SCR" + "IPT>");
}

//end