import "dart:html" as EB;import "dart:collection" as hB;import "dart:isolate" as PD;import "dart:async" as GC;class zC{static const  AD="Chrome";final  vC;final  minimumVersion;const zC(this.vC,[this.minimumVersion]);}class BD{final  name;const BD(this.name);}final  HB=QC({'The Cat in the Hat':true,'War and Peace':false,'Pride and Prejudice':true,'On the Road':true,'The Hunger Games':true,'The Java Tutorial':false,'The Joy of Cooking':false,'Goodnight Moon':true}); HC(){EB.window.onLoad.listen((i){var g=(EB.query('#bookselector') as EB.SelectElement).options;print(g.length);g.forEach((h)=>h.selected=HB[h.value]);});} get IC{return HB.keys.where((g)=>HB[g]).toList();} JC( g){var h=(EB.query('#bookselector') as EB.SelectElement).selectedOptions;HB.forEach((i,j)=>HB[i]=false);h.forEach((g)=>HB[g.value]=true);} KC(){var VD=EB.document.body;final WD=new EB.Element.html('<h4>You chose:</h4>'),XD=new EB.Element.html('<select multiple="" id="bookselector">\n            <option style="display:none"></option>\n        </select>'),YD=new EB.Element.html('<option template="" repeat="key in books.keys"></option>'),ZD=new EB.Element.html('<ul>\n           <li style="display:none"></li>\n        </ul>'),aD=new EB.Element.html('<li template="" repeat="selected in booksselected"></li>');var bD;var cD=new uB(VD);bD=VD.nodes[3].nodes[3];cD.xC(bD,()=>!HB.isEmpty,(cD){var dD,eD,fD,gD;eD=XD.clone(true);dD=eD.nodes[1];cD.loop(dD,()=>HB.keys,(h,g,cD){var j=h[g];var hD;hD=YD.clone(true);var iD=cD.BC(()=>j,false);hD.nodes.add(iD);cD.yC(()=>j,(i){if(hD.value!=i)hD.value=i;},false,false);cD.add(hD);});cD.listen(eD.onChange,(l){JC(l);});gD=ZD.clone(true);fD=gD.nodes[1];cD.loop(fD,()=>IC,(h,g,cD){var v=h[g];var jD;jD=aD.clone(true);var kD=cD.BC(()=>v,false);jD.nodes.add(kD);cD.add(jD);});cD.addAll([new EB.Text('\n        \n        '),new EB.Text('\n        '),eD,new EB.Text('\n\n        '),WD.clone(true),new EB.Text('\n        '),gD,new EB.Text('\n      ')]);});cD.aB();cD.insert();}main(){wB=false;HC();KC();}class CD<JB> extends gC with s implements List<JB>{final  lD;CD([ g]):lD=g!=null?new List<JB>(g):<JB>[] ;factory CD.QD( g)=>new CD<JB>()..addAll(g); get length{if(o)w(this,k.q,'length');return lD.length;}set length( h){var i=lD.length;if(i==h)return;if(GB(this)){if(h<i){for(int g=i-1;g>=h;g-- ){m(this,k.LB,g,lD[g],null);}m(this,k.q,'length',i,h);}else{m(this,k.q,'length',i,h);for(int g=i;g<h;g++ ){m(this,k.KB,g,null,null);}}}lD.length=h;} operator[]( g){if(o)w(this,k.CB,g);return lD[g];}operator[]=( g, h){var i=lD[g];if(GB(this)){m(this,k.CB,g,i,h);}lD[g]=h;} add( h){var g=lD.length;if(GB(this)){m(this,k.q,'length',g,g+1);m(this,k.KB,g,null,h);}lD.add(h);} toString(){if(o){for(int g=0;g<length;g++ ){w(this,k.CB,g);}}return lD.toString();}}typedef  TB<p,n>();class PB<p,n> extends s implements Map<p,n>{final  mD;var nD;var oD;PB({ createMap}):mD=createMap!=null?createMap():new Map<p,n>(){nD=new LC<p,n>(this);oD=new MC<p,n>(this);}factory PB.RD( i,{ createMap}){var g=new PB<p,n>(createMap:createMap);i.forEach(( h, j){g[h]=j;});return g;} get keys=>nD; get values=>oD; get length{if(o)w(this,k.q,'length');return mD.length;} get isEmpty=>length==0; get isNotEmpty=>length!=0; pD( g)=>w(this,k.CB,g); qD(){w(this,k.q,'length');mD.keys.forEach(pD);} containsKey( g){if(o)pD(g);return mD.containsKey(g);} operator[]( g){if(o)pD(g);return mD[g];} operator[]=( h, g){var j=mD.length;var i=mD[h];mD[h]=g;if(GB(this)){if(j!=mD.length){m(this,k.q,'length',j,mD.length);m(this,k.KB,h,i,g);}else if(i!=g){m(this,k.CB,h,i,g);}}} putIfAbsent( g, j()){if(o)pD(g);var h=mD.length;var i=mD.putIfAbsent(g,j);if(GB(this)&&h!=mD.length){m(this,k.q,'length',h,mD.length);m(this,k.KB,g,null,i);}return i;} remove( g){if(o)pD(g);var h=mD.length;var i=mD.remove(g);if(GB(this)&&h!=mD.length){m(this,k.LB,g,i,null);m(this,k.q,'length',h,mD.length);}return i;} addAll( h)=>h.forEach((g,i){this[g]=i;}); clear(){var g=mD.length;if(GB(this)&&g>0){mD.forEach((i,h){m(this,k.LB,i,h,null);});m(this,k.q,'length',g,0);}mD.clear();} forEach( g( key, value)){if(o)qD();mD.forEach(g);} toString()=>hB.Maps.mapToString(this);}class LC<p,n> extends hB.IterableBase<p>{final  mD;LC(this.mD); get iterator=>new DD<p,n>(mD);}class DD<p,n> implements Iterator<p>{final  mD;final  nD;var rD=false;DD( g):mD=g,nD=g.mD.keys.iterator; moveNext(){if(o)w(mD,k.q,'length');return rD=nD.moveNext();} get current{var g=nD.current;if(o&&rD)mD.pD(g);return g;}}class MC<p,n> extends hB.IterableBase<n>{final  mD;MC(this.mD); get iterator=>new ED<p,n>(mD);}class ED<p,n> implements Iterator<n>{final  mD;final  nD;final  oD;var rD;ED( g):mD=g,nD=g.mD.keys.iterator,oD=g.mD.values.iterator; moveNext(){if(o)w(mD,k.q,'length');var h=nD.moveNext();var g=oD.moveNext();if(h!=g){throw new StateError('keys and values should be the same length');}return rD=g;} get current{if(o&&rD)mD.pD(nD.current);return oD.current;}}typedef  FB( e);typedef  NC( changes);typedef  IB();typedef  OC();class cB{final oldValue;final newValue;final  changes;cB(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is cB&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>cC(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class k{static const q=1;static const CB=2;static const KB=CB|4;static const LB=CB|8;final  type;final key;final oldValue;final newValue;k(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is k&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>dC(type,key,oldValue,newValue); toString(){var g;switch (type){case q:g='field';break;case CB:g='index';break;case KB:g='insert';break;case LB:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} PC(g, i,[ l]){if(g is s){var h=g;return iB(h,(v){i(new cB(h,h,v));});}var j=new dB(g,i,l);if(!j.sD()){return SC;}return j.tD;} iB( g, i){if(g.SB==null)g.SB=new jB();var h=g.SB.add(i);return h.remove;}QC(g){if(g is Map){var h=null;if(g is hB.SplayTreeMap){h=()=>new hB.SplayTreeMap();}else if(g is hB.LinkedHashMap){h=()=>new hB.LinkedHashMap();}return new PB.RD(g,createMap:h);}if(g is Set)return new tB.SD(g);if(g is Iterable)return new CD.QD(g);return g;}class s{var SB;var RB;final  hashCode= ++s.RC;static var RC=0;} GB( g)=>g.SB!=null&&g.SB.head!=null; get o=>QB!=null; w( g, h,i)=>QB.uD(g,h,i); m( g, j,l, h, i){if((j&(k.KB|k.LB))==0){if(h==i)return;}if(MB==null){MB=[] ;eC(TC);}if(g.RB==null){g.RB=[] ;MB.add(g);}g.RB.add(new k(j,l,h,i));} SC(){}var QB;var sB=100;var MB;var NB; TC(){var v=0;while (MB!=null||NB!=null){var j=MB;MB=null;var i=NB;NB=null;if(v++ ==sB){UC(j,i);return;}if(j!=null){for(var h in j){var bB=h.RB;h.RB=null;for(var g=h.SB.head;g!=null;g=g.next){var l=g.value;try {l(bB);}catch (rB,OB){UB(rB,OB,l,'from ${h}');}}}}if(i!=null){i.forEach((OD,qB){qB.vD();});}}} UC( l, j){var g=[] ;if(l!=null){for(var i in l){var bB=i.RB;g.add('${i} ${bB}');}}if(j!=null){for(var v in j.values){var h=v.vD();if(h!=null)g.add('${v} ${h}');}}MB=null;NB=null;var OB='exceeded notifiction limit of ${sB}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';XC(OB);}class dB{static var VC=0;final  wD= ++dB.VC;final  xD;final  yD;final  zD;final  AE=new Map();final  BE=[] ;var CE=false;var DE;dB(this.xD,this.yD,this.zD); toString()=>zD!=null?'<observer ${wD}: ${zD}>':'<observer ${wD}>'; sD(){var h=QB;QB=this;try {DE=xD();if(DE is Iterable&&DE is !List&&DE is !s){DE=(DE as Iterable).toList();}}catch (g,i){UB(g,i,xD,'from ${this}');DE=null;}AE.forEach(EE);AE.clear();assert(QB==this);QB=h;FE();return BE.length>0;} GE( i){try {yD(i);}catch (g,h){UB(g,h,yD,'from ${this}');}} FE(){var g=DE;if(g is !s)return;BE.add(iB(g,(h){GE(new cB(g,g,h));}));} uD( v, OB,g){var i=AE.putIfAbsent(v,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|OB;}catch (j,l){UB(j,l,g,'hashCode or operator == from ${this}');}} EE( i, j){BE.add(iB(i,(l){if(CE)return;for(var g in l){var h=j[g.key];if(h!=null&&(h&g.type)!=0){CE=true;if(NB==null){NB=new hB.SplayTreeMap();}NB[wD]=this;return;}}}));} tD(){for(var g in BE){g();}CE=false;} vD(){if(!CE)return null;var g=DE;tD();sD();try {if(g==DE)return null;}catch (i,j){UB(i,j,g,'operator == from ${this}');return null;}var h=new cB(g,DE);GE(h);return h;}}typedef  WC( message);var XC=(g)=>print(g);typedef  YC(error,stackTrace,obj, message);var UB=ZC; ZC(i,g,h, j){print('web_ui.observe: unhandled error calling ${h} ${j}.\n' 'error:\n${i}\n\nstack trace:\n${g}');}class tB<DB> extends fC with s implements Set<DB>{final  HE;final  IE;tB({ createMap}):HE=createMap!=null?createMap():new Map<DB,Object>(),IE=createMap;factory tB.SD( g,{ createMap}){return new tB<DB>(createMap:createMap)..addAll(g);} contains( g){if(o)w(this,k.CB,g);return HE.containsKey(g);} add( g){var h=HE.length;HE[g]=const Object();if(h!=HE.length){m(this,k.q,'length',h,HE.length);m(this,k.KB,g,null,g);}} remove( g){if(o)w(this,k.CB,g);var h=HE.length;HE.remove(g);if(h!=HE.length){if(GB(this)){m(this,k.LB,g,g,null);m(this,k.q,'length',h,HE.length);}return true;}return false;} clear(){if(GB(this)){for(var g in HE.keys){m(this,k.LB,g,g,null);}m(this,k.q,'length',HE.length,0);}HE.clear();} get length{if(o)w(this,k.q,'length');return HE.length;} get isEmpty=>length==0; get iterator=>new FD<DB>(this); addAll( g)=>g.forEach(add); toString(){if(o){for(DB g in HE.keys){w(this,k.CB,g);}}return HE.keys.toSet().toString();}}class FD<DB> implements Iterator<DB>{final  JE;final  KE;var LE=false;FD( g):JE=g,KE=g.HE.keys.iterator; moveNext(){JE.length;return LE=KE.moveNext();} get current{var g=KE.current;if(o&&LE)w(JE,k.CB,g);return g;}}class aC{}class bC{}class AB<BB>{var ME;var NE;var OE;var PE;AB.TD( g,this.OE):PE=g{if(OE!=null)OE.QE++ ;} get next=>NE; get value=>PE;set value( g)=>PE=g; RE( g, h){NE=h;ME=g;if(g!=null)g.NE=this;if(h!=null)h.ME=this;return this;} append( g)=>new AB<BB>.TD(g,OE).RE(this,NE); remove(){if(OE==null)return;OE.QE-- ;if(ME!=null){ME.NE=NE;}else{OE.SE=NE;}if(NE!=null){NE.ME=ME;}else{OE.TE=ME;}NE=null;ME=null;OE=null;}}class jB<BB> extends hB.IterableBase<BB>{var SE;var TE; get length=>QE;var QE=0;jB(){} get head=>SE; add( h){var g=new AB<BB>.TD(h,this);if(TE==null)return SE=TE=g;return TE=g.RE(TE,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new GD<BB>(this);}class GD<BB> implements Iterator<BB>{var UE;var OE;var VE;var WE=-1;GD(this.OE){UE=new List<AB>(OE.length);var h=0;var g=OE.head;while (g!=null){UE[h++ ]=g;g=g.next;}} get current=>VE; moveNext(){do{WE++ ;}while(WE<UE.length&&UE[WE].OE!=OE);if(WE<UE.length){VE=UE[WE].value;return true;}else{VE=null;return false;}}}VB(h,g)=>h.hashCode*31+g.hashCode;cC(h,g,i)=>VB(VB(h,g),i);dC(g,i,h,j)=>VB(VB(g,i),VB(h,j)); eC( h()){var g=new PD.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);}abstract class fC extends hB.IterableBase<dynamic>{}abstract class gC extends hB.ListMixin<dynamic>{} hC(i, g,[ h]){var j=i is aC;if(h==null){h=i.toString();}if(!j&&g is EB.Text){g.text=h;}else{var l=g;g=j?new EB.Element.html(h):new EB.Text(h);l.replaceWith(g);}return g;} iC(g){if(g is bC)return g.toString();g=g.toString();return kC(g)?g:'#';}const jC=const["http","https","ftp","mailto"]; kC( h){var g=Uri.parse(h).scheme;if(g=='')return true;return jC.contains(g.toLowerCase())||"MAILTO"==g.toUpperCase();}abstract class WB{ aB(){} insert(); remove();}class HD extends WB{final  CC;var XE;final  listener;HD(this.CC,this.listener); insert(){XE=CC.listen(listener);} remove(){XE.cancel();XE=null;}}class ID extends WB{final exp;final  action;final  isFinal;var t;ID(this.exp,this.action,this.isFinal); insert(){if(isFinal){action(new cB(null,exp()));}else if(t!=null){throw new StateError('binding already attached');}else{t=eB(exp,action,'generic-binding');}} remove(){if(!isFinal){t();t=null;}}}class JD extends WB{final  FC;final  oB;final  DC;final  isFinal;var t;JD(this.oB,this.FC,this.DC,this.isFinal); YE(g){FC(DC?iC(g):g);} insert(){if(isFinal){YE(oB());}else if(t!=null){throw new StateError('data binding already attached.');}else{t=eB(oB,(g)=>YE(g.newValue),'dom-property-binding');}} remove(){if(!isFinal){t();t=null;}}}class uB extends WB{final  pB;final  children=[] ;final  nodes=[] ;uB(this.pB); listen( i, h){children.add(new HD(i,(g){h(g);qC();}));} BC( h,i){var g=new EB.Text('');children.add(new ID(()=>'${h()}',(j){g=hC(h(),g,j.newValue);},i));return g;} yC(g,j,h,[i=false]){children.add(new JD(g,j,i,h));} xC( h,g,i){children.add(new mC(h,g,i));} loop( h,g,i){children.add(new KD(h,g,i));} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); aB(){for(var g=0,h=children.length;g<h;g++ ){children[g].aB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}abstract class vB extends uB{final exp;var t;vB( g,this.exp):super(g); aB(){} insert(){super.aB();if(nodes.length>0){var i=pB.parentNode;var j=pB.nextNode;for(var g=0,h=nodes.length;g<h;g++ ){i.insertBefore(nodes[g],j);}}super.insert();} remove(){super.remove();for(var g=nodes.length-1;g>=0;g-- ){nodes[g].remove();}nodes.clear();}}typedef  lC( template);class mC extends vB{var gB=false;final  AC;mC( h,g,this.AC):super(h,g); insert(){t=eB(exp,(g){if(!gB&&g.newValue){AC(this);super.insert();gB=true;}else if(gB&&!g.newValue){super.remove();gB=false;}},'conditional-binding');} remove(){super.remove();t();t=null;}}typedef  nC( list, index, template);class KD extends vB{final  EC;KD( h,g,this.EC):super(h,g); insert(){t=eB(exp,(i){super.remove();var h=i.newValue;for(int g=0;g<h.length;g++ ){EC(h,g,this);}super.insert();},'loop-binding');} remove(){super.remove();t();t=null;}}var wB=false; oC(g, v,[ l]){if(wB)return PC(g,v);if(v==null)return (){};if(XB==null)XB=new jB<YB>();var i;var h=u.uC;if(g is zB){i=(g as zB).ZE;}else if(g is Function){i=g;try {var j=g();if(j is List){h=u.ZB;}else if(j is Iterable){h=u.ZB;i=()=>g().toList();}else if((j is hB.LinkedHashMap)||(j is hB.SplayTreeMap)){h=u.mB;}else if(j is Map){h=u.lB;}}catch (bB,qB){print('error: evaluating ${l!=null?l:"<unnamed>"} ' 'watcher threw error (${bB}, ${qB})');}}else if(g is List){i=()=>g;h=u.ZB;}else if(g is Iterable){i=()=>g.toList();h=u.ZB;}else if((g is hB.LinkedHashMap)||(g is hB.SplayTreeMap)){i=()=>g;h=u.mB;}else if(g is Map){i=()=>g;h=u.lB;}var OB=pC(h,i,v,l);var rB=XB.add(OB);return rB.remove;} pC( j, g, i, h){switch (j){case u.ZB:return new LD(g,i,h);case u.mB:return new ND(g,i,h);case u.lB:return new MD(g,i,h);default:return new YB(g,i,h);}} eB(h,i,[j]){var l=oC(h,i,j);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new cB(null,g));return l;}var XB;class YB{final  nB;final  ZE;final  aE;var bE;YB(this.ZE,this.aE,this.nB){bE=ZE();} toString()=>nB==null?'<unnamed>':nB; wC(){var g=cE();if(dE(g)){var h=bE;eE(g);aE(new cB(h,g));return true;}return false;} dE(g)=>bE!=g; eE(g){bE=g;}cE(){try {return ZE();}catch (g,h){print('error: evaluating ${this} watcher threw an exception (${g}, ${h})');}return bE;}}final  xB=10; qC(){if(XB==null)return;var g;var h=0;do{g=false;for(var i in XB){if(i.wC()){g=true;}}}while(g&& ++h<xB);if(h==xB){print('Possible loop in watchers propagation, stopped dispatch.');}}typedef  yB<rC>();typedef  sC<rC>( value);class zB<rC>{}class LD<rC> extends YB{LD(g, i, h):super(g,i,h){eE(cE());} dE( g){return kB(bE,g);} eE(g){bE=new List<rC>.from(g);}}class MD<fB,tC> extends YB{MD(g, i, h):super(g,i,h){eE(cE());} dE( g){var i=bE.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(bE[h]!=g[h])return true;}return false;} eE(g){bE=new Map<fB,tC>.from(g);}}class ND<fB,tC> extends YB{ND(g, i, h):super(g,i,h){eE(cE());} dE( g){return kB(g.keys,bE.keys)||kB(g.values,bE.values);} eE(g){bE=new hB.LinkedHashMap.from(g);}} kB( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class u{final fE;const u.UD(this.fE);toString()=>'Enum.${fE}';static const ZB=const u.UD('LIST');static const lB=const u.UD('HASH_MAP');static const mB=const u.UD('ORDERED_MAP');static const uC=const u.UD('OTHER');}//@ sourceMappingURL=multiselect.html_bootstrap.dart.map
