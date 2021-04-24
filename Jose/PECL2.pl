:-consult('draw').

% TIPOS DE ORACIONES
% ====================
% ====================

oracion(o(Os)) --> oracion_simple(Os).
oracion(o(Ocm)) --> oracion_compuesta(Ocm).


% Oración Simple (o)
% ==================

oracion_simple(os(Suj,Pred)) --> sujeto(Suj), predicado(Pred).
oracion_simple(os(Pred)) --> predicado(Pred).

sujeto(suj(GNG)) --> g_nominal(GNG).

predicado(pred(GV)) --> g_verbal(GV).

% complementos
compl_directo(cd(GN)) --> g_nominal(GN).
compl_directo(cd(GP)) --> g_prep(GP).

compl_dir_reflexivo(cd_ref(PRef)) --> pronombre_reflexivo(PRef).

atributo(atr(GAdj)) --> g_adjetival(GAdj).
atributo(atr(GN)) --> g_nominal(GN).
atributo(atr(GAdv)) --> g_adverbial(GAdv).

compl_indirecto(ci(GN)) --> g_nominal(GN).

compl_circ_lugar(ccl(GPL)) --> g_prep_lugar(GPL).

compl_circ_modo(ccm(GP)) --> g_prep_modo(GP).
compl_circ_modo(ccm(GAdv)) --> g_adverbial(GAdv).

compl_circ_frecuencia(cc_frec(AdvFrec)) --> adverbio_frecuencia(AdvFrec).

compl_agente(c_ag(GPA)) --> g_prep_agente(GPA).

compl_circ_tiempo(cct(GPT)) --> g_prep_tiempo(GPT).
compl_circ_tiempo(cct(NT)) --> nombre_tiempo(NT).

compl_circ_finalidad(ccfin(GPFin)) --> g_prep_finalidad(GPFin).


% Oración Coordinada (oc)
% =======================
oracion_coordinada(oc(O1,Conj,O2)) --> oracion(O1), conjuncion(Conj), oracion(O2).



% Oración Subordinada de Relativo (or)
% ====================================
oracion_subordinada(or(Nex,Pred)) --> nexo_relativo(Nex), predicado(Pred).
oracion_subordinada(or(Com1,Nex,Pred,Com2)) --> coma(Com1), nexo_relativo(Nex), predicado(Pred), coma(Com2).



% Oración Compuesta (ocm)
% =======================
 oracion_compuesta(ocm(Oc)) --> oracion_coordinada(Oc).



% GRUPOS SINTÁCTICOS
% ====================
% ====================

% Grupo Nominal (gn)
% ==================
g_nominal(gn(GNS)) --> g_nominal_s(GNS).
g_nominal(gn(GNS1,C,GNS2)) --> g_nominal_s(GNS1), conjuncion(C), g_nominal_s(GNS2).


% Grupo Adjetival (gadj)
% ======================

g_adjetival(gadj(Adj)) --> adjetivo(Adj).


% Grupo Adverbial (gadv)
% ======================

g_adverbial(gadv(Adv)) --> adverbio(Adv).
g_adverbial(gadv(Adv,GAdj)) --> adverbio(Adv), g_adjetival(GAdj).
g_adverbial(gadv(Adv,GAdj,GP)) --> adverbio(Adv), g_adjetival(GAdj), g_prep(GP).


% Grupo Preposicional (gp)
% =========================

g_prep(gp(P,GN)) --> preposicion(P), g_nominal(GN).

g_prep_lugar(gpl(PL,GN)) --> preposicion_lugar(PL), g_nominal(GN).

g_prep_modo(gpm(PM,GN)) --> preposicion_modo(PM), g_nominal(GN).

g_prep_agente(gpa(PA,GN)) --> preposicion_agente(PA), g_nominal(GN).

g_prep_tiempo(gpt(PT,GN)) --> preposicion_tiempo(PT), g_nominal(GN).

g_prep_finalidad(gpfin(PFin,GV)) --> preposicion_finalidad(PFin), g_verbal(GV).

