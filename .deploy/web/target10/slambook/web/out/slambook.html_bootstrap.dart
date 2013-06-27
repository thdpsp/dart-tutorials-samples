import "dart:json" as eD;import "dart:collection" as lB;import "dart:html" as n;import "dart:isolate" as xD;import "dart:async" as gB;class fD{static const  gD="Chrome";static const  hD="Firefox";static const  iD="Internet Explorer";static const  jD="Safari";final  PD;final  minimumVersion;const fD(this.PD,[this.minimumVersion]);}class kD{final  name;const kD(this.name);} KC(){} LC(){var DE=n.document.body;var EE;var FE=new nC(DE);EE=DE.nodes[3].nodes[1];FE.VB(new lD()..host=EE);FE.fB();FE.insert();}main(){BC=true;KC();LC();}class lD extends FC with u{var GE;static final MC=new n.DocumentFragment.html('''
      <div class="entry">
        <label>First name?</label>
        <input type="text">
      </div>
      <div class="entry">
        <label>Favorite quote?</label>
        <textarea></textarea>
      </div> 
      <div class="entry">
        <label>Favorite color?</label>
        <input type="color">
      </div>
      <div class="entry">
        <label>Birthday?</label>
        <input type="date">
      </div>
      <div class="entry">
        <label>Favorite volume?</label>
        <input type="range" min="0" max="11">  
      </div>
      <div class="entry">
        <label>Cat or dog?</label>
        <input name="catOrDog" type="radio" value="cat">Cat
        <input name="catOrDog" type="radio" value="dog">Dog
        <input name="catOrDog" type="radio" value="iguana">Iguana
      </div>
      <div>
        <label>Favorite type of music?</label>
        <select>
          <option>Classical</option>
          <option>Country</option>
          <option>Rock</option>
          <option>Silence</option>
        </select>
      </div>
      <div class="entry">
        <label for="zombies">Check for zombies. </label>
        <input type="checkbox" id="zombies">
      </div>
      <div class="entry">
        <label>Favorite things?</label>
        <input type="checkbox" id="kittens">
          <label for="kittens" class="andrews">Kittens</label>
        <input type="checkbox" id="raindrops">
          <label for="raindrops" class="andrews">Raindrops</label>
        <input type="checkbox" id="mittens">
          <label for="mittens" class="andrews">Mittens</label>
        <input type="checkbox" id="kettles">
          <label for="kettles" class="andrews">Kettles</label>
      </div>

      <div class="submitarea">
        <input type="submit" value="Submit">
        <input type="reset" value="Clear"> <br>    
        <textarea disabled="" class="responsetext"></textarea>
      </div>
      
      <script type="application/dart" src="xslambookform.dart">
      </script>
    ''');var HE,IE,JE,KE,LE,ME,NE,OE,PE,QE,RE,SE,TE,UE;var VE;var WE;var XE,YE; TD(){var ZE=createShadowRoot("x-slambook-form");bD("x-slambook-form",new tB({"x-slambook-form":"[is=\"x-slambook-form\"]"}));GE=UD("x-slambook-form");WE=new nC(ZE);ZE.nodes.add(MC.clone(true));HE=ZE.nodes[1].nodes[3];WE.listen(HE.onInput,(h){l['firstName']=HE.value;});WE.AB(()=>l['firstName'],(g){if(HE.value!=g)HE.value=g;},false,false);YE=ZE.nodes[3].nodes[3];WE.listen(YE.onInput,(h){l['favoriteQuote']=YE.value;});WE.AB(()=>l['favoriteQuote'],(g){if(YE.value!=g)YE.value=g;},false,false);PE=ZE.nodes[5].nodes[3];WE.listen(PE.onInput,(h){l['favoriteColor']=PE.value;});WE.AB(()=>l['favoriteColor'],(g){if(PE.value!=g)PE.value=g;},false,false);QE=ZE.nodes[7].nodes[3];WE.listen(QE.onInput,(h){l['birthday']=QE.value;});WE.AB(()=>l['birthday'],(g){if(QE.value!=g)QE.value=g;},false,false);RE=ZE.nodes[9].nodes[3];WE.listen(RE.onInput,(h){l['volume']=RE.value;});WE.AB(()=>l['volume'],(g){if(RE.value!=g)RE.value=g;},false,false);SE=ZE.nodes[11].nodes[3];WE.listen(SE.onChange,(h){l['catOrDog']='cat';});WE.AB(()=>l['catOrDog']=='cat',(g){if(SE.checked!=g)SE.checked=g;},false,false);TE=ZE.nodes[11].nodes[5];WE.listen(TE.onChange,(h){l['catOrDog']='dog';});WE.AB(()=>l['catOrDog']=='dog',(g){if(TE.checked!=g)TE.checked=g;},false,false);UE=ZE.nodes[11].nodes[7];WE.listen(UE.onChange,(h){l['catOrDog']='iguana';});WE.AB(()=>l['catOrDog']=='iguana',(g){if(UE.checked!=g)UE.checked=g;},false,false);VE=ZE.nodes[13].nodes[3];WE.listen(VE.onChange,(h){l['music']=VE.selectedIndex;});WE.AB(()=>l['music'],(g){if(VE.selectedIndex!=g)VE.selectedIndex=g;},false,false);IE=ZE.nodes[15].nodes[3];WE.listen(IE.onChange,(h){l['zombies']=IE.checked;});WE.AB(()=>l['zombies'],(g){if(IE.checked!=g)IE.checked=g;},false,false);JE=ZE.nodes[17].nodes[3];WE.listen(JE.onChange,(h){FB['kittens']=JE.checked;});WE.AB(()=>FB['kittens'],(g){if(JE.checked!=g)JE.checked=g;},false,false);KE=ZE.nodes[17].nodes[7];WE.listen(KE.onChange,(h){FB['raindrops']=KE.checked;});WE.AB(()=>FB['raindrops'],(g){if(KE.checked!=g)KE.checked=g;},false,false);LE=ZE.nodes[17].nodes[11];WE.listen(LE.onChange,(h){FB['mittens']=LE.checked;});WE.AB(()=>FB['mittens'],(g){if(LE.checked!=g)LE.checked=g;},false,false);ME=ZE.nodes[17].nodes[15];WE.listen(ME.onChange,(h){FB['kettles']=ME.checked;});WE.AB(()=>FB['kettles'],(g){if(ME.checked!=g)ME.checked=g;},false,false);NE=ZE.nodes[19].nodes[1];WE.listen(NE.onClick,(h){dD(h);});OE=ZE.nodes[19].nodes[3];WE.listen(OE.onClick,(h){aD(h);});XE=ZE.nodes[19].nodes[7];WE.listen(XE.onInput,(h){WB=XE.value;});WE.AB(()=>WB,(g){if(XE.value!=g)XE.value=g;},false,false);WE.fB();} WD(){WE.insert();} ZD(){WE.remove();WE=HE=YE=PE=QE=RE=SE=TE=UE=VE=IE=JE=KE=LE=ME=NE=OE=XE=null;}var aE=xB({'kittens':true,'raindrops':false,'mittens':true,'kettles':false}); get FB{if(s){w(this,k.q,'favoriteThings');}return aE;}var cE=xB({'firstName':'mem','favoriteQuote':'Enjoy all your meals.','favoriteColor':'#4169E1','birthday':'1963-08-30','volume':'11','catOrDog':'dog','music':2,'zombies':true}); get l{if(s){w(this,k.q,'theData');}return cE;}var dE=''; get WB{if(s){w(this,k.q,'serverResponse');}return dE;}set WB( g){if(IB(this)){o(this,k.q,'serverResponse',dE,g);}dE=g;}var request; dD( g){g.preventDefault();request=new n.HttpRequest();request.onReadyStateChange.listen(onData);var h='http://127.0.0.1:4040';request.open('POST',h);request.send(cD());} onData(eE){if(request.readyState==n.HttpRequest.DONE&&request.status==200){WB='Server Sez: '+request.responseText;}else if(request.readyState==n.HttpRequest.DONE&&request.status==0){WB='No server';}} aD( g){g.preventDefault();FB['kittens']=false;FB['raindrops']=false;FB['mittens']=false;FB['kettles']=false;l['firstName']='';l['favoriteQuote']='';l['favoriteColor']='#FFFFFF';l['birthday']='2013-01-01';l['volume']='0';l['catOrDog']='cat';l['music']=0;l['zombies']=false;WB='Data cleared.';} cD(){l['favoriteThings']=FB;return eD.stringify(l);}}class NC<JB> extends jC with u implements List<JB>{final  fE;NC([ g]):fE=g!=null?new List<JB>(g):<JB>[] ;factory NC.yD( g)=>new NC<JB>()..addAll(g); get length{if(s)w(this,k.q,'length');return fE.length;}set length( h){var i=fE.length;if(i==h)return;if(IB(this)){if(h<i){for(int g=i-1;g>=h;g-- ){o(this,k.LB,g,fE[g],null);}o(this,k.q,'length',i,h);}else{o(this,k.q,'length',i,h);for(int g=i;g<h;g++ ){o(this,k.NB,g,null,null);}}}fE.length=h;} operator[]( g){if(s)w(this,k.GB,g);return fE[g];}operator[]=( g, h){var i=fE[g];if(IB(this)){o(this,k.GB,g,i,h);}fE[g]=h;} sublist( h,[ g])=>new NC<JB>.yD(super.sublist(h,g)); add( h){var g=fE.length;if(IB(this)){o(this,k.q,'length',g,g+1);o(this,k.NB,g,null,h);}fE.add(h);} removeRange( h, g){if(g==0)return;AC.hC(this,h,g);if(IB(this)){for(int i=h;i<g;i++ ){o(this,k.LB,i,this[i],null);}}AC.gC(this,h+g,this,h,this.length-g-h);this.length=this.length-g;} toString(){if(s){for(int g=0;g<length;g++ ){w(this,k.GB,g);}}return fE.toString();}}typedef  YB<v,t>();class QB<v,t> extends u implements Map<v,t>{final  gE;var hE;var iE;QB({ createMap}):gE=createMap!=null?createMap():new Map<v,t>(){hE=new OC<v,t>(this);iE=new PC<v,t>(this);}factory QB.zD( i,{ createMap}){var g=new QB<v,t>(createMap:createMap);i.forEach(( h, j){g[h]=j;});return g;} get keys=>hE; get values=>iE; get length{if(s)w(this,k.q,'length');return gE.length;} get isEmpty=>length==0; get isNotEmpty=>length!=0; jE( g)=>w(this,k.GB,g); kE(){w(this,k.q,'length');gE.keys.forEach(jE);} containsKey( g){if(s)jE(g);return gE.containsKey(g);} operator[]( g){if(s)jE(g);return gE[g];} operator[]=( h, g){var j=gE.length;var i=gE[h];gE[h]=g;if(IB(this)){if(j!=gE.length){o(this,k.q,'length',j,gE.length);o(this,k.NB,h,i,g);}else if(i!=g){o(this,k.GB,h,i,g);}}} putIfAbsent( g, j()){if(s)jE(g);var h=gE.length;var i=gE.putIfAbsent(g,j);if(IB(this)&&h!=gE.length){o(this,k.q,'length',h,gE.length);o(this,k.NB,g,null,i);}return i;} remove( g){if(s)jE(g);var h=gE.length;var i=gE.remove(g);if(IB(this)&&h!=gE.length){o(this,k.LB,g,i,null);o(this,k.q,'length',h,gE.length);}return i;} addAll( h)=>h.forEach((g,i){this[g]=i;}); clear(){var g=gE.length;if(IB(this)&&g>0){gE.forEach((i,h){o(this,k.LB,i,h,null);});o(this,k.q,'length',g,0);}gE.clear();} forEach( g( key, value)){if(s)kE();gE.forEach(g);} toString()=>lB.Maps.mapToString(this);}class OC<v,t> extends lB.IterableBase<v>{final  gE;OC(this.gE); get iterator=>new mD<v,t>(gE);}class mD<v,t> implements Iterator<v>{final  gE;final  hE;var lE=false;mD( g):gE=g,hE=g.gE.keys.iterator; moveNext(){if(s)w(gE,k.q,'length');return lE=hE.moveNext();} get current{var g=hE.current;if(s&&lE)gE.jE(g);return g;}}class PC<v,t> extends lB.IterableBase<t>{final  gE;PC(this.gE); get iterator=>new nD<v,t>(gE);}class nD<v,t> implements Iterator<t>{final  gE;final  hE;final  iE;var lE;nD( g):gE=g,hE=g.gE.keys.iterator,iE=g.gE.values.iterator; moveNext(){if(s)w(gE,k.q,'length');var h=hE.moveNext();var g=iE.moveNext();if(h!=g){throw new StateError('keys and values should be the same length');}return lE=g;} get current{if(s&&lE)gE.jE(hE.current);return iE.current;}}typedef  KB( e);typedef  QC( changes);typedef  RB();typedef  RC();class hB{final oldValue;final newValue;final  changes;hB(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is hB&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>dC(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class k{static const q=1;static const GB=2;static const NB=GB|4;static const LB=GB|8;final  type;final key;final oldValue;final newValue;k(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is k&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>eC(type,key,oldValue,newValue); toString(){var g;switch (type){case q:g='field';break;case GB:g='index';break;case NB:g='insert';break;case LB:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} SC(g, i,[ m]){if(g is u){var h=g;return mB(h,(p){i(new hB(h,h,p));});}var j=new iB(g,i,m);if(!j.mE()){return UC;}return j.nE;} mB( g, i){if(g.UB==null)g.UB=new nB();var h=g.UB.add(i);return h.remove;}xB(g){if(g is Map){var h=null;if(g is lB.SplayTreeMap){h=()=>new lB.SplayTreeMap();}else if(g is lB.LinkedHashMap){h=()=>new lB.LinkedHashMap();}return new QB.zD(g,createMap:h);}if(g is Set)return new zB.AE(g);if(g is Iterable)return new NC.yD(g);return g;}class u{var UB;var TB;final  hashCode= ++u.TC;static var TC=0;} IB( g)=>g.UB!=null&&g.UB.head!=null; get s=>SB!=null; w( g, h,i)=>SB.oE(g,h,i); o( g, j,m, h, i){if((j&(k.NB|k.LB))==0){if(h==i)return;}if(OB==null){OB=[] ;fC(VC);}if(g.TB==null){g.TB=[] ;OB.add(g);}g.TB.add(new k(j,m,h,i));} UC(){}var SB;var yB=100;var OB;var PB; VC(){var p=0;while (OB!=null||PB!=null){var j=OB;OB=null;var i=PB;PB=null;if(p++ ==yB){WC(j,i);return;}if(j!=null){for(var h in j){var MB=h.TB;h.TB=null;for(var g=h.UB.head;g!=null;g=g.next){var m=g.value;try {m(MB);}catch (XB,BB){ZB(XB,BB,m,'from ${h}');}}}}if(i!=null){i.forEach((wD,wB){wB.pE();});}}} WC( m, j){var g=[] ;if(m!=null){for(var i in m){var MB=i.TB;g.add('${i} ${MB}');}}if(j!=null){for(var p in j.values){var h=p.pE();if(h!=null)g.add('${p} ${h}');}}OB=null;PB=null;var BB='exceeded notifiction limit of ${yB}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';ZC(BB);}class iB{static var XC=0;final  qE= ++iB.XC;final  rE;final  sE;final  tE;final  uE=new Map();final  vE=[] ;var wE=false;var xE;iB(this.rE,this.sE,this.tE); toString()=>tE!=null?'<observer ${qE}: ${tE}>':'<observer ${qE}>'; mE(){var h=SB;SB=this;try {xE=rE();if(xE is Iterable&&xE is !List&&xE is !u){xE=(xE as Iterable).toList();}}catch (g,i){ZB(g,i,rE,'from ${this}');xE=null;}uE.forEach(yE);uE.clear();assert(SB==this);SB=h;zE();return vE.length>0;} AF( i){try {sE(i);}catch (g,h){ZB(g,h,sE,'from ${this}');}} zE(){var g=xE;if(g is !u)return;vE.add(mB(g,(h){AF(new hB(g,g,h));}));} oE( p, BB,g){var i=uE.putIfAbsent(p,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|BB;}catch (j,m){ZB(j,m,g,'hashCode or operator == from ${this}');}} yE( i, j){vE.add(mB(i,(m){if(wE)return;for(var g in m){var h=j[g.key];if(h!=null&&(h&g.type)!=0){wE=true;if(PB==null){PB=new lB.SplayTreeMap();}PB[qE]=this;return;}}}));} nE(){for(var g in vE){g();}wE=false;} pE(){if(!wE)return null;var g=xE;nE();mE();try {if(g==xE)return null;}catch (i,j){ZB(i,j,g,'operator == from ${this}');return null;}var h=new hB(g,xE);AF(h);return h;}}typedef  YC( message);var ZC=(g)=>print(g);typedef  aC(error,stackTrace,obj, message);var ZB=bC; bC(i,g,h, j){print('web_ui.observe: unhandled error calling ${h} ${j}.\n' 'error:\n${i}\n\nstack trace:\n${g}');}class zB<HB> extends iC with u implements Set<HB>{final  BF;final  CF;zB({ createMap}):BF=createMap!=null?createMap():new Map<HB,Object>(),CF=createMap;factory zB.AE( g,{ createMap}){return new zB<HB>(createMap:createMap)..addAll(g);} contains( g){if(s)w(this,k.GB,g);return BF.containsKey(g);} add( g){var h=BF.length;BF[g]=const Object();if(h!=BF.length){o(this,k.q,'length',h,BF.length);o(this,k.NB,g,null,g);}} remove( g){if(s)w(this,k.GB,g);var h=BF.length;BF.remove(g);if(h!=BF.length){if(IB(this)){o(this,k.LB,g,g,null);o(this,k.q,'length',h,BF.length);}return true;}return false;} clear(){if(IB(this)){for(var g in BF.keys){o(this,k.LB,g,g,null);}o(this,k.q,'length',BF.length,0);}BF.clear();} get length{if(s)w(this,k.q,'length');return BF.length;} get isEmpty=>length==0; get iterator=>new oD<HB>(this); addAll( g)=>g.forEach(add); toString(){if(s){for(HB g in BF.keys){w(this,k.GB,g);}}return BF.keys.toSet().toString();}}class oD<HB> implements Iterator<HB>{final  DF;final  EF;var FF=false;oD( g):DF=g,EF=g.BF.keys.iterator; moveNext(){DF.length;return FF=EF.moveNext();} get current{var g=EF.current;if(s&&FF)w(DF,k.GB,g);return g;}}class cC{}class DB<EB>{var GF;var HF;var IF;var JF;DB.BE( g,this.IF):JF=g{if(IF!=null)IF.KF++ ;} get next=>HF; get value=>JF;set value( g)=>JF=g; LF( g, h){HF=h;GF=g;if(g!=null)g.HF=this;if(h!=null)h.GF=this;return this;} append( g)=>new DB<EB>.BE(g,IF).LF(this,HF); remove(){if(IF==null)return;IF.KF-- ;if(GF!=null){GF.HF=HF;}else{IF.MF=HF;}if(HF!=null){HF.GF=GF;}else{IF.NF=GF;}HF=null;GF=null;IF=null;}}class nB<EB> extends lB.IterableBase<EB>{var MF;var NF; get length=>KF;var KF=0;nB(){} get head=>MF; add( h){var g=new DB<EB>.BE(h,this);if(NF==null)return MF=NF=g;return NF=g.LF(NF,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new pD<EB>(this);}class pD<EB> implements Iterator<EB>{var OF;var IF;var PF;var QF=-1;pD(this.IF){OF=new List<DB>(IF.length);var h=0;var g=IF.head;while (g!=null){OF[h++ ]=g;g=g.next;}} get current=>PF; moveNext(){do{QF++ ;}while(QF<OF.length&&OF[QF].IF!=IF);if(QF<OF.length){PF=OF[QF].value;return true;}else{PF=null;return false;}}}aB(h,g)=>h.hashCode*31+g.hashCode;dC(h,g,i)=>aB(aB(h,g),i);eC(g,i,h,j)=>aB(aB(g,i),aB(h,j)); fC( h()){var g=new xD.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);}class AC{static  gC( p, g, BB, i, m){if(g==null)g=0;if(i==null)i=0;if(g<i){for(int h=g+m-1,j=i+m-1;h>=g;h-- ,j-- ){BB[j]=p[h];}}else{for(int h=g,j=i;h<g+m;h++ ,j++ ){BB[j]=p[h];}}}static  hC( j, h, g){if(g<0){throw new ArgumentError("negative length ${g}");}if(h<0){var i="${h} must be greater than or equal to 0";throw new RangeError(i);}if(h+g>j.length){var i="${h} + ${g} must be in the range [0..${j.length})";throw new RangeError(i);}}}abstract class iC extends lB.IterableBase<dynamic>{}abstract class jC extends lB.ListMixin<dynamic>{} kC(g){if(g is cC)return g.toString();g=g.toString();return mC(g)?g:'#';}const lC=const["http","https","ftp","mailto"]; mC( h){var g=Uri.parse(h).scheme;if(g=='')return true;return lC.contains(g.toLowerCase())||"MAILTO"==g.toUpperCase();}abstract class bB{ fB(){} insert(); remove();}class qD extends bB{final  HC;var RF;final  listener;qD(this.HC,this.listener); insert(){RF=HC.listen(listener);} remove(){RF.cancel();RF=null;}}class rD extends bB{final  JC;final  vB;final  IC;final  isFinal;var kB;rD(this.vB,this.JC,this.IC,this.isFinal); SF(g){JC(IC?kC(g):g);} insert(){if(isFinal){SF(vB());}else if(kB!=null){throw new StateError('data binding already attached.');}else{kB=qC(vB,(g)=>SF(g.newValue),'dom-property-binding');}} remove(){if(!isFinal){kB();kB=null;}}}class sD extends bB{final VB;sD(this.VB); fB(){VB..TD()..SD()..RD();} insert(){VB..VD()..WD();} remove(){VB..ZD()..YD();}}class nC extends bB{final  XD;final  children=[] ;final  nodes=[] ;nC(this.XD); listen( i, h){children.add(new qD(i,(g){h(g);rC();}));} AB(g,j,h,[i=false]){children.add(new rD(g,j,i,h));} VB( g){children.add(new sD(g));} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); fB(){for(var g=0,h=children.length;g<h;g++ ){children[g].fB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}var BC=false; oC(g, p,[ m]){if(BC)return SC(g,p);if(p==null)return (){};if(cB==null)cB=new nB<dB>();var i;var h=CB.vC;if(g is EC){i=(g as EC).TF;}else if(g is Function){i=g;try {var j=g();if(j is List){h=CB.eB;}else if(j is Iterable){h=CB.eB;i=()=>g().toList();}else if((j is lB.LinkedHashMap)||(j is lB.SplayTreeMap)){h=CB.qB;}else if(j is Map){h=CB.pB;}}catch (MB,wB){print('error: evaluating ${m!=null?m:"<unnamed>"} ' 'watcher threw error (${MB}, ${wB})');}}else if(g is List){i=()=>g;h=CB.eB;}else if(g is Iterable){i=()=>g.toList();h=CB.eB;}else if((g is lB.LinkedHashMap)||(g is lB.SplayTreeMap)){i=()=>g;h=CB.qB;}else if(g is Map){i=()=>g;h=CB.pB;}var BB=pC(h,i,p,m);var XB=cB.add(BB);return XB.remove;} pC( j, g, i, h){switch (j){case CB.eB:return new tD(g,i,h);case CB.qB:return new vD(g,i,h);case CB.pB:return new uD(g,i,h);default:return new dB(g,i,h);}} qC(h,i,[j]){var m=oC(h,i,j);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new hB(null,g));return m;}var cB;class dB{final  uB;final  TF;final  UF;var VF;dB(this.TF,this.UF,this.uB){VF=TF();} toString()=>uB==null?'<unnamed>':uB; QD(){var g=WF();if(XF(g)){var h=VF;YF(g);UF(new hB(h,g));return true;}return false;} XF(g)=>VF!=g; YF(g){VF=g;}WF(){try {return TF();}catch (g,h){print('error: evaluating ${this} watcher threw an exception (${g}, ${h})');}return VF;}}final  CC=10; rC(){if(cB==null)return;var g;var h=0;do{g=false;for(var i in cB){if(i.QD()){g=true;}}}while(g&& ++h<CC);if(h==CC){print('Possible loop in watchers propagation, stopped dispatch.');}}typedef  DC<sC>();typedef  tC<sC>( value);class EC<sC>{}class tD<sC> extends dB{tD(g, i, h):super(g,i,h){YF(WF());} XF( g){return oB(VF,g);} YF(g){VF=new List<sC>.from(g);}}class uD<jB,uC> extends dB{uD(g, i, h):super(g,i,h){YF(WF());} XF( g){var i=VF.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(VF[h]!=g[h])return true;}return false;} YF(g){VF=new Map<jB,uC>.from(g);}}class vD<jB,uC> extends dB{vD(g, i, h):super(g,i,h){YF(WF());} XF( g){return oB(g.keys,VF.keys)||oB(g.values,VF.values);} YF(g){VF=new lB.LinkedHashMap.from(g);}} oB( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class CB{final ZF;const CB.CE(this.ZF);toString()=>'Enum.${ZF}';static const eB=const CB.CE('LIST');static const pB=const CB.CE('HASH_MAP');static const qB=const CB.CE('ORDERED_MAP');static const vC=const CB.CE('OTHER');}abstract class FC implements n.Element{var aF;var bF;var cF={};var dF=new tB({}); UD( g)=>dF; bD( h,var g){dF=g;} get host{if(aF==null)throw new StateError('host element has not been set.');return aF;}set host( g){if(g==null){throw new ArgumentError('host must not be null.');}var h=g.xtag;if(h!=null&&h!=g){throw new ArgumentError('host must not have its xtag property set.');}if(aF!=null){throw new StateError('host can only be set once.');}g.xtag=this;aF=g;}createShadowRoot([ g]){var h=eF();if(g!=null){cF[g]=h;}return h;}eF(){if(GC){return host.createShadowRoot();}if(bF==null)bF=[] ;bF.add(new n.DivElement());return bF.last;} SD(){} VD(){} YD(){} RD(){if(GC)return;if(bF.length==0){throw new StateError('Distribution algorithm requires at least one shadow' ' root and can only be run once.');}var j=bF;var g=j.removeLast();var BB=g;var p=new List.from(nodes);var m=[] ;var MB=[] ;while (true){p=fF(g,p);var h=g.query('shadow');if(h!=null){if(j.length>0){g=j.removeLast();m.add(h);MB.add(g);}else{sB(h,p);break;}}else{break;}}for(int i=0;i<m.length;i++ ){var h=m[i];var g=MB[i];sB(h,g.nodes);}nodes.clear();nodes.addAll(BB.nodes);for(var XB in cF.keys){if(cF[XB]==BB){cF[XB]=this;break;}}} fF( BB, j){for(var g in BB.queryAll('content')){if(!xC(g))continue;var i=g.attributes['select'];if(i==null||i=='')i='*';var h=[] ;var p=[] ;for(var m in j){(wC(m,i)?h:p).add(m);}if(h.length==0){h=g.nodes;}sB(g,h);j=p;}return j;}static  wC( h, g){if(h is !n.Element)return g=='*';return (h as n.Element).matches(g);}static  rB( g)=>g.tagName=='CONTENT'||g.tagName=='SHADOW';static  xC( g){assert(rB(g));for(g=g.parent;g!=null;g=g.parent){if(rB(g))return false;}return true;}static  sB( g, h){assert(rB(g));g.parent.insertAllBefore(h,g);g.remove();} get nodes=>host.nodes; replaceWith( g){host.replaceWith(g);} remove()=>host.remove();set text( g){host.text=g;} contains( g)=>host.contains(g); insertBefore( g, h)=>host.insertBefore(g,h); insertAllBefore( g, h)=>host.insertAllBefore(g,h); get attributes=>host.attributes; get children=>host.children; clone( g)=>host.clone(g); get parent=>host.parent; get parentNode=>host.parentNode; get nodeValue=>host.nodeValue; get id=>host.id;set id( g){host.id=g;} set innerHtml( g){host.innerHtml=g;} get tagName=>host.tagName; matches( g)=>host.matches(g); query( g)=>host.query(g); queryAll( g)=>host.queryAll(g); get CD=>host.CD; get DD=>host.DD; get GD=>host.GD; ED( g)=>host.ED(g); FD( g)=>host.FD(g); JD( g)=>host.JD(g); KD( g)=>host.KD(g); OD( h, g)=>host.OD(h,g);get AD=>host.AD; get BD=>host.BD; get localName=>host.localName; get HD=>host.HD; get ID=>host.ID; zC( i, g,[ h]){host.zC(i,g,h);} LD( g)=>host.LD(g); MD( i, g,[ h]){host.MD(i,g,h);} ND( g, h)=>host.ND(g,h);get xtag=>host.xtag;set xtag(g){host.xtag=g;} append( g)=>host.append(g); get onChange=>host.onChange; get onClick=>host.onClick; get onInput=>host.onInput;}class tB{final  gF;tB(this.gF); operator[]( g)=>gF[g];}var yC=false; get GC=>yC&&n.ShadowRoot.supported;//@ sourceMappingURL=slambook.html_bootstrap.dart.map