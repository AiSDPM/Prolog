pokrycie(kura,piora).
pokrycie(wrobel,piora).
chodzenie(kura).
latanie(wrobel).
ptak(X):-pokrycie(X,piora),latanie(X).
