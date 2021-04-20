% Autor:
% Fecha: 14/03/2019

%oraciones simples y compuestas
oracion(o(OS)) --> oracion_simple(OS).
oracion(o(OC)) --> oracion_compuesta(OC).

%oraciones simples

oracion_simple(os(GN,GV)) --> grupo_nominal_v(GN), grupo_verbal(GV).
oracion_simple(os(GV)) --> grupo_verbal(GV).

%oraciones compuestas
oracion_subordinada(osub(GN,CS,GV)) --> grupo_nominal_v(GN), conjuncion_subordinada(CS), grupo_verbal(GV).
oracion_subordinada(osub(CS,GV)) --> conjuncion_subordinada(CS),grupo_verbal(GV).
oracion_compuesta(oc(OSUB, GV)) --> oracion_subordinada(OSUB), grupo_verbal(GV).
oracion_compuesta(oc(GN, GV)) --> grupo_nominal_v(GN), grupo_verbal(GV).
oracion_compuesta(oc(GN,GV,C,GV2)) -->  grupo_nominal_v(GN),  grupo_verbal(GV),conjuncion(C),grupo_verbal(GV2).
oracion_compuesta(oc(GN,GV,C,GV2,C2,GV3)) -->  grupo_nominal_v(GN),  grupo_verbal(GV),conjuncion(C),grupo_verbal(GV2),conjuncion(C2),grupo_verbal(GV3).
oracion_compuesta(oc(OS, C, OS2)) --> oracion_simple(OS), conjuncion(C), oracion_simple(OS2).
oracion_compuesta(oc(OC, C, OS)) --> oracion_compuesta(OC), conjuncion(C), oracion_simple(OS).

%grupos nominales
grupo_nominal(gn(DET,N)) --> determinante(DET), nombre_comun(N).
grupo_nominal(gn(DET,N,ADJ)) --> determinante(DET), nombre_comun(N), adjetivo(ADJ).
grupo_nominal(gn(DET,ADJ,N)) --> determinante(DET), adjetivo(ADJ), nombre_comun(N).
grupo_nominal(gn(N,ADJ)) --> nombre_comun(N), adjetivo(ADJ).
grupo_nominal(gn(PR)) --> pronombre(PR).
grupo_nominal(gn(NP)) --> nombre_propio(NP).
grupo_nominal(gn(N)) --> nombre_comun(N).

grupo_nominal_v(GN) --> grupo_nominal(GN).
grupo_nominal_v(gn(GN,GP)) --> grupo_nominal(GN), grupo_preposicional(GP).
grupo_nominal_v(gn(GN,ADJ)) --> grupo_nominal(GN), grupo_adjetival(ADJ).
grupo_nominal_v(gnc(GN,C,GN2,ADJ)) --> grupo_nominal(GN), conjuncion(C),grupo_nominal(GN2), grupo_adjetival(ADJ).
grupo_nominal_v(gnc(GN,C,GN2)) --> grupo_nominal(GN), conjuncion(C),grupo_nominal(GN2).

grupo_nominal_v(gn(GN,GSUB)) --> grupo_nominal(GN),oracion_subordinada(GSUB).
grupo_nominal_v(gn(GN,GADJ,GSUB)) --> grupo_nominal(GN), grupo_adjetival(GADJ),oracion_subordinada(GSUB).

%grupos adjetivales
grupo_adjetival(gadj(ADJ)) --> adjetivo(ADJ).
grupo_adjetival(gadj(ADV,ADJ)) --> adverbio(ADV), adjetivo(ADJ).
grupo_adjetival(gadj(ADJ,GP)) --> adjetivo(ADJ), grupo_preposicional(GP).
 
%grupos adverbiales
grupo_adverbial(gadv(ADV,ADV2, GP)) --> adverbio(ADV), adverbio(ADV2), grupo_preposicional(GP).
grupo_adverbial(gadv(ADV,ADV2)) --> adverbio(ADV), adverbio(ADV2).
grupo_adverbial(gadv(ADV)) --> adverbio(ADV).

%grupos verbales
grupo_verbal(gv(V, GN)) --> verbo(V), grupo_nominal_v(GN).
grupo_verbal(gv(V, GN, GP)) --> verbo(V), grupo_nominal(GN), grupo_preposicional(GP).
grupo_verbal(gv(V, GP)) --> verbo(V), grupo_preposicional(GP).
grupo_verbal(gv(V, GP,GN)) --> verbo(V), grupo_preposicional(GP), grupo_nominal(GN).
grupo_verbal(gv(V, GADV,GN)) --> verbo(V), grupo_adverbial(GADV), grupo_nominal_v(GN).
grupo_verbal(gv(V, GADV)) --> verbo(V), grupo_adverbial(GADV).
grupo_verbal(gv(V, GADJ)) --> verbo(V), grupo_adjetival(GADJ).
grupo_verbal(gv(ADV, V, GP)) --> adverbio(ADV), verbo(V), grupo_preposicional(GP).
grupo_verbal(gv(V)) --> verbo(V).

