:- module(gramES,[

	]).

% Importamos el diccionario en castellano.
:- consult('../diccionario/dicES.pl').


/*****************************************************************************************/
/*       Reglas gramaticales castellano Basadose en la sintasis delejercicio 3.1 y 4. 	 */
/*****************************************************************************************/
/*****************************************************************************************/
/*										Oraciones:										 */
/*****************************************************************************************/
% Traductor.
oracion(s(S,V,O)) 	  --> sint_n(S,N), dicES:verbo(V,N), sint_n(O,_).
oracion(o(GN,GV)) 	  --> g_nominal(GN), g_verbal(GV).
oracion(o(GV,GN)) 	  --> g_verbal(GV), g_nominal(GN).
oracion(o(CS,GV,GN))  --> dicES:conjuncion_sub(CS), g_verbal(GV), g_nominal(GN).
oracion(o(O1,CC,O2))  --> oracion(O1), dicES:conjuncion_coord(CC), oracion(O2).

/*****************************************************************************************/
/*									Grupos Nominales:									 */
/*****************************************************************************************/
g_nominal(gn(N))      --> dicES:nombre(N, _, _).
g_nominal(gn(D,N))    --> dicES:determinante(D, G, NUM), dicES:nombre(N, G, NUM).
g_nominal(gn(D,N,A))  --> dicES:determinante(D, G, NUM), dicES:nombre(N, G, NUM), dicES:adjetivo(A, G).
g_nominal(gn(D,N,O))  --> dicES:determinante(D, G, NUM), dicES:nombre(N, G, NUM), dicES:oracion(O).

/*****************************************************************************************/
/*									Singtasmas Nominal:									 */
/*****************************************************************************************/
sint_n(np(M,S), N)	  --> dicES:articulo(M,G,N), dicES:nombre(S,G,N).

/*****************************************************************************************/
/*									Grupos Verbales:									 */
/*****************************************************************************************/
g_verbal(gv(V))       --> dicES:verbo(V, _).
g_verbal(gv(V,GN))	  --> dicES:verbo(V, G), g_nominal(GN, G, _).
g_verbal(gv(V,P,GN))  --> dicES:verbo(V, G), dicES:preposicion(P), g_nominal(GN, G, _).
g_verbal(gv(V,A))     --> dicES:verbo(V, G), dicES:adjetivo(A, G).


