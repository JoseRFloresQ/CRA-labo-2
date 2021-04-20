:-consult('draw').

% TIPOS DE ORACIONES
% ====================

% Oraci�n Simple (o)

oracion(o(Suj,Pred)) --> sujeto(Suj), predicado(Pred).
oracion(o(Pred)) --> predicado(Pred).

sujeto(suj(GNG)) --> g_nominal(GNG).

predicado(pred(GV)) --> g_verbal(GV).
predicado(pred(GAdv,GV)) --> g_adverbial(GAdv), g_verbal(GV).


% Oraci�n Coordinada (oc)



% Oraci�n Subordinada de Relativo (or)




% Oraci�n Compuesta (ocm)





% GRUPOS SINT�CTICOS
% ====================


% Grupo Nominal (gn)
g_nominal(gn(GNS)) --> g_nominal_s(GNS).
g_nominal(gn(GNS1,C,GNS2)) --> g_nominal_s(GNS1), conjuncion(C), g_nominal_s(GNS2).


% Grupo Adjetival (gadj)

g_adjetival(gadj(Adj)) --> adjetivo(Adj).
g_adjetival(gadj(Adv,Adj)) --> adverbio(Adv), g_adjetival(Adj).
g_adjetival(gadj(Adv,Adj,GP)) --> adverbio(Adv), g_adjetival(Adj), g_prep(GP).


% Grupo Adverbial (gadv)

g_adverbial(gadv(Adv)) --> adverbio(Adv).


% Grupo Preposicional (gp)

g_prep(gp(P,GNG)) --> preposicion(P), g_nominal(GNG).


%Grupo Verbal (gv)

g_verbal(gv(V)) --> verbo(V).
g_verbal(gv(V,GNG,GP)) --> verbo(V), g_nominal(GNG), g_prep(GP).
g_verbal(gv(V,GNG)) --> verbo(V), g_nominal(GNG).
g_verbal(gv(V,GA)) --> verbo(V), g_adjetival(GA).
g_verbal(gv(V,GP)) --> verbo(V), g_prep(GP).
g_verbal(gv(V,GAdv,GP)) --> verbo(V), g_adverbial(GAdv).
g_verbal(gv(V,GAdv,GP)) --> verbo(V), g_adverbial(GAdv), g_prep(GP).


% OTROS

% Grupo nominal simple
g_nominal_s(gns(N)) --> nombre(N).
g_nominal_s(gns(N, GP)) --> nombre(N), g_prep(GP).
g_nominal_s(gns(N,GA)) --> nombre(N), g_adjetival(GA).
g_nominal_s(gns(D,N)) --> determinante(D), nombre(N).
g_nominal_s(gns(D,N,GA)) --> determinante(D), nombre(N), g_adjetival(GA).
g_nominal_s(gns(D,N,GP)) --> determinante(D), nombre(N), g_prep(GP).
g_nominal_s(gns(NP)) --> nombre_prop(NP).
g_nominal_s(gns(NP, GP)) --> nombre_prop(NP), g_prep(GP).
g_nominal_s(gns(NP,GA)) --> nombre_prop(NP), g_adjetival(GA).
g_nominal_s(gns(D,NP)) --> determinante(D), nombre_prop(NP).
g_nominal_s(gns(D,NP,GA)) --> determinante(D), nombre_prop(NP), g_adjetival(GA).
g_nominal_s(gns(D,NP,GP)) --> determinante(D), nombre_prop(NP), g_prep(GP).


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

nombre_prop(np(X)) --> [X],{np(X)}.
np(juan).
np(mar�a).
np(ana).
np(madrid).
np(alcal�).

% Verbos (v)

verbo(v(X)) --> [X],{v(X)}.
verbo(v(Aux,Pri)) --> auxiliar(Aux), principal(Pri).
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



% TEST DE PRUEBAS
% ================

% APARTADO 2
apt2():- apt2_1(), apt2_2(), apt2_3(), apt2_4(), apt2_5(),
         apt2_6(), apt2_7(), apt2_8(),  apt2_9(), apt2_10().

apt2_1():- oracion(X,[el,hombre,come,una,manzana],[]), draw(X).
apt2_2():- oracion(X,[la,mujer,come,manzanas],[]), draw(X).
apt2_3():- oracion(X,[mar�a,come,una,manzana,roja],[]), draw(X).
apt2_4():- oracion(X,[juan,ama,a,mar�a],[]), draw(X).
apt2_5():- oracion(X,[el,gato,grande,come,un,rat�n,gris],[]), draw(X).
apt2_6():- oracion(X,[juan,estudia,en,la,universidad],[]), draw(X).
apt2_7():- oracion(X,[el,alumno,ama,la,universidad],[]), draw(X).
apt2_8():- oracion(X,[el,gato,come,ratones],[]), draw(X).
apt2_9():- oracion(X,[la,manzana,come,un,gato],[]), draw(X).
apt2_10():- oracion(X,[la,universidad,es,grande],[]), draw(X).


% APARTADO 3


apt3_1():- oracion(X,[juan,y,mar�a,comen,una,manzana,con,un,tenedor,y,un,cuchillo],[]), draw(X).
apt3_2():- oracion(X,[mar�a,hace,la,pr�ctica,de,juan],[]), draw(X).
apt3_3():- oracion(X,[mi,casa,est�,muy,lejos,de,madrid],[]), draw(X).
apt3_4():- oracion(X,[ana,fue,ayudada,por,un,enfermero],[]), draw(X).
apt3_5():- oracion(X,[nunca,llueve,en,el,desierto],[]), draw(X).
apt3_6():- oracion(X,[todos,se,comportaron,bien,en,clase],[]), draw(X).
apt3_7():- oracion(X,[esta,noche,saldr�,por,alcal�],[]), draw(X).
apt3_8():- oracion(X,[la,esperanza,de,vida,de,un,ni�o,depende,de,su,lugar,de,nacimiento],[]), draw(X).


% PRACTICA 2
