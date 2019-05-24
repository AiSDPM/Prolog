zamien([A],[A]).
zamien([H1,H2|T],[H1|X]):- H1=<H2,!, zamien([H2|T],X).
zamien([H1,H2|T],[H2,H1|T]).


babel(A,A):- zamien(A,A).
babel(A,B) :- zamien(A,C),A\=C, babel(C,B).

maks([M],M).
maks([H|T],M) :- maks(T,M), M > H,! .
maks([H|_],H).


najblizszy(_,[A],A).
najblizszy(W,[H|T],OT) :- najblizszy(W,T,OT), abs(W-H) > abs(W-OT),!.
najblizszy(W,[H|T],H).

czynniki(Num,X) :- czynniki(Num,2,X).
czynniki(1,_,[]).
czynniki(Num,D,[D|Y]) :- Num mod D =:= 0,!, New is Num // D, czynniki(New,D,Y).
czynniki(Num,D,Y) :- Num > D ,ND is D + 1, czynniki(Num,ND,Y).


maxsum(X, Y)



