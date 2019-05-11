mezczyzna(piotr).
mezczyzna(adam).
mezczyzna(marek).
mezczyzna(robert).
mezczyzna(jan).
mezczyzna(krzysztof).
mezczyzna(radek).
mezczyzna(darek).
mezczyzna(tomek).
mezczyzna(jacek).
kobieta(maria).
kobieta(ewa).
kobieta(agata).
kobieta(anna).
kobieta(joanna).
kobieta(agnieszka).
kobieta(beata).
kobieta(iwona).
rodzic(maria,agata).
rodzic(maria,marek).
rodzic(maria,jan).
rodzic(piotr,agata).
rodzic(piotr,marek).
rodzic(piotr,jan).
rodzic(robert,radek).
rodzic(robert,beata).
rodzic(agata,radek).
rodzic(agata,beata).
rodzic(jan,darek).
rodzic(jan,tomek).
rodzic(anna,darek).
rodzic(anna,tomek).
rodzic(adam,anna).
rodzic(adam,joanna).
rodzic(adam,krzysztof).
rodzic(ewa,anna).
rodzic(ewa,joanna).
rodzic(ewa,krzysztof).
rodzic(krzysztof,jacek).
rodzic(krzysztof,iwona).
rodzic(agnieszka,jacek).
rodzic(agnieszka,iwona).
malzenstwo(maria,piotr).
malzenstwo(piotr,maria).
malzenstwo(ewa,adam).
malzenstwo(adam,ewa).
malzenstwo(robert,agata).
malzenstwo(agata,robert).
malzenstwo(jan, anna).
malzenstwo(anna,jan).
malzenstwo(krzysztof, agineszka).
malzenstwo(agnieszka,krzysztof).
matka(X,Y):-kobieta(X),rodzic(X,Y).
ojciec(X,Y):-mezczyzna(X),rodzic(X,Y).
siostra(X,Y):-kobieta(X),matka(Z,X),matka(Z,Y), X\=Y.
brat(X,Y):-mezczyzna(X),matka(Z,X),matka(Z,Y), X\=Y.
wuj(X,Y):-mezczyzna(X),matka(Z,Y),brat(X,Z).
stryj(X,Y):-mezczyzna(X),ojciec(Z,Y),brat(X,Z).
ciotka(X,Y):-kobieta(X),matka(Z,Y),siostra(X,Z).
rodzenstwo(X,Y):-matka(Z,X),matka(Z,Y), X\=Y.
kuzyn(X,Y):-mezczyzna(X),rodzic(Z,X),rodzenstwo(Z,W),rodzic(W,Y).
kuzynka(X,Y):-kobieta(X),rodzic(Z,X),rodzenstwo(Z,W),rodzic(W,Y).
tesciowa(X,Y):-matka(X,Z),malzenstwo(Z,Y),kobieta(Z).
swiekra(X,Y):-matka(X,Z),malzenstwo(Z,Y),mezczyzna(Z).
tesc(X,Y):-ojciec(X,Z),malzenstwo(Z,Y),kobieta(Z).
swiekr(X,Y):-ojciec(X,Z),malzenstwo(Z,Y),mezczyzna(Z).
szwagier(X,Y):-brat(X,Z),malzenstwo(Y,Z).
szwagier(X,Y):-malzenstwo(X,Z),mezczyzna(X),siostra(Z,Y).
szwagierka(X,Y):-siostra(X,Z),malzenstwo(Z,Y).








