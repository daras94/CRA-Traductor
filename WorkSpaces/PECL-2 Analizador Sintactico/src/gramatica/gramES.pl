:- module(gramES,[

        ]).

% Importamos el diccionario en castellano.
:- consult('../diccionario/dicES.pl').


/*****************************************************************************************/
/*       Reglas gramaticales castellano Basadose en la sintasis delejercicio 3.1 y 4.    */
/*****************************************************************************************/
/*****************************************************************************************/
/*                                                                              Oraciones:                                                                               */
/*****************************************************************************************/
% Traductor.
oracion(s(S,V,O))         --> g_nominal(GN,N), dicES:verbo(V,N), g_nominal(O,_).
oracion(s(SN,SV))         --> g_nominal(SN,N), g_verbal(SV,N).
oracion(s(O1,CC,O2))      --> oracion(O1), dicES:conjuncion_coord(CC), oracion(O2).
oracion(o(CS,GV,GN))      --> dicES:conjuncion_sub(CS), g_verbal(SV), g_nominal(SN).


/*****************************************************************************************/
/*                                                                      Grupos Nominales:                                                                        */
/*****************************************************************************************/
g_nominal(gn(S),N)     --> dicES:nombre(S,G,N).
g_nominal(gn(M,S),N)   --> dicES:determinante(M,G,N), dicES:nombre(S,G,N).
g_nominal(gn(M,S,A),N) --> dicES:determinante(M,G,N), dicES:nombre(S,G,N), dicES:adjetivo(A).
g_nominal(gn(M,S,O),N) --> dicES:determinante(M,G,N), dicES:nombre(S,G,N), oracion(O).

/*****************************************************************************************/
/*                                                                      Grupos Verbales:                                                                         */
/*****************************************************************************************/
g_verbal(gv(V),N)       --> dicES:verbo(V, N).
g_verbal(gv(V,GN),N)    --> dicES:verbo(V, N), g_nominal(SN, N).
g_verbal(gv(V,P,GN))    --> dicES:verbo(V, N), dicES:preposicion(), g_nominal()

g_verbal(gv(V,P,GN))  --> dicES:verbo(V, G), dicES:preposicion(P), g_nominal(GN, G, _).
g_verbal(gv(V,A))     --> dicES:verbo(V, G), dicES:adjetivo(A, G).


