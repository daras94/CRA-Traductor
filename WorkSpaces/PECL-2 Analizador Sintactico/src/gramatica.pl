:- module(gramatica,[
                
        ]).

:- use_module(draw).
/*
 * Reglas gramaticales
*/
oracion         --> (g_nominal, g_verbal);
                                (g_verbal, g_nominal);
                                (conjuncion_sub, g_verbal, g_nominal);
                                (oracion, conjuncion_coord, oracion).

g_nominal       --> nombre;
                                (nombre, adjetivo); 
                                (determinante, nombre);
                                (determinante, nombre, adjetivo);
                                (determinante, nombre, oracion).
                                
g_verbal        --> (verbo);
                                (verbo, g_nominal);
                                (verbo, preposicion, g_nominal);
                                (verbo, adjetivo).
/*
 * Diccionarios
 */
determinante  --> [el]; [la]; [un]; [una].
preposicion --> [a]; [ante]; [bajo]; [con]; [contra]; [de]; [desde]; [en]; [entre]; [hacia]; [hasta]; [para]; [por]; [según]; [sin]; [so]; [sobre]; [tras]; [durante]; [mediante].
                                 
nombre          --> ([hombre]; [hombres]);
                                ([mujer]; [mujeres]);
                                [juan];
                                [maría]; 
                                ([manzana]; [manzanas]);
                                ([gato]; [gatos]; [gata]; [gatas]); 
                                ([ratón]; [ratones]);
                                ([alumno]; [alumnos]; [alumna]; [alumnas]);
                                [universidad].

verbo           --> [ama];
                                [era];
                                [come];
                                [estudia];
                                [cazó];
                                [es].
                                
adjetivo        --> [roja];
                                [negro];
                                [grande];
                                [gris];
                                [pequeño].
                                
pronombre   --> [yo]; [tú]; [él], [ella], [nosotros]; [nosotras]; [vosotros]; [vosotras]; [ellos]; [ellas];
                                [éste]; [ésta]; [esto]; [éstos]; [éstas]; [ése]; [ésa]; [éso]; [esos]; [ésa];
                                [aquél]; [aquélla]; [aquello]; [aquéllos]; [aquéllas];
                                [mío]; [mía]; [míos]; [mías]; ([tuy], ([o]; [a]; [os]; [as])); ([suy], ([o]; [a]; [os]; [as])).

conjuncion_coord --> [y].

conjuncion_sub  --> [que].