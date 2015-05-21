function UD_resize() {
  if (document.all && document.getElementById) {
    var dw = document.body.clientWidth, fc = document.all("fullContent"), cc = document.all("centercontent"), lcw = document.all("leftcontent").offsetWidth, rcw = document.all("rightcontent").offsetWidth;
    rcl=document.all("rightcontent").offsetLeft;
  } else if (document.getElementById) {
    var dw = document.width, fc = document.getElementById("fullContent"), cc = document.getElementById("centercontent"), lcw = document.getElementById("leftcontent").offsetWidth, rcw = document.getElementById("rightcontent").offsetWidth;
    rcl=document.getElementById("rightcontent").offsetLeft;
    //alert(document.defaultView.getComputedStyle(cc,null).getPropertyValue('width'));
  } else return;
  var newWidth = rcl - lcw - 1; fc.style.width = newWidth+'px';
  if (newWidth + 20 < fc.offsetWidth) { cc.style.overflow = "auto"; cc.style.width = newWidth; }
  else cc.style.overflow = "";
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function MM_displayStatusMsg(msgStr) { //v1.0
  status=msgStr;
  document.MM_returnValue = true;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function MM_nbGroup(event, grpName) { //v3.0
  var i,img,nbArr,args=MM_nbGroup.arguments;
  if (event == "init" && args.length > 2) {
    if ((img = MM_findObj(args[2])) != null && !img.MM_init) {
      img.MM_init = true; img.MM_up = args[3]; img.MM_dn = img.src;
      if ((nbArr = document[grpName]) == null) nbArr = document[grpName] = new Array();
      nbArr[nbArr.length] = img;
      for (i=4; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
        if (!img.MM_up) img.MM_up = img.src;
        img.src = img.MM_dn = args[i+1];
        nbArr[nbArr.length] = img;
    } }
  } else if (event == "over") {
    document.MM_nbOver = nbArr = new Array();
    for (i=1; i < args.length-1; i+=3) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = (img.MM_dn && args[i+2]) ? args[i+2] : args[i+1];
      nbArr[nbArr.length] = img;
    }
  } else if (event == "out" ) {
    for (i=0; i < document.MM_nbOver.length; i++) {
      img = document.MM_nbOver[i]; img.src = (img.MM_dn) ? img.MM_dn : img.MM_up; }
  } else if (event == "down") {
    if ((nbArr = document[grpName]) != null)
      for (i=0; i < nbArr.length; i++) { img=nbArr[i]; img.src = img.MM_up; img.MM_dn = 0; }
    document[grpName] = nbArr = new Array();
    for (i=2; i < args.length-1; i+=2) if ((img = MM_findObj(args[i])) != null) {
      if (!img.MM_up) img.MM_up = img.src;
      img.src = img.MM_dn = args[i+1];
      nbArr[nbArr.length] = img;
  } }
}

function MM_preloadImages() { //v3.0
 var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
   var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
   if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function GP_popupConfirmMsg(msg) { //v1.0
  document.MM_returnValue = confirm(msg);
}

function GP_AdvOpenWindow(theURL,winName,features,popWidth,popHeight,center,ignorelink,alwaysOnTop,autoCloseTime,borderless) { //v1.1
  var autoCloseTimeoutHandle, ontopIntervalHandle, w = 480, h = 340;  
  if (popWidth > 0) features += (features.length > 0 ? ',' : '') + 'width=' + popWidth;
  if (popHeight > 0) features += (features.length > 0 ? ',' : '') + 'height=' + popHeight;
  if (center && center != "" && popWidth > 0 && popHeight > 0) {
    if (document.all || document.layers || document.getElementById) {
      w = screen.availWidth; h = screen.availHeight;}
    var leftPos = (w-popWidth)/2, topPos = (h-popHeight)/2;
    features += (features.length > 0 ? ',' : '') + 'top=' + topPos+',left='+leftPos;}
  if (document.all && borderless && borderless != "" && features.indexOf("fullscreen") != -1) features+=",fullscreen=1";
  popupWindow = window.open(theURL,winName,features);
  if (popupWindow.opener == null) popupWindow.opener = self;    
  if (document.all || document.layers || document.getElementById) {
    if (borderless && borderless != "") {popupWindow.resizeTo(popWidth,popHeight); popupWindow.moveTo(leftPos, topPos);}
    if (alwaysOnTop && alwaysOnTop != "") {
    	ontopIntervalHandle = popupWindow.setInterval("window.opener.popupWindow.focus();", 50);
    	popupWindow.document.body.onload = function() {popupWindow.setInterval("window.opener.popupWindow.focus();", 50);}; }
    if (autoCloseTime && autoCloseTime > 0) {
    	popupWindow.document.body.onbeforeunload = function() {
  			if (autoCloseTimeoutHandle) window.clearInterval(autoCloseTimeoutHandle);
    		window.onbeforeunload = null;	}  
   		autoCloseTimeoutHandle = window.setTimeout("popupWindow.close()", autoCloseTime * 1000); }
  	window.onbeforeunload = function() {popupWindow.close();}; }   
  document.MM_returnValue = (ignorelink && ignorelink != "") ? false : true;
}

function insertHeader(title) {
  var words;
  if (title.indexOf('[flash]') != -1) {
    title = title.replace(/\[flash\]/i,'');
    words = title.split(' ');
    flashTag = '' +
      '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="181" height="28">\n' +
      '  <param name=movie value="flash/tab_small_1.swf?labelKind=' + words[0] + '&amp;labelType=' + words[1] + '">\n' +
      '  <PARAM NAME=wmode VALUE=transparent>\n' +
      '  <PARAM NAME=menu VALUE=false>\n' +
      '  <PARAM NAME=scale VALUE=exactfit>\n' +
      '  <PARAM NAME=salign VALUE=L>\n' +
      '  <param name=quality value=high>\n' +
      '  <PARAM NAME=bgcolor VALUE=#000000>\n' +
      '  <embed src="flash/tab_small_1.swf?labelKind=' + words[0] + '&amp;labelType=' + words[1] + '" wmode=transparent menu=false quality=high scale=exactfit salign=L bgcolor=#000000 pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="181" height="28">\n' +
      '  </embed>\n' +
      '</object>\n'      
    document.write(flashTag);
  }
  else
    document.write(title);  
}

function getRadioValue (radioButtonOrGroup) {
  var value = null;
  if (radioButtonOrGroup.length) { // group 
    for (var b = 0; b < radioButtonOrGroup.length; b++)
      if (radioButtonOrGroup[b].checked)
        value = radioButtonOrGroup[b].value;
  }
  else if (radioButtonOrGroup.checked)
    value = radioButtonOrGroup.value;
  return value;
}

