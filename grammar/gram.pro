% Inicialização

s(S) :- s(EC, S, []),
  write('Estrutura de constituintes: '),
  write(EC), nl.

% Regras Sintagmáticas

%% Sentença (S)
s([sn, SN, sv, SV]) --> sn([_,Num], SN), sv(Num, SV).  % SV
s([sv, SV, sn, SN]) --> sv(Num, SV), sn([_,Num], SN). % VS
s([sv, SVimp]) --> svimp(_, SVimp).

%% Sintagmas Nominais (SN)
sn(Conc, [Det, N]) --> det(Conc, Det), n(Conc, N).
sn(Conc, N) --> n(Conc, N).

%% Sintagmas Verbais (SV)
sv(Num, V) --> v(Num, i, V).
sv(Num, [V, sn, [SN]]) --> v(Num, td, V), sn(_, SN).
sv(Num, [V, sp, [SP]]) --> v(Num, ti(P), V), sp(P, SP).
sv(Num, [V, sn, [SN], sp, [SP]]) --> v(Num, tdi(P), V), sn(_, SN), sp(P, SP).
svimp(Num, Vimp) --> vimp(Num, i, Vimp).

%% Sintagmas Preposicionais (SP)
sp(Lex, [P, N]) --> p(Lex, Conc, P), n(Conc, N).

% Regras Lexicais
det(Conc, Det) --> [Det], {det(Conc, Det)}.
n(Conc, N) --> [N], {n(Conc, N)}.
v(Num, Val, V) --> [V], {v(Num, Val, V)}.
vimp(Num, Val, Vimp) --> [Vimp], {vimp(Num, Val, Vimp)}.
p(Lex, Conc, P) --> [P], {p(Lex, Conc, P)}.

% Léxico

%% Determinantes (det)
det([masc, sing], o).
det([fem, sing], a).
det([masc, plur], os).
det([fem, plur], as).
det([masc, sing], um).
det([fem, sing], uma).
det([masc, plur], uns).
det([fem, plur], umas).
det([masc, sing], este).
det([fem, sing], esta).
det([masc, plur], estes).
det([fem, plur], estas).
det([masc, sing], esse).
det([fem, sing], essa).
det([masc, plur], esses).
det([fem, plur], essas).
det([masc, sing], aquele).
det([fem, sing], aquela).
det([masc, plur], aqueles).
det([fem, plur], aquelas).

%% Substantivos (N)
n([masc, sing], brinquedo).
n([masc, plur], brinquedos).
n([fem, sing], estante).
n([fem, plur], estantes).
n([masc, sing], homem).
n([masc, plur], homens).
n([masc, sing], joão).
n([masc, sing], livro).
n([masc, plur], livros).
n([fem, sing], maria).
n([masc, sing], menino).
n([fem, sing], menina).
n([masc, plur], meninos).
n([fem, plur], meninas).
n([fem, sing], mulher).
n([fem, plur], mulheres).
n([fem, sing], sintaxe).

%% Verbos (V)
v(sing, i, corre).
v(plur, i, correm).
v(sing, td, ama).
v(plur, td, amam).
v(sing, ti(de), gosta).
v(plur, ti(de), gostam).
v(sing, tdi(em), coloca).
v(plur, tdi(em), colocam).
vimp(sing, i, chove).

%% Preposições
p(com, inf, com).
p(de, [_,_], de).
p(de, [masc,sing], do).
p(de, [fem, sing], da).
p(de, [masc, plur], dos).
p(de, [fem, plur], das).
p(em, [_,_], em).
p(em, [masc, sing], no).
p(em, [fem, sing], na).
p(em, [masc, plur], nos).
p(em, [fem, plur], nas).
