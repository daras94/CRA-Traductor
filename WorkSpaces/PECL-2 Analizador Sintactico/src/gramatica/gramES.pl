:- module(gramES,[

        ]).

% Importamos el diccionario en castellano.
:- consult('../diccionario/dicES.pl').


/*****************************************************************************************/
/*       Reglas gramaticales castellano Basadose en la sintasis delejercicio 3.1 y 4.    */
/*****************************************************************************************/
/*****************************************************************************************/
/*                                   Oraciones:                                          */
/*****************************************************************************************/
% Traductor.
oracion(s(SV))            --> g_verbal(SV, _).
oracion(s(SN))            --> g_nominal(SN,_).
oracion(s(SN,SV))         --> g_nominal(SN,N), g_verbal(SV,N).
oracion(s(SN,SV,O))       --> g_nominal(SN,N), g_verbal(SV,N), g_nominal(O,_).
oracion(s(SN,SP,SN))      --> g_nominal(SN,N), g_pronominal(SP,N), g_nominal(SN,N).
oracion(s(SN,SP,SAV,SV))  --> g_nominal(SN,N), g_pronominal(SP,N), g_adverbial(SAV, N), g_verbal(SV,N).
oracion(s(SP,SN))         --> g_pronominal(SP,N), g_nominal(SN,N).
oracion(o(O1,CC,O2))      --> oracion(O1), dicES:conjuncion_c(CC), oracion(O2).

/*****************************************************************************************/
/*                                Grupos Nominales:                                      */
/*****************************************************************************************/
g_nominal(sn(S),N)       --> dicES:nombre(S,_,N).
g_nominal(sn(S1,S2),N)   --> dicES:nombre(S1,_,N), dicES:nombre(S2,_,N).
g_nominal(sn(M,S),N)     --> dicES:determinante(M,G,N), dicES:nombre(S,G,N).
g_nominal(sn(M,S,SA),N)  --> dicES:determinante(M,G,N), dicES:nombre(S,G,N), g_adjetival(SA).
g_nominal(sn(M,S,SP),N)  --> dicES:determinante(M,G,N), dicES:nombre(S,G,N), g_prepocicional(SP, N).
g_nominal(sn(M,S,CC),N)  --> dicES:determinante(M,G,N), dicES:nombre(S,G,N), dicES:conjuncion_s(CC).

/*****************************************************************************************/
/*                                Grupos Verbales:                                       */
/*****************************************************************************************/
g_verbal(sv(V),N)       --> dicES:verbo(V, N).
g_verbal(sv(V,SN), N)   --> dicES:verbo(V, N), g_nominal(SN, N).
g_verbal(sv(V,SP), N)   --> dicES:verbo(V, N), g_prepocicional(SP, N).
g_verbal(sv(V,SAJ), N)  --> dicES:verbo(V, N), g_adjetival(SAJ).
g_verbal(sv(V,SAV), N)  --> dicES:verbo(V, N), g_adverbial(SAV, N).

/*****************************************************************************************/
/*                                Grupos Pronominal:                                     */
/*****************************************************************************************/
g_pronominal(sp(P,V),N)         --> dicES:pronombre(P, N), g_verbal(V, N).

/*****************************************************************************************/
/*                                Grupos Adjetival:                                      */
/*****************************************************************************************/
g_adjetival(saj(A))                 --> dicES:adjetivo(A).
g_adjetival(saj(AJ, SP))        --> dicES:adjetivo(AJ),  g_prepocicional(SP, _).
g_adjetival(saj(ADV, AJ))       --> dicES:adverbio(ADV), dicES:adjetivo(AJ).
g_adjetival(saj(ADV, AJ, SP))   --> dicES:adverbio(ADV), dicES:adjetivo(AJ), g_prepocicional(SP, _).
g_adjetival(saj(ADV, AJ, ADV))  --> dicES:adverbio(ADV), dicES:adjetivo(AJ), g_adverbial(ADV, _).

/*****************************************************************************************/
/*                                Grupos Adverbial:                                      */
/*****************************************************************************************/
g_adverbial(sadv(ADV), _)       --> dicES:adverbio(ADV).
g_adverbial(sadv(CU,ADV), _)    --> dicES:adverbio(CU),  dicES:adverbio(ADV).
g_adverbial(sadv(ADV,SP),N)     --> dicES:adverbio(ADV), g_prepocicional(SP, N).
g_adverbial(sadv(ADV,SN),N)     --> dicES:adverbio(ADV), g_nominal(SN, N).

/*****************************************************************************************/
/*                                Grupos Prepocicional:                                  */
/*****************************************************************************************/
g_prepocicional(sp(P, GN), G)   --> dicES:preposicion(P), g_nominal(GN, G).
