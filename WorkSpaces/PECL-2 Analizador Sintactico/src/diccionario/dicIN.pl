:- module(dicIN,[
                
        ]).


/*****************************************************************************************/
/*       Dicionarios castellano basadose en la sintasis delejercicio 3.1 y 4.            */
/*****************************************************************************************/
/*****************************************************************************************/
/*                                 modificadores:                                        */
/*****************************************************************************************/
determiner(det(det_1), _, si_det)  --> [the].
determiner(det(det_2), _, si_det)  --> [the].
determiner(det(det_2), _, no_det)  --> [].
determiner(det(det_3), c, si_det)  --> [a].
determiner(det(det_3), v, si_det)  --> [an].
determiner(det(det_4), _, si_det)  --> [some].
determiner(det(det_5), _, si_det)  --> [my].
/*****************************************************************************************/
/*                                prepositionses:                                        */
/*****************************************************************************************/
preposition(prep(prep_1), _)       --> [].
preposition(prep(prep_2), no_det)  --> [at].
preposition(prep(prep_2), si_det)  --> [in].
preposition(prep(prep_3), _)	   --> [].

/*****************************************************************************************/
/*                                    nouns:                                             */
/*****************************************************************************************/
% Los plurales y los Singulares.
noun(n(n_0), sg, c)                --> [stone].
noun(n(n_1), sg, c)                --> [paper].
noun(n(n_2), pl, c)                --> [scissors].
noun(n(n_3), sg, c)                --> [man].        
noun(n(n_3), pl, c)                --> [menfolk].
noun(n(n_4), sg, c)                --> [woman].
noun(n(n_4), pl, c)                --> [women].
noun(n(n_5), sg, c)                --> [john].
noun(n(n_6), sg, c)                --> [mary].
noun(n(n_7), sg, v)                --> [apple].
noun(n(n_7), pl, v)                --> [apples].
noun(n(n_8), sg, c)                --> [cat].
noun(n(n_8), pl, c)                --> [cats].
noun(n(n_9), sg, c)                --> [cat].
noun(n(n_9), pl, c)                --> [cats].
noun(n(n_10), sg, c)               --> [mouse].
noun(n(n_10), pl, c)               --> [mice].
noun(n(n_11), sg, c)               --> [student].
noun(n(n_11), pl, c)               --> [students].
noun(n(n_12), sg, c)               --> [student].
noun(n(n_12), pl, c)               --> [students].
noun(n(n_13), sg, c)               --> [university].
noun(n(n_14), sg, c)      		   --> [dog].
noun(n(n_15), sg, c) 			   --> [garden].
noun(n(n_16), sg, c) 			   --> [canary].
noun(n(n_17), sg, c) 			   --> [oscar].
noun(n(n_18), sg, c) 			   --> [wilde].                              
noun(n(n_19), sg, c) 			   --> [coffee].   
noun(n(n_20), sg, c) 			   --> [newspaper].    
noun(n(n_21), sg, c) 			   --> [canterville]. 
noun(n(n_22), sg, c) 			   --> [ghost]. 

/*****************************************************************************************/
/*                                     verbs:                                            */
/*****************************************************************************************/
% Los Singulares
verb(v(v_1), sg)                --> [cuts].
verb(v(v_2), sg)                --> [wraps].
verb(v(v_3), sg)                --> [breaks].
verb(v(v_6), sg)                --> [eats].
verb(v(v_8), sg)                --> [eat].
verb(v(v_4), sg)                --> [loves].
verb(v(v_10), sg)               --> [studies].
verb(v(v_11), sg)               --> [chased].
verb(v(v_7), sg)                --> [is].
verb(v(v_12), sg)               --> [sings].
verb(v(v_13), sg)               --> [has].
verb(v(v_14), sg)               --> [reads].
verb(v(v_15), sg)               --> [wrote].

% Los Plurales.
verb(v(v_1), pl)                --> [cut].
verb(v(v_2), pl)                --> [wrap].
verb(v(v_3), pl)                --> [break].
verb(v(v_6), pl)                --> [eat].
verb(v(v_17),pl)                --> [saw].


/*****************************************************************************************/
/*                                   adjectives:                                         */
/*****************************************************************************************/                        
% Los Singulares Invariables.
adjective(adj(adj_1), sg, c) --> [red].
adjective(adj(adj_2), sg, c) --> [black].
adjective(adj(adj_4), sg, c) --> [grey].
adjective(adj(adj_3), sg, c) --> [big]; [large].
adjective(adj(adj_5), sg, c) --> [little].
adjective(adj(adj_6), sg, c) --> [thin].
adjective(adj(adj_7), sg, c) --> [tall].

% Possessive
adjective(adj(adj_8), sg, v) --> [yellow].

/*****************************************************************************************/
/*                                     pronouns:                                         */
/*****************************************************************************************/
pronoun(pron(pron_1), sg) --> [you].
pronoun(pron(pron_2), sg) --> [he].
pronoun(pron(pron_3), pl) --> [they].
% Relativo
pronoun(pron(pron_9), _) --> [that].

/*****************************************************************************************/
/*                                  Conjunctions:                                        */
/*****************************************************************************************/

% Cordinadas.
conjunctions_coord(conj_c(conj_c1)) --> [and].

/*****************************************************************************************/
/*                                    adverbs:                                           */
/*****************************************************************************************/
adverb(adv(adv_1)) --> [very].
adverb(adv(adv_2)) --> [well].
adverb(adv(adv_3)) --> [yesterday].
