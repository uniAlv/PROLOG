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
esPadre(cronos,hera).
esPadre(ares,afrodita).
esPadre(ares,hefesto).
esPadre(poseidon,zeus).
esPadre(hefesto,atena).
esPadre(hefesto,baco).

%madre
esMadre(hera,afrodita).
esMadre(hera,hefesto).
esMadre(afrodita,zeus).
esMadre(afrodita,baco).
esMadre(afrodita,atena).
esMadre(atena,hermes).

%hijo
esHijo(hefesto,hera).
esHijo(hefesto,ares).
esHijo(zeus,afrodita).
esHijo(zeus,poseidon).
esHijo(baco,afrodita).
esHijo(baco,hefesto).
esHijo(hermes,atena).

%hija
esHija(hera,cronos).
esHija(afrodita,hera).
esHija(afrodita,ares).
esHija(atena,hefesto).
esHija(nera,zeus).
esHija(nera,hipolita).

%hermano
esHermano(hefesto,afrodita).
esHermano(baco, atena).
esHermano(zeus,baco).
esHermano(baco,zeus).

%hermana
esHermana(afrodita,hefesto).
esHermana(atena,baco).
esHermana(atena,zeus).

%abuelo
esAbuelo(cronos,hefesto).
esAbuelo(cronos,afrodita).
esAbuelo(ares,atena).
esAbuelo(ares,baco).
esAbuelo(ares,zeus).
esAbuelo(poseidon,nera).
esAbuelo(hefesto,hermes).

%abuela
esAbuela(hera, atena).
esAbuela(hera, baco).
esAbuela(hera, zeus).
esAbuela(afrodita, zeus).
esAbuela(afrodita, hermes).