next(�winouj�cie,ko�obrzeg).
next(�winouj�cie, szczecin).
next(ko�obrzeg,ustka).
next(ustka, gda�sk).
next(gda�sk,toru�).
next(gda�sk,olsztyn).
next(olsztyn,toru�).
next(olsztyn,bia�ystok).
next(szczecin,bydgoszcz).
next(szczecin, gorz�w-wlkp).
next(bydgoszcz,toru�).
next(bydgoszcz,pozna�).
next(pozna�,toru�).
next(gorz�w-wlkp,pozna�).
next(gorz�w-wlkp,zielona-g�ra).
next(zielona-g�ra,pozna�).
next(zielona-g�ra,wroc�aw).
next(toru�,warszawa).
next(toru�,��d�).
next(bia�ystok, warszawa).
next(bia�ystok,lublin).
next(pozna�,��d�).
next(warszawa,radom).
next(warszawa,��d�).
next(radom,lublin).
next(radom,kielce).
next(wroc�aw,��d�).
next(��d�,radom).
next(��d�,cz�stochowa).
next(cz�stochowa,kielce).
next(cz�stochowa,katowice).
next(katowice,krak�w).
next(kielce,krak�w).
next(kielce,rzesz�w).
next(lublin,kielce).
next(lublin,rzesz�w).
next(krak�w,rzesz�w).
% Pytanie: Czy istnieje po��czenie miedzy �winouj�ciem a Rzeszowem?
polaczenie(X,Y):-next(X,Y).
polaczenie(X,Z):-next(X,Y),polaczenie(Y,Z).

zjazd(X,Y,X):-next(X,Y).
zjazd(X,Y,R):-next(X,Z),zjazd(Z,Y,R).

trasa(X,Y,skok(X,Y)):-next(X,Y).
trasa(X,Y,skok(X,K)):-next(X,Z),trasa(Z,Y,K).
%trasa(X,Y,skok(X,skok(Z,K)):-next(X,Z),trasa(Z,Y,skok(Z,K)).

droga(X,Y,[X,Y]) :- next(X,Y).
droga(X,Y,[X|L]):-next(X,Z), droga(Z,Y,L).
