:- module(main,[
		test/0
	]).

:- use_module(src/gramatica/gramES).
:- use_module(src/gramatica/gramIN).
:- use_module(src/draw).

test :- orracion(X, [la,mujer,come,manzanas], []), draw(X), nl, write(X).

test_1 :- oracion(X,[el,hombre,come,la,manzana],[]), draw(X).