:- module(gramIN,[
		
	]).
% Importamos el diccionario Ingles.
:- consult('../diccionario/dicIN.pl').

/*****************************************************************************************/
/*       Reglas gramaticales castellano Basadose en la sintasis delejercicio 3.1 y 4. 	 */
/*****************************************************************************************/
/*****************************************************************************************/
/*										Sentencias:										 */
/*****************************************************************************************/	
sentence(s(S,V,O))	--> nom_p(S,N), dicIN:verb(V,N), nom_p(O,_).

/*****************************************************************************************/
/*										Noun Phrase:									 */
/*****************************************************************************************/

nom_p(np(M,S),N) 	--> dicIN:modifier(M), dicIN:noun(S,N).