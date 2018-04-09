:- module(dicIN,[
		
	]).


/*****************************************************************************************/
/*       Dicionarios castellano basadose en la sintasis delejercicio 3.1 y 4.	     	 */
/*****************************************************************************************/
/*****************************************************************************************/
/*									modificadores:										 */
/*****************************************************************************************/
modifier(m(art))		--> [the].
modifier(det(det_1)) 	--> [the]; [a]; [an].
modifier(det(det_2)) 	--> [the]; [some].
modifier(det(det_1)) 	--> [the]; [a]; [an].
modifier(det(det_2)) 	--> [the]; [some].


/*****************************************************************************************/
/*									prepositionses:										 */
/*****************************************************************************************/
prepositions(prep(prep_1)) 		--> [to].
prepositions(prep(prep_2)) 		--> [before].
prepositions(prep(prep_3)) 		--> [under].
prepositions(prep(prep_4)) 		--> [with]; [by]; [cum].
prepositions(prep(prep_5)) 		--> [to].
prepositions(prep(prep_6)) 		--> [from].
prepositions(prep(prep_7)) 		--> [since].
prepositions(prep(prep_8)) 		--> [in].
prepositions(prep(prep_9)) 		--> [between].
prepositions(prep(prep_10)) 	--> [toward].
prepositions(prep(prep_11)) 	--> [until].
prepositions(prep(prep_12)) 	--> [for].
prepositions(prep(prep_13)) 	--> [by].
prepositions(prep(prep_14)) 	--> [according].
prepositions(prep(prep_15)) 	--> [without].
prepositions(prep(prep_16)) 	--> [so].
prepositions(prep(prep_17)) 	--> [on].
prepositions(prep(prep_18)) 	--> [after].
prepositions(prep(prep_19)) 	--> [during].
prepositions(prep(prep_20)) 	--> [through].

/*****************************************************************************************/
/*										nouns:										 */
/*****************************************************************************************/
% Los plurales y los Singulares.
noun(n(n_0), sg)		--> [stone].
noun(n(n_1), sg)		--> [paper].
noun(n(n_2), pl)		--> [scissors].
noun(n(n_3), sg)  		--> [man].        
noun(n(n_3), pl)  		--> [menfolk].
noun(n(n_4), sg)  		--> [woman].
noun(n(n_4), pl)  		--> [women].
noun(n(n_5), sg)  		--> [juan].
noun(n(n_6), sg)  		--> [maría].
noun(n(n_7), sg)  		--> [apple].
noun(n(n_7), pl)  		--> [apples].
noun(n(n_8), sg)  		--> [cat].
noun(n(n_8), pl)  		--> [cats].
noun(n(n_9), sg)  		--> [cat].
noun(n(n_9), pl)  		--> [gatas].
noun(n(n_10), sg) 		--> [mouse].
noun(n(n_10), pl) 		--> [mice].
noun(n(n_11), sg) 		--> [schoolchild].
noun(n(n_11), pl) 		--> [students].
noun(n(n_12), sg) 		--> [schoolgirl].
noun(n(n_12), pl) 		--> [students].
noun(n(n_13), sg) 		--> [university].

/*****************************************************************************************/
/*										verbs: 										 */
/*****************************************************************************************/
% Los Singulares.
verb(v(v_1), sg)		--> [cuts].
verb(v(v_2), sg)		--> [wraps].
verb(v(v_3), sg)		--> [breaks].
verb(v(v_4), sg) 		--> [loves].
verb(v(v_5), sg) 		--> [was].
verb(v(v_6), sg) 		--> [eat].
verb(v(v_7), sg) 		--> [saucepan].
verb(v(v_8), sg) 		--> [is].

% Los Plurales.
verb(v(v_1), pl)		--> [cut].
verb(v(v_2), pl)		--> [wrap].
verb(v(v_3), pl)		--> [break].
verb(v(v_4), pl) 		--> [love].
verb(v(v_5), pl) 		--> [were].
verb(v(v_6), pl) 		--> [eat].
verb(v(v_7), pl) 		--> [hunt].
verb(v(v_8), pl) 		--> [are].

/*****************************************************************************************/
/*										adjectives:										 */
/*****************************************************************************************/                        
% Los Singulares Invariables.
adjective(adj(adj_1), sg) --> [red].
adjective(adj(adj_2), sg) --> [black].
adjective(adj(adj_4), sg) --> [gray].
adjective(adj(adj_3), sg) --> [big].
adjective(adj(adj_5), sg) --> [little].


/*****************************************************************************************/
/*										Conjunctions:									 */
/*****************************************************************************************/
% Subordinadas
conjunctions_sub(conj_s(conj_s1))   --> [that].

% Cordinadas.
conjunctions_coord(conj_c(conj_c1)) --> [and].

/*****************************************************************************************/
/*										adverbs:										 */
/*****************************************************************************************/
adverb(adv(adv_1)) --> [very].
adverb(adv(adv_2)) --> [good].
