import "dart:json" as o;import "dart:html" as k;class p{static const  q="Chrome";static const  s="Firefox";static const  t="Internet Explorer";static const  u="Safari";final  n;final  minimumVersion;const p(this.n,[this.minimumVersion]);}class v{final  name;const v(this.name);}var j; main(){k.query('#getWords').onClick.listen(l);j=k.query('#wordList');} l( h){var i='portmanteaux.json';var g=new k.HttpRequest();g..open('GET',i)..onLoadEnd.listen((h)=>m(g))..send('');}m( g){if(g.status==200){var i=o.parse(g.responseText);for(int h=0;h<i.length;h++ ){j.children.add(new k.LIElement()..text=i[h]);}}else{j.children.add(new k.LIElement()..text='Request failed, status={${g}.status}');}}//@ sourceMappingURL=portmanteaux.dart.map
