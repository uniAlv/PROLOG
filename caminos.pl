lapaz.
beni.
pando.
oruro.
cochabamba.
potosi.
sucre.
tarija
santacruz.
esDepartamento(lapaz).
esDepartamento(beni).
esDepartamento(pando).
esDepartamento(oruro).
esDepartamento(cochabamba).
esDepartamento(potosi).
esDepartamento(sucre).
esDepartamento(tarija).
esDepartamento(santacruz).

esCapital(sucre, chuquisaca).
esCapital(ciudadLapaz, lapaz).
esCapital(cobija, pando).
esCapital(trinidad, beni).
esCapital(ciudadSantacruz, santacruz).
esCapital(potosi, potosi).
esCapital(ciudadOruro, oruro).
esCapital(ciudadTarija, tarija).
esCapital(ciudadCochabamba, cochabamba).

perteneceA(apolo, lapaz).
perteneceA(ciudadlapaz, lapaz).
perteneceA(cobija, pando).
perteneceA(riberalta, pando).
perteneceA(trinidad, beni).
perteneceA(sanjosedechiquitos, santacruz).
perteneceA(puertosuarez, santacruz).
perteneceA(ciudaSantacruz, santaCruz).
perteneceA(uyuni, potosi).
perteneceA(ciudadOoruro, oruro).
perteneceA(villamontes, tarija).
perteneceA(ciudadCochabamba, cochabamba).
perteneceA(sucre, chuquisaca).
perteneceA(ciudadTarija, tarija).


% Regla para encontrar ciudades destino desde un punto de origen (recursiva)
ciudadesDestinoDesde(CiudadOrigen, CiudadDestino) :-
    conectadoDirectamente(CiudadOrigen, CiudadDestino).
ciudadesDestinoDesde(CiudadOrigen, CiudadDestino) :-
    conectadoDirectamente(CiudadOrigen, CiudadIntermedia),
    ciudadesDestinoDesde(CiudadIntermedia, CiudadDestino).

% Regla para encontrar desde qué ciudades se puede llegar directamente a 'sucre' (recursiva)
ciudadesConAccesoDirectoASucre(CiudadOrigen) :-
    conectadoDirectamente(CiudadOrigen, sucre).
ciudadesConAccesoDirectoASucre(CiudadOrigen) :-
    conectadoDirectamente(CiudadOrigen, CiudadIntermedia),
    ciudadesConAccesoDirectoASucre(CiudadIntermedia).
