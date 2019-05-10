
cliente(claudia,nochistlan,5).
cliente(deysi,jerez,4).
cliente(luis,jerez,2).
cliente(luis_gerardo,ermita_guadalupe,3).
cliente(gerardo,jerez,4).
cliente(david,zacatecas,2).

%articulo(clave,descripcion, limite_existencia)

articulo(a1, computadora,10).
articulo(a2, raton_inalambrico,10).
articulo(a3,proyector,10).
articulo(a4, adaptador_vga,10).
articulo(a5, raton_inalambrico,5).
articulo(a6, memoria_usb,5).
articulo(a7, disco_externo,5).


%inventario(clave, existencia)
inventario(a1,32).
inventario(a2,4).
inventario(a3,5).
inventario(a4,64).
inventario(a5,12).
inventario(a6,10).
inventario(a7,89).


%Cuando queremos consultas sobre un valor en especial se coloca tal cual, ej articulos(Clave, Descripcion,Existencia)
%Si queremos filtrar se puede usar ej articulo(Clave, Despcripcion,_).



%Crear una regla que muestre los clientes de Jerez

clientes_jerez(Nombre,Lugar) :-cliente(Nombre, jerez,_).
%:-clientes_jerez(Nombre,Lugar).
%Nombre = deysi :-;
%Nombre = luis |;
%Nombre = gerardo.


%Mostrar los clientes con calificaciòn de 5
clientes_cal5(Nombre,Lugar) :- cliente(Nombre, Lugar,5).
%|clientes_cal5(Nombre,Lugar).
%Nombre = claudia,
%Lugar = nochistlan.

:-;
%Mostrar un listado con el nombre del producto y su cantidad en existencia

listado_producto(Producto,Existencia) :- articulo(N,Producto,_) ,inventario(N, Existencia).
%|listado_producto(Producto,Existencia).
%Producto = computadora,
%Existencia = 32 :-;
%Producto = raton_inalambrico,
%Existencia = 4 |;
%Producto = proyector,
%Existencia = 5 |;
%Producto = adaptador_vga,
%Existencia = 64 |;
%Producto = raton_inalambrico,
%Existencia = 12 |;
%Producto = memoria_usb,
%Existencia = 10 |;
%Producto = disco_externo,
%Existencia = 89.

%Encontar los clientes de una ciudad determinada con una calificacion de credito determinada

listado_cliente_credito(N) :- cliente(N,jerez,4).
%:-listado_cliente_credito(N).
%N = deysi :-;
%N = gerardo.
%Encuentre la cantidad de limite en existencias para un articulo dado

listado_existencia_limite(A,B) :- articulo(A,computadora,B).
%|listado_existencia_limite(A,B).
%A = a1,
%B = 10.


%Encuentre el numero de articulo para un nombre de articulo determinado

listado_numero_articulo(N,E) :-articulo(N,raton_inalambrico,E).
%N = a2,
%E = 10 :-;
%N = a5,
%E = 5.
%Encuentre el nivel de inventario para un nùmero de artìculo dado

nivel_inventario(N) :- inventario(a1,N).

%|nivel_inventario(N).
%N = 32.


%Crear una regla que ayude a mostrar la cantidad de articulos que hay para cada articulo
cantidad_articulos(X,Y,Z) :- articulo(X,Y,C), inventario(X,Z).
%X = a1,
%Y = computadora,
%Z = 32 :-;
%X = a2,
%Y = raton_inalambrico,
%Z = 4 |;
%X = a3,
%Y = proyector,
%Z = 5 |;
%X = a4,
%Y = adaptador_vga,
%Z = 64 |;
%X = a5,
%Y = raton_inalambrico,
%Z = 12 |;
%X = a6,
%Y = memoria_usb,
%Z = 10 |;
%X = a7,
%Y = disco_externo,
%Z = 89.









