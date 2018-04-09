:- module(dicES,[

	]).

/*****************************************************************************************/
/*       Dicionarios castellano basadose en la sintasis delejercicio 3.1 y 4.	     	 */
/*****************************************************************************************/
/*****************************************************************************************/
/*									Determinantes:										 */
/*****************************************************************************************/
determinante(det(det_1), f, sg) --> [la]; [una].
determinante(det(det_2), f, pl) --> [las]; [unas].
determinante(det(det_1), m, sg) --> [el]; [un].
determinante(det(det_2), m, pl) --> [los]; [unos].

/*****************************************************************************************/
/*									Preposiciones:										 */
/*****************************************************************************************/
preposicion(prep(prep_1)) 	--> [a].
preposicion(prep(prep_2)) 	--> [ante].
preposicion(prep(prep_3)) 	--> [bajo].
preposicion(prep(prep_4)) 	--> [con].
preposicion(prep(prep_5)) 	--> [contra].
preposicion(prep(prep_6)) 	--> [de].
preposicion(prep(prep_7)) 	--> [desde].
preposicion(prep(prep_8)) 	--> [en].
preposicion(prep(prep_9)) 	--> [entre].
preposicion(prep(prep_10)) 	--> [hacia].
preposicion(prep(prep_11)) 	--> [hasta].
preposicion(prep(prep_12)) 	--> [para].
preposicion(prep(prep_13)) 	--> [por].
preposicion(prep(prep_14)) 	--> [según].
preposicion(prep(prep_15)) 	--> [sin].
preposicion(prep(prep_16)) 	--> [so].
preposicion(prep(prep_17)) 	--> [sobre].
preposicion(prep(prep_18)) 	--> [tras].
preposicion(prep(prep_19)) 	--> [durante].
preposicion(prep(prep_20)) 	--> [mediante].

/*****************************************************************************************/
/*										Nombres:										 */
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
/*										Verbos: 										 */
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

% Los plurales.
verbo(v(v_1), pl) --> [cortan].
verbo(v(v_2), pl) --> [envuelven].
verbo(v(v_3), pl) --> [rompen].
verbo(v(v_4), pl) --> [aman].
verbo(v(v_5), pl) --> [eran].
verbo(v(v_6), pl) --> [comen].
verbo(v(v_7), pl) --> [cazan].
verbo(v(v_8), pl) --> [son].
                          
/*****************************************************************************************/
/*										Adjetivos:										 */
/*****************************************************************************************/                        
% Los Singulares Invariables.
adjetivo(adj(adj_1), sg) --> [roja].
adjetivo(adj(adj_2), sg) --> [negro].
adjetivo(adj(adj_4), sg) --> [gris].
adjetivo(adj(adj_3), sg) --> [grande].
adjetivo(adj(adj_5), sg) --> [pequeño].
                                

/*****************************************************************************************/
/*										Pronombres:										 */
/*****************************************************************************************/                               
pronombre   	--> [yo]; [tú]; [él], [ella], [nosotros]; [nosotras]; [vosotros]; [vosotras]; [ellos]; [ellas];
                    [éste]; [ésta]; [esto]; [éstos]; [éstas]; [ése]; [ésa]; [éso]; [esos]; [ésa];
                    [aquél]; [aquélla]; [aquello]; [aquéllos]; [aquéllas];
                    [mío]; [mía]; [míos]; [mías]; ([tuy], ([o]; [a]; [os]; [as])); ([suy], ([o]; [a]; [os]; [as])).

/*****************************************************************************************/
/*										Conjunciones:									 */
/*****************************************************************************************/
% Subordinadas
conjuncion_sub(conj_s(conj_s1))   --> [que].

% Cordinadas.
conjuncion_coord(conj_c(conj_c1)) --> [y].

/*****************************************************************************************/
/*										Adverbios:										 */
/*****************************************************************************************/
adverbio(adv(adv_1)) --> [muy].
adverbio(adv(adv_2)) --> [bien].

/*****************************************************************************************/
/*										Articulos:										 */
/*****************************************************************************************/
% Los Singulares.
articulo(m(art), f, sg) --> [la].
articulo(m(art), m, sg) --> [el].

% Los plurales.
articulo(m(art), f, pl) --> [las].

