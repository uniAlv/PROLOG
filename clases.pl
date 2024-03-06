#atomo
juan.
mario.
estela.
'base de datos ii'.
'redes i'.
'inteligencia artificial'.
arturo.
andres.
jose.
karina.
mariel.
#enseña
ensena(juan,'base de datos ii').
ensena(estela,'redes i').
ensena(estela,'inteligencia artificial').
ensena(maria,'base de datos ii').
ensena(maria,'redes i').
ensena(maria,'inteligencia artificial').
#asiste
asiste(arturo,'redes i').
asiste(arturo,'base de datos ii').
asiste(andres,'redes i').
asiste(andres,'inteligencia artificial').
asiste(jose,'redes i').
asiste(jose,'base de datos ii').
asiste(jose,'inteligencia artificial').
asiste(karina,'redes i').
asiste(karina,'inteligencia artificial').
asiste(mariel,'inteligencia artificial').

#1er paso Identificar las condiciones
#2do paso Identificar si es AND y OR
#3do Escribir Condiciones en prolog

esDocenteDe(Docente,Estudiante):-ensena(Docente,Materia),asiste(Estudiante,Materia).
esCompaneroDe(EstudianteA,EstudianteB):-asiste(EstudianteA,Materia),asiste(EstudianteB,Materia).