odwracaj([],[]).
odwracaj([X|T],Z):-odwracaj(T,Y),append(Y,[X],Z).

kopia([],[]).
kopia([H|T],[H|T1]) :- kopia(T,T1).

palindrom([]).
palindrom([_]).
palindrom([A|X]) :- append(Y,[A],X), palindrom(Y).

polowki([],[],[]).
polowki([A|B],[A|T],Z) :- append(Y,[K],B), polowki(Y,T,T1),append(T1,[K],Z).

suma([],0).
suma([A|T],S) :- suma(T,SC), S is SC + A.

pnp([],[],[]).
pnp([H|T],X,[H|Y]):- pnp(T,X,Y), 1 =:= H mod 2.
pnp([H|T],[H|X],Y):- pnp(T,X,Y), 0 =:= H mod 2.
