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
sentence(s(SN))            --> nom_p(SN,_).
sentence(s(SN,SV))         --> nom_p(SN,N), nom_v(SV,N).
sentence(s(SN,SV,O))       --> nom_p(SN,N), nom_v(SV,N), nom_p(O,_).
sentence(s(SN,SP,SN))      --> nom_p(SN,N), nom_pro(SP,N), nom_p(SN,N).
sentence(s(SN,SP,SAV,SV))  --> nom_p(SN,N), nom_pro(SP,N), nom_adv(SAV, N), nom_v(SV,N).
sentence(s(SP,SN))         --> nom_pro(SP,N), nom_p(SN,N).
sentence(o(O1,CC,O2))      --> sentence(O1), dicIN:conjunctions_coord(CC), sentence(O2).
/*****************************************************************************************/
/*                                Grupos Nominales:                                      */
/*****************************************************************************************/
nom_p(sn(S),N)       --> dicIN:noun(S,N).
nom_p(sn(S1,S2),N)   --> dicIN:noun(S1,N), dicIN:noun(S2,N).
nom_p(sn(M,S),N)     --> dicIN:determiner(M), dicIN:noun(S,N).
nom_p(sn(M,S,SA),N)  --> dicIN:determiner(M), nom_adj(SA), dicIN:noun(S,N).
nom_p(sn(M,S,SP),N)  --> dicIN:determiner(M), dicIN:noun(S,N), nom_pre(SP, N).
nom_p(sn(M,S,CC),N)  --> dicIN:determiner(M), dicIN:noun(S,N), dicIN:pronoun(CC).

/*****************************************************************************************/
/*                                Grupos Verbales:                                       */
/*****************************************************************************************/
nom_v(sv(V),N)       --> dicIN:verb(V,N).
nom_v(sv(V,SN), N)   --> dicIN:verb(V,N), nom_p(SN,N).
nom_v(sv(V,SP), N)   --> dicIN:verb(V,N), nom_pre(SP,N).
nom_v(sv(V,SAJ), N)  --> dicIN:verb(V,N), nom_adj(SAJ).
nom_v(sv(V,SAV), N)  --> dicIN:verb(V,N), nom_adv(SAV,N).

/*****************************************************************************************/
/*                                Grupos Pronominal:                                     */
/*****************************************************************************************/
nom_pro(sp(P,V),N)         --> dicIN:pronoun(P, N), nom_v(V,N).

/*****************************************************************************************/
/*                                Grupos Adjetival:                                      */
/*****************************************************************************************/
nom_adj(saj(A))            --> dicIN:adjetive(A).
nom_adj(saj(AJ,SP))        --> dicIN:adjetive(AJ),  nom_pre(SP, _).
nom_adj(saj(ADV,AJ))       --> dicIN:adverb(ADV), dicIN:adjetive(AJ).
nom_adj(saj(ADV,AJ,SP))    --> dicIN:adverb(ADV), dicIN:adjetive(AJ), nom_pre(SP, _).
nom_adj(saj(ADV,AJ,ADV))   --> dicIN:adverb(ADV), dicIN:adjetive(AJ), nom_adv(ADV, _).

/*****************************************************************************************/
/*                                Grupos Adverbial:                                      */
/*****************************************************************************************/
nom_adv(sadv(ADV),_)       --> dicIN:adverb(ADV).
nom_adv(sadv(CU,ADV),_)    --> dicIN:adverb(CU),  dicIN:adverb(ADV).
nom_adv(sadv(ADV,SP),N)    --> dicIN:adverb(ADV), nom_pre(SP,N).
nom_adv(sadv(ADV,SN),N)    --> dicIN:adverb(ADV), nom_pre(SN,N).


/*****************************************************************************************/
/*                                Grupos Prepocicional:                                  */
/*****************************************************************************************/
nom_pre(sp(P, GN),G)   --> dicIN:preposition(P), nom_p(GN, G).