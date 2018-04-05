:- module(main,[
		test/0
	]).

:- use_module(src/draw).
:- use_module(src/gramatica).

test :- orracion(X, [la,mujer,come,manzanas], []), draw(X), nl, write(X).