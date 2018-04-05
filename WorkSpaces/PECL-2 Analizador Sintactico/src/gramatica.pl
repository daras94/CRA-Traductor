:- module(gramatica,[
                
        ]).

:- use_module(draw).
/*
 * Reglas gramaticales
*/

/*4*/

oracion(o(GN,GV)) --> g_nominal(GN), g_verbal(GV).
oracion(o(GV,GN)) --> g_verbal(GV), g_nominal(GN).
oracion(o(CS,GV,GN))  --> conjuncion_sub(CS), g_verbal(GV), g_nominal(GN).
oracion(o(O1,CC,O2))  --> oracion(O1), conjuncion_coord(CC), oracion(O2).

g_nominal(gn(N)) --> nombre(N).
g_nominal(gn(D,N)) --> determinante(D), nombre(N).
g_nominal(gn(D,N,A)) --> determinante(D), nombre(N), adjetivo(A).
g_nominal(gn(D,N,O)) --> determinante(D), nombre(N), oracion(O).

g_verbal(gv(V))    --> verbo(V).
g_verbal(gv(V, GN)) --> verbo(V), g_nominal(GN).
g_verbal(gv(V,P,GN))    --> verbo(V), preposicion(P), g_nominal(GN).
g_verbal(gv(V,A))       --> verbo(V), adjetivo(A).

determinante(det(X)) --> [X],{det(X)}.
det(el).
det(la).
det(un).
det(una).

preposicion(prep(X)) --> [X],{prep(X)}.
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

nombre(n(X)) --> [X],{n(X)}.
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

verbo(v(X))  --> [X], {v(X)}.
v(ama).
v(era).
v(come).
v(estudia).
v(cazó).
v(es).

adjetivo(adj(X)) --> [X],{adj(X)}.
adj(roja).
adj(negro).
adj(grande).
adj(gris).
adj(pequeño).

conjuncion_coord(conj_c(X)) --> [X],{conj_c(X)}.
conj_c(y).

conjuncion_sub(conj_s(X))  --> [X],{conj_s(X)}.
conj_s(que).

adverbio(adv(X)) --> [X], {adv(X)}.
adv(muy).
adv(bien).

/*3.1*/

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