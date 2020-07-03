
mata(UnaPersona, Victima):-
    odia(UnaPersona, Victima),
    not(esMasRicoQue(UnaPersona, Victima)),
    viveEnLaMansion(UnaPersona).

viveEnLaMansion(agatha).
viveEnLaMansion(carnicero).
viveEnLaMansion(charles).

odia(charles, OtraPersona):-
    viveEnLaMansion(OtraPersona),
    not(odia(agatha, OtraPersona)).

odia(agatha, OtraPersona):-
    viveEnLaMansion(OtraPersona),
    OtraPersona \= carnicero.

odia(carnicero, OtraPersona):-
    odia(agatha, OtraPersona).

esMasRicoQue(UnaPersona, agatha):-
    not(odia(carnicero, UnaPersona)),
    viveEnLaMansion(UnaPersona).

/* 
La tía Agatha se suicida
    ?- mata(X, agatha).
    X = agatha.

a) EXISTE alguien que odia a milhouse (nadie quiere a milhouse)
?- odia(_, milhouse).
true 

b) SE AGREGA una regla a odia(charles, OtraPersona):
viveEnLaMansion(OtraPersona),
?- odia(charles, OtraPersona).
OtraPersona = carnicero.

c) ?- odia(X,agatha).
X = agatha ;
X = carnicero.

d) ?- odia(Odiador, Odiado).
Odiador = Odiado, Odiado = agatha ;
Odiador = agatha,
Odiado = charles ;
Odiador = carnicero,
Odiado = agatha ;
Odiador = carnicero,
Odiado = charles.

SI se considera, a demás, la regla de que quien es odiado por Charles vive en la mansión,
Odiador = charles,
Odiado = carnicero.

e) Es cierto que el carnicero odia a alguen.
?- odia(carnicero, _).
true.
 */ 


