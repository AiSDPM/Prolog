ptak(X) :- pokrycie(X, pi�ra),
           latanie(X).
pokrycie(kura, pi�ra).
pokrycie(wr�bel, pi�ra).
pokrycie(papuga, pi�ra).
pokrycie(gryf, pi�ra).
chodzenie(kura).
latanie(wr�bel).
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


