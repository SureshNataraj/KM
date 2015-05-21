<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0062)http://www.4guysfromrolla.com/webtech/code/propresize.asp.html -->
<HTML><HEAD><TITLE></TITLE>
<META content="text/html; charset=windows-1252" http-equiv=Content-Type>
<META content="MSHTML 5.00.3502.5390" name=GENERATOR></HEAD>
<BODY><XMP><%
   ':::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
   ':::                                                                         :::
   ':::  SCRIPT:       PropResize                                               :::
   ':::  AUTHOR:       Mike Shaffer                                             :::
   ':::  DATE:         03-May-2000                                              :::
   ':::  PURPOSE:      Creates a WIDTH/HEIGHT parameter string                  :::
   ':::                (for use with the <IMG...> tag to allow                  :::
   ':::                for proportional resizing                                :::
   ':::                NOTE: Requires routines found in IMGSZ.ASP               :::
   ':::                http://www.4guysfromrolla.com/webtech/050300-1.shtml     :::
   ':::                                                                         :::
   ':::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
   ':::  blah blah blah blah blah blah blah blah blah blah blah blah blah blah  :::
   ':::  blah blah blah blah blah blah blah blah blah blah blah blah blah blah  :::
   ':::  blah blah blah                                         blah blah blah  :::
   ':::  blah blah blah     Copyright *c* MM,  Mike Shaffer     blah blah blah  :::
   ':::  blah blah blah      ALL RIGHTS RESERVED WORLDWIDE      blah blah blah  :::
   ':::  blah blah blah  Permission is granted to use this code blah blah blah  :::
   ':::  blah blah blah   in your projects, as long as this     blah blah blah  :::
   ':::  blah blah blah      copyright notice is included       blah blah blah  :::
   ':::  blah blah blah           and is unaltered.             blah blah blah  :::
   ':::  blah blah blah                                         blah blah blah  :::
   ':::  blah blah blah     CONTACT:  mshaffer@nkn.net or       blah blah blah  :::
   ':::  blah blah blah         mike@mikeshaffer.com            blah blah blah  :::
   ':::  blah blah blah                                         blah blah blah  :::
   ':::  blah blah blah blah blah blah blah blah blah blah blah blah blah blah  :::
   ':::  blah blah blah blah blah blah blah blah blah blah blah blah blah blah  :::
   ':::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


   function ImageResize(strImageName, intDesiredWidth, intDesiredHeight)

      dim TargetRatio
      dim CurrentRatio
      dim strResize
      dim w, h, c, strType

      if gfxSpex(strImageName, w, h, c, strType) = true then
         TargetRatio = intDesiredWidth / intDesiredHeight
         CurrentRatio = w / h
         if CurrentRatio > TargetRatio then                       ' We'll scale height
            strResize = "width=""" & intDesiredWidth & """"
         else
            strResize = "height=""" & intDesiredHeight & """"     ' We'll scale width
         end if
      else
         strResize = ""
      end if

      ImageResize = strResize

   end Function
%>
</XMP></BODY></HTML>
