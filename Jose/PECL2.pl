% TIPOS DE ORACIONES
% ====================

% Oraci�n Simple (o)

oracion(o(GNG,GV)) --> g_nom_gen(GNG), g_verbal(GV).
oracion(o(GV)) --> g_verbal(GV).
oracion(o(GAdv, GV)) --> g_adverbial(GAdv), g_verbal(GV).


% Oraci�n Coordinada (oc)



% Oraci�n Subordinada de Relativo (or)



% Oraci�n Compuesta (ocm)





% GRUPOS SINT�CTICOS
% ====================

g_nom_gen(gng(GN1,C,GN2)) --> g_nominal(GN1), conjunci�n(C), g_nominal(GN2).
g_nom_gen(gng(GN)) --> g_nominal(GN).

% Grupo Nominal (gn)

g_nominal(gn(N)) --> nombre(N).
g_nominal(gn(N, GP)) --> nombre(N), g_prep(GP).
g_nominal(gn(N,GA)) --> nombre(N), g_adjetival(GA).
g_nominal(gn(D,N)) --> determinante(D), nombre(N).
g_nominal(gn(D,N,GA)) --> determinante(D), nombre(N), g_adjetival(GA).
g_nominal(gn(D,N,GP)) --> determinante(D), nombre(N), g_prep(GP).


% Grupo Adjetival (gadj)

g_adjetival(gadj(Adj)) --> adjetivo(Adj).
g_adjetival(gadj(Adv,Adj)) --> adverbio(Adv), g_adjetival(Adj).
g_adjetival(gadj(Adv,Adj,GP)) --> adverbio(Adv), g_adjetival(Adj), g_prop(GP).


% Grupo Adverbial (gadv)

g_adverbial(gadv(Adv)) --> adverbio(Adv).


% Grupo Preposicional (gp)

g_prep(gp(P,GNG)) --> preposicion(P), g_nom_gen(GNG).


%Grupo Verbal (gv)

g_verbal(gv(GVB)) --> g_verbo(GVB).
g_verbal(gv(GVB,GNG,GP)) --> g_verbo(GVB), g_nom_gen(GNG), g_prep(GP).
g_verbal(gv(GVB,GNG)) --> g_verbo(GVB), g_nom_gen(GNG).
g_verbal(gv(GVB,GA)) --> g_verbo(GVB), g_adjetival(GA).
g_verbal(gv(GVB,GP)) --> g_verbo(GVB), g_prop(GP).
g_verbal(gv(GVB,GAdv,GP)) --> g_verbo(GVB), g_adverbial(GAdv).
g_verbal(gv(GVB,GAdv,GP)) --> g_verbo(GVB), g_adverbial(GAdv), g_prep(GP).




% TIPOS DE T�RMINOS
% ==================


% Determinantes (det)

determinante(det(X)) --> [X],{det(X)}.
det(el).
det(la).
det(un).
det(una).
det(mi).
det(esta).
det(su).

% Nombres (n)

nombre(n(X)) --> [X],{n(X)}.
n(hombre).
n(mujer).
n(manzana).
n(manzanas).
n(gato).
n(rat�n).
n(alumno).
n(universidad).
n(ratones).
n(tenedor).
n(cuchillo).
n(mango).
n(pr�ctica).
n(casa).
n(enfermero).
n(desierto).
n(clase).
n(todos).
n(noche).
n(esperanza).
n(vida).
n(ni�o).
n(lugar).
n(nacimiento).

% Nombres Propios (np)

nombre_prop(n(X)) --> [X],{np(X)}.
np(juan).
np(mar�a).
np(ana).
np(madrid).
np(alcal�).

% Verbos (v)

verbo(v(Aux,Pri)) --> auxiliar(Aux), principal(Pri).
verbo(v(X)) --> [X],{v(X)}.
v(ama).
v(come).
v(comen).
v(estudia).
v(es).
v(hace).
v(est�).
v(fue).
v(llueve).
v(saldr�).
v(depende).


auxiliar(ax(X)) --> [X],{ax(X)}.
ax(es).
ax(fue).
ax(est�).
ax(se).

principal(vpri(X)) --> [X],{pri(X)}.
pri(ayudada).
pri(portaron).
pri(comportaron).

% Adjetivos (adj)

adjetivo(adj(X)) --> [X],{adj(X)}.
adj(roja).
adj(negro).
adj(grande).
adj(gris).
adj(peque�o).
adj(lejos).


% Adverbios (adv)

adverbio(adv(X)) --> [X],{adv(X)}.
adv(muy).
adv(nunca).
adv(bien).

% Conjunciones (conj)

conjuncion(c(X)) --> [X],{conj(X)}.
conj(y).


% Preposiciones (prep)

preposicion(prep(X)) --> [X],{prep(X)}.
prep(a).
prep(en).
prep(con).
prep(de).
prep(por).

