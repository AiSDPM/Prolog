dane(kobieta(maria)).
dane(kobieta(joanna)).
dane(kobieta(ewa)).
dane(kobieta(agata)).
dane(kobieta(anna)).
dane(kobieta(agnieszka)).
dane(kobieta(beata)).
dane(kobieta(iwona)).

dane(mê¿czyzna(piotr)).
dane(mê¿czyzna(adam)).
dane(mê¿czyzna(marek)).
dane(mê¿czyzna(robert)).
dane(mê¿czyzna(jan)).
dane(mê¿czyzna(krzysztof)).
dane(mê¿czyzna(radek)).
dane(mê¿czyzna(darek)).
dane(mê¿czyzna(tomek)).
dane(mê¿czyzna(jacek)).

dane(rodzic(maria,agata)).
dane(rodzic(maria,marek)).
dane(rodzic(maria,jan)).
dane(rodzic(piotr,agata)).
dane(rodzic(piotr,marek)).
dane(rodzic(piotr,jan)).

dane(rodzic(ewa,anna)).
dane(rodzic(ewa,joanna)).
dane(rodzic(ewa,krzysztof)).
dane(rodzic(adam,anna)).
dane(rodzic(adam,joanna)).
dane(rodzic(adam,krzysztof)).

dane(rodzic(robert,radek)).
dane(rodzic(robert,beata)).
dane(rodzic(agata,radek)).
dane(rodzic(agata,beata)).

dane(rodzic(jan,darek)).
dane(rodzic(jan,tomek)).
dane(rodzic(anna,darek)).
dane(rodzic(anna,tomek)).

dane(rodzic(krzysztof,jacek)).
dane(rodzic(krzysztof,iwona)).
dane(rodzic(agnieszka,jacek)).
dane(rodzic(agnieszka,iwona)).
dane(mama(X,Y)) :- dane(rodzic(X,Y)),dane(kobieta(X)).
dane(tata(X,Y)) :- dane(rodzic(X,Y)),dane(mê¿czyzna(X)).

regularny(prostokat(punkt(X1,Y1),punkt(X2,Y1),punkt(X2,Y2),punkt(X1,Y2))).
