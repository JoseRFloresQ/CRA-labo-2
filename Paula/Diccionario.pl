% Autor:
% Fecha: 14/03/2019

%determinantes
determinante(det(X)) --> [X],{det(X)}.
det(el).
det(la).
det(los).
det(las).
det(un).
det(una).
det(unos).
det(unas).
det(mi).
det(mis).
det(tu).
det(tus).
det(su).
det(sus).
det(nuestro).
det(nuestra).
det(nuestros).
det(nuestras).
det(vuestro).
det(vuestra).
det(vuestros).
det(vuestras).
det(este).
det(esta).
det(estos).
det(estas).
det(ese).
det(esa).
det(esos).
det(esas).
det(aquel).
det(aquella).
det(aquellos).
det(aquellas).

%nombres
nombre_comun(n(X)) --> [X],{n(X)}.
n(hombre).
n(mujer).
n(manzana).
n(manzanas).
n(gato).
n('ratón').
n(ratones).
n(alumno).
n(universidad).
n(tenedor).
n(cuchillo).
n(canario).
n(paloma).
n('práctica').
n(esperanza).
n(lugar).
n(procesador).
n(mesa).
n('café').
n(pantalón).
n(corbata).
n(herramienta).
n(procesador).
n(documentos).
n(patatas).
n(cerveza).
n(vuelo).
n(reflejos).
n(vida).
n('niño').
n(nacimiento).
n(profesor).
n(textos).
n(escribir).
n(casa).
n(desierto).
n(clase).
n(todos).
n(noche).
n(esperanza).

%nombre propios
nombre_propio(np(X)) --> [X],{np(X)}.
np(juan).
np('maría').
np(irene).
np('héctor').
np(madrid).
np(ana).
np('alcalá').

%pronombres
pronombre(pr(X)) --> [X],{pr(X)}.
pr('él').
pr(ella).
pr(ellos).
pr(ellas).
pr(nosotros).
pr(vosotros).

%verbos
verbo(v(X)) --> [X],{v(X)}.
v(ama).
v(come).
v(comen).
v(hace).
v(canta).
v('alzó').
v('está').
v(depende).
v(estudia).
v(vimos).
v('cazó').
v(era).
v(es).
v(sirve).
v('compré').
v(recoge).
v(toma).
v(salta).
v(beben).
v(habla).
v('sonríe').
v('fue ayudada').
v(llueve).
v('se comportaron').
v('saldré').
v(depende).

%adjetivos
adjetivo(adj(X)) --> [X],{adj(X)}.
adj(roja).
adj(rojas).
adj(negro).
adj(negros).
adj(grande).
adj(gris).
adj('pequeño').
adj(fritas).
adj(blanca).
adj(delicado).
adj(lento).
adj(moreno).
adj(alta).
adj(potente).
adj(alegre).

% adj(morena).
% adj(rubio).
% adj(alto).
% adj(agil).

%advervios
adverbio(adv(X)) --> [X],{adv(X)}.
adv(bastante).
adv(muy).
adv(lejos).
adv(solamente).
adv(claramente).
adv(nunca).
adv(bien).

%conjunciones
%conjuncion coordinada
conjuncion(conj(X)) --> [X],{conj(X)}.
conj(y).
conj(e).
conj(ni).
conj(o).
conj(u).
conj(pero).
conj(aunque).
conj(sino).
conj(mientras).

%Conjunciones subordinadas
conjuncion_subordinada(conj_s(X)) --> [X], {conj_s(X)}.
conj_s(que).
conj_s(cuyo).
conj_s(cuya).
conj_s(cual).
conj_s(quien).
conj_s(donde).
conj_s(como).

%preposiciones
preposicion(prep(X)) --> [X], {prep(X)}.
prep(a).
prep(ante).
prep(bajo).
prep(cabe).
prep(con).
prep(contra).
prep(de).
prep(desde).
prep(en).
prep(entre).
prep(hacia).
prep(hasta).
prep(para).
prep(por).
prep(segun).
prep(si).
prep(sobre).
prep(tras).
prep(durante).
prep(mediante).