% Grupo Verbal 2.0
% ===================
% con verbos transitivos
g_verbal(gv(VT)) --> verbo_transitivo(VT).
g_verbal(gv(VT,CCF)) --> verbo_transitivo(VT), compl_circ_finalidad(CCF).
g_verbal(gv(VT,CCM,CD)) --> verbo_transitivo(VT), compl_circ_modo(CCM) ,compl_directo(CD).
g_verbal(gv(VT,CD)) --> verbo_transitivo(VT), compl_directo(CD).
g_verbal(gv(VT,CD,CCT)) --> verbo_transitivo(VT), compl_directo(CD), compl_circ_tiempo(CCT).
g_verbal(gv(PCD,VT)) -->  pronombre_CD(PCD), verbo_transitivo(VT).
g_verbal(gv(VT,CCL)) --> verbo_transitivo(VT), compl_circ_lugar(CCL).
g_verbal(gv(VT,CD,CCM)) --> verbo_transitivo(VT), compl_directo(CD), compl_circ_modo(CCM).
g_verbal(gv(CDRef,VT,CCM,CCL)) --> compl_dir_reflexivo(CDRef), verbo_transitivo(VT), compl_circ_modo(CCM), compl_circ_lugar(CCL).

% con verbos copulativos -->
g_verbal(gv(VC,Atr)) --> verbo_copulativo(VC), atributo(Atr).
g_verbal(gv(VC,Atr,Or)) --> verbo_copulativo(VC), atributo(Atr), oracion_subordinada(Or).
g_verbal(gv(VC,Atr,CCM)) --> verbo_copulativo(VC), atributo(Atr), compl_circ_modo(CCM).


% con verbos intransitivos
g_verbal(gv(CCFrec,VI,CCL)) -->compl_circ_frecuencia(CCFrec), verbo_intransitivo(VI), compl_circ_lugar(CCL).
g_verbal(gv(VI,CCT)) --> verbo_intransitivo(VI), compl_circ_tiempo(CCT).


% con verbos en forma pasiva
g_verbal(gv(VP,CAg)) --> verbo_pasivo(VP), compl_agente(CAg).

% OTROS
% ======

%Grupo nominal simple 2.0
g_nominal_s(gns(N)) --> nombre(N).
g_nominal_s(gns(N,CN)) --> nombre(N), compl_nombre(CN).
g_nominal_s(gns(D,N)) --> determinante(D), nombre(N).
g_nominal_s(gns(D,N,CN)) --> determinante(D), nombre(N), compl_nombre(CN).
g_nominal_s(gns(D,N,CN1,CN2)) --> determinante(D), nombre(N), compl_nombre(CN1), compl_nombre(CN2).

g_nominal_s(gns(NP)) --> nombre_prop(NP).
g_nominal_s(gns(NP,CN)) --> nombre_prop(NP), compl_nombre(CN).
g_nominal_s(gns(D,NP)) --> determinante(D), nombre_prop(NP).
g_nominal_s(gns(D,NP,CN)) --> determinante(D), nombre_prop(NP), compl_nombre(CN).


compl_nombre(compl_n(GAdj)) --> g_adjetival(GAdj).
compl_nombre(compl_n(GAdv)) --> g_adverbial(GAdv).
compl_nombre(compl_n(GP)) --> g_prep(GP).
compl_nombre(compl_n(Or)) --> oracion_subordinada(Or).

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

% verbos intransitivos (v_intran)
verbo_intransitivo(v_intran(X)) --> [X],{v_intran(X)}.
v_intran(llueve).
v_intran(vimos).


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


% TEST DE PRUEBAS
% ================

% APARTADO 2
apt2():- apt2_1(), apt2_2(), apt2_3(), apt2_4(), apt2_5(),
         apt2_6(), apt2_7(), apt2_8(),  apt2_9(), apt2_10().

