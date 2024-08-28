%% Ejercicio 5, TP 2:
%%La ley de gravitación universal establece que la fuerza ejercida entre
%%dos masas está dada por: F(r) = G*((m1*m2)/r^2)
%%siendo G = 6.673 X 10^-11.

%% a) Considere esta ley para encontrar la fuerza que la Tierra ejerce sobre la luna y viceversa.
%%considerando m1 = 6 X 10^24 y m2 = 7,4 X 10^22 kg, masas de la tierra y la luna, y su distancia
%%r = 3,9 X 10^8

tierra = 6 * 10^24;
luna = 7.4 * 10^22;
distancia = 3.9 * 10^8;
const_grav = 6.673 * 10^(-11);

F = const_grav * (tierra * luna)/(distancia^2)


