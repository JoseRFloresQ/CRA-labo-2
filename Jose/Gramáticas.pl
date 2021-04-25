% TIPOS DE TÉRMINOS
% ==================
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
det(las).

% Nombres (n)

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
n(filosofía).
n(derecho).
n(periódico).
n(café).
n(mesa).
n(patatas).
n(cerveza).
n(paella).
n(novela).
n(zumo).
n(rocódromo).
n(tardes).
n(procesador).
n(textos).
n(herramienta).
n(documentos).
n(vecino).
n(ratón).

% Nombres de tiempo
nombre_tiempo(n_tp(X)) --> [X],{n_tp(X)}.
n_tp(ayer).

% Nombres Propios (np)

nombre_prop(np(X)) --> [X],{np(X)}.
np(juan).
np(maría).
np(ana).
np(madrid).
np(alcalá).
np(héctor).
np(irene).

% Verbos (v)

% verbos transitivos (v_tran)
verbo_transitivo(v_tran(X)) --> [X],{v_tran(X)}.
v_tran(ama).
v_tran(come).
v_tran(comen).
v_tran(depende).
v_tran(estudia).
v_tran(hace).
v_tran(saldré).
v_tran(comportaron).
v_tran(lee).
v_tran(toma).
v_tran(recoge).
v_tran(beben).
v_tran(prefiere).
v_tran(canta).
v_tran(salta).
v_tran(bebe).
v_tran(escala).
v_tran(sirve).
v_tran(escribir).
v_tran(cazó).
v_tran(vimos).

% verbos intransitivos (v_intran)
verbo_intransitivo(v_intran(X)) --> [X],{v_intran(X)}.
v_intran(llueve).



% verbos copulativos (v_cop)
verbo_copulativo(v_cop(X)) --> [X],{v_cop(X)}.
v_cop(es).
v_cop(está).
v_cop(fue).
v_cop(era).


% verbos en forma pasiva (v_pas)
verbo_pasivo(v_pas(VC,VPart)) --> verbo_copulativo(VC), verbo_participio(VPart).


% verbos en participio (v_part)
verbo_participio(v_part(X)) --> [X],{v_part(X)}.
v_part(ayudada).


% pronombre reflexivo (pron_ref)
pronombre_reflexivo(pron_ref(X)) --> [X],{pron_ref(X)}.
pron_ref(se).


% pronombre CD (pron_cd)
pronombre_CD(pron_cd(X)) --> [X],{pron_cd(X)}.
pron_cd(lo).
pron_cd(la).
pron_cd(los).
pron_cd(las).


% Adjetivos (adj)

adjetivo(adj(X)) --> [X],{adj(X)}.
adj(roja).
adj(negro).
adj(grande).
adj(gris).
adj(pequeño).
adj(lejos).
adj(moreno).
adj(alta).
adj(fritas).
adj(ágil).
adj(potente).
adj(delicado).
adj(rojas).
adj(lento).

% Adverbios (adv)

adverbio(adv(X)) --> [X],{adv(X)}.
adv(muy).
adv(bien).
adv(bastante).
adv(solamente).

adverbio_frecuencia(adv_frec(X)) --> [X],{adv_frec(X)}.
adv_frec(nunca).


% Conjunciones (conj)

conjuncion(c(X)) --> [X],{conj(X)}.
conj(y).
conj(pero).
conj(mientras).
conj(aunque).
conj(e).


% Preposiciones (prep)

preposicion(prep(X)) --> [X],{prep(X)}.
prep(a).
prep(de).
prep(para).

preposicion_lugar(prep_l(X)) --> [X],{prep_l(X)}.
prep_l(en).
prep_l(por).

preposicion_modo(prep_m(X)) --> [X],{prep_m(X)}.
prep_m(con).

preposicion_agente(prep_a(X)) --> [X],{prep_a(X)}.
prep_a(por).

preposicion_tiempo(prep_t(X)) --> [X],{prep_t(X)}.
prep_t(por).

preposicion_finalidad(prep_fin(X)) --> [X],{prep_fin(X)}.
prep_fin(para).

% Nexos Relativos (rel)
nexo_relativo(rel(X)) -->[X],{rel(X)}.
rel(que).


% Coma (com)
coma(com(X)) --> [X],{com(X)}.
com(',').

