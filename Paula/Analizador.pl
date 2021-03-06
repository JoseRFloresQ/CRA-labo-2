% Autor:
% Fecha: 14/03/2019

:-consult('Gramatica.pl').
:-consult('Diccionario.pl').
:-consult('draw.pl').


%primera parte de los ejercicios
test_1:- oracion(X,[el,hombre,come,una,manzana],[]),draw(X).    %correcto
test_2:- oracion(X,[la,mujer,come,manzanas],[]),draw(X).        %correcto
test_3:- oracion(X,[mar?a,come,una,manzana,roja],[]),draw(X).   %correcto
test_4:- oracion(X,[juan,ama,a,mar?a],[]),draw(X).              %correcto
test_5:- oracion(X,[el,gato,grande,come,un,rat?n,gris],[]),draw(X). %correcto
test_6:- oracion(X,[juan,estudia,en,la,universidad],[]),draw(X).    %correcto
test_7:- oracion(X,[el,alumno,ama,la,universidad],[]),draw(X).      %correcto
test_8:- oracion(X,[el,gato,come,ratones],[]),draw(X).              %correcto
test_9:- oracion(X,[el,rat?n,que,caz?,el,gato,era,gris],[]),draw(X).  %duda??
test_10:- oracion(X,[la,universidad,es,grande],[]),draw(X).          %correcto
test_0:- oracion(X,[la,manzana,come,un,gato],[]),draw(X).


%segunda parte de los ejercicios
test_11:- oracion(X,[juan,y,'mar?a',comen,la,manzana,roja,con,un,tenedor,y,un,cuchillo],[]),draw(X). %funciona
test_12:- oracion(X,['mar?a',hace,la,'pr?ctica',de,juan],[]),draw(X).                                   %funciona
test_13:- oracion(X,[mi,casa,'est?',muy,lejos,de,madrid],[]),draw(X).                                 %funciona
test_14:- oracion(X,[ana,'fue ayudada',por,un,enfermero],[]),draw(X).                         %no correcto.
test_15:- oracion(X,[nunca,llueve,en,el,desierto],[]),draw(X).                                      %funciona
test_16:- oracion(X,[todos,'se comportaron',bien,en,clase],[]),draw(X).                         %no
test_17:- oracion(X,[esta,noche,'saldr?',por,'alcal?'],[]),draw(X).                                       %funciona
test_18:- oracion(X,[la,esperanza,de,la,vida,de,un,'ni?o',depende,de,su,lugar,de,nacimiento],[]),draw(X). %funciona


%ejercicios de anexo
test1:- oracion(X,[el,hombre,grande,come,la,manzana,roja],[]),draw(X).                %correcto
test2:- oracion(X,[el,hombre,con,un,tenedor,grande,come,la,manzana,roja],[]),draw(X). %correcto
test3:- oracion(X,[juan,y,'mar?a',come,la,manzana,roja,con,un,tenedor,y,un,cuchillo],[]),draw(X).  %correcto
test4:- oracion(X,[ella,hace,la,'pr?ctica',de,juan],[]),draw(X).                        %correcto
test5:- oracion(X,[el,canario,de,juan,y,mar?a,canta],[]),draw(X).                     %correcto
test6:- oracion(X,[la,blanca,paloma,'alz?',el,vuelo],[]),draw(X).                       %correcto
test7:- oracion(X,['est?',muy,lejos,de,barcelona],[]),draw(X).                         %correcto
test8:- oracion(X,['?l',es,lento,de,reflejos],[]),draw(X).                              %correcto
test9:- oracion(X,[juan,habla,muy,claramente],[]),draw(X).                            %correcto
test10:- oracion(X,[la,esperanza,de,vida,de,un,'ni?o',depende,de,su,lugar,de,nacimiento],[]),draw(X). %correcto
test11:- oracion(X,[el,hombre,que,vimos,en,la,universidad,era,mi,profesor],[]),draw(X). %correcto
test12:- oracion(X,[juan,que,es,muy,delicado,come,solamente,manzanas,rojas],[]),draw(X).%correcto
test13:- oracion(X,[el,procesador,de,textos,que,es,una,herramienta,muy,potente,sirve,para,escribir,documentos],[]),draw(X). %correcto
test14:- oracion(X,[juan,es,moreno,y,'mar?a',es,alta],[]),draw(X).   %correcto
test15:- oracion(X,[juan,recoge,la,mesa,mientras,mar?a,toma,un,caf?],[]),draw(X).  %correcto
test16:- oracion(X,['compr?',un,pantal?n,y,una,corbata,negros],[]),draw(X).          %correcto
test17:- oracion(X,[juan,y,'h?ctor',comen,patatas,fritas,y,beben,cerveza],[]),draw(X).%correcto
test18:- oracion(X,[irene,canta,y,salta,mientras,juan,estudia],[]),draw(X).          %correcto
test19:- oracion(X,[irene,canta,y,salta,y,'sonr?e',alegre],[]),draw(X).                %correcto
test20:- oracion(X,[el,procesador,de,textos,es,una,herramienta,muy,potente,que,sirve,para,escribir,documentos],[]),draw(X). %correcto

