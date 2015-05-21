/*HM_ScriptIE4.js
* HierMenus Version 5
* Copyright (c) 2003 Peter Belesis. All Rights Reserved.
* Originally published and documented at http://www.hiermenuscentral.com/
* Available solely from Jupitermedia Corporation under exclusive license.
* Contact hiermenu@internet.com for more information.
*/
Hi="5.1";Hj=[
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
HK=(isNaN(parseFloat(HK)))?null:parseFloat(HK)/100;Han=HM*1000;H7=0;
function HW3(ar){var ao=false;var ap=(typeof eval("window."+ar)=="object");if(ap){var aq=eval(ar);if(aq.k6&&aq.length>1){ao=true;if(!aq.gp){while((typeof aq[aq.length-1]!="object")||(!aq[aq.length-1].k6)){aq.length--;}aq.gp=true;}}}return ao;}
if(typeof(Has)=="undefined"){Has=[];for(i=1;i<=H8;i++){if(HW3(Had+i))Has[Has.length]=i;}}
Hat=false;Hg=window;Hav=["permission","access"];Hay=false;Hax=true;Hk7=false;Hjj=true;Hjk=null;
function HW4(){Hbe=null;Hbf=null;Hbg=null;Hbh=null;Hku=null;Hbb=[];Hbi=false;Hbj=false;Hbd=null;Haz=0;Hbk=5000;Hbl=null;Hgq=null;}
HW4();
if(H4){if((parent==self)||(!H5)){H4=false;}}
function HWC(){this.obj=eval(this.id+"Obj");for(temp in this.obj){this[temp]=this.obj[temp]}}
function HW5(){Hay=true;HW4();Hbi=HW8();Hax=false;Hat=true;Hjj=false;Hay=false;if(!Hk7){Hk7=true;HXu();}return Hbi;}
function HXD(){return true;}
function HXC(){HWt();return HXw();}
function HW8(){if(H4){var bs=parent.frames[H6];if(typeof bs=="undefined"){H4=false;}else{Hg=bs;if(HXF()){var iu=Hg.document.body;iu.onunload=HWO;HXy=HXD;Hg.location.replace(Hg.location.href);return false;}}}if(typeof Hg.document=="unknown")return false;if(Hg.document.readyState!="complete")return false;if((typeof(Hg.document.body)=="undefined")||(Hg.document.body==null))return false;if(Hk3){HXw=(Hg.document.onmousedown)?Hg.document.onmousedown:HXD;Hg.document.onmousedown=HXC;}else{Hbw=HL*1000;
}HXx=(window.onresize)?window.onresize:HXD;window.onresize=HWN;var iu=Hg.document.body;if(H4){HXy=(iu.onunload)?iu.onunload:HXD;iu.onunload=HWO;}Hg.Hlc=true;HWa();return true;}
function HW9(ix){var c=null;if((Hg)&&(Hg.document)){c=Hg.document.all(ix);}return c;}
function HWa(){var bx=null;var by=false;var bz=null;for(var t=0;t<Has.length;t++){if(!HW3(Had+Has[t]))continue;Hbe=eval(Had+Has[t]);bx=Hbe[0];by=false;for(var i=1;i<Hbe.length;i++){bz=Hbe[i];if(bz[bz.length-1]){by=true;break}}Hbf={k:k=HW2(bx[0],Hk,"number"),ca:ca=HW2(bx[1],null,"delayed"),cb:cb=HW2(bx[2],null,"delayed"),cc:k-(Hu*2),p:HW2(bx[3],Hp),q:HW2(bx[4],Hq),r:HW2(bx[5],Hr),s:HW2(bx[6],Hs),v:HW2(bx[7],Hv),gr:HW2(bx[8],Hgr),ce:((ca==null)||(cb==null))?false:HW2(bx[9],false,"boolean"),cf:cf=HW2(bx[10],
false,"boolean"),cg:by?HW2(bx[11],false,"boolean"):false,ch:(!cf||!by)?false:HW2(bx[12],false,"boolean"),ci:by?HW2(bx[13],true,"boolean"):false,cj:by?HW2(bx[14],true,"boolean"):false,P:HW2(bx[15],HP,"delayed"),Q:HW2(bx[16],HQ,"delayed"),R:HW2(bx[17],HR,"boolean"),G:HW2(bx[18],HG,"boolean"),ck:HW2(bx[19],false,"boolean"),cl:HW2(bx[20],false,"boolean")};Hbg=null;HWc(Has[t]);Hbb[Haz]=Hbf.cm;Haz++;if(Hbf.ce){with(Hbf.cm){Hbf.cm.xPos=eval(Hbf.ca);Hbf.cm.yPos=eval(Hbf.cb);moveTo(Hbf.cm.xPos,Hbf.cm.yPos);
style.zIndex=Hbk;var en="if(Hg&&Hg."+Hbf.cm.id+"&&";en+="Hg."+Hbf.cm.id+".HXq)";en+="Hg."+Hbf.cm.id+".HXq(true)";setTimeout(en,10);}}}if(HN)window.status=Haz+" Hierarchical Menu Trees Created";}
function HWD(iv,disptext,hasmore){var gs=Hbg.cw?(gv.hi)?(Hbf.k-Hu-Hw):(Hbf.k-Hu):Hbf.cc;var cn="<DIV ID='"+iv+"' STYLE='position:absolute;width:"+gs+"px'>";if(Hbg.cx){var gt=(Ht*2)+HC+HD;}if(hasmore&&Hbg.cx){var jb=Hbf.R?HA:Hy;var gu="top:"+(Ht+Hgi)+"px;width:"+HC+"px;";var jc="<IMG ID='HM_ImMore' STYLE='position:absolute;"+gu+"' SRC='"+jb+"' HSPACE=0 VSPACE=0 BORDER=0>";cn+=jc;}cn+=disptext+"</DIV>";return cn;}
function HWE(iv,df){this.tree=Hbf;this.HXm=HWd;this.index=Hbg.bo-1;this.hi=(Hbg.bo==Hbg.cy);this.array=Hbg.array[Hbg.bo];this.dg=this.array[0];this.dh=this.array[1];this.di=HW2(this.array[3],false,"boolean");this.dj=(!this.di&&HW2(this.array[2],true,"boolean"));this.dc=HW2(this.array[4],false,"boolean")&&HW3(Had+df);this.jd=this.dc?(Hab+df):null;this.child=null;this.onmouseover=HWh;this.onmouseout=HWj;this.HXp=HWI;this.gz=HWD(iv,this.dg,this.dc);this.HXa=HWi;this.dn=(this.menu==this.tree.db)?H9:Haa;
this.HX9=HWZ;this.I=null;}
function HWF(cq){var ItemIDSuffix=cq+"_"+Hbg.bo;var LayerID=Hac+ItemIDSuffix;var iw=LayerID+"Obj";eval(iw+"=new Object()");gv=eval(iw);gv.HXn=HWE;gv.HXn(LayerID,ItemIDSuffix);return gv;}
function HWG(ix){var gw;var LayerID=ix;var iw=LayerID+"Obj";eval(iw+"=new Object()");gw=eval(iw);return gw;}
function HWc(cq){if(!HW3(Had+cq))return false;Hbe=eval(Had+cq);var cr=Hg.document.all(Hab+cq);if(!cr){cr=HWG(Hab+cq);cr.array=Hbe;cr.tree=Hbf;if(Hbg){cr.ct=Hbg;cr.cu=Hbg.gx;cr.cu.child=cr;cr.cv=true;cr.cw=Hbf.cg;cr.cx=Hbf.cj;}else{cr.cw=Hbf.cf;cr.cx=Hbf.ci;}Hbg=cr;Hbg.bo=0;Hbg.cy=Hbg.array.length-1;Hbg.HXb=HWk;Hbg.HXc=HWl;Hbg.onmouseover=HWf;Hbg.onmouseout=HWg;Hbg.HXd=HWo;Hbg.HXg=HWr;Hbg.HXh=HWs;Hbg.HXe=HWp;Hbg.HXf=HWq;Hbg.count=cq;Hbg.bm=false;Hbg.isOn=false;Hbg.bc=null;Hbg.bn=null;Hbg.HXo=HWH;Hbg.hn=false;
Hbg.HXq=HWJ;Hbg.onselectstart=HWL;Hbg.moveTo=HWK;Hbg.cz=((Hbg.cv&&Hbf.cl)||(!Hbg.cv&&Hbf.ck));Hbg.gy="<DIV ID='"+Hab+cq+"' STYLE='position:absolute;visibility:hidden;width:"+Hbf.k+"px'>";if(HV){Hbg.gy+="<DIV STYLE='position:absolute;visibility:inherit;overflow:hidden;left:0;top:0;width:100%'>";}}while(Hbg.bo<Hbg.cy){Hbg.bo++;Hbh=Hg.document.all(Hac+cq+"_"+Hbg.bo);if(!Hbh){if(HN)window.status="Creating Hierarchical Menus:"+cq+"/"+Hbg.bo;Hbg.gx=HWF(cq);Hbg.gy+=Hbg.gx.gz;
}if(Hbg.gx.dc&&(!HS||Hbi&&HS)){dd=HWc(cq+"_"+Hbg.bo);if(dd){Hbg=Hbg.ct;}}}var ha=HV?"</DIV></DIV>":"</DIV>";Hg.document.body.insertAdjacentHTML("BeforeEnd",Hbg.gy+ha);hc=Hg.document.all(Hab+cq);hc.HWC=HWC;hc.HWC();Hbg=hc;if(!Hbg.cv)Hbf.cm=Hbf.db=Hbg;Hbg.HXo();Hbg.bq=false;Hbg.HXi=HWu;Hbg.HXj=HWv;Hbg.HXk=HWw;Hbg.HXl=HWA;Hbg.hd=false;Hbg.cs=HV?Hbg.children(0):Hbg;Hbg.cs.top=0;Hbg.items=Hbg.cs.children;Hbg.de=Hbg.items[Hbg.items.length-1];for(var i=0;i<Hbg.items.length;i++){var it=Hbg.items[i];
it.siblingBelow=i>0?Hbg.items[i-1]:null;it.HWC=HWC;it.HWC();it.HXm(i+1);}Hbg.moveTo(0,0);return Hbg;}
function HWH(){with(this.style){borderWidth=Hu+"px";borderColor=Hbf.v;borderStyle=Hhf;overflow="hidden";cursor="default";}}
function HWI(){with(this.style){backgroundColor=(this.di)?Hbf.s:Hbf.r;color=(this.di)?Hbf.q:Hbf.p;font=((Hn)?"bold ":"normal ")+Hm+"pt "+Hl;padding=Ht+"px";fontStyle=(Ho)?"italic":"normal";overflow="hidden";pixelWidth=Hbf.cc;if((this.menu.cx&&(!this.menu.cz||(this.menu.cz&&this.tree.R&&!this.menu.cw)))||(this.menu.cz&&this.hg)){var gt=(Ht*2)+HC+HD;if(this.tree.R)paddingLeft=gt+"px";else paddingRight=gt+"px";}if(!this.hi){var iy=Hw+"px solid "+this.tree.gr;if(this.menu.cw)borderRight=iy;else borderBottom=iy;
}if(this.menu.cw){pixelTop=0;if(this.menu.cz){this.hh=this.scrollWidth;if(this.hi)pixelWidth=this.hh;else pixelWidth=(this.hh+Hw);pixelLeft=this.index?(this.siblingBelow.style.pixelLeft+this.siblingBelow.style.pixelWidth):0;if(this.hi){hj=pixelLeft+pixelWidth;this.menu.style.pixelWidth=this.menu.cs.style.pixelWidth=hj+(Hu*2);}}else{if(this.hi)pixelWidth=(Hbf.k-Hu-Hw);else pixelWidth=(Hbf.k-Hu);pixelLeft=(this.index*(Hbf.k-Hu));var hj=pixelLeft+pixelWidth;
this.menu.style.pixelWidth=this.menu.cs.style.pixelWidth=hj+(Hu*2);}}else{pixelLeft=0;}}}
function HWJ(iz){if(this.cw){var hk=0;for(i=0;i<this.items.length;i++){var el=this.items[i];if(el.index){var dt=el.siblingBelow.scrollHeight;hk=Math.max(hk,dt);}else{hk=el.scrollHeight;}}for(i=0;i<this.items.length;i++){var el=this.items[i];el.style.pixelHeight=hk;if(el.hg){if(this.tree.R){el.hg.style.pixelLeft=(Ht+HD);}else{el.hg.style.pixelLeft=el.style.pixelWidth-((el.hi?0:Hw)+Ht+HD+HC);}}}this.style.pixelHeight=this.cs.style.pixelHeight=(hk+(Hu*2));}else{if(this.cz){var hl=0;for(i=0;i<this.items.length;
i++){var el=this.items[i];el.style.pixelWidth=el.scrollWidth;hl=i?Math.max(hl,el.style.pixelWidth):el.style.pixelWidth;}for(i=0;i<this.items.length;i++){this.items[i].style.pixelWidth=hl;}this.style.pixelWidth=this.cs.style.pixelWidth=hl+(Hu*2);}for(i=0;i<this.items.length;i++){var el=this.items[i];if(el.index){var dt=(el.siblingBelow.scrollHeight+Hw);el.style.pixelTop=el.siblingBelow.style.pixelTop+dt;}else el.style.pixelTop=0;if(el.hg){if(this.tree.R){el.hg.style.pixelLeft=(Ht+HD);
}else{el.hg.style.pixelLeft=el.style.pixelWidth-(Ht+HD+HC);}}}this.style.pixelHeight=this.cs.style.pixelHeight=(el.style.pixelTop+el.scrollHeight+(Hu*2));}this.hm=this.style.pixelHeight;this.hn=true;if(iz)this.style.visibility="visible";}
function HWd(ho){this.menu=HV?this.parentElement.parentElement:this.parentElement;this.G=this.dc&&this.tree.G&&(this.tree.ce&&(this.tree.cm==this.menu));if(this.G){this.dh="";this.onclick=this.HXa;}if(this.dc){if(this.menu.cx){this.hg=this.children("HM_ImMore");if(!this.tree.R){this.ec=(Hz&&(Hz!=Hy));}else{this.ec=(HB&&(HB!=HA));}if(this.ec){this.ed=this.tree.R?HA:Hy;this.ee=this.tree.R?HB:Hz;if(!this.ee)this.ee=this.ed;if((this.di)&&(this.hg.src!=this.ee))this.hg.src=this.ee;
}}this.child=Hg.document.all(this.jd);if(this.child){this.child.ct=this.menu;this.child.cu=this;}}if(this.dh&&!this.G){this.onclick=HWm;if(HT)this.style.cursor="hand";}this.HXp();}
function HM_f_PopUp(eg){if(!Hat)return;if(Hax)return;if(!Hay&&!Hbi){if(!HW5())return;}eg=eg.replace("elMenu",Hab);var eh=Hg.document.all(eg);if(!eh)return;if(eh.tree.G){var ej="return HWe('"+eg+"');";var ei=event.srcElement;ei.onclick=new Function(ej);}else return HWe(eg);}
function HWe(eg){if(!Hat||!Hbi)return true;if(Hax)return true;var eh=Hg.document.all(eg);if(!eh)return true;Hbg=eh;if(Hbg.tree.G&&event.type!="click")return true;var mouse_x_position,mouse_y_position;HWn();Hbg.cv=false;Hbg.tree.db=Hbg;if(!H4){Hbg.mouseX=mouse_x_position=(event.clientX+document.body.scrollLeft);Hbg.mouseY=mouse_y_position=(event.clientY+document.body.scrollTop);}else{switch(H5){case "top":Hbg.mouseX=mouse_x_position=(event.clientX+Hg.document.body.scrollLeft);
Hbg.mouseY=mouse_y_position=(Hg.document.body.scrollTop);break;case "bottom":Hbg.mouseX=mouse_x_position=(event.clientX+Hg.document.body.scrollLeft);Hbg.mouseY=mouse_y_position=(Hg.document.body.scrollTop+Hg.document.body.clientHeight);break;case "right":Hbg.mouseX=mouse_x_position=(Hg.document.body.scrollLeft+Hg.document.body.clientWidth);Hbg.mouseY=mouse_y_position=(event.clientY+Hg.document.body.scrollTop);break;case "left":default:Hbg.mouseX=mouse_x_position=(Hg.document.body.scrollLeft);
Hbg.mouseY=mouse_y_position=(event.clientY+Hg.document.body.scrollTop);break;}}Hbg.ir=Hbg.xPos=(Hbg.tree.ca!=null)?eval(Hbg.tree.ca):mouse_x_position;Hbg.is=Hbg.yPos=(Hbg.tree.cb!=null)?eval(Hbg.tree.cb):mouse_y_position;if(!Hbg.hn)Hbg.HXq(false);if(Hbg.bq){Hbg.style.pixelHeight=Hbg.hm;Hbg.HXl();}Hbg.HXc();Hbg.moveTo(Hbg.xPos,Hbg.yPos);Hbg.isOn=true;Hbg.HXb(true);return false;}
function HWf(){if(Hax)return;if(!this.tree.db){this.tree.db=this;}if(this.tree.db==this)HWn(this);this.isOn=true;Hbj=true;Hbg=this;if(HV&&(Hku!=Hbg))HWx();if(this.bc)clearTimeout(this.bc);}
function HWg(){if(Hax)return;if(Hg.event.srcElement.contains(Hg.event.toElement))return;this.isOn=false;Hbj=false;if(HO)window.status="";var Items=this.cs.children;var ek=Items.length;var el;for(var i=0;i<ek;i++){el=Items[i];clearTimeout(el.k4);el.k4=null;}if(!Hk3){clearTimeout(Hbd);Hbd=null;var en="var hp=HW9('"+this.id+"');if(hp&&hp.HXd)hp.HXd()";Hbd=setTimeout(en,Han);}}
function HWZ(){if(!this.child){Hbf=this.tree;Hbg=this.menu;Hbh=this;this.child=HWc(this.menu.count+"_"+(this.index+1));this.tree.cm=this.menu;this.tree.db=this.menu;this.child.cu=this;Hbf=this.tree;Hbg=this.menu;Hbh=this;}if(!this.child.hn)this.child.HXq(false);if(this.menu.style.visibility=="hidden")return;if(this.tree.ch&&(this.menu==this.tree.cm)){this.child.xPos=this.menu.style.pixelLeft+this.style.pixelLeft;this.child.yPos=this.menu.style.pixelTop+this.menu.offsetHeight-(Hu);
}else{if(this.I==null){this.dw=this.style.pixelWidth;if(!this.menu.cw||(this.menu.cw&&this.hi))this.dw+=Hu;this.dx=(!this.menu.cw||(this.menu.cw&&this.index==0))?Hu:Hw;this.I=(parseInt((HK!=null)?(HK*this.dw):HI));}this.oL=this.menu.style.pixelLeft+this.offsetLeft+Hu;this.oT=this.menu.style.pixelTop+this.offsetTop;if(HV){this.oT+=this.menu.cs.top;if(H2&&this.menu.hd)this.oT+=Hk2;}if(this.tree.R){this.child.xPos=((this.oL-this.dx)+this.I)-this.child.style.pixelWidth;
}else{this.child.xPos=(this.oL+this.dw)-this.I;}this.child.yPos=this.oT+HJ+Hu;}if(!this.tree.ch||this.menu!=this.tree.cm){if(this.child.bq){this.child.style.pixelHeight=this.child.hm;}this.child.HXc();}this.child.moveTo(this.child.xPos,this.child.yPos);this.menu.bm=true;this.menu.eo=this.child;this.child.HXb(true);}
function HWh(){if(Hax)return;var ep=this.menu;if(HF){if(ep.bn&&ep.bn!=this&&ep.bn.dj){with(ep.bn.style){backgroundColor=this.tree.r;color=this.tree.p;}if(ep.bn.ec)ep.bn.hg.src=ep.bn.ed;}if(ep!=this.tree.db){var er=ep.ct;if(er.bn&&er.bn.dj){with(er.bn.style){backgroundColor=this.tree.r;color=this.tree.p;}if(er.bn.ec)er.bn.hg.src=er.bn.ed;}var kk=ep.cu;if(kk.dj){kk.style.backgroundColor=this.tree.s;kk.style.color=this.tree.q;if(kk.ec)kk.hg.src=kk.ee;}er.bn=kk;}}if(Hg.event.srcElement.id=="HM_ImMore")return;
if(this.dj){this.style.backgroundColor=this.tree.s;this.style.color=this.tree.q;if(this.ec)this.hg.src=this.ee;}if(HO)window.status=this.dh;this.menu.bn=this;var Items=ep.cs.children;var ek=Items.length;var el;for(var i=0;i<ek;i++){el=Items[i];clearTimeout(el.k4);el.k4=null;}var en="if(Hg&&Hg."+this.id+"&&";en+="Hg."+this.id+".HXa)";en+="Hg."+this.id+".HXa(true)";this.k4=setTimeout(en,this.dn);}
function HWi(onover){if(Hax)return;if(this.menu.bm){if(this.menu.eo==this.child&&this.menu.eo.bm)this.menu.eo.HXh(this);else this.menu.HXh(this);}if((this.G&&!onover)||(this.dc&&!this.G))this.HX9();}
function HWj(){if(Hax)return;if(Hg.event.srcElement.contains(Hg.event.toElement)||(Hg.event.fromElement.tagName=="IMG"&&(Hg.event.toElement&&Hg.event.toElement.contains(Hg.event.fromElement))))return;if(this.dj){with(this.style){backgroundColor=this.tree.r;color=this.tree.p;}if(this.ec)this.hg.src=this.ed;}}
function HWK(xPos,yPos){this.style.pixelLeft=xPos;this.style.pixelTop=yPos;}
function HWk(on){if(!(this.tree.ce&&(this.tree.cm==this))){if(!this.cv||(this.cv&&this.tree.ce&&(this.tree.cm==this.ct))){var hq=(this.style.visibility=="visible");if((on&&!hq)||(!on&&hq))eval(on?this.tree.P:this.tree.Q);}if(on)this.style.zIndex=++Hbk;this.style.visibility=(on)?"visible":"hidden";}if(HF&&this.bn&&this.bn.dj){with(this.bn.style){backgroundColor=this.tree.r;color=this.tree.p;}if(this.bn.ec)this.bn.hg.src=this.bn.ed;}this.bn=null;}
function HWl(){var et=H7;var eu=Hg.document.body.scrollLeft;var ev=Hg.document.body.scrollTop;var ew=Hg.document.body.clientWidth;var ex=Hg.document.body.clientHeight;var ey=(eu+ew)-et;var ez=(ev+ex)-et;var Fa=this.xPos;var Fb=Fa+this.style.pixelWidth;if(this.yPos<ev)this.yPos=ev;var Fc=this.yPos+this.style.pixelHeight;if(this.cv){var Fd=this.cu.oL;}if(Fb>ey){if(this.cv){this.xPos=((Fd-this.cu.dx)+this.cu.I)-this.offsetWidth;}else{var dif=Fb-ey;this.xPos-=dif;}this.xPos=Math.max(0,this.xPos);
}if(Fc>ez){var dif=Fc-ez;this.yPos-=dif;}if(Fa<eu){if(this.cv){this.xPos=(Fd+this.cu.dw)-this.cu.I;Fb=this.xPos+this.style.pixelWidth;if(Fb>ey)this.xPos-=(Fb-ey);}else{this.xPos=0}}if(HV){if(this.yPos<ev){this.HXi(ev);}else{if(this.bq)this.HXl();}}}
function HWm(){if(Hax)return;if(this.dh.indexOf("javascript:")!=-1)eval(this.dh);else{HWn();Hg.location.href=this.dh;}}
function HM_f_PopDown(eg){if(!Hat||!Hbi)return;if(Hax)return;eg=eg.replace("elMenu",Hab);var Fe=Hg.document.all(eg);if(!Fe)return;if(Hbj&&(Hbg==Fe))return;Fe.isOn=false;if(!Hk3)Fe.HXe();}
function HWn(Ff){clearTimeout(Hbd);Hbd=null;for(var i=0;i<Haz;i++){var ba=Hbb[i].tree.db;if(ba==Ff)continue;ba.isOn=false;if(ba.bm)ba.HXh();ba.HXb(false);}}
function HWo(){Hbd=null;if(Hax)return;if(Hbj)return;if(this.bm)this.HXh();this.HXg();}
function HWp(){var en="var hr=HW9('"+this.id+"');if(hr&&hr.HXf)hr.HXf()";(Hk3)?this.HXf():(this.bc=setTimeout(en,Hbw));}
function HWq(){this.bc=null;if(Hax)return;if(!this.isOn&&!Hbj)this.HXb(false);}
function HWr(){var eh=this;while(eh.cv){eh.HXb(false);eh.ct.isOn=false;eh.ct.bm=false;eh=eh.ct;}eh.HXe();}
function HWs(Fh,forced){var eh=this.eo;while(eh.bm){eh.eo.HXb(false);eh.bm=false;eh=eh.eo;}if(forced||((Fh&&(!Fh.dc||this.eo!=Fh.child))||(!Fh&&!this.isOn))){this.eo.HXb(false);this.bm=false;}}
function HWL(){return false}
function HWt(){if(Hax)return;if(!Hbj&&Hbg!=null&&!Hbg.isOn)HWn();}
popUp=HM_f_PopUp;popDown=HM_f_PopDown;
function HWu(Fi){if(!H4||H5!="top"){this.yPos=(Fi+H7);var Fj=(H7*2);}else{this.yPos=Fi;var Fj=H7;}this.style.pixelHeight=(Math.max(Hg.document.body.clientHeight,((Hk2*2)+H3))-Fj);if(!this.bq)this.HXj();this.HXl();}
function HWv(){var hs=(this.style.pixelWidth-(Hu*2));var ht=Hk2-Hu;var hu=(Hu+"px "+this.tree.v+" "+Hhf);var hv="STYLE='position:absolute;visibility:hidden;top:0;text-align:center;padding-top:"+((Hk2-Hu-H1)/2)+"px;";var hw=";width:"+hs+";height:"+ht+";background-color:"+Hk1+";'><IMG VSPACE=0 HSPACE=0 SRC='";var hx="'></DIV>";var hy="border-bottom:"+hu;var hz="border-top:"+hu;var je="<DIV ID='Hik' "+hv+hy+hw+Hkz+hx;var ia="<DIV ID='HM_ScrollBot' "+hv+hz+hw+Hky+hx;this.insertAdjacentHTML("BeforeEnd",je+ia);
this.Fs=this.children.item("Hik");this.Fs.menu=this;this.Ft=this.children.item("HM_ScrollBot");this.Ft.menu=this;if(Hkw){this.Fs.onmouseover=HXA;this.Fs.onmouseout=HWx;this.Ft.onmouseover=HXB;this.Ft.onmouseout=HWx;}else{this.Fs.onmousedown=HXA;this.Ft.onmousedown=HXB;}this.bq=true;}
function HXA(){Hku=this.menu;return this.menu.HXk(true);}
function HXB(){Hku=this.menu;return this.menu.HXk(false);}
function HWw(up){HWx();if(Hax)return;if(this.bm)this.HXh(false,true);if(!Hkw)Hg.document.onmouseup=HWx;Hbl=setInterval("HWz("+up+")",Hkv);return false;}
function HWx(){clearInterval(Hbl);Hbl=null;}
function HWz(up){if(Hax){HWx();return;}var Fu=Hku.cs;if(up){Fu.top+=10;}else{Fu.top-=10;}Hku.HXl();}
function HWA(){var Fu=this.cs;Fu.style.pixelWidth=this.style.pixelWidth-(Hu*2);var Fv=this.style.pixelHeight;var Fw=Fu.style.pixelHeight;var ij=Fu.style.pixelWidth;var ik=Fu.top;var Fx=(Fv-Fw);var il=((this.style.pixelTop-10)-ik);var im=(Hu*2);var Fy=H2?(Hk2-Hu):0;if(!Fx||Fv==this.hm){this.Ft.style.visibility="hidden";this.Fs.style.visibility="hidden";this.hd=false;Fu.style.pixelTop=Fu.top=0;Fu.style.clip="rect(0 "+ij+" "+Fw+" 0)";return;}if(H2)Fx-=(Fy*2);if(Fu.top<=Fx){Fu.top=Fx;HWx();
this.Ft.style.pixelTop=(Fv-Hu-Hk2);if(!H2)this.Ft.style.visibility="hidden";}else{with(this.Ft.style){pixelTop=(Fv-Hu-Hk2);visibility="inherit";}if(H2){this.Fs.style.visibility="inherit";this.hd=true;}}if(Fu.top>=0){Fu.top=0;HWx();if(!H2)this.Fs.style.visibility="hidden";}else{this.Fs.style.visibility="inherit";if(H2){this.Ft.style.visibility="inherit";this.hd=true;}}Fu.style.pixelTop=Fu.top+Fy;var k5=-Fu.top;var io=(k5+(Fv-im))-Fy;Fu.style.clip="rect("+k5+" "+ij+" "+io+" 0)";}
function HWN(){clearTimeout(Hgq);Hgq=null;if(Hax)return;Hgq=setTimeout("HWM()",50);}
function HWM(){if(Hax)return HXx();var mouse_x_position,mouse_y_position;for(var i=0;i<Haz;i++){if(Hbb[i]&&Hbb[i].tree&&Hbb[i].tree.db){var ba=Hbb[i].tree.db;if((ba)&&(ba.style.visibility=="visible")){ba.ip=ba.xPos;ba.iq=ba.yPos;mouse_x_position=ba.mouseX;mouse_y_position=ba.mouseY;ba.xPos=eval(ba.tree.ca);ba.yPos=eval(ba.tree.cb);if(ba.xPos==null)ba.xPos=ba.ir;if(ba.yPos==null)ba.yPos=ba.is;if(!ba.tree.ce){if(ba.bq)ba.HXl();ba.style.pixelHeight=ba.hm;ba.HXc();}ba.moveTo(ba.xPos,ba.yPos);var eh=ba;
while(eh.bm){eh=eh.eo;el=eh.cu;el.HX9();}}}}return HXx();}
Hbt=(H4)?parent.document.body:window;
if(Hbt.Hlb){Hbt=window.document.body;}
else Hbt.Hlb=true;HXu=(Hbt.onload)?Hbt.onload:HXD;Hbt.onload=function(){setTimeout("HW5()",10)};HXz=(window.onunload)?window.onunload:HXD;window.onunload=HX3;
function HX3(){Hjj=true;clearTimeout(Hjk);Hjk=null;Hax=true;if(window.Hbt)Hbt.onload=null;return HXz();}
function HWO(){Hax=true;if((typeof(window.Hjj)!="boolean")||(Hjj)){if(typeof(window.HXy)=="function")HXy();return;}HW4();HXy();clearTimeout(Hjk);Hjk=null;Hjk=setTimeout("HWQ()",Hgj);}
function HXF(){if((Hg)&&(typeof(Hg.Hlc)=="boolean")&&(Hg.Hlc))return true;else return false;}
function HWQ(){if((typeof(window.Hjj)!="boolean")||(Hjj))return true;if(typeof(Hg.document)!="unknown"){if((Hg.document.readyState!="complete")||(HXF())){clearTimeout(Hjk);Hjk=null;Hjk=setTimeout("HWQ()",Hgj);}else{HW5();}}else{Hax=false;}}
function HWB(a,b,c){var ga=arguments[0].toLowerCase();var gb=false;for(var i=0;i<Hav.length;i++){if(ga.indexOf(Hav[i])!=-1){gb=true;Hax=false;Hay=false;Hat=true;break;}}if(gb)return true;else return HXv(a,b,c);}
HXv=(window.onerror)?window.onerror:function(){return false};window.onerror=HWB;
