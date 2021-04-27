:-consult('draw').
:-consult('An�lisisOraciones').
:-consult('Simplificaci�nOraciones').





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

apt3():- apt3_1(), apt3_2(), apt3_3(), apt3_4(),
         apt3_5(), apt3_6(), apt3_7(), apt3_8().

apt3_1():- oracion(X,[juan,y,mar�a,comen,una,manzana,con,un,tenedor,y,un,cuchillo],[]), draw(X).
apt3_2():- oracion(X,[mar�a,hace,la,pr�ctica,de,juan],[]), draw(X).
apt3_3():- oracion(X,[mi,casa,est�,muy,lejos,de,madrid],[]), draw(X).
apt3_4():- oracion(X,[ana,fue,ayudada,por,un,enfermero],[]), draw(X).
apt3_5():- oracion(X,[nunca,llueve,en,el,desierto],[]), draw(X).
apt3_6():- oracion(X,[todos,se,comportaron,bien,en,clase],[]), draw(X).
apt3_7():- oracion(X,[esta,noche,saldr�,por,alcal�],[]), draw(X).
apt3_8():- oracion(X,[la,esperanza,de,vida,de,un,ni�o,depende,de,su,lugar,de,nacimiento],[]), draw(X).


% PRACTICA 2

pract2():- pract2_1(), pract2_2(), pract2_3(), pract2_4(), pract2_5(), pract2_6(), pract2_7(),
           pract2_8(), pract2_9(), pract2_10(), pract2_11(), pract2_12(), pract2_13(), pract2_14().

pract2_1():- oracion(X,[juan,es,moreno,y,mar�a,es,alta],[]), draw(X).
pract2_2():- oracion(X,[juan,estudia,filosof�a,pero,mar�a,estudia,derecho],[]), draw(X).
pract2_3():- oracion(X,[mar�a,toma,un,caf�,mientras,juan,recoge,la,mesa],[]), draw(X).
pract2_4():- oracion(X,[juan,toma,caf�,y,lee,el,peri�dico],[]), draw(X).
pract2_5():- oracion(X,[juan,y,h�ctor,comen,patatas,fritas,y,beben,cerveza],[]), draw(X).
pract2_6():- oracion(X,[juan,come,patatas,fritas,pero,mar�a,prefiere,paella,aunque,h�ctor,toma,caf�,e,irene,lee,una,novela],[]), draw(X).
pract2_7():- oracion(X,[irene,canta,y,salta,mientras,juan,estudia],[]), draw(X).
pract2_8():- oracion(X,[h�ctor,come,patatas,fritas,y,bebe,zumo,mientras,juan,canta,y,salta,aunque,mar�a,lee,una,novela],[]), draw(X).
pract2_9():- oracion(X,[juan,que,es,�gil,escala,el,roc�dromo,por,las,tardes],[]), draw(X).
pract2_10():- oracion(X,[juan,que,es,muy,delicado,come,solamente,manzanas,rojas],[]), draw(X).
pract2_11():- oracion(X,[el,procesador,de,textos,que,es,una,herramienta,bastante,potente,sirve,para,escribir,documentos],[]),draw(X).
pract2_12():- oracion(X,[el,procesador,de,textos,es,una,herramienta,bastante,potente,que,sirve,para,escribir,documentos,pero,es,bastante,lento],[]), draw(X).
pract2_13():- oracion(X,[el,rat�n,que,caz�,el,gato,era,gris],[]), draw(X).
pract2_14():- oracion(X,[el,hombre,que,vimos,ayer,era,mi,vecino],[]), draw(X).

% PRACTICA 2 CON COMAS

pract2_com():- pract2_9_com(), pract2_10_com().

pract2_9_com():- oracion(X,[juan,',',que,es,�gil,',',escala,el,roc�dromo,por,las,tardes],[]), draw(X).
pract2_10_com():- oracion(X,[juan,',',que,es,muy,delicado,',',come,solamente,manzanas,rojas],[]), draw(X).


% PRUEBAS SIMPLIFICACION
simpl_1():- oracion(X,[juan,es,moreno,y,mar�a,es,alta],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_2():- oracion(X,[juan,estudia,filosof�a,pero,mar�a,estudia,derecho],[]),draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_3():- oracion(X,[mar�a,toma,un,caf�,mientras,juan,recoge,la,mesa],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_4():- oracion(X,[juan,toma,caf�,y,lee,el,peri�dico],[]), draw(X), simplificacion_coordinada(X,Y), imprimir_simplificadas(Y).
simpl_5():- oracion(X,[juan,y,h�ctor,comen,patatas,fritas,y,beben,cerveza],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_6():- oracion(X,[juan,come,patatas,fritas,pero,mar�a,prefiere,paella,aunque,h�ctor,toma,caf�,e,irene,lee,una,novela],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_7():- oracion(X,[irene,canta,y,salta,mientras,juan,estudia],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_8():- oracion(X,[h�ctor,come,patatas,fritas,y,bebe,zumo,mientras,juan,canta,y,salta,aunque,mar�a,lee,una,novela],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_9():- oracion(X,[juan,que,es,�gil,escala,el,roc�dromo,por,las,tardes],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_10():- oracion(X,[juan,que,es,muy,delicado,come,solamente,manzanas,rojas],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_11():- oracion(X,[el,procesador,de,textos,que,es,una,herramienta,bastante,potente,sirve,para,escribir,documentos],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_12():- oracion(X,[el,procesador,de,textos,es,una,herramienta,bastante,potente,que,sirve,para,escribir,documentos,pero,es,bastante,lento],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_13():- oracion(X,[el,rat�n,que,caz�,el,gato,era,gris],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
simpl_14():- oracion(X,[el,hombre,que,vimos,ayer,era,mi,vecino],[]), draw(X), simplificacion(X,Y), imprimir_simplificadas(Y).
