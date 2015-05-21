/*HM_ScriptDOM.js
* HierMenus Version 5
* Copyright (c) 2003 Peter Belesis. All Rights Reserved.
* Originally published and documented at http://www.hiermenuscentral.com/
* Available solely from Jupitermedia Corporation under exclusive license.
* Contact hiermenu@internet.com for more information.
*/
Hi="5.1";
if(HM_Opera||HM_Konqueror)HM_IE=false;HM_IE5M=HM_IE&&HM_Mac;HM_NS6=(navigator.vendor==("Netscape6")||navigator.product==("Gecko"));HM_IE5W=HM_IE&&!HM_Mac;HM_IEpos=!HM_NS6||(parseInt(navigator.productSub)>=20010710);
Hjf=((navigator.productSub)&&(parseInt(navigator.productSub)<20010726));Hjg=(HM_Mac&&(HM_UserAgent.indexOf("Safari")!=-1));Hld=((HM_Konqueror)||
((navigator.productSub)&&(parseInt(navigator.productSub)>=20020823)));
if(Hjg)Hld=false;
if((HM_Opera)&&(HM_BrowserVersion<7.1))Hkw=true;Hj=[
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
];Hab="HM_Menu";Hac="HM_Item";Had="HM_Array";Function.prototype.gk=true;
Function.prototype.gm=false;String.prototype.gk=false;String.prototype.gm=true;String.prototype.gn=false;String.prototype.gl=false;Number.prototype.gm=false;Number.prototype.gk=false;Number.prototype.gn=false;Number.prototype.gl=true;
Boolean.prototype.gm=false;Boolean.prototype.gk=false;Boolean.prototype.gn=true;Boolean.prototype.gl=false;Array.prototype.gp=false;Array.prototype.k6=true;
function HW1(ae){var af=ae[0];var ag=ae[1];var kt=ae[3];var ah="H"+kt;
if(typeof window["HM_PG_"+af]=="undefined"){if(typeof window["HM_PG_"+kt]=="undefined"){if(typeof window["HM_GL_"+af]=="undefined"){if(typeof window["HM_GL_"+kt]=="undefined"){window[ah]=ag;}else{window[ah]=window["HM_GL_"+kt];
}}else{window[ah]=window["HM_GL_"+af];}}else{window[ah]=window["HM_PG_"+kt];}}else{window[ah]=window["HM_PG_"+af];}ae[0]=ah;ae[1]=window[ah];}
function HW2(ai,aj,ak){var al,am;if(typeof ai=="undefined"||ai==null||(ai.gm&&ai.length==0)){return aj;}if(ak!="delayed"){while(ai.gm){am=ai.indexOf("(");if(am!=-1){al="window."+ai.substr(0,am);if(typeof eval(al)!="undefined"&&eval(al).gk){ai=eval(ai);
}}else break;}}while(ai.gk){ai=ai()}switch(ak){case "number":while(ai.gm){ai=eval(ai)}break;case "boolean":while(!ai.gn){ai=(ai.gl)?ai?true:false:eval(ai);}break;case "image":if(Hx)ai=Hx+ai;break;}return ai;}
for(var i=0;i<Hj.length;i++){HW1(Hj[i]);window[Hj[i][0]]=HW2(window[Hj[i][0]],null,Hj[i][2]);}
HK=(isNaN(parseFloat(HK)))?null:parseFloat(HK)/100;Han=HM*1000;
function HW3(ar){var ao=false;var ap=(typeof eval("window."+ar)=="object");if(ap){var aq=eval(ar);if(aq.k6&&aq.length>1){ao=true;if(!aq.gp){while((typeof aq[aq.length-1]!="object")||(!aq[aq.length-1].k6)){aq.length--;}aq.gp=true;}}}return ao;}
if(typeof(Has)=="undefined"){Has=[];for(i=1;i<=H8;i++){if(HW3(Had+i))Has[Has.length]=i;}}
Hh=null;Hat=false;Hjh=false;Hg=window;Hji=false;Hav=["permission","access","security"];Hjj=true;Hjk=null;Hay=false;Hjl=false;Hjm=false;Hax=true;Hjn=[];Haz=0;Hbf=null;Hk7=false;
function HWR(el){if(HM_Opera)return;Hjn[Hjn.length]=el;}
function HWS(){Hkb=Hkc=Hkd=Hke=Hkf=Hkg=null;Hbg=null;Hkr=null;Hku=null;Hbe=null;if(Hbf!=null){if(!HM_Opera){Hbf.cm=null;Hbf.db=null;}Hbf=null;}var jo=Hjn.length;for(var i=jo-1;i>=0;i--){var jp=Hjn[i];if(jp){jp.ct=null;jp.cu=null;jp.gx=null;jp.bn=null;
jp.child=null;jp.siblingBelow=null;jp.hg=null;jp.cs=null;jp.Fs=null;jp.Ft=null;jp.onmouseenter=null;jp.onmouseleave=null;jp.onmouseover=null;jp.onmouseout=null;jp.onclick=null;jp.onmousedown=null;jp.onselectstart=null;jp.onmousewheel=null;jp=null;
}Hjn[i]=null;}if(!HM_Opera){for(var i=0;i<Haz;i++){if(Hbb[i]){Hbb[i].tree.db=null;Hbb[i].tree.cm=null;Hbb[i]=null;}}}Haz=0;Hbb=[];Hjn=[];}
function HW4(){HWS();Hbi=false;Hbj=false;Hbd=null;Hbk=5000;Hbl=null;}
HW4();
if(H4){if((parent==self)||(!H5)){H4=false;}}
function HW5(){if(HM_IE5M&&Hbi)return true;Hay=true;HW4();Hbi=HW8();Hax=false;Hat=true;Hjj=false;Hay=false;if(!Hk7){Hk7=true;HXu();}return Hbi;}
function HXD(){return true;}
function HXC(){HWt();return HXw();}
function HWT(k8){if((typeof(Hg.document.body)=="undefined")||(Hg.document.body==null))return false;if(k8&&!HM_Opera)return false;if(HM_Opera){Hg.Function.prototype.gk=true;Hg.Function.prototype.gm=false;Hg.String.prototype.gk=false;
Hg.String.prototype.gm=true;Hg.String.prototype.gn=false;Hg.String.prototype.gl=false;Hg.Number.prototype.gm=false;Hg.Number.prototype.gk=false;Hg.Number.prototype.gn=false;Hg.Number.prototype.gl=true;Hg.Boolean.prototype.gm=false;
Hg.Boolean.prototype.gk=false;Hg.Boolean.prototype.gn=true;Hg.Boolean.prototype.gl=false;Hg.Array.prototype.gp=false;Hg.Array.prototype.k6=true;}Hjr=(HM_IE&&Hg.document.compatMode)?Hg.document.compatMode=="CSS1Compat":false;
Hjs=(HM_IE&&Hg.document.doctype)?Hg.document.doctype.name.indexOf(".dtd")!=-1:Hjr;Hjt=(HM_IE)&&!Hjs;Hju=(HM_Opera&&(Hg.document.compatMode!="CSS1Compat"));Hjh=(typeof(Hg.document.body.onmouseenter)!="undefined");
if(HM_IE||HM_Konqueror)Hh=Hjr?Hg.document.documentElement:Hg.document.body;if(HM_Opera)Hh=Hg.document.body;if(Hk3){if(HM_Opera&&k8)HXw=HXD;else HXw=(Hg.document.onmousedown)?Hg.document.onmousedown:HXD;Hg.document.onmousedown=HXC;}else{Hbw=HL*1000;
}var iu=HM_IE?Hg.document.body:Hg;if(HM_Opera&&k8)HXx=HXD;else HXx=(iu.onresize)?iu.onresize:HXD;iu.onresize=HWN;if(H4){if(HM_Opera&&k8)HXy=HXD;else HXy=(iu.onunload)?iu.onunload:HXD;iu.onunload=HWO;}Hg.Hlc=true;return true;}
function HW8(){if(H4&&HM_IE5M)return false;var gb=false;if(H4){var bs=parent.frames[H6];if(typeof bs=="undefined"){H4=false;var k9=HXF();}else{Hg=bs;var k9=HXF();if(!Hjm){if(Hld){var jv=parent.document.getElementsByName(H6)[0];jv.addEventListener('load',
HW5,false);Hji=true;}else if(parent.HM_UseFrameLoad){Hji=true;parent.HM_f_LoadMenus=HW5;}Hjm=true;if(k9){if(HM_Opera)HXE();else{var iu=HM_IE?Hg.document.body:Hg;iu.onunload=HWO;HXy=HXD;Hg.location.replace(Hg.location.href);return false;
}}}}}else{var k9=HXF();}try{var jy=typeof(Hg.document);}catch(e){gb=HX2(e);}if(gb)return false;else gb=false;if(HM_IE||HM_Opera){if(typeof(Hg.document)=="unknown")return false;if(Hg.document.readyState!="complete"){if(HM_IE)return false;clearTimeout(Hjk);
Hjk=null;Hjk=setTimeout("HW5()",Hgj);return false;}}try{var Initialized=HWT(k9);}catch(e){gb=HX2(e);}if(gb||!Initialized)return false;HWa();return true;}
function HW9(ix){var c=null;if(!HWU())return c;if((Hg)&&(Hg.document)){c=Hg.document.getElementById(ix);}return c;}
function HWU(){var jw=false;var jx=null;try{var jy=typeof(Hg.document);if((HM_IE||HM_Opera)&&(typeof(Hg.document)=="unknown"))return false;if((HM_IE)&&(Hg.document.readyState!="complete"))return false;jx=((Hg)&&(Hg.document))?Hg.document:null;
var jz=Hg.document.getElementById('HM_dummy_menu');if(jx)jw=false;}catch(e){jw=HX2(e);}return(!jw);}
function HWV(){Haz=0;Hbb=[];for(var t=0;t<Has.length;t++){var ks=HW9(Hab+Has[t]);if(ks){Hbb[Haz]=ks.tree.cm;Haz++;}}}
function HWa(){var bx=null;var by=false;var bz=null;for(var t=0;t<Has.length;t++){if(!HW3(Had+Has[t]))continue;Hbe=eval(Had+Has[t]);bx=Hbe[0];by=false;for(var i=1;i<Hbe.length;i++){bz=Hbe[i];if(bz[bz.length-1]){by=true;break}}Hbf={k:k=HW2(bx[0],Hk,
"number"),ca:ca=HW2(bx[1],null,"delayed"),cb:cb=HW2(bx[2],null,"delayed"),cc:k-(Hu*2),p:HW2(bx[3],Hp),q:HW2(bx[4],Hq),r:HW2(bx[5],Hr),s:HW2(bx[6],Hs),v:HW2(bx[7],Hv),gr:HW2(bx[8],Hgr),ce:((ca==null)||(cb==null))?false:HW2(bx[9],false,"boolean"),
cf:cf=HW2(bx[10],false,"boolean"),cg:by?HW2(bx[11],false,"boolean"):false,ch:(!cf||!by)?false:HW2(bx[12],false,"boolean"),ci:by?HW2(bx[13],true,"boolean"):false,cj:by?HW2(bx[14],true,"boolean"):false,P:HW2(bx[15],HP,"delayed"),Q:HW2(bx[16],HQ,"delayed"),
R:HW2(bx[17],HR,"boolean"),G:HW2(bx[18],HG,"boolean"),ck:HW2(bx[19],false,"boolean"),cl:HW2(bx[20],false,"boolean")};Hkr=null;HWc(Has[t]);Hbb[Haz]=Hbf.cm;Haz++;if(Hbf.ce){with(Hbf.cm){Hbf.cm.xPos=eval(Hbf.ca);Hbf.cm.yPos=eval(Hbf.cb);moveTo(Hbf.cm.xPos,
Hbf.cm.yPos);style.zIndex=Hbk;}if(HM_IE5M||HM_Opera){var en="if((HWU())&&(Hg)&&(Hg.document)){var Hkb=Hg.document.getElementById('"+Hbf.cm.id+"');";en+="if(Hkb&&Hkb.HXq)Hkb.HXq(true);}";setTimeout(en,10);}else Hbf.cm.style.visibility="visible";
}}if(HN)window.status=Haz+" Hierarchical Menu Trees Created";}
function HWE(df){this.tree=Hbf;this.index=Hkr.bo-1;this.hi=(Hkr.bo==Hkr.cy);this.array=Hkr.array[Hkr.bo];this.dg=this.array[0];this.dh=this.array[1];this.di=HW2(this.array[3],false,"boolean");this.dj=(!this.di&&HW2(this.array[2],true,"boolean"));
this.dc=HW2(this.array[4],false,"boolean")&&HW3(Had+df);this.jd=this.dc?(Hab+df):null;this.child=null;if(Hjh){this.onmouseenter=HWh;this.onmouseleave=HWj;}else{this.onmouseover=HWh;this.onmouseout=HWj;}this.HXp=HWI;this.HXa=HWi;
this.dn=(this.menu==this.tree.db)?H9:Haa;this.HX9=HWZ;this.HXr=HWX;if(HM_IE5M)this.HXs=HWY;this.HXt=HX;this.G=(this.dc&&this.tree.G&&(this.tree.ce&&(this.tree.cm==this.menu)))?true:false;if(this.G){this.dh="";this.onclick=this.HXa;}this.I=null;}
function HWG(ix){var gw=Hg.document.createElement("DIV");HWR(gw);var k=((Hjt||Hju)?Hbf.k:Hbf.cc)+"px";with(gw){id=ix;with(style){position="absolute";visibility="hidden";left="-500px";top="-2000px";width=k;
}}if(HV){gw.cs=gw.appendChild(Hg.document.createElement("DIV"));with(gw.cs.style){position="absolute";top="0px";width=k;}gw.cs.top=0;if(typeof document.onmousewheel!="undefined")gw.onmousewheel=HX1;}else{gw.cs=gw;}return gw;}
function HWc(cq){if(!HW3(Had+cq))return false;Hbe=eval(Had+cq);var cr=Hg.document.getElementById(Hab+cq);if(cr){var la=cr.parentNode;la.removeChild(cr);cr=null;}cr=HWG(Hab+cq);if(Hkr){cr.ct=Hkr;cr.cu=Hkr.gx;cr.cu.child=cr;cr.cv=true;cr.cw=Hbf.cg;
cr.cx=Hbf.cj;}else{cr.cw=Hbf.cf;cr.cx=Hbf.ci;Hbf.cm=Hbf.db=cr;}Hkr=cr;Hkr.array=Hbe;Hkr.tree=Hbf;Hkr.bo=0;Hkr.cy=Hkr.array.length-1;Hkr.cz=((Hkr.cv&&Hbf.cl)||(!Hkr.cv&&Hbf.ck));Hkr.HXb=HWk;Hkr.count=cq;Hkr.HXc=HWl;if(Hjh){Hkr.onmouseenter=HWf;
Hkr.onmouseleave=HWg;}else{Hkr.onmouseover=HWf;Hkr.onmouseout=HWg;}Hkr.HXd=HWo;Hkr.HXg=HWr;Hkr.HXh=HWs;Hkr.HXe=HWp;Hkr.HXf=HWq;Hkr.bm=false;Hkr.isOn=false;Hkr.bc=null;Hkr.bn=null;Hkr.HXo=HWH;Hkr.hn=false;Hkr.HXq=HWJ;Hkr.bq=false;Hkr.HXi=HWu;Hkr.HXj=HWv;
Hkr.HXk=HWw;Hkr.HXl=HWA;Hkr.hd=false;if(HM_IE)Hkr.onselectstart=HWL;Hkr.moveTo=HWK;Hkr.HXo();if(HM_IE5M&&HV&&!Hkr.cw&&!(Hbf.ch&&Hkr.ct==Hbf.cm)&&!(Hbf.ce&&Hkr==Hbf.cm)){Hkr.HXj();}while(Hkr.bo<Hkr.cy){Hkr.bo++;
Hkr.gx=Hg.document.getElementById(Hac+cq+"_"+Hkr.bo);if(!Hkr.gx){if(HN)window.status="Creating Hierarchical Menus:"+cq+"/"+Hkr.bo;Hkr.gx=HWW(cq);}if(Hkr.gx.dc&&(!HS||Hbi&&HS)){dd=HWc(cq+"_"+Hkr.bo);if(dd){Hkr=Hkr.ct;}}}Hg.document.body.appendChild(Hkr);
if(!HM_IE5M)Hkr.HXq();return Hkr;}
function HWH(){with(this.style){borderWidth=Hu+"px";borderColor=Hbf.v;borderStyle=Hhf;overflow="hidden";cursor="default";}}
function HWW(cq){var gv=Hg.document.createElement("DIV");gv.id=Hac+cq+"_"+Hkr.bo;gv.style.position="absolute";gv.style.visibility="inherit";Hkr.cs.appendChild(gv);HWR(gv);gv.menu=Hkr;gv.k4=null;gv.HXn=HWE;gv.HXn(cq+"_"+Hkr.bo);
gv.siblingBelow=gv.previousSibling;if(gv.dh&&!gv.G){gv.onclick=HWm;if(HT)gv.style.cursor=(HM_NS6||HM_Konqueror)?"pointer":"hand";}var gt=(Ht*2)+HC+HD;gv.hasImage=(gv.dc&&Hkr.cx);if(gv.hasImage){var kh=Hg.document.createElement("IMG");HWR(kh);
gv.ed=Hbf.R?HA:Hy;if(!Hbf.R){gv.ec=(Hz&&(Hz!=Hy));}else{gv.ec=(HB&&(HB!=HA));}if(gv.ec){gv.ee=Hbf.R?HB:Hz;if(!gv.ee)gv.ee=gv.ed;if(gv.di)gv.ed=gv.ee;}with(kh){if(gv.ed)src=gv.ed;removeAttribute("height");hspace=(!Hbf.R&&HM_IE5W)?Ht:0;vspace=0;width=HC;
with(style){position="absolute";top=(Ht+Hgi)+"px";if(Hbf.R){left=(Ht+HD)+"px";}}}gv.hg=kh;}gv.innerHTML=gv.dg;if(kh)gv.insertBefore(kh,gv.firstChild);gv.HXp();return gv;}
function HWI(){with(this.style){backgroundColor=(this.di)?Hbf.s:Hbf.r;color=(this.di)?Hbf.q:Hbf.p;padding=Ht+"px";font=((Hn)?"bold ":"normal ")+Hm+"pt "+Hl;fontStyle=(Ho)?"italic":"normal";if(HM_IE)overflow="hidden";
if((this.menu.cx&&(!this.menu.cz||(this.menu.cz&&this.tree.R&&!this.menu.cw)))||(this.menu.cz&&this.hg)){var gt=(Ht*2)+HC+HD;if(Hbf.R)paddingLeft=gt+"px";else paddingRight=gt+"px";}if(!this.hi){var iy=Hw+"px solid "+this.tree.gr;
if(this.menu.cw)borderRight=iy;else borderBottom=iy;}if(this.menu.cw){top="0px";if(!this.menu.cz){if(Hjt||Hju){if(this.hi)width=(Hbf.k-Hu-Hw)+"px";else width=(Hbf.k-Hu)+"px";left=(this.index*(Hbf.k-Hu))+"px";
}else{width=(Hbf.k-Hu-parseInt(paddingLeft)-parseInt(paddingRight)-Hw)+"px";left=((this.index*parseInt(width))+((Hw*this.index)))+((parseInt(paddingLeft)+parseInt(paddingRight))*this.index)+"px";}var hj=parseInt(left)+parseInt(width);
this.menu.style.width=hj+((Hjt||Hju)?(Hu*2):(parseInt(paddingLeft)+parseInt(paddingRight)))+"px";}}else{left="0px";if(!this.menu.cz){if(Hjt||Hju)width=Hbf.cc+"px";else width=(Hbf.cc-(parseInt(paddingLeft)+parseInt(paddingRight)))+"px";}}}}
function HWJ(iz){var Items=this.cs.childNodes;var ek=Items.length;var el;if(this.cw){if(this.cz){for(var i=0;i<ek;i++){el=Items[i];el.hh=(HM_IE)?el.scrollWidth:el.offsetWidth;if(isNaN(el.hh))el.hh=el.offsetWidth;
if(HM_IE5M)el.hh+=(parseInt(el.style.paddingLeft)+parseInt(el.style.paddingRight));if(Hjt||Hju){if(Hju){el.style.width=(el.hh)+"px";}else{if(el.hi)el.style.width=(el.hh)+"px";else el.style.width=(el.hh+Hw)+"px";
}el.style.left=(el.index?parseInt(el.siblingBelow.style.left)+parseInt(el.siblingBelow.style.width):0)+"px";}else{if(el.hasImage&&!Hbf.R){if(!Hjr&&!HM_Opera)el.hh+=Ht;}el.hh-=(parseInt(el.style.paddingLeft)+parseInt(el.style.paddingRight));
if(!Hjr&&!HM_IE5M&&!el.hi)el.hh-=Hw;el.ki=el.tree.cc-(parseInt(el.style.paddingLeft)+parseInt(el.style.paddingRight));el.style.width=Math.min(el.ki,el.hh)+"px";
el.style.left=(el.index?(parseInt(el.siblingBelow.style.left)+el.siblingBelow.offsetWidth):0)+"px";}if(el.hi){hj=parseInt(el.style.left)+parseInt(el.style.width);
this.style.width=this.cs.style.width=hj+((Hjt||Hju)?(Hu*2):(parseInt(el.style.paddingLeft)+parseInt(el.style.paddingRight)))+"px";}}}var hk=0;for(var i=0;i<ek;i++){el=Items[i];if(el.index){var dt=el.siblingBelow.offsetHeight-((Hjt||Hju)?0:(Ht*2));
hk=Math.max(hk,dt);}else{hk=el.offsetHeight-((Hjt||Hju)?0:(Ht*2));}}for(var i=0;i<ek;i++){el=Items[i];el.style.height=hk+"px";if(el.hg){if(this.tree.R){el.hg.style.left=(Ht+HD)+"px";
}else{el.hg.style.left=(el.offsetWidth-((el.hi?0:Hw)+(Hjt?HM_IE5M?Ht:Ht*2:Hjr?Ht*2:Ht)+HD+HC))+"px";}}}this.style.height=this.cs.style.height=hk+((Hjt||Hju)?Hu*2:(Ht*2))+"px";}else{if(this.cz){var hl=0;for(var i=0;i<ek;i++){el=Items[i];
el.hh=(HM_IE)?el.scrollWidth:el.offsetWidth;if(isNaN(el.hh))el.hh=el.offsetWidth;if(HM_IE5M)el.hh+=(parseInt(el.style.paddingLeft)+parseInt(el.style.paddingRight));if(!Hjt&&!Hju){el.hh-=((parseInt(el.style.paddingRight)+parseInt(el.style.paddingLeft)));
}hl=i?Math.max(hl,el.hh):el.hh;if(hl==el.hh)var kj=el;}for(var i=0;i<ek;i++){Items[i].style.width=kj.hh+"px";if(!Hjt&&!Hju){if(Items[i].hg&&!kj.hg){Items[i].style.width=(kj.hh-HC-HD-Ht)+"px";}else{Items[i].style.paddingLeft=kj.style.paddingLeft;
Items[i].style.paddingRight=kj.style.paddingRight;}}}this.style.width=this.cs.style.width=(Items[0].offsetWidth+((Hjt||Hju)?Hu*2:0))+"px";}for(var i=0;i<ek;i++){var el=Items[i];if(el.index){var dt=(el.siblingBelow.offsetHeight);
el.style.top=parseInt(el.siblingBelow.style.top)+dt+"px";}else el.style.top="0px";if(el.hg){if(this.tree.R){el.hg.style.left=(Ht+HD)+"px";}else{el.hg.style.left=(el.offsetWidth-((Hjt?HM_IE5M?Ht:Ht*2:Hjr?Ht*2:Ht)+HD+HC))+"px";
}}}this.style.height=this.cs.style.height=parseInt(el.style.top)+(HM_IE5W?el.scrollHeight:el.offsetHeight)+((Hjt||Hju)?(Hu*2):0)+"px";}this.hm=this.style.height;if(HM_IE5M&&this.bq){with(this.Fs.style){width=(parseInt(this.style.width)-(Hjt?(Hu*2):0))+"px";
height=(Hk2-(Hjt?0:(Hu*2)))+"px";}with(this.Fs.firstChild.style){top=((Hk2-(Hu*2)-H1)/2)+"px";left=((parseInt(this.Fs.style.width)-Hit)/2)+"px";}with(this.Ft.style){width=(parseInt(this.style.width)-(Hjt?(Hu*2):0))+"px";height=(Hk2-(Hjt?0:(Hu*2)))+"px";
}with(this.Ft.firstChild.style){top=((Hk2-(Hu*2)-H1)/2)+"px";left=((parseInt(this.Ft.style.width)-Hit)/2)+"px";}}this.hn=true;if(iz)this.style.visibility="visible";}
function HM_f_PopUp(eg,e){if(!HM_NS6&&!HM_Opera)e=event;if(!Hat)return;if(Hax||!HWU())return;if(!Hay&&!Hbi){if(Hji)return;if(!HW5())return;}eg=eg.replace("elMenu",Hab);var eh=Hg.document.getElementById(eg);if(!eh){if(!HM_Opera||Hji)return;
if(Hay||!Hbi)return;if(!HW5())return;eh=Hg.document.getElementById(eg);if(!eh)return;}if(eh.tree.G){var ei=(HM_NS6)?e.target:e.srcElement;if(HM_NS6){while(ei.tagName==null){ei=ei.parentNode;}}var ej="return HWe(event,'"+eg+"');";
ei.onclick=new Function("event",ej);}else HWe(e,eg);}
function HWe(e,eg){if(!Hat||!Hbi)return true;if(Hax||!HWU())return true;if(HM_IE)e=event;var eh=Hg.document.getElementById(eg);if(!eh)return true;Hbg=eh;if(Hbg.tree.G&&e.type!="click")return true;var mouse_x_position,mouse_y_position;HWn();Hbg.cv=false;
Hbg.tree.db=Hbg;if(!H4){mouse_x_position=(HM_NS6)?e.pageX:(e.clientX+Hh.scrollLeft);mouse_y_position=(HM_NS6)?e.pageY:(e.clientY+Hh.scrollTop);
}else{switch(H5){case "top":mouse_x_position=(HM_NS6)?(e.pageX-window.pageXOffset)+Hg.pageXOffset:(e.clientX+Hh.scrollLeft);mouse_y_position=(HM_NS6)?Hg.pageYOffset:Hh.scrollTop;break;
case "bottom":mouse_x_position=(HM_NS6)?(e.pageX-window.pageXOffset)+Hg.pageXOffset:(e.clientX+Hh.scrollLeft);mouse_y_position=(HM_NS6)?Hg.pageYOffset+Hg.innerHeight:(Hh.scrollTop+Hh.clientHeight);break;
case "right":mouse_x_position=(HM_NS6)?(Hg.pageXOffset+Hg.innerWidth):(Hh.scrollLeft+Hh.clientWidth);mouse_y_position=(HM_NS6)?(e.pageY-window.pageYOffset)+Hg.pageYOffset:(e.clientY+Hh.scrollTop);break;
case "left":default:mouse_x_position=(HM_NS6)?Hg.pageXOffset:Hh.scrollLeft;mouse_y_position=(HM_NS6)?(e.pageY-window.pageYOffset)+Hg.pageYOffset:(e.clientY+Hh.scrollTop);break;}}Hbg.mouseX=mouse_x_position;Hbg.mouseY=mouse_y_position;
Hbg.ir=Hbg.xPos=(Hbg.tree.ca!=null)?eval(Hbg.tree.ca):mouse_x_position;Hbg.is=Hbg.yPos=(Hbg.tree.cb!=null)?eval(Hbg.tree.cb):mouse_y_position;if(HM_IE5M&&!Hbg.hn)Hbg.HXq(false);if(Hbg.bq){Hbg.style.height=Hbg.hm;Hbg.HXl();}Hbg.HXc();Hbg.moveTo(Hbg.xPos,
Hbg.yPos);Hbg.isOn=true;if((HM_IE5M)||(HM_NS6)){var en="if((HWU())&&(Hg)&&(Hg.document)){var Hkc=Hg.document.getElementById('"+Hbg.id+"');";en+="if(Hkc&&Hkc.isOn&&Hkc.HXb)Hkc.HXb(true);}";setTimeout(en,10);}else{Hbg.HXb(true);}return false;}
function HWf(){if(Hax||!HWU())return;if(!this.tree.db){this.tree.db=this;}if(this.tree.db==this)HWn(this);this.isOn=true;Hbj=true;Hbg=this;if(HV&&(Hbg!=Hku))HWx();if(this.bc)clearTimeout(this.bc);}
function HWg(){if(Hax||!HWU())return;if(HM_IE&&Hg.event.srcElement.contains(Hg.event.toElement))return;this.isOn=false;Hbj=false;if(HO)window.status="";var Items=this.cs.childNodes;var ek=Items.length;var el;for(var i=0;i<ek;i++){el=Items[i];
clearTimeout(el.k4);el.k4=null;}if(!Hk3){clearTimeout(Hbd);Hbd=null;var en="var Hhp=HW9('"+this.id+"');if(Hhp&&Hhp.HXd)Hhp.HXd()";Hbd=setTimeout(en,Han);}}
function HWX(){if(this.tree.ch&&(this.menu==this.tree.cm)){this.child.xPos=parseInt(this.menu.style.left)+parseInt(this.style.left);this.child.yPos=parseInt(this.menu.style.top)+this.menu.offsetHeight-(Hu);
}else{if(this.I==null){this.dw=parseInt(this.style.width);if(!Hjt&&!Hju)this.dw+=(parseInt(this.style.paddingLeft)+parseInt(this.style.paddingRight))+((this.menu.cw&&!this.hi)?Hw:0);if(!this.menu.cw||(this.menu.cw&&this.hi))this.dw+=Hu;
this.dx=(!this.menu.cw||(this.menu.cw&&this.index==0))?Hu:Hw;this.I=(parseInt((HK!=null)?(HK*this.dw):HI));}if(HM_IE5M){this.oL=parseInt(this.menu.style.left)-Ht;this.oL+=this.offsetLeft;this.oT=parseInt(this.menu.style.top)-Ht;this.oT+=this.offsetTop;
if(HV){this.oT+=this.menu.cs.top;if(H2&&this.menu.hd)this.oT+=Hk2;}}else{this.oL=(HM_IEpos)?parseInt(this.menu.style.left)+Hu:0;this.oL+=this.offsetLeft;this.oT=(HM_IEpos)?parseInt(this.menu.style.top):-Hu;this.oT+=this.offsetTop;
if(HV&&HM_IEpos){this.oT+=this.menu.cs.top;if(H2&&this.menu.hd)this.oT+=Hk2;}}if(this.tree.R){this.child.xPos=((this.oL-this.dx)+this.I)-this.child.offsetWidth;}else{this.child.xPos=(this.oL+this.dw)-this.I;}this.child.yPos=this.oT+HJ+Hu;
}if(!this.tree.ch||this.menu!=this.tree.cm){if(this.child.bq){this.child.style.height=this.child.hm;}this.child.HXc();}this.child.moveTo(this.child.xPos,this.child.yPos);}
function HWY(){this.child.HXq(false);this.HXr();var en="if((HWU())&&(Hg)&&(Hg.document)){var Hkd=Hg.document.getElementById('"+this.id+"');";en+="if(Hkd&&Hkd.HXt)Hkd.HXt();}";setTimeout(en,10);}
function HWZ(){if(Hay||Hjl||Hax||!HWU())return;Hjl=true;if(!this.child){Hbf=this.tree;Hkr=this.menu;Hkr.gx=this;this.child=HWc(this.menu.count+"_"+(this.index+1));this.tree.cm=this.menu;this.tree.db=this.menu;Hbf=this.tree;}Hjl=false;
if(this.menu.style.visibility=="hidden")return;if(HM_IE5M&&!this.child.hn){var en="if((HWU())&&(Hg)&&(Hg.document)){var Hke=Hg.document.getElementById('"+this.id+"');";en+="if(Hke&&Hke.HXs)Hke.HXs();}";setTimeout(en,10);}else{this.HXr();
if((HM_IE5M)||(HM_NS6)){var en="if((HWU())&&(Hg)&&(Hg.document)){var Hkf=Hg.document.getElementById('"+this.id+"');";en+="if(Hkf&&Hkf.HXt)Hkf.HXt();}";setTimeout(en,10);}else{this.HXt();}}}
function HX(){if((this.menu.bn==this)&&(this.menu.isOn)){this.menu.bm=true;this.menu.eo=this.child;this.child.HXb(true);}}
function HWh(){if(Hax||!HWU())return;var ep=this.menu;if(HF){if(ep.bn&&ep.bn!=this&&ep.bn.dj){with(ep.bn.style){backgroundColor=this.tree.r;color=this.tree.p;}if(ep.bn.ec)ep.bn.hg.src=ep.bn.ed;}if(ep!=this.tree.db){var er=ep.ct;
if(er.bn&&er.bn.dj){with(er.bn.style){backgroundColor=this.tree.r;color=this.tree.p;}if(er.bn.ec)er.bn.hg.src=er.bn.ed;}var kk=ep.cu;if(kk.dj){kk.style.backgroundColor=this.tree.s;kk.style.color=this.tree.q;if(kk.ec)kk.hg.src=kk.ee;}er.bn=kk;
}}if(this.dj){this.style.backgroundColor=this.tree.s;this.style.color=this.tree.q;if(this.ec)this.hg.src=this.ee;}if(HO)window.status=this.dh;ep.bn=this;var Items=ep.cs.childNodes;var ek=Items.length;var el;for(var i=0;i<ek;i++){el=Items[i];
clearTimeout(el.k4);el.k4=null;}var en="if((HWU())&&(Hg)&&(Hg.document)){var Hkg=Hg.document.getElementById('"+this.id+"');";en+="if(Hkg&&Hkg.HXa)Hkg.HXa(true);}";this.k4=setTimeout(en,this.dn);}
function HWi(onover){if(Hax||!HWU())return;if(this.menu.bm){if(this.menu.eo==this.child&&this.menu.eo.bm)this.menu.eo.HXh(this);else this.menu.HXh(this);}if((this.G&&(onover!=true))||(this.dc&&!this.G))this.HX9();}
function HWj(){if(Hax||!HWU())return;if(this.dj){with(this.style){backgroundColor=this.tree.r;color=this.tree.p;}if(this.ec)this.hg.src=this.ed;}}
function HWK(xPos,yPos){this.style.left=xPos+"px";this.style.top=yPos+"px";}
function HWk(on){if(!(this.tree.ce&&(this.tree.cm==this))){if(!this.cv||(this.cv&&this.tree.ce&&(this.tree.cm==this.ct))){var hq=(this.style.visibility=="visible");if((on&&!hq)||(!on&&hq))eval(on?this.tree.P:this.tree.Q);}if(on)this.style.zIndex=++Hbk;
this.style.visibility=(on)?"visible":"hidden";}if(HF&&this.bn&&this.bn.dj){with(this.bn.style){backgroundColor=this.tree.r;color=this.tree.p;}if(this.bn.ec)this.bn.hg.src=this.bn.ed;}this.bn=null;}
function HWl(){var et=(HM_IE||Hjg)?0:H7;var eu=(HM_IE)?Hh.scrollLeft:Hg.pageXOffset;var ev=(HM_IE)?Hh.scrollTop:Hg.pageYOffset;var ew=(HM_IE)?Hh.clientWidth:Hg.innerWidth;var ex=(HM_IE)?Hh.clientHeight:Hg.innerHeight;var ey=(eu+ew)-et;var ez=(ev+ex)-et;
var Fa=this.xPos;var Fb=Fa+this.offsetWidth;if(this.yPos<ev)this.yPos=ev;var Fc=this.yPos+parseInt(this.hm);Fc+=(Hjt||Hju)?0:(Hu*2);if(this.cv){var Fd=this.cu.oL;}if(Fb>ey){if(this.cv){this.xPos=((Fd-this.cu.dx)+this.cu.I)-this.offsetWidth;
}else{var dif=Fb-ey;this.xPos-=dif;}this.xPos=Math.max(0,this.xPos);}if(Fc>ez){var dif=Fc-ez;this.yPos-=dif;}if(Fa<eu){if(this.cv){this.xPos=(Fd+this.cu.dw)-this.cu.I;Fb=this.xPos+this.offsetWidth;if(Fb>ey)this.xPos-=(Fb-ey);
}else{this.xPos=0}}if(HV){if(this.yPos<ev){this.HXi(ev);}else if(this.bq){if(!HM_IE5W){if(parseInt(this.hm)<ex)this.style.height=this.hm;}this.HXl();}}}
function HWm(){if(Hax||!HWU())return;if(this.dh.indexOf("javascript:")!=-1)eval(this.dh);else{HWn();if((!HM_Opera)||(Hg.location.href!=this.dh)){Hg.location.href=this.dh;}}}
function HM_f_PopDown(eg){if(!Hat||!Hbi)return;if(Hax||!HWU())return;eg=eg.replace("elMenu",Hab);var Fe=Hg.document.getElementById(eg);if(!Fe)return;if(Hbj&&(Hbg==Fe))return;Fe.isOn=false;if(!Hk3)Fe.HXe();}
function HWn(Ff){clearTimeout(Hbd);Hbd=null;if(HM_Opera)HWV();for(var i=0;i<Haz;i++){var ba=Hbb[i].tree.db;if(ba==Ff)continue;ba.isOn=false;if(ba.bm)ba.HXh();ba.HXb(false);}}
function HXE(){clearTimeout(Hbd);Hbd=null;if(HM_Opera)HWV();for(var i=0;i<Haz;i++){var ba=Hbb[i].tree.db;ba.isOn=false;if(ba.bm)ba.HXh();ba.style.visibility="hidden";}}
function HWo(){Hbd=null;if(Hax||!HWU())return;if(Hbj)return;if(this.bm)this.HXh();this.HXg();}
function HWp(){var en="var HFg=HW9('"+this.id+"');if(HFg&&HFg.HXf)HFg.HXf()";(Hk3)?this.HXf():(this.bc=setTimeout(en,Hbw));}
function HWq(){if(Hax||!HWU())return;this.bc=null;if(!this.isOn&&!Hbj)this.HXb(false);}
function HWr(){var eh=this;while(eh.cv){eh.HXb(false);eh.ct.isOn=false;eh.ct.bm=false;eh=eh.ct;}eh.HXe();}
function HWs(Fh,forced){var eh=this.eo;while(eh.bm){eh.eo.HXb(false);eh.bm=false;eh=eh.eo;}if(forced||((Fh&&(!Fh.dc||this.eo!=Fh.child))||(!Fh&&!this.isOn))){this.eo.HXb(false);this.bm=false;}}
function HWL(){return false}
function HWt(){if(Hax||!HWU())return;if(!Hbj&&Hbg!=null&&!Hbg.isOn)HWn();}
function HWu(Fi){var et=(HM_IE||Hjg)?0:H7;if(!H4||H5!="top"){this.yPos=(Fi+et);var Fj=(et*2);}else{this.yPos=Fi;var Fj=et;}var ex=(HM_IE)?Hh.clientHeight:Hg.innerHeight;var kl=(Hjt||Hju)?0:(Hu*2);this.style.height=(Math.max(ex,((Hk2*2)+H3))-Fj-kl)+"px";
if(!this.bq)this.HXj();this.HXl();}
function HWv(){var Fm=Hg.document.createElement("DIV");with(Fm.style){position="absolute";top=-(Hu)+"px";width=(parseInt(this.style.width)-((Hjt||Hju)?(Hu*2):0))+"px";height=(Hk2-((Hjt||Hju)?0:(Hu*2)))+"px";visibility="hidden";backgroundColor=Hk1;
textAlign="center";zIndex=10000;var km=(Hu+"px "+this.tree.v+" "+Hhf);borderBottom=km;borderTop=km;}var kh=Hg.document.createElement("IMG");with(kh.style){position="absolute";top=((Hk2-(Hu*2)-H1)/2)+"px";visibility="inherit";
left=((parseInt(Fm.style.width)-Hit)/2)+"px";}Fm.appendChild(kh);var kn=Fm.cloneNode(true);if(Hky)kn.firstChild.src=Hky;if(Hkz)Fm.firstChild.src=Hkz;this.appendChild(Fm);this.appendChild(kn);Fm.menu=this;this.Fs=Fm;kn.menu=this;this.Ft=kn;
if(Hkw){if(Hjh){this.Fs.onmouseenter=HXA;this.Fs.onmouseleave=HWx;this.Ft.onmouseenter=HXB;this.Ft.onmouseleave=HWx;}else{this.Fs.onmouseover=HXA;this.Fs.onmouseout=HWx;this.Ft.onmouseover=HXB;this.Ft.onmouseout=HWx;}}else{this.Fs.onmousedown=HXA;
this.Ft.onmousedown=HXB;}this.bq=true;}
function HXA(){Hku=this.menu;return this.menu.HXk(true);}
function HXB(){Hku=this.menu;return this.menu.HXk(false);}
function HWw(up){HWx();if(Hax||!HWU())return;if(this.bm)this.HXh(false,true);if(!Hkw)Hg.document.onmouseup=HWx;Hbl=setInterval("HWz("+up+",10)",Hkv);return false;}
function HWx(){clearInterval(Hbl);Hbl=null;}
function HWz(up,incr){if(Hax||!HWU()){HWx();return;}var Fu=Hku.cs;if(up){Fu.top+=incr;}else{Fu.top-=incr;}Hku.HXl();}
function HWA(){var Fu=this.cs;var Fv=parseInt(this.style.height);var Fw=parseInt(Fu.style.height);var Fx=Fv-Fw;var Fy=H2?(Hk2-Hu):0;if(!Fx){this.Ft.style.visibility="hidden";this.Fs.style.visibility="hidden";this.hd=false;Fu.top=0;Fu.style.top=Fu.top+"px";
return;}if(H2)Fx-=(Fy*2);if(Fu.top<=(Fx)){Fu.top=Fx;HWx();this.Ft.style.top=(Fv-((Hjt||Hju)?(Hu):-(Hu))-Hk2)+"px";if(!H2)this.Ft.style.visibility="hidden";}else{this.Ft.style.top=(Fv-((Hjt||Hju)?(Hu):-(Hu))-Hk2)+"px";this.Ft.style.visibility="inherit";
if(H2){this.Fs.style.visibility="inherit";this.hd=true;}}if(Fu.top>=0){Fu.top=0;HWx();if(!H2)this.Fs.style.visibility="hidden";}else{this.Fs.style.visibility="inherit";if(H2){this.Ft.style.visibility="inherit";this.hd=true;}}Fu.style.top=(Fu.top+Fy)+"px";}
function HX1(){if(!this.bq)return;var ScrollUp=(Hg.event.wheelDelta==120);Hku=this;HWz(ScrollUp,this.bn.offsetHeight);return false;}
function HX2(e){if(HM_IE){var ga=e.description;}else{var ga=(Hjf)?"Access Denied":(typeof(e)=="object")?e.message:e;}var gb=false;for(var i=0;i<Hav.length;i++){if(ga.toLowerCase().indexOf(Hav[i])!=-1){gb=true;break;}}return gb;}
function HWN(){if(Hax||!HWU())return HXx();var mouse_x_position,mouse_y_position;if(HM_Opera)HWV();for(var i=0;i<Haz;i++){var ba=Hbb[i].tree.db;if(ba.style.visibility=="visible"){ba.ip=ba.xPos;ba.iq=ba.yPos;mouse_x_position=ba.mouseX;
mouse_y_position=ba.mouseY;ba.xPos=eval(ba.tree.ca);ba.yPos=eval(ba.tree.cb);if(ba.xPos==null)ba.xPos=ba.ir;if(ba.yPos==null)ba.yPos=ba.is;if(!ba.tree.ce){if(ba.bq)ba.HXl();ba.style.height=ba.cs.style.height;ba.HXc();}ba.moveTo(ba.xPos,ba.yPos);var eh=ba;
while(eh.bm){ko=eh;eh=eh.eo;el=eh.cu;el.HX9();}}}return HXx();}
function HX3(){Hjj=true;clearTimeout(Hjk);Hjk=null;if(!Hax){if(HM_NS6)HXE();Hax=true;}HWS();if(H4&&HM_IE5M)return HXz();if(Hjm){if(Hld){var jv=parent.document.getElementsByName(H6)[0];jv.removeEventListener('load',HW5,false);
}else if(parent.HM_UseFrameLoad){parent.HM_f_LoadMenus=null;}}if(window.Hbt)Hbt.onload=null;return HXz();}
function HWO(){if(!window.HM_Opera)Hax=true;if((typeof(window.Hjj)!="boolean")||(Hjj)){if(typeof(window.HXy)=="function")HXy();return;}if(HM_NS6)HXE();if(!HM_Opera)HW4();HXy();if(!Hji){if(HM_IE||HM_Opera)HX4();else HX5();}}
function HX4(){clearTimeout(Hjk);Hjk=null;Hjk=setTimeout("HX7()",Hgj);}
function HX5(){clearTimeout(Hjk);Hjk=null;Hjk=setTimeout("HX6()",Hgj);}
function HXF(){try{if((Hg)&&(typeof(Hg.Hlc)=="boolean")&&(Hg.Hlc))return true;else return false;}catch(e){return false;}}
function HX6(){if((typeof(window.Hjj)!="boolean")||(Hjj))return true;try{if((typeof(Hg.document)!="object")||(typeof(Hg.document.body)=="undefined")||(Hg.document.body==null)||(HXF())){clearTimeout(Hjk);Hjk=null;Hjk=setTimeout("HX6()",Hgj);
}else{var kp=Hg.document.body;HW5();}}catch(e){Hax=false;if(HX2(e))return true;}}
function HX7(){if((typeof(window.Hjj)!="boolean")||(Hjj))return true;try{var kq=typeof(Hg.document);}catch(e){Hax=false;return true;}if(typeof(Hg.document)!="unknown"){if((Hg.document.readyState!="complete")||(HXF())){clearTimeout(Hjk);Hjk=null;
Hjk=setTimeout("HX7()",Hgj);}else HW5();}else Hax=false;}
Hbt=(H4)?(HM_NS6)?parent:parent.document.body:window;
if(Hbt.Hlb){Hbt=(HM_NS6)?window:window.document.body;}
else Hbt.Hlb=true;HXu=(Hbt.onload)?Hbt.onload:HXD;Hbt.onload=function(){setTimeout("HW5()",10)};
if(!HM_Opera){HXz=(window.onunload)?window.onunload:HXD;window.onunload=HX3;}
popUp=HM_f_PopUp;popDown=HM_f_PopDown;
