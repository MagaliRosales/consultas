% hechos de quen ve pelicilas y de que genero
ve_pelicula(roberto, suspenso).
ve_pelicula(jaanai,suspenso).
ve_pelicula(abimael,suspenso).
ve_pelicula(leonardo,romance).
ve_pelicula(miguel, terror).

% hechos de quien escucha musica y de que genero
escucha_musica(abelino,raggae).
escucha_musica(jose,rock).
escucha_musica(izmucanet,raggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

% hechos de quien y que consumen
consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

% hechos de quien tiene tiempo libre, CAMBIE A QUE TODOS TENGAN TIEMPO LIBRE 
% PARA QUE MUESTRE ALGUNOS RESULTADOS
tiempo_libre(roberto). 
tiempo_libre(jaanai).
tiempo_libre(abimael).
tiempo_libre(leonardo).
tiempo_libre(miguel).

% hechos de quien tiene audifonos, los que estan comentados no tienen audufonos
% audifonos(roberto).
audifonos(jaanai).
% audifonos(abimael).
audifonos(leonardo).
audifonos(miguel).

% audifonos(abelino).
% audifonos(jose).
audifonos(izmucanet).
audifonos(rolando).
% audifonos(maldonado).

% hechos de quien tiene netflix, los que estan comentados no tienen netflix
netflix(roberto).
netflix(jaanai).
netflix(abimael).
% netflix(leonardo).
netflix(miguel).

% hechos de quien tiene spotify, los que estan comentados no tienen spotify
% spotify(abelino).
spotify(jose).
spotify(izmucanet).
% spotify(rolando).
spotify(maldonado).



vida_saludable(X):- consume(X,ensalada).

% 3
% X es el termino que buscamos de quien ve peliculas de suspenso, consume palomitas, 
% tiene netflix y tiene tiempo libre.

tarde_perfecta(X):-ve_pelicula(X,suspenso),consume(X,palomitas),netflix(X),tiempo_libre(X).

% 4
% X es el termino que buscamos de quien ve peliculas y consume ensalada,
% _ quiere decir que no importa el genero de película

saludable(X):- ve_pelicula(X,_), consume(X,ensalada). 

% 5
% X el termino que buscamos de quien escucha musica regional, tiene audifonos,
% y tiene spotify

disfruta_camino(X):- escucha_musica(X,regional),audifonos(X),spotify(X).


% 6
% X es el termino que buscamos de quien ve peliculas, consume maruchan, 
% tiene tiempo libre y tiene netflix

es_feliz(X):-ve_pelicula(X,_),consume(X,maruchan),tiempo_libre(X),netflix(X).

% 7
% X el el primer termino y Y el segundo de quien comparte mismos gustos
amigos(X,Y):-ve_pelicula(X,Z),consume(X,Q), ve_pelicula(Y,Z),consume(Y,Q).