%oraci?nes apartado 3
test01:- oracion(X,[juan,es,moreno,y,'mar?a',es,alta],[]),draw(X).  %correcto
test02:- oracion(X,[juan,estudia,'filosof?a',pero,'mar?a',estudia,derecho],[]),draw(X). %correcto
test03:- oracion(X,['mar?a',toma,un,'caf?',mientras,juan,recoge,la,mesa],[]),draw(X).   %correcto
test04:- oracion(X,[juan,toma,'caf?',y,lee,el,'peri?dico'],[]),draw(X).                 %correcto
test05:- oracion(X,[juan,y,'h?ctor',comen,patatas,fritas,y,beben,cerveza],[]),draw(X).  %correcto
test06:- oracion(X,[juan,come,patatas,fritas,pero,'mar?a',prefiere,paella,aunque,'h?ctor',toma,'caf?',e,irene,lee,una,novela],[]),draw(X).
test07:- oracion(X,[irene,canta,y,salta,mientras,juan,estudia],[]),draw(X). %correcto
test08:- oracion(X,['h?ctor',come,patatas,fritas,y,bebe,zumo,mientras,juan,canta,y,salta,aunque,'mar?a',lee,una,novela],[]),draw(X).
test09:- oracion(X,[juan,que,es,muy,'?gil',escala,en,el,'roc?dromo',por,las,tardes],[]),draw(X). %correcto
test010:- oracion(X,[juan,que,es,muy,delicado,come,solamente,manzanas,rojas],[]),draw(X). %correcto
test011:- oracion(X,[el,procesador,de,textos,que,es,una,herramienta,bastante,potente,sirve,para,escribir,documentos],[]),draw(X). %correcto
test012:- oracion(X,[el,procesador,de,textos,es,una,herramienta,muy,potente,que,sirve,para,escribir,documentos,pero,es,bastante,lento],[]),draw(X). %correcto
test013:- oracion(X,[el,'rat?n',que,'caz?',el,gato,era,gris],[]),draw(X). %correcto
test014:- oracion(X,[el,hombre,que,vimos,ayer,era,mi,vecino],[]),draw(X).  %correcto



prueba1:- test_1,test_2,test_3,test_4,test_5,test_6,test_7,test_8,test_9,test_10,test_0.
prueba2:- test_11,test_12,test_13, test_15,test_16,test_17,test_18.
prueba3:- test1,test2,test3,test4,test5,test6,test7,test8,test9,test10,test11,test12,test13,test14,test15,test16,test17,test18,test19,test20.
prueba4:- test01,test02,test03,test04,test05,test06,test07,test08,test09,test010,test011,test012,test013,test014.
