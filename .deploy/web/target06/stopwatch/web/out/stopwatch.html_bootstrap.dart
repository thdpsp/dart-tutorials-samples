import "dart:async" as pB;import "dart:collection" as gB;import "dart:isolate" as oC;import "dart:html" as w;class dC{static const  eC="Chrome";final  ZC;final  minimumVersion;const dC(this.ZC,[this.minimumVersion]);}class fC{final  name;const fC(this.name);}final SB=new l();var TB='00:00'; get hB{if(BC){CC(SB,s.VB,'counter');}return TB;}set hB( g){if(AC(SB)){DC(SB,s.VB,'counter',TB,g);}TB=g;}var LB=new Stopwatch();var MB;var UB;var EB; qB(){UB=w.query("#startbutton");MB=w.query("#stopbutton");MB.disabled=true;EB=w.query("#resetbutton");EB.disabled=true;} rB(){LB.start();var g=new Duration(seconds:1);new pB.Timer.periodic(g,uB);UB.disabled=true;MB.disabled=false;EB.disabled=true;} sB(){LB.stop();UB.disabled=false;EB.disabled=false;MB.disabled=true;} tB(){LB.reset();hB='00:00';EB.disabled=true;} uB( sC){var g=LB.elapsedMilliseconds~/1000;var h=0;if(g>=60){h=g~/60;g=g%60;}var i=(h<=9)?'0${h}':'${h}';var j=(g<=9)?'0${g}':'${g}';hB='${i}:${j}';} vB(){var tC=w.document.body;var uC,vC,wC,xC;var yC=new jC(tC);uC=tC.nodes[3].nodes[1];var zC=yC.bC(()=>hB,false);uC.nodes.addAll([new w.Text('\n      '),zC,new w.Text('\n      ')]);vC=tC.nodes[3].nodes[3].nodes[1];yC.listen(vC.onClick,(g){rB();});wC=tC.nodes[3].nodes[3].nodes[3];yC.listen(wC.onClick,(g){sB();});xC=tC.nodes[3].nodes[3].nodes[5];yC.listen(xC.onClick,(g){tB();});yC.cB();yC.insert();}main(){lB=true;qB();vB();}typedef  q( e);typedef  wB( changes);typedef  AB();typedef  xB();class NB{final oldValue;final newValue;final  changes;NB(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is NB&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>NC(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class s{static const VB=1;static const WB=2;static const iB=WB|4;static const jB=WB|8;final  type;final key;final oldValue;final newValue;s(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is s&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>OC(type,key,oldValue,newValue); toString(){var g;switch (type){case VB:g='field';break;case WB:g='index';break;case iB:g='insert';break;case jB:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} yB(g, i,[ k]){if(g is l){var h=g;return XB(h,(p){i(new NB(h,h,p));});}var j=new OB(g,i,k);if(!j.AD()){return EC;}return j.BD;} XB( g, i){if(g.DB==null)g.DB=new YB();var h=g.DB.add(i);return h.remove;}class l{var DB;var CB;final  hashCode= ++l.zB;static var zB=0;} AC( g)=>g.DB!=null&&g.DB.head!=null; get BC=>BB!=null; CC( g, h,i)=>BB.CD(g,h,i); DC( g, j,k, h, i){if((j&(s.iB|s.jB))==0){if(h==i)return;}if(t==null){t=[] ;PC(FC);}if(g.CB==null){g.CB=[] ;t.add(g);}g.CB.add(new s(j,k,h,i));} EC(){}var BB;var kB=100;var t;var u; FC(){var p=0;while (t!=null||u!=null){var j=t;t=null;var i=u;u=null;if(p++ ==kB){GC(j,i);return;}if(j!=null){for(var h in j){var KB=h.CB;h.CB=null;for(var g=h.DB.head;g!=null;g=g.next){var k=g.value;try {k(KB);}catch (fB,v){FB(fB,v,k,'from ${h}');}}}}if(i!=null){i.forEach((nC,eB){eB.DD();});}}} GC( k, j){var g=[] ;if(k!=null){for(var i in k){var KB=i.CB;g.add('${i} ${KB}');}}if(j!=null){for(var p in j.values){var h=p.DD();if(h!=null)g.add('${p} ${h}');}}t=null;u=null;var v='exceeded notifiction limit of ${kB}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';JC(v);}class OB{static var HC=0;final  ED= ++OB.HC;final  FD;final  GD;final  HD;final  ID=new Map();final  JD=[] ;var KD=false;var LD;OB(this.FD,this.GD,this.HD); toString()=>HD!=null?'<observer ${ED}: ${HD}>':'<observer ${ED}>'; AD(){var h=BB;BB=this;try {LD=FD();if(LD is Iterable&&LD is !List&&LD is !l){LD=(LD as Iterable).toList();}}catch (g,i){FB(g,i,FD,'from ${this}');LD=null;}ID.forEach(MD);ID.clear();assert(BB==this);BB=h;ND();return JD.length>0;} OD( i){try {GD(i);}catch (g,h){FB(g,h,GD,'from ${this}');}} ND(){var g=LD;if(g is !l)return;JD.add(XB(g,(h){OD(new NB(g,g,h));}));} CD( p, v,g){var i=ID.putIfAbsent(p,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|v;}catch (j,k){FB(j,k,g,'hashCode or operator == from ${this}');}} MD( i, j){JD.add(XB(i,(k){if(KD)return;for(var g in k){var h=j[g.key];if(h!=null&&(h&g.type)!=0){KD=true;if(u==null){u=new gB.SplayTreeMap();}u[ED]=this;return;}}}));} BD(){for(var g in JD){g();}KD=false;} DD(){if(!KD)return null;var g=LD;BD();AD();try {if(g==LD)return null;}catch (i,j){FB(i,j,g,'operator == from ${this}');return null;}var h=new NB(g,LD);OD(h);return h;}}typedef  IC( message);var JC=(g)=>print(g);typedef  KC(error,stackTrace,obj, message);var FB=LC; LC(i,g,h, j){print('web_ui.observe: unhandled error calling ${h} ${j}.\n' 'error:\n${i}\n\nstack trace:\n${g}');}class MC{}class n<o>{var PD;var QD;var RD;var SD;n.pC( g,this.RD):SD=g{if(RD!=null)RD.TD++ ;} get next=>QD; get value=>SD;set value( g)=>SD=g; UD( g, h){QD=h;PD=g;if(g!=null)g.QD=this;if(h!=null)h.PD=this;return this;} append( g)=>new n<o>.pC(g,RD).UD(this,QD); remove(){if(RD==null)return;RD.TD-- ;if(PD!=null){PD.QD=QD;}else{RD.VD=QD;}if(QD!=null){QD.PD=PD;}else{RD.WD=PD;}QD=null;PD=null;RD=null;}}class YB<o> extends gB.IterableBase<o>{var VD;var WD; get length=>TD;var TD=0;YB(){} get head=>VD; add( h){var g=new n<o>.pC(h,this);if(WD==null)return VD=WD=g;return WD=g.UD(WD,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new gC<o>(this);}class gC<o> implements Iterator<o>{var XD;var RD;var YD;var ZD=-1;gC(this.RD){XD=new List<n>(RD.length);var h=0;var g=RD.head;while (g!=null){XD[h++ ]=g;g=g.next;}} get current=>YD; moveNext(){do{ZD++ ;}while(ZD<XD.length&&XD[ZD].RD!=RD);if(ZD<XD.length){YD=XD[ZD].value;return true;}else{YD=null;return false;}}}GB(h,g)=>h.hashCode*31+g.hashCode;NC(h,g,i)=>GB(GB(h,g),i);OC(g,i,h,j)=>GB(GB(g,i),GB(h,j)); PC( h()){var g=new oC.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);} QC(i, g,[ h]){var j=i is MC;if(h==null){h=i.toString();}if(!j&&g is w.Text){g.text=h;}else{var k=g;g=j?new w.Element.html(h):new w.Text(h);k.replaceWith(g);}return g;}abstract class PB{ cB(){} insert(); remove();}class hC extends PB{final  oB;var aD;final  listener;hC(this.oB,this.listener); insert(){aD=oB.listen(listener);} remove(){aD.cancel();aD=null;}}class iC extends PB{final exp;final  action;final  isFinal;var RB;iC(this.exp,this.action,this.isFinal); insert(){if(isFinal){action(new NB(null,exp()));}else if(RB!=null){throw new StateError('binding already attached');}else{RB=TC(exp,action,'generic-binding');}} remove(){if(!isFinal){RB();RB=null;}}}class jC extends PB{final  cC;final  children=[] ;final  nodes=[] ;jC(this.cC); listen( i, h){children.add(new hC(i,(g){h(g);UC();}));} bC( h,i){var g=new w.Text('');children.add(new iC(()=>'${h()}',(j){g=QC(h(),g,j.newValue);},i));return g;} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); cB(){for(var g=0,h=children.length;g<h;g++ ){children[g].cB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}var lB=false; RC(g, p,[ k]){if(lB)return yB(g,p);if(p==null)return (){};if(HB==null)HB=new YB<IB>();var i;var h=m.YC;if(g is nB){i=(g as nB).bD;}else if(g is Function){i=g;try {var j=g();if(j is List){h=m.JB;}else if(j is Iterable){h=m.JB;i=()=>g().toList();}else if((j is gB.LinkedHashMap)||(j is gB.SplayTreeMap)){h=m.bB;}else if(j is Map){h=m.aB;}}catch (KB,eB){print('error: evaluating ${k!=null?k:"<unnamed>"} ' 'watcher threw error (${KB}, ${eB})');}}else if(g is List){i=()=>g;h=m.JB;}else if(g is Iterable){i=()=>g.toList();h=m.JB;}else if((g is gB.LinkedHashMap)||(g is gB.SplayTreeMap)){i=()=>g;h=m.bB;}else if(g is Map){i=()=>g;h=m.aB;}var v=SC(h,i,p,k);var fB=HB.add(v);return fB.remove;} SC( j, g, i, h){switch (j){case m.JB:return new kC(g,i,h);case m.bB:return new mC(g,i,h);case m.aB:return new lC(g,i,h);default:return new IB(g,i,h);}} TC(h,i,[j]){var k=RC(h,i,j);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new NB(null,g));return k;}var HB;class IB{final  dB;final  bD;final  cD;var dD;IB(this.bD,this.cD,this.dB){dD=bD();} toString()=>dB==null?'<unnamed>':dB; aC(){var g=eD();if(fD(g)){var h=dD;gD(g);cD(new NB(h,g));return true;}return false;} fD(g)=>dD!=g; gD(g){dD=g;}eD(){try {return bD();}catch (g,h){print('error: evaluating ${this} watcher threw an exception (${g}, ${h})');}return dD;}}final  mB=10; UC(){if(HB==null)return;var g;var h=0;do{g=false;for(var i in HB){if(i.aC()){g=true;}}}while(g&& ++h<mB);if(h==mB){print('Possible loop in watchers propagation, stopped dispatch.');}}typedef  VC<WC>();class nB<WC>{}class kC<WC> extends IB{kC(g, i, h):super(g,i,h){gD(eD());} fD( g){return ZB(dD,g);} gD(g){dD=new List<WC>.from(g);}}class lC<QB,XC> extends IB{lC(g, i, h):super(g,i,h){gD(eD());} fD( g){var i=dD.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(dD[h]!=g[h])return true;}return false;} gD(g){dD=new Map<QB,XC>.from(g);}}class mC<QB,XC> extends IB{mC(g, i, h):super(g,i,h){gD(eD());} fD( g){return ZB(g.keys,dD.keys)||ZB(g.values,dD.values);} gD(g){dD=new gB.LinkedHashMap.from(g);}} ZB( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class m{final hD;const m.qC(this.hD);toString()=>'Enum.${hD}';static const JB=const m.qC('LIST');static const aB=const m.qC('HASH_MAP');static const bB=const m.qC('ORDERED_MAP');static const YC=const m.qC('OTHER');}//@ sourceMappingURL=stopwatch.html_bootstrap.dart.map
