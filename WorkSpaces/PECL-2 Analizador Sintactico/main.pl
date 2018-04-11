:- module(main,[
                embebed_bd/3
        ]).

:- use_module(src/gramatica/gramES).
:- use_module(src/gramatica/gramIN).
:- use_module(src/draw).

translate :-  nl, write('┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓'), 
        	  nl, write('┃  ---> Collecion de frases a Traducir:                                                                           ┃'),
              nl, write('┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫'),
       		  nl, write('┃  0)  - El hombre come una manzana.                            - The man eats an apple.                          ┃'),
        	  nl, write('┃  1)  - Ellos comen manzanas.                                  - They eat apples.                           ┃'),
        	  nl, write('┃  2)  - Tú comes una manzana roja.                             - You eat a red apple.                            ┃'),
        	  nl, write('┃  3)  - Juan ama a Marı́a.                                      - John loves Mary.                                ┃'),
        	  nl, write('┃  4)  - El gato grande come un ratón gris.                     - The big cat eats a grey mouse.                  ┃'),
        	  nl, write('┃  5)  - Juan estudia en la universidad.                        - John studies at university.                     ┃'),
        	  nl, write('┃  6)  - El alumno ama la universidad.                          - The student loves university.                   ┃'),
        	  nl, write('┃  7)  - El perro persiguió un gato negro en el jardı́n.         - The dog chased a black cat in the garden.       ┃'),
        	  nl, write('┃  8)  - La Universidad es grande.                              - The University is large.                        ┃'),
        	  nl, write('┃  9)  - El hombre que vimos ayer es mi vecino.                 - The man (that) we saw yesterdays my neighbour.  ┃'),
        	  nl, write('┃  10) - El canario amarillo canta muy bien.                    - The yellow canary sings very well.              ┃'),
        	  nl, write('┃  11) - Juan toma un café y lee el periódico.                  - John has a coffee and reads the newspaper.      ┃'),
        	  nl, write('┃  12) - Juan es delgado y Marı́a es alta.                       - John is thin and Mary is tall.                  ┃'),
              nl, write('┃  13) - Oscar Wilde escribió El Fantasma de Canterville        - Oscar Wilde wrote The Canterville Ghost         ┃'),
        	  nl, write('┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛'),
        	  nl, write(' - Seleccione la frase a traducir del 0: (pulsa x para salir): '), read(Y),
        	  nl, write(' - Seleccione la traducion es-in o in-es (pulsa x para salir): '), read(Lang), 
        	  nl, embebed_bd(X, Y, Lang), select_lang(Lang, X).

embebed_bd(X, Y, Lang) :- ((Y = 0,  Lang = es-in) -> (X=[el, hombre, come, una, manzana], !);                              
                           (Y = 0,  Lang = in-es) -> (X=[the, man, eats, an, apple], !);
                           (Y = 1,  Lang = es-in) -> (X=[ellos, comen, manzanas], !);                                              
                           (Y = 1,  Lang = in-es) -> (X=[they, eat, apples], !);
                           (Y = 2,  Lang = es-in) -> (X=[tú, comes, una, manzana, roja], !); 
                           (Y = 2,  Lang = in-es) -> (X=[you, eat, a, red, apple], !);
                           (Y = 3,  Lang = es-in) -> (X=[juan, ama, a, maría], !);                              
                           (Y = 3,  Lang = in-es) -> (X=[john, loves, mary], !);
                           (Y = 4,  Lang = es-in) -> (X=[el, gato, grande, come, un, ratón, gris], !);
                           (Y = 4,  Lang = in-es) -> (X=[the, big, cat, eats, a, grey, mouse], !);
                           (Y = 5,  Lang = es-in) -> (X=[juan, estudia, en, la, universidad], !);
                           (Y = 5,  Lang = in-es) -> (X=[john, studies, at, university], !);
                           (Y = 6,  Lang = es-in) -> (X=[el, alumno, ama, la, universidad], !);                                    
                           (Y = 6,  Lang = in-es) -> (X=[the, student, loves, university], !);
                           (Y = 7,  Lang = es-in) -> (X=[el, perro, persiguió, un, gato, negro, en, el, jardín], !); 
                           (Y = 7,  Lang = in-es) -> (X=[the, dog, chased, a, black, cat, in, the, garden], !);
                           (Y = 8,  Lang = es-in) -> (X=[la, universidad, es, grande], !);
                           (Y = 8,  Lang = in-es) -> (X=[the, university, is, large], !);
                           (Y = 9,  Lang = es-in) -> (X=[el, hombre, que, vimos, ayer, es, mi, vecino], !); 
                           (Y = 9,  Lang = in-es) -> (X=[the, man, that, we, saw, yesterday, is, my, neighbour], !);
                           (Y = 10, Lang = es-in) -> (X=[el, canario, amarillo, canta, muy, bien], !);                     
                           (Y = 10, Lang = in-es) -> (X=[the, yellow, canary, sings, very, well], !);
                           (Y = 11, Lang = es-in) -> (X=[juan, toma, un, café, y, lee, el, periódico], !);
                           (Y = 11, Lang = in-es) -> (X=[john, has, a, coffee, and, reads, the, newspaper], !);
                           (Y = 12, Lang = es-in) -> (X=[juan, es, delgado, y, maría, es, alta], !);                               
                           (Y = 12, Lang = in-es) -> (X=[john, is, thin, and, mary, is, tall], !);
                           (Y = 13, Lang = es-in) -> (X=[oscar, wilde, escribió, el, fantasma, de, canterville], !);
                           (Y = 13, Lang = in-es) -> (X=[oscar, wilde, wrote, the, canterville, ghost], !);
                           (Y = x,  Lang = x    ) -> (nl, write(' - As salido ADIOS!!!.'), !);
                           (Y = _;  Lang = _    ) -> (nl, write(' - ERROR: Opciones escogidas no validas.'), translate)).

select_lang(Lang, Z) :- ((Lang = es-in) -> (gramES:oracion(Y, Z, []),  nl, write(Y), gramIN:sentence(Y, IN, []), draw(Y), nl, write(' - Traduccíon ES-IN: '), writeln(IN), translate);    % Español - Ingles.
                         (Lang = in-es) -> (gramIN:sentence(Y, Z, []), nl, write(Y), gramES:oracion(Y, ES, []), draw(Y), nl, write(' - Traduccíon IN-ES: '), writeln(ES), translate)).   % Ingles  - Español.
                                          
                                          