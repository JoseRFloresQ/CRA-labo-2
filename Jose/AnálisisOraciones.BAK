:-consult('GruposSintagmas').

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

compl_nombre(compl_n(GAdj)) --> g_adjetival(GAdj).
compl_nombre(compl_n(GAdv)) --> g_adverbial(GAdv).
compl_nombre(compl_n(GP)) --> g_prep(GP).
compl_nombre(compl_n(Or)) --> oracion_subordinada(Or).


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

