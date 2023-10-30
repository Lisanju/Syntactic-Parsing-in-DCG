:- set_prolog_flag(occurs_check, error).
:- set_prolog_stack(global, limit(8 000 000)).
:- set_prolog_stack(local,  limit(2 000 000)).  

s(s(NP,VP,GEN,NUM,TEM,MOD,ASP))-->np(np(NP,GEN,NUM)),vp(vp(VP,TEM,NUM,MOD,ASP)).
np(np(DET,N,GEN,NUM))-->det(DET,GEN,NUM),n(N,GEN,NUM).
np(np(DET,NPROP,GEN,NUM))-->det(DET,GEN,NUM),nprop(NPROP,GEN).
np(np(NPROP,GEN,NUM))-->nprop(NPROP,GEN).
np(np(NP,PP,GEN,NUM))-->np(np(NP,GEN,NUM)),pp(pp(PP,GEN,NUM)).
pp(pp(P,NP,GEN,NUM))-->p(P),np(np(NP,GEN,NUM)).
pp(pp(P,VP,GEN,NUM))-->p(P),vp(vp(VP,TEM,NUM,MOD,ASP)).
vp(vp(V,NP,TEM,NUM,MOD,ASP))-->v(V,TEM,NUM,MOD,ASP),np(np(NP,GEN,NUM)).
vp(vp(VP,PP,TEM,NUM,MOD,ASP))-->vp(vp(VP,TEM,NUM,MOD,ASP)),pp(pp(PP,GEN,NUM)).
n(n(gato),masc,sing)-->[gato].
n(n(gata),fem,sing)-->[gata].
n(n(gatos),masc,plu)-->[gatos].
n(n(gatas),fem,plu)-->[gatas].
nprop(nprop(joão),masc)-->[joão].
nprop(nprop(maria),fem)-->[maria].
det(det(o),masc,sing)-->[o].
det(det(a),fem,sing)-->[a].
det(det(os),masc,plu)-->[os].
det(det(as),fem,plu)-->[as].
det(det(),nu,nu)-->[].
p(p(por))-->[por].
v(v(come),pres,sing,ind,imperf)-->[come].
v(v(comem),pres,plu,ind,imperf)-->[comem].
v(v(comia),pas,sing,ind,imperf)-->[comia].
v(v(comiam),pas,plu,ind,imperf)-->[comiam].
v(v(comeu),pas,sing,ind,perf)-->[comeu].
v(v(comeram),pas,plu,ind,perf)-->[comeram].
