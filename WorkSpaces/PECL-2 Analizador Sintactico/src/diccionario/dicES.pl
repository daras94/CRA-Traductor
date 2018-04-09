:- module(dicES,[

        ]).

/*****************************************************************************************/
/*       Dicionarios castellano basadose en la sintasis delejercicio 3.1 y 4.            */
/*****************************************************************************************/
/*****************************************************************************************/
/*                               Determinantes:                                          */
/*****************************************************************************************/
determinante(det(det_1), f, sg) --> [la].
determinante(det(det_1), m, sg) --> [el].
determinante(det(det_2), f, pl) --> [las].
determinante(det(det_2), m, pl) --> [los].
determinante(det(det_3), f, sg) --> [una].
determinante(det(det_3), m, sg) --> [un].
determinante(det(det_4), f, pl) --> [unas].
determinante(det(det_4), m, pl) --> [unos].
determinante(det(det_5), m, sg) --> [mi].


/*****************************************************************************************/
/*                               Preposiciones:                                          */
/*****************************************************************************************/
preposicion(prep(prep_1))       --> [a].
preposicion(prep(prep_2))       --> [en].


/*****************************************************************************************/
/*                                 Nombres:                                              */
/*****************************************************************************************/
% Los Singulares y los singulares.
nombre(n(n_0), f, sg)  --> [piedra].
nombre(n(n_1), m, sg)  --> [papel].
nombre(n(n_2), f, pl)  --> [tijeras]. 
nombre(n(n_3), m, sg)  --> [hombre].        
nombre(n(n_3), m, pl)  --> [hombres].
nombre(n(n_4), f, sg)  --> [mujer].
nombre(n(n_4), f, pl)  --> [mujeres].
nombre(n(n_5), m, sg)  --> [juan].
nombre(n(n_6), f, sg)  --> [maría].
nombre(n(n_7), f, sg)  --> [manzana].
nombre(n(n_7), f, pl)  --> [manzanas].
nombre(n(n_8), m, sg)  --> [gato].
nombre(n(n_8), m, pl)  --> [gatos].
nombre(n(n_9), f, sg)  --> [gata].
nombre(n(n_9), f, pl)  --> [gatas].
nombre(n(n_10), m, sg) --> [ratón].
nombre(n(n_10), m, pl) --> [ratones].
nombre(n(n_11), m, sg) --> [alumno].
nombre(n(n_11), m, pl) --> [alumnos].
nombre(n(n_12), f, sg) --> [alumna].
nombre(n(n_12), f, pl) --> [alumnas].
nombre(n(n_13), m, sg) --> [universidad].

                                 

/*****************************************************************************************/
/*                                     Verbos:                                           */
/*****************************************************************************************/
% Los Singulares.
verbo(v(v_1), sg) --> [corta].
verbo(v(v_2), sg) --> [envuelve].
verbo(v(v_3), sg) --> [rompe].
verbo(v(v_4), sg) --> [ama].
verbo(v(v_5), sg) --> [era].
verbo(v(v_6), sg) --> [come].
verbo(v(v_7), sg) --> [cazó].
verbo(v(v_8), sg) --> [es].
verbo(v(v_9), sg) --> [comes].
verbo(v(v_10), sg) --> [estudia].
verbo(v(v_11), sg) --> [persiguió].
verbo(v(v_12), sg) --> [canta].
verbo(v(v_13), sg) --> [toma].
verbo(v(v_14), sg) --> [lee].
verbo(v(v_15), sg) --> [escribió].

% Los plurales.
verbo(v(v_1), pl) --> [cortan].
verbo(v(v_2), pl) --> [envuelven].
verbo(v(v_3), pl) --> [rompen].
verbo(v(v_4), pl) --> [aman].
verbo(v(v_5), pl) --> [comen].
verbo(v(v_6), pl) --> [vimos].
                          
/*****************************************************************************************/
/*                                  Adjetivos:                                           */
/*****************************************************************************************/                        
% Los Singulares Invariables.
adjetivo(adj(adj_1)) --> [roja].
adjetivo(adj(adj_2)) --> [negro].
adjetivo(adj(adj_4)) --> [gris].
adjetivo(adj(adj_3)) --> [grande].
adjetivo(adj(adj_5)) --> [pequeño].
adjetivo(adj(adj_6)) --> [delgado].
adjetivo(adj(adj_7)) --> [alta].

/*****************************************************************************************/
/*                                  Pronombres:                                          */
/*****************************************************************************************/
% Personales
pronombre(pron(pron_1), sg) --> [tú].
pronombre(pron(pron_2), sg) --> [él].
pronombre(pron(pron_3), pl) --> [ellos].
                    
%relativo
pronombre(pron(pron_4))   --> [que].

/*****************************************************************************************/
/*                                 Conjunciones:                                         */
/*****************************************************************************************/
% Subordinadas
% Cordinadas.
conjuncion_coord(conj_c(conj_c1)) --> [y].

/*****************************************************************************************/
/*                                 Adverbios:                                            */
/*****************************************************************************************/
adverbio(adv(adv_1)) --> [muy].
adverbio(adv(adv_2)) --> [bien].

/*****************************************************************************************/
/*                                 Articulos:                                            */
/*****************************************************************************************/

