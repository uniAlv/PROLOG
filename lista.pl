estaEsLista(Valor,[Cabeza|Cola]):-Valor==Cabeza.
estaEsLista(Valor,[_|Cola]):- estaEsLista(Valor,Cola).
