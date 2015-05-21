/*HM_ScriptNS4.js
* HierMenus Version 5
* Copyright (c) 2003 Peter Belesis. All Rights Reserved.
* Originally published and documented at http://www.hiermenuscentral.com/
* Available solely from Jupitermedia Corporation under exclusive license.
* Contact hiermenu@internet.com for more information.
*/
Hi="5.1";HXz=(window.onunload)?window.onunload:function(){return true;};
function HX3(){Hax=true;return HXz();}
window.onunload=HX3;Hj=[
["MenuWidth",150,"number","k"],
["FontFamily","Arial,sans-serif","","l"],
["FontSize",10,"number","m"],
["FontBold",false,"boolean","n"],
["FontItalic",false,"boolean","o"],
["FontColor","black","","p"],
["FontColorOver","white","","q"],
["BGColor","white","","r"],
["BGColorOver","black","","s"],
["ItemPadding",3,"number","t"],
["BorderWidth",2,"number","u"],
["BorderColor","red","","v"],
["BorderStyle","solid","","hf"],
["SeparatorSize",1,"number","w"],
["SeparatorColor","yellow","","gr"],
["ImageDir",HM_ScriptDir,"","x"],
["ImageSrc","HM_More_black_right.gif","image","y"],
["ImageSrcOver","","image","z"],
["ImageSrcLeft","HM_More_black_left.gif","image","A"],
["ImageSrcLeftOver","","image","B"],
["ImageSize",5,"number","C"],
["ImageHorizSpace",0,"number","D"],
["ImageVertSpace",0,"number","gi"],
["KeepHilite",false,"boolean","F"],
["ClickStart",false,"boolean","G"],
["ClickKill",true,"boolean","k3"],
["ChildOverlap",20,"number","I"],
["ChildOffset",10,"number","J"],
["ChildPerCentOver",null,"number","K"],
["TopSecondsVisible",.5,"number","L"],
["ChildSecondsVisible",.3,"number","M"],
["StatusDisplayBuild",1,"boolean","N"],
["StatusDisplayLink",1,"boolean","O"],
["UponDisplay",null,"delayed","P"],
["UponHide",null,"delayed","Q"],
["RightToLeft",false,"boolean","R"],
["CreateTopOnly",0,"boolean","S"],
["NSFontOver",true,"boolean","U"],
["ShowLinkCursor",false,"boolean","T"],
["ScrollEnabled",false,"boolean","V"],
["ScrollOver",false,"boolean","kw"],
["ScrollInterval",20,"number","kv"],
["ScrollBarHeight",16,"number","k2"],
["ScrollBarColor","lightgrey","","k1"],
["ScrollImgSrcTop","HM_More_black_top.gif","image","kz"],
["ScrollImgSrcBot","HM_More_black_bot.gif","image","ky"],
["ScrollImgWidth",9,"number","it"],
["ScrollImgHeight",5,"number","1"],
["ScrollBothBars",false,"boolean","2"],
["ScrollHeightMin",30,"number","3"],
["FramesEnabled",false,"boolean","4"],
["FramesNavFramePos","","","5"],
["FramesMainFrameName","main","","6"],
["WindowPadding",15,"number","7"],
["HighestMenuNumber",100,"number","8"],
["ReloadInterval",200,"number","gj"],
["HoverTimeTop",0,"number","9"],
["HoverTimeTree",0,"number","aa"]
];Hab="HM_Menu";Hac="HM_Item";Had="HM_Array";Function.prototype.gk=true;Function.prototype.gm=false;String.prototype.gk=false;String.prototype.gm=true;String.prototype.gn=false;String.prototype.gl=false;Number.prototype.gm=false;Number.prototype.gk=false;Number.prototype.gn=false;Number.prototype.gl=true;Boolean.prototype.gm=false;Boolean.prototype.gk=false;Boolean.prototype.gn=true;
Boolean.prototype.gl=false;Array.prototype.gp=false;Array.prototype.k6=true;
function HW1(ae){var af=ae[0];var ag=ae[1];var kt=ae[3];var ah="H"+kt;if(typeof window["HM_PG_"+af]=="undefined"){if(typeof window["HM_PG_"+kt]=="undefined"){if(typeof window["HM_GL_"+af]=="undefined"){if(typeof window["HM_GL_"+kt]=="undefined"){window[ah]=ag;}else{window[ah]=window["HM_GL_"+kt];}}else{window[ah]=window["HM_GL_"+af];}}else{window[ah]=window["HM_PG_"+kt];}}else{window[ah]=window["HM_PG_"+af];}ae[0]=ah;ae[1]=window[ah];}
function HW2(ai,aj,ak){var al,am;if(typeof ai=="undefined"||ai==null||(ai.gm&&ai.length==0)){return aj;}if(ak!="delayed"){while(ai.gm){am=ai.indexOf("(");if(am!=-1){al="window."+ai.substr(0,am);if(typeof eval(al)!="undefined"&&eval(al).gk){ai=eval(ai);}}else break;}}while(ai.gk){ai=ai()}switch(ak){case "number":while(ai.gm){ai=eval(ai)}break;case "boolean":while(!ai.gn){ai=(ai.gl)?ai?true:false:eval(ai);}break;case "image":if(Hx)ai=Hx+ai;break;}return ai;}
for(i=0;i<Hj.length;i++){HW1(Hj[i]);window[Hj[i][0]]=HW2(window[Hj[i][0]],null,Hj[i][2]);}
HK=(isNaN(parseFloat(HK)))?null:parseFloat(HK)/100;Han=HM*1000;
function HW3(ar){var ao=false;var ap=(typeof window[ar]=="object");if(ap){var aq=window[ar];if(aq.k6&&aq.length>1){ao=true;if(!aq.gp){while((typeof aq[aq.length-1]!="object")||(!aq[aq.length-1].k6)){aq.length--;}aq.gp=true;}}}return ao;}
if(typeof(Has)=="undefined"){Has=[];for(i=1;i<=H8;i++){if(HW3(Had+i))Has[Has.length]=i;}}
Hat=false;Hg=window;Hav=["permission","access"];Haw=false;Hax=true;Hay=false;
function HW4(){if(Haw)return;if(typeof window!="undefined"&&window.Hbi){for(var i=0;i<Haz;i++){var ba=Hbb[i];clearTimeout(ba.bc);ba.bc=null;}clearTimeout(Hbd);}Hbe=null;Hbf=null;Hbg=null;Hbh=null;Hbb=[];Hbi=false;Hbj=false;Hbd=null;Haz=0;Hbk=5000;Hbl=null;}
HW4();
if(H4){if((parent==self)||(!H5)){H4=false;}}
Layer.prototype.HXb=HWk;Layer.prototype.HXc=HWl;Layer.prototype.HXd=HWo;Layer.prototype.HXg=HWr;Layer.prototype.HXh=HWs;Layer.prototype.HXe=HWp;Layer.prototype.HXf=HWq;Layer.prototype.bm=false;Layer.prototype.isOn=false;Layer.prototype.bc=null;Layer.prototype.bn=null;Layer.prototype.HX8=HWd;Layer.prototype.bo=0;Layer.prototype.child=null;Layer.prototype.bp=false;Layer.prototype.bq=false;Layer.prototype.HXi=HWu;Layer.prototype.HXj=HWv;Layer.prototype.HXl=HWA;Layer.prototype.HXk=HWw;Layer.prototype.br=0;
function HW5(e){Hay=true;HW4();Hbi=HW8(e);Hax=false;Hay=false;Hat=true;if(e)HXu();return Hbi;}
function HW6(e){if(e.target==Hg){HW5();routeEvent(e);}}
function HW7(e){if(typeof(window)=="undefined")return;if(Haw)return;if(e.target==Hg){Hax=true;HW4();routeEvent(e);}else if(e.target==window){Hax=true;Hbt.releaseEvents(Event.LOAD);Hbt.releaseEvents(Event.UNLOAD);routeEvent(e);}}
function HXC(e){HWt();Hg.document.routeEvent(e);}
function HW8(e){Hbt=(H4)?top:window;if(H4){var bs=parent.frames[H6];if(typeof bs=="undefined"){H4=false;Hbt.releaseEvents(Event.LOAD);Hbt.releaseEvents(Event.UNLOAD);}else{Hg=bs;if(e){Hbt.captureEvents(Event.LOAD);Hbt.onload=HW6;Hbt.captureEvents(Event.UNLOAD);Hbt.onunload=HW7;if(HXF()){Hg.location.replace(Hg.location.href);return false;}}}}Hbu=Hg.innerWidth;Hbv=Hg.innerHeight;Hg.onresize=HWN;if(Hk3){Hg.document.captureEvents(Event.MOUSEDOWN);Hg.document.onmousedown=HXC;}else{Hbw=HL*1000;}Hg.Hlc=true;HWa();
return true;}
function HXF(){if((Hg)&&(typeof(Hg.Hlc)=="boolean")&&(Hg.Hlc))return true;else return false;}
function HW9(ix){var c=null;if(Hg){c=Hg[ix];}return c;}
function HWa(){var bx=null;var by=false;var bz=null;for(var t=0;t<Has.length;t++){if(!HW3(Had+Has[t]))continue;Hbe=window[Had+Has[t]];bx=Hbe[0];by=false;for(var i=1;i<Hbe.length;i++){bz=Hbe[i];if(bz[bz.length-1]){by=true;break}}Hbf={k:k=HW2(bx[0],Hk,"number"),ca:ca=HW2(bx[1],null,"delayed"),cb:cb=HW2(bx[2],null,"delayed"),cc:cc=k-(Hu*2),cd:by?(cc-(HC+HD+Ht)):cc,p:p=HW2(bx[3],Hp),q:q=HW2(bx[4],Hq),r:HW2(bx[5],Hr),s:HW2(bx[6],Hs),v:HW2(bx[7],Hv),ce:((ca==null)||(cb==null))?false:HW2(bx[9],false,"boolean"),
cf:cf=HW2(bx[10],false,"boolean"),cg:by?HW2(bx[11],false,"boolean"):false,ch:(!cf||!by)?false:HW2(bx[12],false,"boolean"),ci:by?HW2(bx[13],true,"boolean"):false,cj:by?HW2(bx[14],true,"boolean"):false,P:HW2(bx[15],HP,"delayed"),Q:HW2(bx[16],HQ,"delayed"),R:HW2(bx[17],HR,"boolean"),U:HU?(p!=q):false,G:HW2(bx[18],HG,"boolean"),ck:HW2(bx[19],false,"boolean"),cl:HW2(bx[20],false,"boolean")};Hbg=null;HWc(Has[t]);Hbb[Haz]=Hbf.cm;Haz++;if(Hbf.ce){with(Hbf.cm){moveTo(eval(Hbf.ca),eval(Hbf.cb));zIndex=Hbk;
visibility="show";}}}if(HN)window.status=Haz+" Hierarchical Menu Trees Created";}
function HWb(co){var cn=co;if(Hn)cn=cn.bold();if(Ho)cn=cn.italics();cn="<FONT FACE='"+Hl+"' POINT-SIZE="+Hm+">"+cn+"</FONT>";var cp=cn.fontcolor(Hbf.q);cn=cn.fontcolor(Hbf.p);return[cn,cp];}
function HWc(cq){if(!HW3(Had+cq))return false;Hbe=window[Had+cq];var cr=Hg[Hab+cq];if(!cr){cr=Hg[Hab+cq]=new Layer(Hbf.k,Hg);if(HV){cr.cs=new Layer(Hbf.k,cr);cr.cs.visibility="inherit";}else{cr.cs=cr;}if(Hbg){cr.ct=Hbg;cr.cu=Hbh;cr.cu.child=cr;cr.cv=true;cr.cw=Hbf.cg;cr.cx=Hbf.cj;}else{cr.cw=Hbf.cf;cr.cx=Hbf.ci;}Hbg=cr;Hbg.count=cq;Hbg.tree=Hbf;Hbg.array=Hbe;Hbg.cy=Hbe.length-1;Hbg.bgColor=Hbf.v;Hbg.cz=((Hbg.cv&&Hbf.cl)||(!Hbg.cv&&Hbf.ck));Hbg.onmouseover=HWf;Hbg.onmouseout=HWg;Hbg.da=Hab+cq;Hbg.moveTo(0,0);
}if(!Hbf.cm)Hbf.cm=Hbf.db=Hbg;while(Hbg.bo<Hbg.cy){Hbg.bo++;Hbh=Hg[Hac+cq+"_"+Hbg.bo];if(!Hbh){if(HN)window.status="Creating Hierarchical Menus:"+cq+"/"+Hbg.bo;Hbh=Hg[Hac+cq+"_"+Hbg.bo]=new Layer(Hbf.cc-(Ht*2),Hbg.cs);Hbh.HX8(cq+"_"+Hbg.bo);}if(Hbh.dc&&(!HS||Hbi&&HS)){dd=HWc(cq+"_"+Hbg.bo);if(dd){Hbg=Hbg.ct;Hbe=Hbg.array;}}}Hbg.bo=0;if(Hbg.cw){Hbg.clip.right=Hbg.cs.clip.right=Hbg.de.left+Hbg.de.clip.right+Hu;}else{Hbg.clip.right=Hbg.cs.clip.right=Hbg.de.clip.width+(Hu*2);
}Hbg.clip.bottom=Hbg.cs.clip.bottom=Hbg.de.top+Hbg.de.clip.bottom+Hu;return Hbg;}
function HWd(df){this.menu=Hbg;this.tree=Hbf;this.index=Hbg.bo-1;this.array=Hbe[Hbg.bo];this.dg=this.array[0];this.dh=this.array[1];this.di=HW2(this.array[3],false,"boolean");this.dj=(!this.di&&HW2(this.array[2],true,"boolean"));this.dc=HW2(this.array[4],false,"boolean")&&HW3(Had+df);var dk=HWb(this.dg);this.dl=dk[0];this.dm=dk[1];this.visibility="inherit";this.onmouseover=HWh;this.onmouseout=HWj;this.menu.de=this;this.HX9=HWZ;this.HXa=HWi;this.dn=(this.menu==this.tree.db)?H9:Haa;this.k4=null;
eval(this.id+"=this");this.da=Hac+df;this.G=this.dc&&this.tree.G&&(this.tree.ce&&(this.tree.cm==this.menu));if(this.G){this.captureEvents(Event.MOUSEUP);this.onmouseup=this.HXa;this.dh="";}else{if(this.dh){this.captureEvents(Event.MOUSEUP);this.onmouseup=HWm;}}this.dp=new Layer(Hbf.cd-(Ht*2),this);with(this.dp){document.write(this.di?this.dm:this.dl);document.close();if(Hbf.R&&this.menu.cx&&(!this.menu.cw||(this.menu.cw&&(!this.menu.cz||(this.menu.cz&&this.dc)))))left=Ht+HC+HD;visibility="inherit";
}if(this.menu.cz){this.cd=this.dp.document.width;this.cc=this.cd+(Ht*2);if(Hbg.cx){if(!this.menu.cw||this.dc){this.cc+=(Ht+HC+HD);}}}else{this.cc=this.tree.cc;this.cd=this.tree.cd;}if(this.menu.cw){if(this.index)this.left=this.siblingBelow.left+this.siblingBelow.clip.width+Hw;else this.left=(Hu+Ht);this.top=(Hu+Ht);}else{this.left=(Hu+Ht);if(this.index)this.top=this.siblingBelow.top+this.siblingBelow.clip.height+Hw;else this.top=(Hu+Ht);}this.clip.top=this.clip.left=-Ht;this.clip.right=this.cc-Ht;
this.bgColor=this.di?this.tree.s:this.tree.r;if(this.tree.U){if(!this.di){this.dq=new Layer(this.cd,this);with(this.dq){if(Hbf.R&&this.menu.cx&&(!this.menu.cw||(this.menu.cw&&(!this.menu.cz||(this.menu.cz&&this.dc)))))left=Ht+HC+HD;visibility="hide";}}}this.dr=this.dp.document.height+(Ht*2);if(this.menu.cw){if(this.index){var dt=this.siblingBelow.clip.height;this.dr=Math.max(dt,this.dr);if(this.dr>dt){var du=this.siblingBelow;while(du!=null){du.clip.height=this.dr;du=du.siblingBelow;
}}}}this.clip.height=this.dr;if(!this.menu.cw&&this.menu.cz){this.ds=this.clip.width;if(this.index){var dv=this.siblingBelow.clip.width;this.ds=Math.max(dv,this.ds);du=this.siblingBelow;while(du!=null){du.clip.width=this.ds;du.eb.clip.width=this.ds;if(du.dc){du.dw=du.clip.right+du.dy;du.dx=Ht+du.dz;du.ea=du.cc+du.dz+du.dy;du.I=(parseInt((HK!=null)?(HK*du.ea):HI));}if(du.hg&&!Hbf.R){du.hg.left=this.ds-(Ht*2)-HC-HD;}du=du.siblingBelow;}}this.clip.width=this.ds;}this.eb=new Layer(100,this);
with(this.eb){left=top=-Ht;clip.width=this.clip.width;clip.height=this.clip.height;visibility="inherit";}this.ec=false;if(this.dc&&Hbg.cx){this.ed=this.tree.R?HA:Hy;if(!this.tree.R){this.ec=(Hz&&(Hz!=Hy));}else{this.ec=(HB&&(HB!=HA));}if(this.ec){this.ee=this.tree.R?HB:Hz;if(!this.ee)this.ee=this.ed;if(this.di)this.ed=this.ee;}this.hg=new Layer(HC,this);with(this.hg){document.write("<IMG SRC='"+this.ed+"' WIDTH="+HC+" VSPACE=0 HSPACE=0 BORDER=0>");document.close();moveBelow(this.dp);
left=(Hbf.R)?HD:this.clip.width-(Ht*2)-HC-HD;top=Hgi;visibility="inherit";}this.ef=this.hg.document.images[0];}if(this.dc){this.dy=(!this.menu.cw||(this.menu.cw&&this.hi))?Hu:Hw;this.dw=this.clip.right+this.dy;this.dz=(!this.menu.cw||(this.menu.cw&&this.index==0))?Hu:Hw;this.dx=Ht+this.dz;this.ea=this.cc+this.dz+this.dy;this.I=(parseInt((HK!=null)?(HK*this.ea):HI));}}
function HM_f_PopUp(eg,e){if(!Hat)return;if(Hax)return;if(!Hay&&!Hbi){if(!HW5())return;}eg=eg.replace("elMenu",Hab);var eh=Hg[eg];if(!eh)return;if(eh.tree.G){var ei=e.target;var ej="return HWe(event,'"+eg+"');";ei.onclick=new Function("event",ej);}else HWe(e,eg);}
function HWe(e,eg){if(!Hat||!Hbi)return true;if(Hax)return true;var eh=Hg[eg];if(!eh)return true;Hbg=eh;if(Hbg.tree.G&&e.type!="click")return true;HWn();Hbg.cv=false;Hbg.tree.db=Hbg;if(!H5){var mouse_x_position=e.pageX;var mouse_y_position=e.pageY;}else{switch(H5){case "left":var mouse_x_position=Hg.pageXOffset;var mouse_y_position=(e.pageY-window.pageYOffset)+Hg.pageYOffset;break;case "top":var mouse_x_position=(e.pageX-window.pageXOffset)+Hg.pageXOffset;var mouse_y_position=Hg.pageYOffset;break;
case "bottom":var mouse_x_position=(e.pageX-window.pageXOffset)+Hg.pageXOffset;var mouse_y_position=Hg.pageYOffset+Hg.innerHeight;break;case "right":var mouse_x_position=(Hg.pageXOffset+Hg.innerWidth);var mouse_y_position=(e.pageY-window.pageYOffset)+Hg.pageYOffset;break;case "left":default:var mouse_x_position=Hg.pageXOffset;var mouse_y_position=(e.pageY-window.pageYOffset)+Hg.pageYOffset;break;}}Hbg.xPos=(Hbg.tree.ca!=null)?eval(Hbg.tree.ca):mouse_x_position;
Hbg.yPos=(Hbg.tree.cb!=null)?eval(Hbg.tree.cb):mouse_y_position;Hbg.HXc();Hbg.moveTo(Hbg.xPos,Hbg.yPos);Hbg.isOn=true;Hbg.HXb(true);return false;}
function HWf(){if(Hax)return;if(!this.tree.db)this.tree.db=this;if(this.tree.db==this)HWn(this);this.isOn=true;Hbj=true;Hbg=this;if(this.bc)clearTimeout(this.bc);}
function HWg(){if(Hax)return;this.isOn=false;Hbj=false;if(HO)window.status="";var Items=this.cs.layers;var ek=Items.length;var el;for(var i=0;i<ek;i++){el=Items[i];clearTimeout(el.k4);el.k4=null;}if(!Hk3){clearTimeout(Hbd);Hbd=null;var en="var Hhp=HW9('"+this.da+"');if(Hhp&&Hhp.HXd)Hhp.HXd()";Hbd=setTimeout(en,Han);}}
function HWZ(){if(!this.child){Hbf=this.tree;Hbg=this.menu;Hbh=this;this.child=HWc(this.menu.count+"_"+(this.index+1));this.tree.cm=this.menu;this.tree.db=this.menu;Hbg=this.menu;}if(this.menu.hidden)return;if(this.tree.ch&&(this.menu==this.tree.cm)){this.child.xPos=this.pageX+this.clip.left-Hu;this.child.yPos=this.menu.top+this.menu.clip.height-Hu;}else{this.oL=this.pageX;this.child.offsetWidth=this.child.clip.width;this.oT=this.pageY+this.clip.top-Hu;
if(this.tree.R){this.child.xPos=((this.oL-this.dx)+this.I)-this.child.offsetWidth;}else{this.child.xPos=(this.oL+this.dw)-this.I;}this.child.yPos=this.oT+HJ+Hu;}if(!this.tree.ch||this.menu!=this.tree.cm)this.child.HXc();this.child.moveTo(this.child.xPos,this.child.yPos);this.menu.bm=true;this.menu.eo=this.child;this.child.HXb(true);}
function HWh(){if(Hax)return;var ep=this.menu;var eq=this.tree.U;if(HF){if(ep.bn&&ep.bn!=this&&ep.bn.dj){with(this.menu.bn){bgColor=this.tree.r;if(eq){dp.visibility="inherit";dq.visibility="hide";}}if(this.menu.bn.ec)this.menu.bn.ef.src=this.menu.bn.ed;}if(ep!=this.tree.db){var er=ep.ct;if(er.bn&&er.bn.dj){with(er.bn){bgColor=this.tree.r;if(eq){dp.visibility="inherit";dq.visibility="hide";}}if(er.bn.ec)er.bn.ef.src=er.bn.ed;}var kk=ep.cu;if(kk.dj){with(kk){bgColor=this.tree.s;if(eq){dq.visibility="inherit";
dp.visibility="hide";}}if(kk.ec)kk.ef.src=kk.ee;}er.bn=kk;}}if(this.dj){this.bgColor=this.tree.s;if(this.tree.U){if(!this.dq.bp){this.dq.document.write(this.dm);this.dq.document.close();this.dq.bp=true;}this.dp.visibility="hide";this.dq.visibility="inherit";}if(this.ec)this.ef.src=this.ee;}if(HO)window.status=this.dh;this.menu.bn=this;var Items=ep.cs.layers;var ek=Items.length;var el;for(var i=0;i<ek;i++){el=Items[i];clearTimeout(el.k4);el.k4=null;}var en="if(Hg&&Hg['"+this.da+"']&&";
en+="Hg['"+this.da+"'].HXa)";en+="Hg['"+this.da+"'].HXa(true)";if(this.dn>0)this.k4=setTimeout(en,this.dn);else this.HXa(true);}
function HWi(onover){if(Hax)return;onover=onover.gn;if(this.menu.bm){if(this.menu.eo==this.child&&this.menu.eo.bm)this.menu.eo.HXh(this);else this.menu.HXh(this);}if((this.G&&!onover)||(this.dc&&!this.G))this.HX9();}
function HWj(){if(Hax)return;if(this.dj){with(this){bgColor=this.tree.r;if(this.tree.U){dp.visibility="inherit";dq.visibility="hide";}if(this.ec)this.ef.src=this.ed;}}if(!Hk3&&!Hbj){clearTimeout(Hbd);Hbd=null;var en="var Hes=HW9('"+this.menu.da+"');if(Hes&&Hes.HXd)Hes.HXd()";Hbd=setTimeout(en,Han);}}
function HWk(on){if(!(this.tree.ce&&(this.tree.cm==this))){if(!this.cv||(this.cv&&this.tree.ce&&(this.tree.cm==this.ct))){if(on==this.hidden)eval(on?this.tree.P:this.tree.Q);}if(on)this.zIndex=++Hbk;this.visibility=on?"show":"hide";}if(HF&&this.bn&&this.bn.dj){with(this.bn){bgColor=this.tree.r;if(this.tree.U){dp.visibility="inherit";dq.visibility="hide";}}if(this.bn.ec)this.bn.ef.src=this.bn.ed;}this.bn=null;}
function HWl(){var et=H7;var eu=Hg.pageXOffset;var ev=Hg.pageYOffset;var ew=Hg.innerWidth;var ex=Hg.innerHeight;var ey=(eu+ew)-et;var ez=(ev+ex)-et;var Fa=this.xPos;var Fb=Fa+this.clip.width;if(this.yPos<ev)this.yPos=ev;var Fc=this.yPos+this.clip.height;if(this.cv){var Fd=this.cu.pageX;this.offsetWidth=this.clip.width;}if(Fb>ey){if(this.cv){this.xPos=((Fd-this.cu.dx)+this.cu.I)-this.offsetWidth;}else{var dif=Fb-ey;this.xPos-=dif;}this.xPos=Math.max(5,this.xPos);}if(Fc>ez){var dif=Fc-ez;this.yPos-=dif;
}if(Fa<eu){if(this.cv){this.xPos=(Fd+this.cu.dw)-this.cu.I;Fb=this.xPos+this.offsetWidth;if(Fb>ey)this.xPos-=(Fb-ey);}else{this.xPos=5}}if(HV&&(this.yPos<ev))this.HXi(ev);}
function HWm(){if(Hax)return;if(this.dh.indexOf("javascript:")!=-1)eval(this.dh);else{HWn();Hg.location.href=this.dh;}}
function HM_f_PopDown(eg){if(!Hat||!Hbi)return;if(Hax)return;eg=eg.replace("elMenu",Hab);var Fe=Hg[eg];if(!Fe)return;if(Hbj&&(Hbg==Fe))return;Fe.isOn=false;if(!Hk3)Fe.HXe();}
function HWn(Ff){clearTimeout(Hbd);Hbd=null;for(var i=0;i<Haz;i++){var ba=Hbb[i].tree.db;if(ba==Ff)continue;ba.isOn=false;if(ba.bm)ba.HXh();ba.HXb(false);}}
function HWo(){Hbd=null;if(Hbj)return;if(Hax)return;if(this.bm)this.HXh();this.HXg();}
function HWp(){var en="var HFg=HW9('"+this.da+"');if(HFg&&HFg.HXf)HFg.HXf()";(Hk3)?this.HXf():(this.bc=setTimeout(en,Hbw));}
function HWq(){this.bc=null;if(Hax)return;if(!this.isOn&&!Hbj)this.HXb(false);}
function HWr(){var eh=this;while(eh.cv){eh.HXb(false);eh.ct.isOn=false;eh.ct.bm=false;eh=eh.ct;}eh.HXe();}
function HWs(Fh,forced){var eh=this.eo;while(eh.bm){eh.eo.HXb(false);eh.bm=false;eh=eh.eo;}if(forced||((!this.isOn||!Fh.dc||this.eo!=Fh.child))){this.eo.HXb(false);this.bm=false;}}
function HWt(){if(Hax)return;if(!Hbj&&Hbg!=null&&!Hbg.isOn)HWn();}
function HWu(Fi){if(!H4||H5!="top"){this.yPos=(Fi+H7);var Fj=(H7*2);}else{this.yPos=Fi;var Fj=H7;}var ex=Hg.innerHeight;this.clip.height=(Math.max(ex,((Hk2*2)+H3))-Fj);if(!this.bq)this.HXj();this.HXl();}
function HWv(){var Fk=this.clip.width;var Fl=(Fk-(Hu*2));var Fm=new Layer(Fk,this);with(Fm){top=0;left=0;clip.width=Fk;clip.height=Hk2;visibility="hide";bgColor=this.tree.v;}var Fn=new Layer(Fl,Fm);with(Fn){top=Hu;left=Hu;clip.width=Fl;clip.height=Hk2-(Hu*2);visibility="inherit";bgColor=Hk1;}var Fo=new Layer(100,Fn);with(Fo){visibility="inherit";top=(Fn.clip.height-H1)/2;left=(Fl-Hit)/2;document.write("<IMG VSPACE=0 HSPACE=0 SRC='"+Hkz+"'>");document.close();}var Fp=new Layer(Fk,this);with(Fp){top=0;left=0;
clip.width=Fk;clip.height=Hk2;visibility="hide";bgColor=this.tree.v;}var Fq=new Layer(Fl,Fp);with(Fq){top=Hu;left=Hu;clip.width=Fl;clip.height=Hk2-(Hu*2);visibility="inherit";bgColor=Hk1;}var Fr=new Layer(100,Fq);with(Fr){visibility="inherit";top=(Fq.clip.height-H1)/2;left=(Fl-Hit)/2;document.write("<IMG VSPACE=0 HSPACE=0 SRC='"+Hky+"'>");document.close();}Fm.menu=this;this.Fs=Fm;Fp.menu=this;this.Ft=Fp;if(Hkw){this.Fs.onmouseover=HXA;this.Fs.onmouseout=HWx;this.Ft.onmouseover=HXB;this.Ft.onmouseout=HWx;
}else{this.Fs.captureEvents(Event.MOUSEDOWN);this.Fs.onmousedown=HXA;this.Ft.captureEvents(Event.MOUSEDOWN);this.Ft.onmousedown=HXB;}this.bq=true;}
function HXA(){Hbg=this.menu;Hbg.HXk(true);}
function HXB(){Hbg=this.menu;Hbg.HXk(false);}
function HWw(up){HWx();if(Hax)return false;if(this.bm)this.HXh(false,true);Hbl=setInterval("HWz("+up+")",Hkv);if(!Hkw){Hg.captureEvents(Event.MOUSEUP);Hg.onmouseup=HWy;}return false;}
function HWx(){clearInterval(Hbl);Hbl=null;}
function HWy(){HWx();Hg.releaseEvents(Event.MOUSEUP);Hg.onmouseup=null;}
function HWz(up){if(Hax){HWy();return;}var Fu=Hbg.cs;if(up){Fu.br+=10;}else{Fu.br-=10;}Hbg.HXl();}
function HWA(){var Fu=this.cs;var Fv=this.clip.height;var Fw=Fu.clip.height;var Fx=(Fv-Fw);var Fy=H2?(Hk2-Hu):0;if(!Fx){this.Ft.visibility="hide";this.Fs.visibility="hide";Fu.top=Fu.br=0;return;}if(H2)Fx-=(Fy*2);if(Fu.br<=Fx){Fu.br=Fx;HWx();this.Ft.top=(Fv-Hk2);if(!H2)this.Ft.visibility="hide";}else{this.Ft.top=(Fv-Hk2);this.Ft.visibility="inherit";if(H2)this.Fs.visibility="inherit";}if(Fu.br>=0){Fu.br=0;HWx();if(!H2)this.Fs.visibility="hide";}else{this.Fs.visibility="inherit";
if(H2)this.Ft.visibility="inherit";}Fu.top=Fu.br+Fy;}
popUp=HM_f_PopUp;popDown=HM_f_PopDown;Hbt=(H4)?top:window;
if(Hbt.Hlb){Hbt=window;}
else Hbt.Hlb=true;HXu=(Hbt.onload)?Hbt.onload:function(){return true};Hbt.onload=HW5;
function HWN(){if(Hg.innerWidth==Hbu&&Hg.innerHeight==Hbv)return;Haw=true;Hbt.history.go(0);}
function HWB(a,b,c){var ga=arguments[0].toLowerCase();var gb=false;for(var i=0;i<Hav.length;i++){if(ga.indexOf(Hav[i])!=-1){gb=true;Hax=false;Hay=false;Hat=true;break;}}if(gb)return true;else return HXv(a,b,c);}
HXv=(window.onerror)?window.onerror:function(){return false};window.onerror=HWB;
