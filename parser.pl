phr(G,N,T)-->subj(G,N),pred(G,T,N).
pred(G,T,N)-->vcop(T,N),obj(G,N).
pred(G,T,N)-->vt(T,N),obj(J,M).
pred(G,T,N)-->vt(T,N),sadj(J,M).
pred(G,T,N)-->vti(T,N),sprep(J,M).
obj(G,N)-->nprop(G,N).
obj(G,N)-->n(G,N).
obj(G,N)-->det(G,N),nprop(G,N).
obj(G,N)-->det(G,N),n(G,N).
subj(G,N)-->nprop(G,N).
subj(G,N)-->det(G,N),nprop(G,N).
subj(G,N)-->det(G,N),n(G,N).
sadj(G,N)-->subj(G,N),adj(G,N).
sprep(G,N)-->prep(G,N),obji(G,N).
nprop(f,s)-->[nana].
nprop(m,s)-->[zoinho].
n(f,s)-->[gata].
n(m,s)-->[gato].
n(m,p)-->[tucanos].
obji(f,s)-->[ufscar].
det(f,s)-->[a].
det(m,s)-->[o].
det(m,p)-->[os].
det(f,s)-->[uma].
det(m,s)-->[um].
adj(m,s)-->[pequeno].
vcop(pre,s)-->[é].
vcop(pas,s)-->[era].
vt(pas,s)-->[comeu].
vti(pre,p)-->[voam].
prep(f,s)-->[na].
