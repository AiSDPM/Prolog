next(œwinoujœcie,ko³obrzeg).
next(œwinoujœcie, szczecin).
next(ko³obrzeg,ustka).
next(ustka, gdañsk).
next(gdañsk,toruñ).
next(gdañsk,olsztyn).
next(olsztyn,toruñ).
next(olsztyn,bia³ystok).
next(szczecin,bydgoszcz).
next(szczecin, gorzów-wlkp).
next(bydgoszcz,toruñ).
next(bydgoszcz,poznañ).
next(poznañ,toruñ).
next(gorzów-wlkp,poznañ).
next(gorzów-wlkp,zielona-góra).
next(zielona-góra,poznañ).
next(zielona-góra,wroc³aw).
next(toruñ,warszawa).
next(toruñ,³ódŸ).
next(bia³ystok, warszawa).
next(bia³ystok,lublin).
next(poznañ,³ódŸ).
next(warszawa,radom).
next(warszawa,³ódŸ).
next(radom,lublin).
next(radom,kielce).
next(wroc³aw,³ódŸ).
next(³ódŸ,radom).
next(³ódŸ,czêstochowa).
next(czêstochowa,kielce).
next(czêstochowa,katowice).
next(katowice,kraków).
next(kielce,kraków).
next(kielce,rzeszów).
next(lublin,kielce).
next(lublin,rzeszów).
next(kraków,rzeszów).
% Pytanie: Czy istnieje po³¹czenie miedzy Œwinoujœciem a Rzeszowem?
polaczenie(X,Y):-next(X,Y).
polaczenie(X,Z):-next(X,Y),polaczenie(Y,Z).

zjazd(X,Y,X):-next(X,Y).
zjazd(X,Y,R):-next(X,Z),zjazd(Z,Y,R).

trasa(X,Y,skok(X,Y)):-next(X,Y).
trasa(X,Y,skok(X,K)):-next(X,Z),trasa(Z,Y,K).
%trasa(X,Y,skok(X,skok(Z,K)):-next(X,Z),trasa(Z,Y,skok(Z,K)).

droga(X,Y,[X,Y]) :- next(X,Y).
droga(X,Y,[X|L]):-next(X,Z), droga(Z,Y,L).
