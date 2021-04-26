% SIMPLIFICACION

%cuando hay una coordinada y dentro de una oracion, una subordinada (caso oracion 11 especifico)
simplificacion_coordinada(o(ocm(oc(o(os(suj(Suj),pred(gv(Verbo, atr(gn(gns(Det,N,Comp1,compl_n(or(rel(_), pred(Pred2)))))))))), c(_), o(os(Pred3))))) ,[o(os(suj(Suj), pred(gv(Verbo, atr(gn(gns(Det,N, Comp1))))))), o(os(suj(Suj),pred(Pred2))), o(os(suj(Suj),pred(Pred3)))]).

% cuando hay sujeto compuesto y dos coordinadas
simplificacion_coordinada( o(ocm(oc(o(os(suj(gn(gns(Suj1), c(_), gns(Suj2))),pred(Pred1))), c(_), o(os(Pred2))))) ,[ o(os(suj(Suj1),pred(Pred1))), o(os(suj(Suj2), pred(Pred1))), o(os(suj(Suj2), pred(Pred2))), o(os(suj(Suj1), pred(Pred2)))]).

% cuando hay dos coordinadas, ambas con sujeto
simplificacion_coordinada(o(ocm(oc(o(os(suj(Suj1),pred(Pred1))), c(_), o(os(suj(Suj2),pred(Pred2)))))), [o(os(suj(Suj1),pred(Pred1))),o(os(suj(Suj2),pred(Pred2)))]).

%cuando hay dos coordinadas, una con sujeto y la otra sin sujeto
simplificacion_coordinada(o(ocm(oc(o(os(suj(Suj),pred(Pred1))), c(_), o(os(pred(Pred2)))))), [o(os(suj(Suj),pred(Pred1))),o(os(suj(Suj),pred(Pred2)))]).

%cuando hay mas de dos coordinadas, todas con sujeto
simplificacion_coordinada(o(ocm(oc(o(os(suj(Suj), pred(Pred))), c(_), O1))), [ o(os(suj(Suj),pred(Pred))) | RestoOraciones]):- simplificacion_coordinada(O1, RestoOraciones).

%cuando hay dos coorinadas anidadas, la primera tiene sujeto, la segunda no y la tercera sí.
simplificacion_coordinada(o(ocm(oc(o(os(suj(Suj),pred(Pred1))), c(_), o(ocm(oc(o(os(pred(Pred2))), c(_), o(os(suj(Suj3),pred(Pred3))))))))), [o(os(suj(Suj),pred(Pred1))), o(os(suj(Suj),pred(Pred2))), o(os(suj(Suj3),pred(Pred3)))]).


%cuando hay una subordinada en el sujeto
 simplificacion_subordinada(o(os(suj(gn(gns(Suj,compl_n(or(rel(_), pred(Pred1)))))),pred(Pred2))), [o(os(suj(Suj),pred(Pred1))), o(os(suj(Suj),pred(Pred2)))]).

simplificacion_subordinada(o(os(suj(gn(gns(Det,Suj,compl_n(or(rel(_), pred(gv(v_tran(Verbo),cd(Cd)))))))),pred(Pred2))), [o(os(suj(Cd),pred(gv(v_tran(Verbo), cd(gn(gns(Det,Suj))))))), o(os(suj(Det,Suj),pred(Pred2)))]).
simplificacion_subordinada(o(os(suj(gn(gns(Det,Suj,compl_n(or(rel(_), pred(gv(v_tran(Verbo), CCT))))))),pred(Pred2))), [o(os(pred(gv(v_tran(Verbo), cd(gn(gns(Det,Suj))),CCT)))), o(os(suj(Det,Suj),pred(Pred2)))]).

% cuando hay una subordinada en un sujeto, en el que hay determinante, nombre, y dos complementos del nombre
simplificacion_subordinada(o(os(suj(gn(gns(Det,Suj,compl_n(Comp),compl_n(or(rel(_), pred(Pred1)))))),pred(Pred2))), [o(os(suj(Det,Suj,Comp),pred(Pred1))), o(os(suj(Det,Suj,Comp),pred(Pred2)))]).


% INTERFAZ SIMPLIFICACION
simplificacion(Oracion,Resultados):- simplificacion_coordinada(Oracion,Resultados).
simplificacion(Oracion, Resultados):- simplificacion_subordinada(Oracion, Resultados).

% Funciones para imprimir las oraciones simplificadas
imprimir_simplificadas([H|[]]):- draw(H).
imprimir_simplificadas([H|Resto]):- draw(H), imprimir_simplificadas(Resto).
