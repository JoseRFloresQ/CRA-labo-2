:-consult('Gramáticas').

% GRUPOS SINTÁCTICOS/SINTAGMAS
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
g_verbal(gv(VT,CCT)) --> verbo_transitivo(VT), compl_circ_tiempo(CCT).
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
g_nominal_s(gns(D,N,CN1,CN2)) --> determinante(D), nombre(N), compl_nombre(CN1), compl_nombre(CN2).
g_nominal_s(gns(D,N,CN)) --> determinante(D), nombre(N), compl_nombre(CN).


g_nominal_s(gns(NP)) --> nombre_prop(NP).
g_nominal_s(gns(NP,CN)) --> nombre_prop(NP), compl_nombre(CN).
g_nominal_s(gns(D,NP)) --> determinante(D), nombre_prop(NP).
g_nominal_s(gns(D,NP,CN)) --> determinante(D), nombre_prop(NP), compl_nombre(CN).
