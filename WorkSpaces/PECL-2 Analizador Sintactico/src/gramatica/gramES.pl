:- module(gramES,[
		
	]).
	
% Importamos la gramatica en castellano.
%:- use_module(diccionario/dicES).
:- consult("../diccionario/dicES.pl").

/*****************************************************************************************/
/*       Reglas gramaticales castellano Basadose en la sintasis delejercicio 3.1 y 4. 	 */
/*****************************************************************************************/
/*****************************************************************************************/
/*										Oraciones:										 */
/*****************************************************************************************/
oracion         --> (g_nominal, g_verbal);
                    (g_verbal, g_nominal);
                    (conjuncion_sub, g_verbal, g_nominal);
                    (oracion, conjuncion_coord, oracion).

oracion(o(GN,GV)) 	  --> g_nominal(GN), g_verbal(GV).
oracion(o(GV,GN))     --> g_verbal(GV), g_nominal(GN).
oracion(o(CS,GV,GN))  --> conjuncion_sub(CS), g_verbal(GV), g_nominal(GN).
oracion(o(O1,CC,O2))  --> oracion(O1), conjuncion_coord(CC), oracion(O2).

/*****************************************************************************************/
/*									Grupos Nominales:									 */
/*****************************************************************************************/
g_nominal       --> nombre;
                    (nombre, adjetivo); 
                    (determinante, nombre);
                    (determinante, nombre, adjetivo);
                    (determinante, nombre, oracion).

g_nominal(gn(N)) 	 --> nombre(N).
g_nominal(gn(D,N))   --> determinante(D), nombre(N).
g_nominal(gn(D,N,A)) --> determinante(D), nombre(N), adjetivo(A).
g_nominal(gn(D,N,O)) --> determinante(D), nombre(N), oracion(O).

/*****************************************************************************************/
/*									Grupos Verbales:									 */
/*****************************************************************************************/

g_verbal        --> (verbo);
                    (verbo, g_nominal);
                    (verbo, preposicion, g_nominal);
                    (verbo, adjetivo).

g_verbal(gv(V))       --> verbo(V).
g_verbal(gv(V,GN))    --> verbo(V), g_nominal(GN).
g_verbal(gv(V,P,GN))  --> verbo(V), preposicion(P), g_nominal(GN).
g_verbal(gv(V,A))     --> verbo(V), adjetivo(A).

/*****************************************************************************************/
/*									Determinantes:										 */
/*****************************************************************************************/
determinante(det(X)) --> [X],{det(X)}.

/*****************************************************************************************/
/*									Preposiciones:									     */
/*****************************************************************************************/
preposicion(prep(X)) --> [X],{prep(X)}.

/*****************************************************************************************/
/*										Nombres:										 */
/*****************************************************************************************/
nombre(n(X)) --> [X],{n(X)}.

/*****************************************************************************************/
/*										Verbos: 										 */
/*****************************************************************************************/
verbo(v(X))  --> [X],{v(X)}.

/*****************************************************************************************/
/*										Adjetivos:										 */
/*****************************************************************************************/  
adjetivo(adj(X)) --> [X],{adj(X)}.

/*****************************************************************************************/
/*										Conjunciones:									 */
/*****************************************************************************************/
conjuncion_coord(conj_c(X)) --> [X],{conj_c(X)}.

conjuncion_sub(conj_s(X))  --> [X],{conj_s(X)}.

/*****************************************************************************************/
/*										Adverbios:										 */
/*****************************************************************************************/
adverbio(adv(X)) --> [X],{adv(X)}.
