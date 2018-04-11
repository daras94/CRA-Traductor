:- module(gramIN,[
                
        ]).
% Importamos el diccionario Ingles.
:- consult('../diccionario/dicIN.pl').

/*****************************************************************************************/
/*       Reglas gramaticales castellano Basadose en la sintasis delejercicio 3.1 y 4.    */
/*****************************************************************************************/
/*****************************************************************************************/
/*                                Sentencias:                                            */
/*****************************************************************************************/     
sentence(s(SV))            --> nom_v(SV,_).
sentence(s(SN))            --> nom_p(SN,_,_).
sentence(s(SN,SV))         --> nom_p(SN,N,_), nom_v(SV,N).
sentence(s(SN,SV,O))       --> nom_p(SN,N,_), nom_v(SV,N), nom_p(O,_,_).
sentence(s(SN,SP,SN))      --> nom_p(SN,N,_), nom_pro(SP,N), nom_p(SN,N, _).
sentence(s(SN,SP,SAV,SV))  --> nom_p(SN,N,_), nom_pro(SP,N), nom_adv(SAV,N), nom_v(SV,N).
sentence(s(SP,SN))         --> nom_pro(SP,N), nom_p(SN,N, _).
sentence(o(O1,CC,O2))      --> sentence(O1), dicIN:conjunctions_coord(CC), sentence(O2).
/*****************************************************************************************/
/*                                Grupos Nominales:                                      */
/*****************************************************************************************/
nom_p(sn(S),N,_)          --> dicIN:noun(S,N, _).
nom_p(sn(S1,S2),N,_)      --> dicIN:noun(S1,N, _), dicIN:noun(S2,N, _).
nom_p(sn(M,S),N,Det)      --> dicIN:determiner(M,C,Det), dicIN:noun(S,N,C).
nom_p(sn(M,S,SA),N,Det)   --> dicIN:determiner(M,C,Det), nom_adj(SA,N, C), dicIN:noun(S,N,_).
nom_p(sn(M,S,SP),N,Det)   --> dicIN:determiner(M,C,Det), dicIN:noun(S,N,C), nom_pre(SP,N).
nom_p(sn(M,S,CC),N,Det)   --> dicIN:determiner(M,C,Det), dicIN:noun(S,N,C), dicIN:pronoun(CC,N).

/*****************************************************************************************/
/*                                Grupos Verbales:                                       */
/*****************************************************************************************/
nom_v(sv(V),N)      --> dicIN:verb(V,N).
nom_v(sv(V,SN),N)   --> dicIN:verb(V,N), nom_p(SN,N,_).
nom_v(sv(V,SP),N)   --> dicIN:verb(V,N), nom_pre(SP,N).
nom_v(sv(V,SAJ),N)  --> dicIN:verb(V,N), nom_adj(SAJ,N).
nom_v(sv(V,SAV),N)  --> dicIN:verb(V,N), nom_adv(SAV,N).

/*****************************************************************************************/
/*                                Grupos Pronominal:                                     */
/*****************************************************************************************/
nom_pro(sp(P,V),N)  --> dicIN:pronoun(P, N), nom_v(V,N).

/*****************************************************************************************/
/*                                Grupos Adjetival:                                      */
/*****************************************************************************************/
nom_adj(saj(A),N, C)         --> dicIN:adjective(A,N,C).
nom_adj(saj(AJ,SP),N,C)      --> dicIN:adjective(AJ,N,C),  nom_pre(SP,N).
nom_adj(saj(ADV,AJ),N,C)     --> dicIN:adverb(ADV), dicIN:adjective(AJ,N,C).
nom_adj(saj(ADV,AJ,SP),N,C)  --> dicIN:adverb(ADV), dicIN:adjective(AJ,N,C), nom_pre(SP,N).
nom_adj(saj(ADV,AJ,ADV),N,C) --> dicIN:adverb(ADV), dicIN:adjective(AJ,N,C), nom_adv(ADV,N).

/*****************************************************************************************/
/*                                Grupos Adverbial:                                      */
/*****************************************************************************************/
nom_adv(sadv(ADV),_)       --> dicIN:adverb(ADV).
nom_adv(sadv(CU,ADV),_)    --> dicIN:adverb(CU),  dicIN:adverb(ADV).
nom_adv(sadv(ADV,SP),N)    --> dicIN:adverb(ADV), nom_pre(SP,N,_).
nom_adv(sadv(ADV,SN),N)    --> dicIN:adverb(ADV), nom_pre(SN,N,_).


/*****************************************************************************************/
/*                                Grupos Prepocicional:                                  */
/*******************************************************************************0**********/
nom_pre(sp(P, GN),G)   --> dicIN:preposition(P, Det), nom_p(GN,G, Det).