%grupos preposicionales
grupo_preposicional(gp(P, GN)) --> preposicion(P), grupo_nominal_v(GN).


 
%diferenciamos dos tipos de oraciones: oracion simple y oracion compuesta
% oracion(o(OS)) --> oracion_simple(OS).
% oracion(o(OC)) --> oracion_compuesta(OC).
% 
% %oracion simple
% oracion_simple(os(GN,GV)) --> grupo_nominal(GN), grupo_verbal(GV).
% oracion_simple(os(GV)) --> grupo_verbal(GV).
% oracion_simple(os(GN,GV)) --> grupo_nominal_complejo(GN), grupo_verbal(GV).
% 
% %oracion compuesta
% oracion_subordinada(osub(GN,GV)) --> grupo_nominal(GN), grupo_verbal(GV).
% oracion_compuesta(oc(GN,GV)) --> grupo_nominal(GN), grupo_verbal_compuesto(GV).
% oracion_compuesta(oc(CS,GV)) --> oracion_subordinada(CS), grupo_verbal(GV).
% oracion_compuesta(oc(GN,GV,C,GV2)) --> grupo_nominal_complejo(GN), grupo_verbal(GV), conjuncion(C), grupo_verbal(GV2).
% oracion_compuesta(oc(OS,C,OS2)) --> oracion_simple(OS), conjuncion(C), oracion_simple(OS2).
% oracion_compuesta(oc(OC,C,OS)) --> oracion_compuesta(OC), conjuncion(C), oracion_simple(OS).
% 
% %grupos nominales
% %simples
% 
% grupo_nominal(gn(DET,N,ADJ)) --> determinante(DET), nombre_comun(N), adjetivo(ADJ).
% grupo_nominal(gn(DET,ADJ,N)) --> determinante(DET), adjetivo(ADJ), nombre_comun(N).
% grupo_nominal(gn(DET,N,GP)) --> determinante(DET), nombre_comun(N), grupo_preposicional(GP).
% grupo_nominal(gn(N,GP)) --> nombre_comun(N), grupo_preposicional(GP).
% grupo_nominal(gn(N,ADJ)) --> nombre_comun(N), adjetivo(ADJ).
% grupo_nominal(gn(DET,N)) --> determinante(DET), nombre_comun(N).
% grupo_nominal(gn(NP)) --> nombre_propio(NP).
% grupo_nominal(gn(PR)) --> pronombre(PR).
% grupo_nominal(gn(N)) --> nombre_comun(N).
% 
% %complejos
% grupo_nominal_complejo(gnc(GN,C,GN2)) --> grupo_nominal(GN), conjuncion(C),grupo_nominal(GN2).
% 
% %grupos adjetivales
% grupo_adjetival(gadj(ADJ)) --> adjetivo(ADJ).
% grupo_adjetival(gadj(ADV,ADJ)) --> adverbio(ADV),adjetivo(ADJ).
% grupo_adjetival(gadj(ADJ,GP)) --> adjetivo(ADJ), grupo_preposicional(GP).
% 
% %grupos adverviales
% grupo_adverbial(gadv(ADV)) --> adverbio(ADV).
% grupo_adverbial(gadv(ADV,ADV2)) --> adverbio(ADV), adverbio(ADV2).
% grupo_adverbial(gadv(ADV,ADV2,GP)) --> adverbio(ADV), adverbio(ADV2), grupo_preposicional(GP).
% 
% %grupos verbales
% grupo_verbal(gv(CS, V, GN)) --> conjuncion_subordinada(CS), verbo(V), grupo_nominal(GN).
% grupo_verbal(gv(CS, V, GN,GADJ)) --> conjuncion_subordinada(CS), verbo(V), grupo_nominal(GN), grupo_adjetival(GADJ).
% grupo_verbal(gv(CS, V, GP)) --> conjuncion_subordinada(CS), verbo(V), grupo_preposicional(GP).
% grupo_verbal(gv(CS, V, GADV)) --> conjuncion_subordinada(CS), verbo(V), grupo_adjetival(GADV).
% grupo_verbal(gv(V)) --> verbo(V).
% grupo_verbal(gv(V, GP)) --> verbo(V), grupo_preposicional(GP).
% grupo_verbal(gv(V, GN)) --> verbo(V), grupo_nominal(GN).
% grupo_verbal(gv(V,CS,GV)) --> verbo(V),conjuncion_subordinada(CS), grupo_verbal(GV).
% grupo_verbal(gv(V,GN, GP)) --> verbo(V), grupo_nominal(GN), grupo_preposicional(GP).
% grupo_verbal(gv(V,GN, GADJ)) --> verbo(V), grupo_nominal(GN), grupo_adjetival(GADJ).
% grupo_verbal(gv(V, GADJ)) --> verbo(V), grupo_adjetival(GADJ).
% grupo_verbal(gv(V, GADV)) --> verbo(V), grupo_adverbial(GADV).
% grupo_verbal(gv(V, GADV,GN)) --> verbo(V), grupo_adverbial(GADV), grupo_nominal(GN).
% grupo_verbal(gv(V, GN)) --> verbo(V), grupo_nominal_complejo(GN).
% grupo_verbal(gv(V, GN, GP)) --> verbo(V), grupo_nominal(GN), grupo_preposicional(GP).
% 
% grupo_verbal_compuesto(gv(GV,C,GV2,C2,GV3)) --> grupo_verbal(GV), conjuncion(C), grupo_verbal(GV2), conjuncion(C2), grupo_verbal(GV3).
% grupo_verbal_compuesto(gv(GV, OS)) --> grupo_verbal(GV), oracion_subordinada(OS).
% 
% %grupos preposicionales
% grupo_preposicional(gp(P, GN)) --> preposicion(P), grupo_nominal(GN).
% grupo_preposicional(gp(P, GN)) --> preposicion(P), grupo_nominal_complejo(GN).
% grupo_preposicional(gp(P, V, GN)) --> preposicion(P), verbo(V),grupo_nominal(GN).
