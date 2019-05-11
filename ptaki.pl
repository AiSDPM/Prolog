ptak(X) :- pokrycie(X, pióra),
           latanie(X).
pokrycie(kura, pióra).
pokrycie(wróbel, pióra).
pokrycie(papuga, pióra).
pokrycie(gryf, pióra).
chodzenie(kura).
latanie(wróbel).
latanie(papuga).
latanie(gryf).


%            ____________________________________________________________________
%           |                                                                    |
%           |  ptak(X) :-                                                        |
%           |         _________________                   ______________         |
%   _CALL__\|        |                 |                 |              |        |_EXIT__\
%          /|_CALL__\|   pokrycie(X)   |_EXIT__\ _CALL__\|  latanie(X)  |_EXIT__\|       /
%           |       /|       .         |       /        /|      |       |       /|
%           |        |      /|\        |        ,        |      |       |   .    |
%           |        |       |         |                 |      |       |        |
%           |        |       |_________|/__REDO_/__FAIL__|_____\|/      |        |
%           |        |                 |\       \        |              |        |
%           |        |_________________|                 |______________|        |
%           |                                                                    |
%           |____________________________________________________________________|
%


