%DefinicionAtomos
producto.
cliente.
electrodomestico.
batidora.
lavadora.
entretenimiento.
parlantes.
consolas.
computadoras.
laptop.
escritorio.
maria.
juana.
jeremias.

%definicionProducto
esDirecto(electrodomestico).
esDirecto(entretenimiento).
esDirecto(computadoras).

%definicionCategoria
%electrodomestico


esDirecto(batidora,electrodomestico).
esDirecto(lavadora,electrodomestico).

esDirecto("LG-510",batidora).
esDirecto("Samsung B125",batidora).

esDirecto("LG Batimix",lavadora).
esDirecto("Samsung L200",lavadora).

esDirecto(blanco,"LG-510").
esDirecto(barato,"LG-510").
esDirecto(bueno,"LG-510").

esDirecto(negro,"Samsung B125").
esDirecto(caro,"Samsung B125").
esDirecto(malo,"Samsung B125").

esDirecto(rojo,"LG Batimix").
esDirecto(barato,"LG Batimix").
esDirecto(malo,"LG Batimix").

esDirecto(negro,"Samsung L200").
esDirecto(caro,"Samsung L200").
esDirecto(bueno,"Samsung L200").

%entretenimiento
esDirecto(parlantes,entretenimiento).
esDirecto(consolas,entretenimiento).

esDirecto("Bose",parlantes).
esDirecto("LG",parlantes).

esDirecto("XBox",consolas).
esDirecto("Play Station",consolas).

esDirecto("XBox 360","XBox").
esDirecto("XBox One","XBox").

esDirecto("PS 2","Play Station").
esDirecto("PS 3","Play Station").

esDirecto(blanco,"Bose").
esDirecto(caro,"Bose").
esDirecto(negro,"Bose").

esDirecto(rojo,"LG").
esDirecto(barato,"LG").
esDirecto(malo, "LG").

esDirecto(barato,"XBox 360").
esDirecto(verde,"XBox 360").
esDirecto(malo,"XBox 360").

esDirecto(caro,"XBox One").
esDirecto(verde,"XBox One").
esDirecto(bueno,"XBox One").

esDirecto(negro, "PS 2").
esDirecto(barato,"PS 2").
esDirecto(bueno, "PS 2").

esDirecto(negro, "PS 3").
esDirecto(barato,"PS 3").
esDirecto(bueno, "PS 3").

%computadoras
esDirecto(laptop,computadoras).
esDirecto(escritorio,computadoras).


esDirecto("Dell",computadoras).
esDirecto("HP",computadoras).
esDirecto("Marca Patito",computadoras).

esDirecto("Omen 560","Dell").
esDirecto("Pavillon 15a","HP").
esDirecto("Destrunator 500","Marca Patito").

esDirecto(plateado,"Omen 560").
esDirecto(barato,"Omen 560").
esDirecto(malo,"Omen 560").

esDirecto(plateado,"Pavillon 15a").
esDirecto(caro,"Pavillon 15a").
esDirecto(bueno,"Pavillon 15a").

esDirecto(plateado,"Destrunator 500").
esDirecto(barato,"Destrunator 500").
esDirecto(bueno,"Destrunator 500").



%definicionCliente
%maria
esCliente(maria).
esCliente(juana).
esCliente(jeremias).


%Que cosas son Productos
sonProducto(Producto, Productos):-esDirecto(Producto,Productos).
sonCategorias(Producto, Productos):-esDirecto(Producto,Productos).