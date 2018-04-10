:- module(dicIN,[
                
        ]).


/*****************************************************************************************/
/*       Dicionarios castellano basadose en la sintasis delejercicio 3.1 y 4.            */
/*****************************************************************************************/
/*****************************************************************************************/
/*                                 modificadores:                                        */
/*****************************************************************************************/
determiner(det(det_1))  --> [the].
%determiner(det(det_2))  --> [the].
determiner(det(det_3))  --> [a].
determiner(det(det_4))  --> [some].
determiner(det(det_5))  --> [my].
/*****************************************************************************************/
/*                                prepositionses:                                        */
/*****************************************************************************************/
preposition(prep(prep_1))              --> [''].
preposition(prep(prep_2))              --> [at].

/*****************************************************************************************/
/*                                    nouns:                                             */
/*****************************************************************************************/
% Los plurales y los Singulares.
noun(n(n_0), sg)                --> [stone].
noun(n(n_1), sg)                --> [paper].
noun(n(n_2), pl)                --> [scissors].
noun(n(n_3), sg)                --> [man].        
noun(n(n_3), pl)                --> [menfolk].
noun(n(n_4), sg)                --> [woman].
noun(n(n_4), pl)                --> [women].
noun(n(n_5), sg)                --> [juan].
noun(n(n_6), sg)                --> [mary].
noun(n(n_7), sg)                --> [apple].
noun(n(n_7), pl)                --> [apples].
noun(n(n_8), sg)                --> [cat].
noun(n(n_8), pl)                --> [cats].
noun(n(n_9), sg)                --> [cat].
noun(n(n_9), pl)                --> [gatas].
noun(n(n_10), sg)               --> [mouse].
noun(n(n_10), pl)               --> [mice].
noun(n(n_11), sg)               --> [schoolchild].
noun(n(n_11), pl)               --> [students].
noun(n(n_12), sg)               --> [schoolgirl].
noun(n(n_12), pl)               --> [students].
noun(n(n_13), sg)               --> [university].

/*****************************************************************************************/
/*                                     verbs:                                            */
/*****************************************************************************************/
% Los Singulares
%verb(v(v_1), sg)                --> [cuts].
%verb(v(v_2), sg)                --> [wraps].
%verb(v(v_3), sg)                --> [breaks].
verb(v(v_6), sg)                --> [eats].
verb(v(v_8), sg)                --> [eat].
verb(v(v_4), sg)                --> [loves].
verb(v(v_10), sg)               --> [studies].
verb(v(v_11), sg)               --> [chased].
verb(v(v_7), sg)                --> [is].
verb(v(v_12), sg)               --> [sings].
verb(v(v_13), sg)               --> [takes].
verb(v(v_14), sg)               --> [reads].
verb(v(v_15), sg)               --> [wrote].

% Los Plurales.
%verb(v(v_1), pl)                --> [cut].
%verb(v(v_2), pl)                --> [wrap].
%verb(v(v_3), pl)                --> [break].
verb(v(v_6), pl)                --> [eat].
verb(v(v_17),pl)                --> [saw].


/*****************************************************************************************/
/*                                   adjectives:                                         */
/*****************************************************************************************/                        
% Los Singulares Invariables.
adjective(adj(adj_1), sg) --> [red].
adjective(adj(adj_2), sg) --> [black].
adjective(adj(adj_4), sg) --> [gray].
adjective(adj(adj_3), sg) --> [big].
adjective(adj(adj_5), sg) --> [little].
adjective(adj(adj_6), sg) --> [thin].
adjective(adj(adj_7), sg) --> [tall].
% Possessive
adjective(adj(adj_8), sg) --> [my].

/*****************************************************************************************/
/*                                     pronouns:                                         */
/*****************************************************************************************/
pronoun(pron(pron_1), sg) --> [you].
pronoun(pron(pron_2), sg) --> [he].
pronoun(pron(pron_3), pl) --> [they].
% Relativo
pronoun(pron(pron_9)) --> [that].

/*****************************************************************************************/
/*                                  Conjunctions:                                        */
/*****************************************************************************************/

% Cordinadas.
conjunctions_coord(conj_c(conj_c1)) --> [and].

/*****************************************************************************************/
/*                                    adverbs:                                           */
/*****************************************************************************************/
adverb(adv(adv_1)) --> [very].
adverb(adv(adv_2)) --> [good].
