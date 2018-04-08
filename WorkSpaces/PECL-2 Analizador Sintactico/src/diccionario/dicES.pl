:- module(dicES,[
		n/1,
		v/1,
		det/1,
		prep/1,
		adj/1,
		conj_s/1,
		conj_c/1,
		adv/1
	]).

	
/*****************************************************************************************/
/*       Dicionarios castellano basadose en la sintasis delejercicio 3.1 y 4.	     	 */
/*****************************************************************************************/
/*****************************************************************************************/
/*									Determinantes:										 */
/*****************************************************************************************/
determinante  	--> [el]; [la]; [un]; [una].

det(el).
det(la).
det(un).
det(una).

/*****************************************************************************************/
/*									Preposiciones:										 */
/*****************************************************************************************/
preposicion 	--> [a]; [ante]; [bajo]; [con]; [contra]; [de]; [desde]; [en]; [entre]; [hacia]; [hasta]; [para]; [por]; [según]; [sin];
			 		[so]; [sobre]; [tras]; [durante]; [mediante].


prep(a).
prep(ante).
prep(bajo).
prep(con).
prep(contra).
prep(de).
prep(desde).
prep(en).
prep(entre).
prep(hacia).
prep(hasta).
prep(para).
prep(por).
prep(según).
prep(sin).
prep(so).
prep(sobre).
prep(tras).
prep(durante).
prep(mediante).

/*****************************************************************************************/
/*										Nombres:										 */
/*****************************************************************************************/
nombre          --> ([hombre]; [hombres]);
                    ([mujer]; [mujeres]);
                    [juan];
                    [maría]; 
                    ([manzana]; [manzanas]);
                    ([gato]; [gatos]; [gata]; [gatas]); 
                    ([ratón]; [ratones]);
                    ([alumno]; [alumnos]; [alumna]; [alumnas]);
                    [universidad].
                    
n(hombre).
n(hombres).
n(mujer).
n(mujeres).
n(juan).
n(maría).
n(manzana).
n(manzanas).
n(gato).
n(gatos).
n(gata).
n(gatas).
n(ratón).
n(ratones).
n(alumno).
n(alumnos).
n(alumna).
n(alumnas).
n(universidad).
                                 

/*****************************************************************************************/
/*										Verbos: 										 */
/*****************************************************************************************/
verbo           --> [ama];
                    [era];
                    [come];
                    [estudia];
                    [cazó];
                    [es].
                    
v(ama).
v(era).
v(come).
v(estudia).
v(cazó).
v(es).
        
/*****************************************************************************************/
/*										Adjetivos:										 */
/*****************************************************************************************/                        
adjetivo        --> [roja];
                    [negro];
                    [grande];
                    [gris];
                    [pequeño].
                                
adj(roja).
adj(negro).
adj(grande).
adj(gris).
adj(pequeño).

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
conjuncion_coord --> [y].
conj_s(que).

conjuncion_sub  --> [que].
conj_c(y).

/*****************************************************************************************/
/*										Adverbios:										 */
/*****************************************************************************************/
adv(muy).
adv(bien).