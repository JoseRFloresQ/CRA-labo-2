:-consult('draw').

% Reglas gramaticales

oracion(o(GNG,GV)) --> g_nom_gen(GNG), g_verbal(GV).
oracion(o(GV)) --> g_verbal(GV).
oracion(o(GAdv, GV)) --> g_adverbial(GAdv), g_verbal(GV).

g_nom_gen(gng(GN1,C,GN2)) --> g_nominal(GN1), conjunción(C), g_nominal(GN2).
g_nom_gen(gng(GN)) --> g_nominal(GN).


g_nominal(gn(N)) --> nombre(N).
g_nominal(gn(N, GP)) --> nombre(N), g_prop(GP).
g_nominal(gn(N,GA)) --> nombre(N), g_adjetival(GA).
g_nominal(gn(D,N)) --> determinante(D), nombre(N).
g_nominal(gn(D,N,GA)) --> determinante(D), nombre(N), g_adjetival(GA).
g_nominal(gn(D,N,GP)) --> determinante(D), nombre(N), g_prop(GP).

g_verbal(gv(GVB)) --> g_verbo(GVB).
g_verbal(gv(GVB,GNG,GP)) --> g_verbo(GVB), g_nom_gen(GNG), g_prop(GP).
g_verbal(gv(GVB,GNG)) --> g_verbo(GVB), g_nom_gen(GNG).
g_verbal(gv(GVB,GA)) --> g_verbo(GVB), g_adjetival(GA).
g_verbal(gv(GVB,GP)) --> g_verbo(GVB), g_prop(GP).
g_verbal(gv(GVB,GAdv,GP)) --> g_verbo(GVB), g_adverbial(GAdv).
g_verbal(gv(GVB,GAdv,GP)) --> g_verbo(GVB), g_adverbial(GAdv), g_prop(GP).

g_verbo(gvb(V)) --> verbo(V).

g_adverbial(gadv(Adv)) --> adverbio(Adv).

g_adjetival(gadj(Adj)) --> adjetivo(Adj).
g_adjetival(gadj(Adv,Adj)) --> adverbio(Adv), g_adjetival(Adj).
g_adjetival(gadj(Adv,Adj,GP)) --> adverbio(Adv), g_adjetival(Adj), g_prop(GP).


g_prop(gp(P,GNG)) --> prop(P), g_nom_gen(GNG).

% Diccionario
determinante(det(X)) --> [X],{det(X)}.
det(el).
det(la).
det(un).
det(una).
det(mi).
det(esta).
det(su).

adverbio(adv(X)) --> [X],{adv(X)}.
adv(muy).
adv(nunca).
adv(bien).

nombre(n(X)) --> [X],{n(X)}.
n(hombre).
n(mujer).
n(manzana).
n(manzanas).
n(gato).
n(ratón).
n(alumno).
n(universidad).
n(ratones).
n(tenedor).
n(cuchillo).
n(mango).
n(práctica).
n(casa).
n(enfermero).
n(desierto).
n(clase).
n(todos).
n(noche).
n(esperanza).
n(vida).
n(niño).
n(lugar).
n(nacimiento).

verbo(v(X)) --> [X],{v(X)}.
v(ama).
v(come).
v(comen).
v(estudia).
v(es).
v(hace).
v(está).
v(fue).
v(llueve).
v(saldré).
v(depende).


auxiliar(ax(X)) --> [X],{ax(X)}.
ax(es).
ax(fue).
ax(está).
ax(se).

v_principal(vpri(X)) --> [X],{vpri(X)}.
vpri(ayudada).
vpri(portaron).
vpri(comportaron).

adjetivo(adj(X)) --> [X],{adj(X)}.
adj(roja).
adj(negro).
adj(grande).
adj(gris).
adj(pequeño).
adj(lejos).

prop(p(X)) --> [X],{p(X)}.
p(a).
p(en).
p(con).
p(de).
p(por).

conjunción(c(X)) --> [X],{c(X)}.
c(y).