apt2_1():- oracion(X,[el,hombre,come,una,manzana],[]), draw(X).
apt2_2():- oracion(X,[la,mujer,come,manzanas],[]), draw(X).
apt2_3():- oracion(X,[maría,come,una,manzana,roja],[]), draw(X).
apt2_4():- oracion(X,[juan,ama,a,maría],[]), draw(X).
apt2_5():- oracion(X,[el,gato,grande,come,un,ratón,gris],[]), draw(X).
apt2_6():- oracion(X,[juan,estudia,en,la,universidad],[]), draw(X).
apt2_7():- oracion(X,[el,alumno,ama,la,universidad],[]), draw(X).
apt2_8():- oracion(X,[el,gato,come,ratones],[]), draw(X).
apt2_9():- oracion(X,[la,manzana,come,un,gato],[]), draw(X).
apt2_10():- oracion(X,[la,universidad,es,grande],[]), draw(X).


% APARTADO 3

apt3():- apt3_1(), apt3_2(), apt3_3(), apt3_4(),
         apt3_5(), apt3_6(), apt3_7(), apt3_8().

apt3_1():- oracion(X,[juan,y,maría,comen,una,manzana,con,un,tenedor,y,un,cuchillo],[]), draw(X).
apt3_2():- oracion(X,[maría,hace,la,práctica,de,juan],[]), draw(X).
apt3_3():- oracion(X,[mi,casa,está,muy,lejos,de,madrid],[]), draw(X).
apt3_4():- oracion(X,[ana,fue,ayudada,por,un,enfermero],[]), draw(X).
apt3_5():- oracion(X,[nunca,llueve,en,el,desierto],[]), draw(X).
apt3_6():- oracion(X,[todos,se,comportaron,bien,en,clase],[]), draw(X).
apt3_7():- oracion(X,[esta,noche,saldré,por,alcalá],[]), draw(X).
apt3_8():- oracion(X,[la,esperanza,de,vida,de,un,niño,depende,de,su,lugar,de,nacimiento],[]), draw(X).


% PRACTICA 2

pract2_1():- oracion(X,[juan,es,moreno,y,maría,es,alta],[]), draw(X).
pract2_2():- oracion(X,[juan,estudia,filosofía,pero,maría,estudia,derecho],[]), draw(X).
pract2_3():- oracion(X,[maría,toma,un,café,mientras,juan,recoge,la,mesa],[]), draw(X).
pract2_4():- oracion(X,[juan,toma,café,y,lee,el,periódico],[]), draw(X).
pract2_5():- oracion(X,[juan,y,héctor,comen,patatas,fritas,y,beben,cerveza],[]), draw(X).
pract2_6():- oracion(X,[juan,come,patatas,fritas,pero,maría,prefiere,paella,aunque,héctor,toma,café,e,irene,lee,una,novela],[]), draw(X).
pract2_7():- oracion(X,[irene,canta,y,salta,mientras,juan,estudia],[]), draw(X).
pract2_8():- oracion(X,[héctor,come,patatas,fritas,y,bebe,zumo,mientras,juan,canta,y,salta,aunque,maría,lee,una,novela],[]), draw(X).
pract2_9():- oracion(X,[juan,que,es,ágil,escala,el,rocódromo,por,las,tardes],[]), draw(X).
pract2_10():- oracion(X,[juan,que,es,muy,delicado,come,solamente,manzanas,rojas],[]), draw(X).
pract2_11():- oracion(X,[el,procesador,de,textos,que,es,una,herramienta,bastante,potente,sirve,para,escribir,documentos],[]),draw(X).
pract2_12():- oracion(X,[el,procesador,de,textos,es,una,herramienta,bastante,potente,que,sirve,para,escribir,documentos,pero,es,bastante,lento],[]), draw(X).
pract2_13():- oracion(X,[el,ratón,que,cazó,el,gato,era,gris],[]), draw(X).
pract2_14():- oracion(X,[el,hombre,que,vimos,ayer,era,mi,vecino],[]), draw(X).

% PRACTICA 2 CON COMAS

pract2_9_com():- oracion(X,[juan,',',que,es,ágil,',',escala,el,rocódromo,por,las,tardes],[]), draw(X).
pract2_10_com():- oracion(X,[juan,',',que,es,muy,delicado,',',come,solamente,manzanas,rojas],[]), draw(X).
