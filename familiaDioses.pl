%atomos
cronos.
ares.
hera.
poseidon.
afrodita.
hefesto.
hipolita.
zeus.
nera.
baco.
atena.
hermes.

%hechos
%hombre
esHombre(cronos).
esHombre(ares).
esHombre(poseidon).
esHombre(hefesto).
esHombre(zeus).
esHombre(baco).
esHombre(hermes).
%mujer
esMujer(hera).
esMujer(afrodita).
esMujer(hipolita).
esMujer(nera).
esMujer(atena).
%decendienteDirecto
esDecendienteDirecto(hera,cronos).
esDecendienteDirecto(hefesto,ares).
esDecendienteDirecto(hefesto,hera).
esDecendienteDirecto(afrodita,ares).
esDecendienteDirecto(afrodita,hera).
esDecendienteDirecto(zeus,afrodita).
esDecendienteDirecto(zeus,poseidon).
esDecendienteDirecto(nera,zeus).
esDecendienteDirecto(nera,hipolita).
esDecendienteDirecto(baco,afrodita).
esDecendienteDirecto(baco,hefesto).
esDecendienteDirecto(baco,afrodita).
esDecendienteDirecto(atena,hefesto).
esDecendienteDirecto(atena,afrodita).
esDecendienteDirecto(hermes,atena).

%reglas
%padre
padreRegla(Padre,Hijo):-esDecendienteDirecto(Hijo,Padre),esHombre(Padre).
esPadre(cronos,hera).
esPadre(ares,afrodita).
esPadre(ares,hefesto).
esPadre(poseidon,zeus).
esPadre(hefesto,atena).
esPadre(hefesto,baco).

%madre
madreRegla(Madre,Hijo):-esDecendienteDirecto(Hijo,Madre),esHombre(Madre).
esMadre(hera,afrodita).
esMadre(hera,hefesto).
esMadre(afrodita,zeus).
esMadre(afrodita,baco).
esMadre(afrodita,atena).
esMadre(atena,hermes).

%hijo
hijoRegla(Hijo,Padre):- esHombre(Hijo),esDecendienteDirecto(Hijo,Padre).
esHijo(hefesto,hera).
esHijo(hefesto,ares).
esHijo(zeus,afrodita).
esHijo(zeus,poseidon).
esHijo(baco,afrodita).
esHijo(baco,hefesto).
esHijo(hermes,atena).

%hija
hijaRegla(Hijo,Padre):- esMujer(Hijo),esDecendienteDirecto(Hijo,Padre).
esHija(hera,cronos).
esHija(afrodita,hera).
esHija(afrodita,ares).
esHija(atena,hefesto).
esHija(nera,zeus).
esHija(nera,hipolita).

%hermano
hermanoRegla(HermanoA,HermanoB):-esDecendienteDirecto(HermanoA,Padre),esHombre(HermanoA),HermanoA \==HermanaA.
esHermano(hefesto,afrodita).
esHermano(baco, atena).
esHermano(zeus,baco).
esHermano(baco,zeus).

%hermana
hermanaRegla(HermanaA,HermanaB):-esDecendienteDirecto(HermanaA,Padre),esHombre(Hermana).
esHermana(afrodita,hefesto).
esHermana(atena,baco).
esHermana(atena,zeus).

%abuelo
abueloRegla(Abuelo,Nieto):-esDecendienteDirecto(Nieto,Padre),esDecendienteDirecto(Padre,Abuelo),esHombre(Abuelo)
esAbuelo(cronos,hefesto).
esAbuelo(cronos,afrodita).
esAbuelo(ares,atena).
esAbuelo(ares,baco).
esAbuelo(ares,zeus).
esAbuelo(poseidon,nera).
esAbuelo(hefesto,hermes).

%abuela
abuelaRegla(Abuela,Nieto):-esDecendienteDirecto(Nieto,Padre),esDecendienteDirecto(Padre,Abuela),esHombre(Abuela)
esAbuela(hera, atena).
esAbuela(hera, baco).
esAbuela(hera, zeus).
esAbuela(afrodita, zeus).
esAbuela(afrodita, hermes).

%meOlvideUsarReglassss ;-;

%esAcenstro
esAcenstro(Acenstro,Persona):-esDecendienteDirecto(Acenstro,Persona)
esAcenstro(Acenstro,Persona):-esDecendienteDirecto(Acenstro,Persona),esAcenstro(Acenstro,Padre)